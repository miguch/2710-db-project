import styles from './layout.module.less';
import { useState } from 'react';
import { useHistory } from 'react-router-dom';
import { useNavigate } from 'react-router';
import { useSelector } from 'react-redux';
import { Menu, Dropdown } from 'antd';
import { UserOutlined } from '@ant-design/icons';

export default function Header() {
  let navigate = useNavigate();
  const userInfo = useSelector((state) => state.userInfo.userInfo);

  const onLogout = () => {
    navigate('/login');
  };

  const actions = (
    <Menu>
      <Menu.Item key="info">User Info</Menu.Item>
      <Menu.Item key="logout">Logout</Menu.Item>
    </Menu>
  );

  return (
    <div className={styles.LayoutHeader}>
      <div className={styles.LayoutHeaderTitle}>Placeholder</div>
      <div className={styles.LayoutHeaderUser}>
        <Dropdown overlay={actions} placement="bottomCenter">
          <div>
            <UserOutlined className={styles.LayoutHeaderUserIcon} />
            {userInfo.userName}
          </div>
        </Dropdown>
      </div>
    </div>
  );
}
