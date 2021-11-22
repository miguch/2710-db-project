import { Suspense } from 'react';
import { Route, Routes } from 'react-router';
import Loading from '../components/Loading';
import useRoutes from '../Routes/router';
import styles from './layout.module.less';

export default function Content() {
  const routes = useRoutes();
  return (
    <div className={styles.LayoutContent}>
      <Suspense fallback={<Loading></Loading>}>
        <Routes>
          {routes.map((route) => (
            <Route
              key={route.name}
              element={<route.component></route.component>}
              path={route.path}
            ></Route>
          ))}
          <Route path="*" element={<div>404</div>}></Route>
        </Routes>
      </Suspense>
    </div>
  );
}
