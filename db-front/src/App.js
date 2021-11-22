import './App.less';
import { Route, Routes, BrowserRouter } from 'react-router-dom';
import React, { useEffect, lazy, Suspense } from 'react';
import Loading from './components/Loading';
import Login from './components/Login'
import { setLoginRequired } from './store/modules/userInfo';
import storage from './utils/storage';
import { useDispatch } from 'react-redux';
// const Login = lazy(() => import('./components/User/Login'));
const Layout = lazy(() => import('./Layout'));

function App() {
  const dispatch = useDispatch();
  if (!storage.getItem('user-token')) {
    dispatch(setLoginRequired(true));
  }
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
