import './App.less';
import { Route, Routes, BrowserRouter } from 'react-router-dom';
import React, { useEffect, lazy, Suspense, useCallback } from 'react';
import Loading from './components/Loading';
import Login from './components/LoginWindow';
import { setLoginRequired, setUserInfo } from './store/modules/userInfo';
import storage from './utils/storage';
import { useDispatch } from 'react-redux';
import useNetwork from './Hooks/Network';
// const Login = lazy(() => import('./components/User/Login'));
const Layout = lazy(() => import('./Layout'));

const API = {
  getUserInfo: '/users/me'
};

function App() {
  const dispatch = useDispatch();
  const service = useNetwork();
  useEffect(() => {
    if (!storage.getItem('user-token')) {
      dispatch(setLoginRequired(true));
    } else {
      service({
        method: 'get',
        url: API.getUserInfo
      })
        .then((res) => {
          dispatch(setUserInfo(res));
        })
        .catch(() => {
          dispatch(setLoginRequired(true));
        });
    }
  }, [dispatch, service]);
  return (
    <div className="App">
      <BrowserRouter>
        <Suspense fallback={<Loading />}>
          <Routes>
            {/* {/* <Route path={["/login", "/"]} exact component={Login} /> */}
            <Route path="/*" element={<Layout />} /> */}
          </Routes>
        </Suspense>
      </BrowserRouter>
      <Login></Login>
    </div>
  );
}

export default App;
