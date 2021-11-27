import { Table, Button, Modal, Form, Row, Col } from 'antd';
import { useCallback, useEffect, useState } from 'react';
import useAntTable from '../Hooks/Table';
import useDataPage from '../Hooks/DataPage';
import useDataHandlers from '../Hooks/Data';

const TITLE = 'Customer';

const apiName = 'customers';
const API = {
  get: `/${apiName}`,
  // create: `/${apiName}`,
  update: (id) => `/${apiName}/${id}`,
  delete: (id) => `/${apiName}/${id}`
};

export default function Customer() {
  const handlers = useDataHandlers(API);

  const [details, setDetails] = useState(null);

  const SCHEMA = [
    {
      title: 'Customer ID',
      name: 'id',
      key: true,
      formHidden: true
    },
    {
      title: 'Name',
      name: 'name',
      formHidden: true,
      render: (_, item) => item.user.username
    },
    {
      title: 'Street',
      name: 'street'
    },
    {
      title: 'State',
      name: 'state'
    },
    {
      title: 'Zip',
      name: 'zipcode'
    },
    {
      title: 'Kind',
      formHidden: true,
      name: 'kind'
    },
    {
      title: 'Detail',
      formHidden: true,
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
        footer={null}
        title="Customer Details"
        visible={!!details}
        onCancel={() => setDetails(null)}
      >
        {details && (
          <Form labelCol={{ span: 6 }}>
            <Form.Item label="Name" style={{ marginBottom: 0 }}>
              <span>{details.user.username}</span>
            </Form.Item>
            <Form.Item label="Street" style={{ marginBottom: 0 }}>
              <span>{details.street}</span>
            </Form.Item>
            <Row>
              <Col span={12}>
                <Form.Item
                  label="State"
                  labelCol={{ span: 12 }}
                  style={{ marginBottom: 0 }}
                >
                  <span>{details.state}</span>
                </Form.Item>
              </Col>
              <Col span={12}>
                <Form.Item
                  label="Zip"
                  labelCol={{ span: 12 }}
                  style={{ marginBottom: 0 }}
                >
                  <span>{details.zipcode}</span>
                </Form.Item>
              </Col>
            </Row>
            <Form.Item style={{ marginBottom: 0 }} label="Type">
              <span>{details.kind}</span>
            </Form.Item>
            {details.kind === 'home' && (
              <>
                <Row>
                  <Col span={12}>
                    <Form.Item
                      label="Age"
                      labelCol={{ span: 12 }}
                      style={{ marginBottom: 0 }}
                    >
                      <span>{details.home_customer.age}</span>
                    </Form.Item>
                  </Col>
                  <Col span={12}>
                    <Form.Item
                      label="Income"
                      labelCol={{ span: 12 }}
                      style={{ marginBottom: 0 }}
                    >
                      <span>{details.home_customer.income}</span>
                    </Form.Item>
                  </Col>
                </Row>
                <Form.Item label="Gender" style={{ marginBottom: 0 }}>
                  <span>{details.home_customer.gender}</span>
                </Form.Item>
                <Form.Item label="Marriage Status" style={{ marginBottom: 0 }}>
                  <span>{details.home_customer.marriage}</span>
                </Form.Item>
              </>
            )}
            {details.kind === 'business' && (
              <>
                <Form.Item label="Category" style={{ marginBottom: 0 }}>
                  <span>{details.business_customer.category}</span>
                </Form.Item>
                <Form.Item label="Income" style={{ marginBottom: 0 }}>
                  <span>{details.business_customer.income}</span>
                </Form.Item>
              </>
            )}
          </Form>
        )}
      </Modal>
    </>
  );
}
