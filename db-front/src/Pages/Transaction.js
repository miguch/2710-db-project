import { Table, Button, Modal, Form, List } from 'antd';
import { useCallback, useEffect, useState } from 'react';
import useAntTable from '../Hooks/Table';
import useDataPage from '../Hooks/DataPage';
import useDataHandlers from '../Hooks/Data';

const TITLE = 'Transactions';

const apiName = 'transactions';
const API = {
  get: `/${apiName}`
  // create: `/${apiName}`,
  // update: (id) => `/${apiName}/${id}`,
  // delete: (id) => `/${apiName}/${id}`
};

export default function Transactions() {
  const handlers = useDataHandlers(API);

  const [details, setDetails] = useState(null);

  const getPriceSum = (item) =>
    item.product_transactions.reduce(
      (sum, curr) => sum + curr.price * curr.amount,
      0
    );

  const SCHEMA = [
    {
      title: 'Transactions ID',
      name: 'id',
      key: true,
      formHidden: true
    },
    {
      title: 'Salesperson',
      name: 'salesperson_user',
      relationField: 'user.username'
    },
    {
      title: 'Total',
      render: (_, item) => '$' + getPriceSum(item)
    },
    {
      title: 'Date',
      name: 'sale_date'
    },
    {
      title: 'Detail',
      render: (_, item) => (
        <Button onClick={() => setDetails(item)}>Show Details</Button>
      )
    }
  ];

  const page = useDataPage(TITLE, SCHEMA, handlers.dataLoader, handlers, []);
  return (
    <>
      {page}
      <Modal
        visible={!!details}
        footer={null}
        onCancel={() => setDetails(null)}
        title="Transaction Details"
      >
        {details && (
          <Form labelCol={{span: 6}}>
            <Form.Item style={{ marginBottom: 0 }} label="Salesperson">
              <span>{details.salesperson_user?.user?.username}</span>
            </Form.Item>
            <Form.Item style={{ marginBottom: 0 }} label="Customer">
              <span>{details.customer_user?.user?.username}</span>
            </Form.Item>
            <Form.Item label="Product List">
              <List
                size="small"
                dataSource={details.product_transactions}
                bordered
                renderItem={(pt) => (
                  <List.Item>
                    {pt.product?.name}
                    <div style={{ float: 'right' }}>
                      <span style={{ marginRight: 6 }}>
                        ${pt.price} x{pt.amount}
                      </span>
                      <span
                        style={{
                          minWidth: 50,
                          display: 'inline-block',
                          textAlign: 'right'
                        }}
                      >
                        ${pt.price * pt.amount}
                      </span>
                    </div>
                  </List.Item>
                )}
              ></List>
            </Form.Item>
            <Form.Item style={{ marginBottom: 0 }} label="Total">
              <span>${getPriceSum(details)}</span>
            </Form.Item>
          </Form>
        )}
      </Modal>
    </>
  );
}
