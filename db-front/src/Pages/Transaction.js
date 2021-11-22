import { Table, Button } from 'antd';
import { useCallback, useEffect, useState } from 'react';
import useAntTable from '../Hooks/Table';
import useDataPage from '../Hooks/DataPage';
import useDataHandlers from '../Hooks/Data';

const TITLE = 'Transactions';
const SCHEMA = [
  {
    title: 'Transactions ID',
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
    title: 'Date',
    name: 'sale_date'
  }
];

const apiName = 'transactions';
const API = {
  get: `/${apiName}`,
  // create: `/${apiName}`,
  // update: (id) => `/${apiName}/${id}`,
  // delete: (id) => `/${apiName}/${id}`
};

export default function Transactions() {
  const handlers = useDataHandlers(API);

  const page = useDataPage(TITLE, SCHEMA, handlers.dataLoader, handlers, []);
  return page;
}
