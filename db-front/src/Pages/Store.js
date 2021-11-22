import { Table, Button } from 'antd';
import { useCallback, useEffect, useState } from 'react';
import useAntTable from '../Hooks/Table';
import useDataPage from '../Hooks/DataPage';
import useDataHandlers from '../Hooks/Data';

const TITLE = 'Store';
const SCHEMA = [
  {
    title: 'Store ID',
    name: 'id',
    key: true,
    formHidden: true
  },
  {
    title: 'Manager',
    name: 'manager'
  },
  {
    title: 'Salespersons',
    name: 'num_salesperson'
  },
  {
    title: 'Region',
    name: 'region'
  }
];

const apiName = 'stores';
const API = {
  get: `/${apiName}`,
  create: `/${apiName}`,
  update: (id) => `/${apiName}/${id}`,
  delete: (id) => `/${apiName}/${id}`
};

export default function Stores() {
  const handlers = useDataHandlers(API);

  const page = useDataPage(TITLE, SCHEMA, handlers.dataLoader, handlers, []);
  return page;
}
