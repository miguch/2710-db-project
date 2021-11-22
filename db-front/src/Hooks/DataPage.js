import tableStyles from '../styles/table.module.less';
import pageStyles from '../styles/page.module.less';
import { Button, Drawer, Table, Form, message, Modal } from 'antd';
import { useCallback, useEffect, useMemo, useState } from 'react';
import {
  PlusCircleOutlined,
  EditOutlined,
  DeleteOutlined
} from '@ant-design/icons';
import useAntTable from './Table';
import DataForm from '../components/DataForm';

export default function useDataPage(
  title,
  schema,
  dataLoader,
  handlers = {},
  defaultData = []
) {
  const { onTableChange, reload, pagination, loading, tableData, columns } =
    useAntTable(dataLoader, schema, defaultData);
  const keyCol = useMemo(() => schema.find((e) => e.key)?.name, [schema]);

  const [editTarget, setEditTarget] = useState(null);
  const [drawerVisible, setDrawerVisible] = useState(false);
  const onDrawerClose = useCallback(() => {
    setDrawerVisible(false);
  }, []);
  const [antForm] = Form.useForm();
  const onNew = useCallback(() => {
    setDrawerVisible(true);
    antForm.resetFields();
  }, [antForm]);
  const [submitLoading, setSubmitLoading] = useState(false);
  const onSubmit = useCallback(() => {
    antForm
      .validateFields()
      .then(async (values) => {
        setSubmitLoading(true);
        try {
          if (editTarget) {
            // edit
            const keyField = schema.find((e) => e.key).name;
            const res = await handlers.onEdit(editTarget[keyField], values);
            setDrawerVisible(false);
            reload();
          } else {
            // new
            const res = await handlers.onCreate(values);
            antForm.resetFields();
            setDrawerVisible(false);
            reload();
          }
        } catch (err) {
          console.log(err);
          message.error('request error');
        } finally {
          setSubmitLoading(false);
        }
      })
      .catch((errorInfo) => {});
  }, [antForm, editTarget, handlers, reload, schema]);

  const onClickUpdate = useCallback(
    (item) => {
      setEditTarget(item);
      antForm.setFieldsValue({ ...item });
      setDrawerVisible(true);
    },
    [antForm]
  );
  const onClickDelete = useCallback(
    (item) => {
      const modal = Modal.confirm({
        title: 'Confirm delete',
        content: 'Are you sure you want to delete this record?',
        onOk() {
          const keyField = schema.find((e) => e.key).name;
          handlers
            .onDelete(item[keyField])
            .then(() => {
              message.success('Delete Finish');
              reload();
            })
            .catch((err) => {
              console.log(err);
              message.error('Request error');
            });
        }
      });
    },
    [schema, handlers, reload]
  );
  const tableColumns = useMemo(() => {
    const tableColumns = [...columns];
    if (handlers.onUpdate || handlers.onDelete) {
      tableColumns.push({
        title: 'Modify',
        render: (_, item) => (
          <>
            <Button
              onClick={() => onClickUpdate(item)}
              style={{ marginRight: '6px' }}
            >
              <EditOutlined></EditOutlined>Update
            </Button>
            <Button onClick={() => onClickDelete(item)} danger>
              <DeleteOutlined></DeleteOutlined>Delete
            </Button>
          </>
        )
      });
      return tableColumns;
    }
  }, [handlers, columns, onClickDelete, onClickUpdate]);

  return (
    <div>
      <div className={pageStyles.PageTitle}>
        {title}
        {handlers.onCreate && (
          <Button type="primary" onClick={onNew} style={{ float: 'right' }}>
            <PlusCircleOutlined />
            New {title}
          </Button>
        )}
      </div>
      <Table
        columns={tableColumns}
        dataSource={tableData}
        pagination={pagination}
        onChange={onTableChange}
        loading={loading}
        rowKey={keyCol ? keyCol : (_, index) => index}
      ></Table>
      <Drawer
        title={editTarget ? 'Edit ' : 'Create ' + title}
        placement="right"
        onClose={onDrawerClose}
        visible={drawerVisible}
        width="45%"
        footer={
          <>
            <Button
              onClick={onSubmit}
              type="primary"
              style={{ marginRight: '8px' }}
              loading={submitLoading}
            >
              Confirm
            </Button>
            <Button onClick={onDrawerClose}>Cancel</Button>
          </>
        }
      >
        <DataForm form={antForm} formSchema={schema}></DataForm>
      </Drawer>
    </div>
  );
}
