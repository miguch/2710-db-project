import { Form } from 'antd';

export default function useForm(formSchema) {
  const [form] = Form.useForm();
  
  return (
      <Form>
        {formSchema.map(item => (
          <Form.Item>

          </Form.Item>
        ))}
      </Form>
  );
}
