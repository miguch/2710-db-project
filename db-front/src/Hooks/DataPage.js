import tableStyles from '../styles/table.module.less';
import pageStyles from '../styles/page.module.less';
import { Button, Drawer, Table } from 'antd';
import { useCallback, useEffect, useMemo, useState } from 'react';
import { PlusCircleOutlined } from '@ant-design/icons';
import useAntTable from './Table';
import Form from '../components/Form';

export default function useDataPage(
  title,
  schema,
  dataLoader,
  handlers = {},
  defaultData = []
) {
  const { onTableChange, pagination, loading, tableData, columns } =
    useAntTable(dataLoader, schema, defaultData);
  const keyCol = useMemo(() => schema.find((e) => e.key)?.name, [schema]);

  const [editTarget, setEditTarget] = useState(null);
  const [drawerVisible, setDrawerVisible] = useState(false);
  const onDrawerClose = useCallback(() => {
    setDrawerVisible(false);
  }, []);
  const onNew = () => {
    setDrawerVisible(true);
  };

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
        columns={columns}
        dataSource={tableData}
        pagination={pagination}
        onChange={onTableChange}
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
            <Button type="primary" style={{ marginRight: '8px' }}>
              Confirm
            </Button>
            <Button onClick={onDrawerClose}>Cancel</Button>
          </>
        }
      >
        <Form formSchema={schema}></Form>
      </Drawer>
    </div>
  );
}
