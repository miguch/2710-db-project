import { Modal, Form, Input, Button } from 'antd';
import { useCallback, useMemo, useState } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import useNetwork from '../Hooks/Network';
import { setLoginRequired, setUserInfo } from '../store/modules/userInfo';
import storage from '../utils/storage';

const API = {
  login: '/auth/local',
  register: '/auth/local/register'
};

export default function LoginForm({onSignup}) {
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
  const [loginLoading, setLoginLoading] = useState(false);
  const [errorMsg, setErrorMsg] = useState('');

  const onLogin = useCallback(() => {
    setErrorMsg('');
    form
      .validateFields()
      .then(async (values) => {
        setLoginLoading(true);
        try {
          const res = await service({
            method: 'post',
            url: API.login,
            data: {
              identifier: values.email,
              password: values.password
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
          setLoginLoading(false);
        }
      })
      .catch(() => {});
  }, [service, dispatch, form]);

  return (
    <Form form={form} {...layout}>
      <Form.Item rules={[{ required: true }]} name="email" label="Email">
        <Input></Input>
      </Form.Item>
      <Form.Item rules={[{ required: true }]} name="password" label="Password">
        <Input.Password></Input.Password>
      </Form.Item>
      <Form.Item {...tailLayout} style={{ marginBottom: 0 }}>
        <Button
          loading={loginLoading}
          htmlType="submit"
          type="primary"
          onClick={onLogin}
        >
          Login
        </Button>
        <Button type="link" htmlType="button" onClick={onSignup}>
          Signup
        </Button>
      </Form.Item>
      <Form.Item {...tailLayout}>
        <div style={{ color: 'red' }}>{errorMsg}</div>
      </Form.Item>
    </Form>
  );
}
