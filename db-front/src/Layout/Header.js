import styles from './layout.module.less';
import { useState } from 'react';
import { useHistory } from 'react-router-dom';
import { useNavigate } from 'react-router';
import { useDispatch, useSelector } from 'react-redux';
import { Menu, Dropdown } from 'antd';
import { UserOutlined } from '@ant-design/icons';
import { setLoginRequired } from '../store/modules/userInfo';
import storage from '../utils/storage';

export default function Header() {
  let navigate = useNavigate();
  const userInfo = useSelector((state) => state.userInfo.userInfo);
  const dispatch = useDispatch();

  const onMenuClick = ({ key }) => {
    if (key === 'info') {
    } else if (key === 'logout') {
      storage.delItem('user-token');
      dispatch(setLoginRequired(true));
    }
  };

  const actions = (
    <Menu onClick={onMenuClick}>
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
