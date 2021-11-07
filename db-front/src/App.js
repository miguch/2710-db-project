import './App.less';
import { Route, Routes, BrowserRouter } from 'react-router-dom';
import React, { useEffect, lazy, Suspense } from 'react';
import Loading from './components/Loading';
// const Login = lazy(() => import('./components/User/Login'));
const Layout = lazy(() => import('./Layout'));

function App() {
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
    </div>
  );
}

export default App;
