import { lazy } from 'react';
import {
  AreaChartOutlined,
  DashboardFilled,
  ShoppingCartOutlined
} from '@ant-design/icons';
import { ContactsOutlined } from '@ant-design/icons';
import { useSelector } from 'react-redux';

const STATIC_ROUTES = [
  {
    name: 'Home',
    link: '/',
    path: '/',
    component: lazy(() => import('../Pages/Home/Home')),
    icon: DashboardFilled
  },
  {
    name: 'Customer',
    link: '/customer',
    path: '/customer',
    component: lazy(() => import('../Pages/Customers')),
    icon: ContactsOutlined
  },
  {
    name: 'Salesperson',
    link: '/salesperson',
    path: '/salesperson',
    component: lazy(() => import('../Pages/Salesperson')),
    icon: ContactsOutlined
  },
  {
    name: 'Product',
    link: '/product',
    path: '/product',
    filterRole: ['salesperson'],
    component: lazy(() => import('../Pages/Products')),
    icon: ContactsOutlined
  },
  {
    name: 'Product Type',
    link: '/productkind',
    path: '/productkind',
    filterRole: ['salesperson'],
    component: lazy(() => import('../Pages/ProductKind')),
    icon: ContactsOutlined
  },
  {
    name: 'Store',
    link: '/store',
    path: '/store',
    filterRole: ['salesperson'],
    component: lazy(() => import('../Pages/Store')),
    icon: ContactsOutlined
  },
  {
    name: 'Region',
    link: '/region',
    path: '/region',
    filterRole: ['salesperson'],
    component: lazy(() => import('../Pages/Region')),
    icon: ContactsOutlined
  },
  {
    name: 'Transaction',
    link: '/transaction',
    path: '/transaction',
    component: lazy(() => import('../Pages/Transaction')),
    icon: ContactsOutlined
  },
  {
    name: 'Purchase',
    link: '/purchase',
    path: '/purchase',
    component: lazy(() => import('../Pages/Purchase')),
    filterRole: ['customer'],
    icon: ShoppingCartOutlined
  },
  {
    name: 'Aggregation',
    link: '/aggregation',
    path: '/aggregation',
    component: lazy(() => import('../Pages/Aggregation')),
    icon: AreaChartOutlined
  }
];

export default function useRoutes() {
  const userInfo = useSelector((state) => state.userInfo.userInfo);
  const routes = STATIC_ROUTES.filter(
    (e) => !e.filterRole || e.filterRole.includes(userInfo?.role?.name)
  );

  return routes;
}
