import { Form } from 'antd';

export default function useForm(formSchema) {
  return (
      <Form>
        {formSchema.map(item => (
          <Form.Item></Form.Item>
        ))}
      </Form>
  );
}
