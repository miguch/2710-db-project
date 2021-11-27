import { Table, Button } from 'antd';
import { useCallback, useEffect, useState } from 'react';
import useAntTable from '../Hooks/Table';
import useDataPage from '../Hooks/DataPage';
import useDataHandlers from '../Hooks/Data';
import { useSelector } from 'react-redux';

const TITLE = 'Salesperson';
const SCHEMA = [
  {
    title: 'Salesperson ID',
    name: 'id',
    key: true,
    formHidden: true
  },
  {
    title: 'Name',
    name: 'name',
    formHidden: true,
    render: (_, item) => item.user.username
  },
  {
    title: 'Street',
    name: 'street'
  },
  {
    title: 'State',
    name: 'state'
  },
  {
    title: 'Zip',
    name: 'zipcode'
  },
  {
    title: 'Job Title',
    name: 'job_title'
  },
  {
    title: 'Store',
    name: 'store',
    relationField: 'name',
    relationApi: '/stores',
    type: 'select'
  },
  {
    title: 'Salary',
    name: 'salary'
  }
];

const apiName = 'sales-people';
const API = {
  get: `/${apiName}`,
  // create: `/${apiName}`,
  update: (id) => `/${apiName}/${id}`
  // delete: (id) => `/${apiName}/${id}`
};

export default function Salesperson() {
  const api = { ...API };
  const userInfo = useSelector((state) => state.userInfo.userInfo);
  if (userInfo?.role?.name !== 'salesperson') {
    delete api.update;
  }
  const handlers = useDataHandlers(api);

  const page = useDataPage(TITLE, SCHEMA, handlers.dataLoader, handlers, []);
  return page;
}
