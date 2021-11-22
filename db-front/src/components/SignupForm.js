import { Modal, Form, Input, Button, Radio } from 'antd';
import { useCallback, useMemo, useState } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import useNetwork from '../Hooks/Network';
import { setLoginRequired, setUserInfo } from '../store/modules/userInfo';
import storage from '../utils/storage';

const API = {
  login: '/auth/local',
  register: '/auth/local/register'
};

export default function SignupForm({ onLogin }) {
  const dispatch = useDispatch();
  const service = useNetwork(false);
  const layout = {
    labelCol: { span: 6 },
    wrapperCol: { span: 18 }
  };
  const tailLayout = {
    wrapperCol: { offset: 6, span: 18 }
  };
  const [form] = Form.useForm();
  const [signupLoading, setSignupLoading] = useState(false);
  const [errorMsg, setErrorMsg] = useState('');

  const onSignup = useCallback(() => {
    setErrorMsg('');
    form
      .validateFields()
      .then(async (values) => {
        setSignupLoading(true);
        try {
          const res = await service({
            method: 'post',
            url: API.register,
            data: {
              username: values.username,
              email: values.email,
              password: values.password,
              confirmed: true
            }
          });
          storage.setItem('user-token', res.jwt);
          dispatch(setUserInfo(res.user));
          dispatch(setLoginRequired(false));
        } catch (err) {
          if (err.response?.data?.data && err.response.data.data[0]) {
            setErrorMsg(err.response.data.data[0].messages[0].message);
          } else {
            setErrorMsg('network error');
          }
        } finally {
          setSignupLoading(false);
        }
      })
      .catch(() => {});
  }, [service, dispatch, form]);
  const validateRePassword = (_, value, cb) => {
    const firstPass = form.getFieldValue('password');
    if (firstPass !== value) {
      cb("Password doesn't match");
    } else {
      cb();
    }
  };

  return (
    <Form initialValues={{type: 'customer'}} form={form} {...layout}>
      <Form.Item name="type" label="Type">
        <Radio.Group>
          <Radio.Button value="customer">Customer</Radio.Button>
          <Radio.Button value="salesperson">Salesperson</Radio.Button>
        </Radio.Group>
      </Form.Item>
      <Form.Item rules={[{ required: true }]} name="username" label="Username">
        <Input></Input>
      </Form.Item>
      <Form.Item rules={[{ required: true }]} name="email" label="Email">
        <Input></Input>
      </Form.Item>
      <Form.Item rules={[{ required: true }]} name="password" label="Password">
        <Input.Password></Input.Password>
      </Form.Item>
      <Form.Item
        rules={[{ required: true }, { validator: validateRePassword }]}
        name="rePassword"
        label="Re-enter"
      >
        <Input.Password></Input.Password>
      </Form.Item>
      <Form.Item {...tailLayout} style={{ marginBottom: 0 }}>
        <Button
          loading={signupLoading}
          htmlType="submit"
          type="primary"
          onClick={onSignup}
        >
          Signup
        </Button>
        <Button type="link" htmlType="button" onClick={onLogin}>
          Login
        </Button>
      </Form.Item>
      <Form.Item {...tailLayout}>
        <div style={{ color: 'red' }}>{errorMsg}</div>
      </Form.Item>
    </Form>
  );
}
