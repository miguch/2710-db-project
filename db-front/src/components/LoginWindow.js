import { Modal, Form, Input, Button } from 'antd';
import { useCallback, useMemo, useState } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import useNetwork from '../Hooks/Network';
import { setLoginRequired, setUserInfo } from '../store/modules/userInfo';
import storage from '../utils/storage';
import LoginForm from './LoginForm';
import SignupForm from './SignupForm';

export default function LoginWindow() {
  const userInfo = useSelector((state) => state.userInfo.userInfo);
  const showLoginWindow = useMemo(
    () => userInfo.loginRequired,
    [userInfo.loginRequired]
  );
  const [showSignup, setShowSignup] = useState(false);

  return (
    <Modal
      visible={showLoginWindow}
      footer={null}
      title={showSignup ? "Login" : "Register"}
      closable={false}
      zIndex={9999}
    >
      {showSignup ? (
        <SignupForm onLogin={() => {setShowSignup(false)}}></SignupForm>
      ) : (
        <LoginForm onSignup={() => {setShowSignup(true)}}></LoginForm>
      )}
    </Modal>
  );
}
