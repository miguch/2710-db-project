import {
  Modal,
  Form,
  Input,
  Button,
  Radio,
  Select,
  InputNumber,
  message
} from 'antd';
import { Field } from 'rc-field-form';
import { useCallback, useEffect, useMemo, useState } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import useNetwork from '../Hooks/Network';
import { setLoginRequired, setUserInfo } from '../store/modules/userInfo';
import storage from '../utils/storage';

const API = {
  login: '/auth/local',
  register: '/auth/local/register',
  storeList: '/stores'
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
  const [storeList, setStoreList] = useState([]);

  useEffect(() => {
    service({
      method: 'get',
      url: API.storeList
    })
      .then((res) => {
        setStoreList(res);
      })
      .catch((err) => {
        console.log(err);
        message.error('Failed to fetch stores list');
      });
  }, [service]);

  const onSignup = useCallback(() => {
    setErrorMsg('');
    form
      .validateFields()
      .then(async (values) => {
        setSignupLoading(true);
        try {
          const requestData = {
            ...values,
            username: values.username,
            email: values.email,
            password: values.password,
            confirmed: true,
            role: values.type
          };
          delete requestData.rePassword;
          const res = await service({
            method: 'post',
            url: API.register,
            data: requestData
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

  const [showCustomerFields, setShowCustomerFields] = useState(true);
  const customerFields = ['marriage', 'gender', 'age', 'income', 'category'];
  const salespersonFields = ['job_title', 'salary', 'store_assigned'];
  const onUserTypeChange = useCallback((e) => {
    const newType = e.target.value;
    if (newType === 'customer') {
      setShowCustomerFields(true);
    } else if (newType === 'salesperson') {
      setShowCustomerFields(false);
    }
  }, []);

  const [showHomeCustomerFields, setShowHomeCustomerFields] = useState(true);
  const onCustomerKindChange = useCallback((e) => {
    const newType = e.target.value;
    if (newType === 'home') {
      setShowHomeCustomerFields(true);
    } else if (newType === 'business') {
      setShowHomeCustomerFields(false);
    }
  }, []);

  return (
    <Form initialValues={{ type: 'customer' }} form={form} {...layout}>
      <Form.Item name="type" label="Type">
        <Radio.Group onChange={onUserTypeChange}>
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
      <Form.Item
        rules={[
          {
            pattern: /^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$/,
            message: 'Phone number not valid',
            // Ant design bug: https://github.com/ant-design/ant-design/issues/28378
            // validateTrigger: 'onBlur'
          }
        ]}
        name="phone"
        label="Phone"
      >
        <Input></Input>
      </Form.Item>
      <Form.Item label="Address" style={{ marginBottom: 0 }}>
        <Form.Item name="street">
          <Input placeholder="street"></Input>
        </Form.Item>
        <Form.Item
          name="city"
          style={{
            display: 'inline-block',
            width: 'calc(33% - 4px)',
            marginRight: '6px'
          }}
        >
          <Input placeholder="city"></Input>
        </Form.Item>
        <Form.Item
          name="state"
          style={{
            display: 'inline-block',
            width: 'calc(33% - 4px)',
            marginRight: '6px'
          }}
        >
          <Input placeholder="state"></Input>
        </Form.Item>
        <Form.Item
          name="zipcode"
          style={{
            display: 'inline-block',
            width: 'calc(33% - 4px)'
          }}
        >
          <Input placeholder="zip"></Input>
        </Form.Item>
      </Form.Item>
      {showCustomerFields && (
        <>
          <Form.Item initialValue="home" name="kind" label="Kind">
            <Radio.Group onChange={onCustomerKindChange}>
              <Radio.Button value="home">Home</Radio.Button>
              <Radio.Button value="business">Business</Radio.Button>
            </Radio.Group>
          </Form.Item>
          {showHomeCustomerFields && (
            <>
              <Form.Item label="Info" style={{ marginBottom: 0 }}>
                <Form.Item
                  name="marriage"
                  style={{
                    display: 'inline-block',
                    width: 'calc(33% - 4px)',
                    marginRight: '6px'
                  }}
                >
                  <Select
                    getPopupContainer={(triggerNode) =>
                      triggerNode.parentElement
                    }
                    placeholder="Marriage"
                  >
                    <Select.Option value="Married">Married</Select.Option>
                    <Select.Option value="Unmarried">Unmarried</Select.Option>
                    <Select.Option value="Prefer_not_to_say">
                      Prefer not to say
                    </Select.Option>
                  </Select>
                </Form.Item>
                <Form.Item
                  name="gender"
                  style={{
                    display: 'inline-block',
                    width: 'calc(33% - 4px)',
                    marginRight: '6px'
                  }}
                >
                  <Select
                    getPopupContainer={(triggerNode) =>
                      triggerNode.parentElement
                    }
                    placeholder="gender"
                  >
                    <Select.Option value="Male">Male</Select.Option>
                    <Select.Option value="Female">Female</Select.Option>
                    <Select.Option value="Prefer_not_to_say">
                      Prefer not to say
                    </Select.Option>
                  </Select>
                </Form.Item>
                <Form.Item
                  name="age"
                  style={{
                    display: 'inline-block',
                    width: 'calc(33% - 4px)'
                  }}
                >
                  <InputNumber placeholder="Age"></InputNumber>
                </Form.Item>
              </Form.Item>
            </>
          )}
          {!showHomeCustomerFields && (
            <Form.Item name="category" label="Category">
              <Input placeholder="Business Category"></Input>
            </Form.Item>
          )}
          <Form.Item name="income" label="Income">
            <InputNumber></InputNumber>
          </Form.Item>
        </>
      )}
      {!showCustomerFields && (
        <>
          <Form.Item name="job_title" label="Job Title">
            <Input></Input>
          </Form.Item>
          <Form.Item name="store" label="Store" rules={[{ required: true }]}>
            <Select
              getPopupContainer={(triggerNode) => triggerNode.parentElement}
            >
              {storeList.map((s) => (
                <Select.Option value={s.id} key={s.id}>
                  {s.name}
                </Select.Option>
              ))}
            </Select>
          </Form.Item>
          <Form.Item name="salary" label="Salary">
            <Input></Input>
          </Form.Item>
        </>
      )}
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
