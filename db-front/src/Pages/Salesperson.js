import { Table, Button } from 'antd';
import { useCallback, useEffect, useState } from 'react';
import useAntTable from '../Hooks/Table';
import useDataPage from '../Hooks/DataPage';
import useDataHandlers from '../Hooks/Data';

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
    name: 'store_assigned'
  },
  {
    title: 'Salary',
    name: 'salary'
  },
  {
    title: 'Detail',
    render: (_, item) => <Button>Show Details</Button>
  }
];

const apiName = 'sales-people';
const API = {
  get: `/${apiName}`
  // create: `/${apiName}`,
  // update: (id) => `/${apiName}/${id}`,
  // delete: (id) => `/${apiName}/${id}`
};

export default function Salesperson() {
  const handlers = useDataHandlers(API);

  const page = useDataPage(TITLE, SCHEMA, handlers.dataLoader, handlers, []);
  return page;
}