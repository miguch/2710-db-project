import { message, Table } from 'antd';
import { useCallback, useEffect, useState } from 'react';
import useAntTable from '../Hooks/Table';
import useDataPage from '../Hooks/DataPage';
import useDataHandlers from '../Hooks/Data';

const TITLE = 'Product Types';
const SCHEMA = [
  {
    title: 'Kind ID',
    name: 'id',
    key: true,
    formHidden: true
  },
  {
    title: 'Name',
    name: 'name'
  }
];

const apiName = 'product-kinds';
const API = {
  get: `/${apiName}`,
  create: `/${apiName}`,
  update: (id) => `/${apiName}/${id}`,
  delete: (id) => `/${apiName}/${id}`
};

export default function ProductKind() {
  const handlers = useDataHandlers(API);

  const page = useDataPage(TITLE, SCHEMA, handlers.dataLoader, handlers, []);
  return page;
}
