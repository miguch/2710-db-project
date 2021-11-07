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
    component: lazy(() => import("../Pages/Customers/Customers")),
    icon: ContactsOutlined,
  },
  {
    name: 'Product',
    link: '/product',
    path: '/product',
    component: lazy(() => import("../Pages/Products/Products")),
    icon: ContactsOutlined,
  },
];

export default STATIC_ROUTES;