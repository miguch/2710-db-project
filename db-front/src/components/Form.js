import { Form, Input, InputNumber } from 'antd';

const formItemLayout = {
  labelCol: { span: 4 },
  wrapperCol: { span: 20 }
};

export default function AntForm({ formSchema }) {
  const [form] = Form.useForm();
  const formItemsMap = {
    number: (rules) => <InputNumber></InputNumber>
  };
  const defaultFormItem = (rules) => <Input></Input>;
  return (
    <Form {...formItemLayout}>
      {formSchema
        .filter((item) => !item.formHidden)
        .map((item) => (
          <Form.Item label={item.title} key={item.name} rules={item.rules}>
            {(formItemsMap[item.type] || defaultFormItem)(item.rules)}
          </Form.Item>
        ))}
    </Form>
  );
}
