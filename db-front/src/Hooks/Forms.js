import { Form } from 'antd';

export default function useForm(formSchema) {
  const [form] = Form.useForm();

  return (
      <Form>
        {formSchema.map(item => (
          <Form.Item label={item.title} name={item.name} rules={item.rules}>
            
          </Form.Item>
        ))}
      </Form>
  );
}
