import { Modal, Form, Button, InputNumber, Select, message, List } from 'antd';
import { useCallback, useEffect, useMemo, useState } from 'react';
import useNetwork from '../Hooks/Network';

const API = '/transactions/do';

export default function PurchaseForm({
  selectedProducts,
  salesperson,
  onClose,
  onComplete
}) {
  const [form] = Form.useForm();
  const service = useNetwork();
  useEffect(() => {
    form.setFieldsValue({});
  }, [selectedProducts, form]);
  useEffect(() => {
    if (salesperson) {
      form.setFieldsValue({
        salesPerson: salesperson
      });
    } else {
      form.setFieldsValue({
        salesPerson: null
      });
    }
  }, [salesperson, form]);
  const [submitting, setSubmitting] = useState(false);
  const onSubmit = useCallback(() => {
    form.validateFields().then(async (values) => {
      try {
        setSubmitting(true);
        values = {
          ...values,
          products: Object.keys(selectedProducts).map((id) => ({
            id: selectedProducts[id].product.id,
            amount: selectedProducts[id].quantity
          }))
        };
        const res = await service({
          method: 'POST',
          url: API,
          data: values,
          headers: {
            'Content-Type': 'application/json'
          }
        });
        if (res.success) {
          message.success('Order placed!');
          onComplete();
        } else {
          message.warn(res.msg);
        }
      } catch (err) {
        console.log(err);
        message.error('request error');
      } finally {
        setSubmitting(false);
      }
    });
  }, [selectedProducts, form, onComplete, service]);
  const priceSum = useMemo(
    () =>
      Object.keys(selectedProducts).reduce(
        (sum, currProd) =>
          sum +
          selectedProducts[currProd].product.price *
            selectedProducts[currProd].quantity,
        0
      ),
    [selectedProducts]
  );
  const [salespeople, setSalespeople] = useState([]);
  useEffect(() => {
    const API = '/sales-people';
    service({
      method: 'GET',
      url: API
    })
      .then((res) => {
        setSalespeople(res);
      })
      .catch((err) => {
        message.error('Failed to fetch salesperson list');
        console.log(err);
      });
  }, [service]);

  const layout = {
    labelCol: { span: 6 },
    wrapperCol: { span: 18 }
  };
  const tailLayout = {
    wrapperCol: { offset: 6, span: 18 }
  };
  return (
    <Form form={form} {...layout}>
      {selectedProducts && (
        <>
          <Form.Item
            rules={[{ required: true }]}
            name="salesPerson"
            label="Salesperson"
          >
            <Select>
              {salespeople.map((person) => (
                <Select.Option key={person.id} value={person.id}>
                  {person.user.username} ({person.store.name})
                </Select.Option>
              ))}
            </Select>
          </Form.Item>
          <Form.Item label="Product List">
            <List
              size="small"
              dataSource={Object.keys(selectedProducts)}
              bordered
              renderItem={(id) => (
                <List.Item>
                  {selectedProducts[id].product.name}
                  <div style={{ float: 'right' }}>
                    <span style={{ marginRight: 6 }}>
                      ${selectedProducts[id].product.price} x
                      {selectedProducts[id].quantity}
                    </span>
                    <span
                      style={{
                        minWidth: 50,
                        display: 'inline-block',
                        textAlign: 'right'
                      }}
                    >
                      $
                      {selectedProducts[id].product.price *
                        selectedProducts[id].quantity}
                    </span>
                  </div>
                </List.Item>
              )}
            ></List>
          </Form.Item>
          <Form.Item label="Total Price">
            <div>${priceSum}</div>
          </Form.Item>
          <Form.Item {...tailLayout}>
            <Button
              loading={submitting}
              htmlType="submit"
              type="primary"
              onClick={onSubmit}
              style={{ marginRight: 12 }}
            >
              Confirm
            </Button>
            <Button htmlType="button" onClick={onClose}>
              Cancel
            </Button>
          </Form.Item>
        </>
      )}
    </Form>
  );
}
