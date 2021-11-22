import { Table } from 'antd';
import { useCallback, useEffect, useState } from 'react';
import useAntTable from '../Hooks/Table';
import useDataPage from '../Hooks/DataPage';

const TITLE = "Customer"
const SCHEMA = [
  {
    title: 'Customer ID',
    name: 'customerId',
    key: true,
    formHidden: true,
  },
  {
    title: 'Name',
    name: 'name',
  },
  {
    title: 'Address',
    name: 'address'
  },
  {
    title: 'Kind',
    name: 'kind'
  }
];

export default function Customer() {
  const dataLoader = useCallback(async () => {}, []);
  const page = useDataPage(TITLE, SCHEMA, dataLoader, {}, [
    {
      customerId: '123',
      name: 'Pitt',
      address: 'oakland',
      kind: 'business'
    }
  ]);
  return page;
}
