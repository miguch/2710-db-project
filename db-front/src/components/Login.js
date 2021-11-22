import { Modal, Form, Input, Button } from 'antd';
import { useCallback, useMemo } from 'react';
import { useSelector } from 'react-redux';

export default function Login() {
  const layout = {
    labelCol: { span: 4 },
    wrapperCol: { span: 20 }
  };
  const tailLayout = {
    wrapperCol: { offset: 4, span: 20 },
  };
  const userInfo = useSelector((state) => state.userInfo.userInfo);
  const showLoginWindow = useMemo(
    () => userInfo.loginRequired,
    [userInfo.loginRequired]
  );
  const [form] = Form.useForm();

  const onSignup = useCallback(() => {}, [])

  return (
    <Modal visible={showLoginWindow} footer={null} title="Login">
      <Form form={form} {...layout}>
        <Form.Item name="username" label="Username">
          <Input></Input>
        </Form.Item>
        <Form.Item name="password" label="Password">
          <Input.Password></Input.Password>
        </Form.Item>
        <Form.Item {...tailLayout}>
          <Button type="primary">Login</Button>
          <Button type="link" htmlType="button" onClick={onSignup}>
            Signup
          </Button>
        </Form.Item>
      </Form>
    </Modal>
  );
}
