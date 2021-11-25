import { Modal, Form, Button, InputNumber, Select, message } from 'antd';
import { useCallback, useEffect, useMemo, useState } from 'react';
import useNetwork from '../Hooks/Network';

export default function PurchaseForm({ visible, purchaseTarget, onClose }) {
  const [form] = Form.useForm();
  const service = useNetwork();
  useEffect(() => {
    form.setFieldsValue({
      quantity: 1,
      salesperson: null
    });
  }, [purchaseTarget, form]);
  const [submitting, setSubmitting] = useState(false);
  const onSubmit = useCallback(() => {
    form.validateFields().then(async (values) => {
      try {
        setSubmitting(true);
        values = {
          ...values,
          price: purchaseTarget.price
        };
      } finally {
        setSubmitting(false);
      }
    });
  }, [purchaseTarget, form]);
  const [priceSum, setPriceSum] = useState(0);
  useEffect(() => {
    if (purchaseTarget) {
      setPriceSum(purchaseTarget.price);
    }
  }, [purchaseTarget]);
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
    <Modal title="Purchase" footer={null} onCancel={onClose} visible={visible}>
      <Form form={form} {...layout}>
        {purchaseTarget && (
          <>
            <Form.Item label="Product">
              <div>{purchaseTarget.name}</div>
            </Form.Item>
            <Form.Item label="Price">
              <div>${purchaseTarget.price}</div>
            </Form.Item>
            <Form.Item
              rules={[{ required: true }]}
              name="quantity"
              label="Quantity"
            >
              <InputNumber
                min={1}
                parser={(numStr) => parseInt(numStr)}
                onChange={(e) =>
                  setPriceSum(e === null ? 0 : e * purchaseTarget.price)
                }
              ></InputNumber>
            </Form.Item>
            <Form.Item label="Total Price">
              <div>${priceSum}</div>
            </Form.Item>
            <Form.Item name="salesperson" label="Salesperson">
              <Select>
                {salespeople.map((person) => (
                  <Select.Option value={person.user.username}>{}</Select.Option>
                ))}
              </Select>
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
    </Modal>
  );
}
