import { lazy } from "react";
import { DashboardFilled } from "@ant-design/icons";
import { ContactsOutlined } from "@ant-design/icons";

const STATIC_ROUTES = [
  {
    name: 'Home',
    link: '/',
    path: '/',
    component: lazy(() => import("../Pages/Home/Home")),
    icon: DashboardFilled,
  },
  {
    name: 'Customer',
    link: '/customer',
    path: '/customer',
    component: lazy(() => import("../Pages/Customers")),
    icon: ContactsOutlined,
  },
  {
    name: 'Salesperson',
    link: '/salesperson',
    path: '/salesperson',
    component: lazy(() => import("../Pages/Salesperson")),
    icon: ContactsOutlined,
  },
  {
    name: 'Product',
    link: '/product',
    path: '/product',
    component: lazy(() => import("../Pages/Products")),
    icon: ContactsOutlined,
  },
  {
    name: 'Product Type',
    link: '/productkind',
    path: '/productkind',
    component: lazy(() => import("../Pages/ProductKind")),
    icon: ContactsOutlined,
  },
];

export default STATIC_ROUTES;