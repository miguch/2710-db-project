import styles from './layout.module.less';
import { Link, useLocation } from 'react-router-dom';
import classNames from 'classnames';
import useRoutes from '../Routes/router';

export default function Nav() {
  const location = useLocation();
  const routes = useRoutes();
  return (
    <div className={styles.LayoutNav}>
      {routes.map((route) => (
        <Link
          to={route.link || route.path}
          key={route.name}
          className={classNames(styles.LayoutNavItem, {
            [styles.active]: route.path === location.pathname
          })}
        >
          <route.icon
            style={{ marginRight: '6px', fontSize: '18px' }}
          ></route.icon>
          {route.name}
        </Link>
      ))}
    </div>
  );
}
