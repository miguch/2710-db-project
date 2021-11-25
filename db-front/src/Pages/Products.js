import { Table } from 'antd';
import { useCallback, useEffect, useState } from 'react';
import useAntTable from '../Hooks/Table';
import useDataPage from '../Hooks/DataPage';
import useDataHandlers from '../Hooks/Data';

const TITLE = 'Product';
const SCHEMA = [
  {
    title: 'Product ID',
    name: 'id',
    key: true,
    formHidden: true
  },
  {
    title: 'Name',
    name: 'name'
  },
  {
    title: 'Amount',
    name: 'amount',
    type: 'number'
  },
  {
    title: 'Price',
    name: 'price',
    type: 'number'
  },
  {
    title: 'Description',
    name: 'description'
  },
  {
    title: 'Type',
    name: 'product_type',
    relationApi: '/product-kinds',
    relationField: 'name',
    type: 'select'
  }
];

const apiName = 'products';
const API = {
  get: `/${apiName}`,
  create: `/${apiName}`,
  update: (id) => `/${apiName}/${id}`,
  delete: (id) => `/${apiName}/${id}`
};

export default function Customer() {
  const handlers = useDataHandlers(API);

  const page = useDataPage(TITLE, SCHEMA, handlers.dataLoader, handlers, []);
  return page;
}
