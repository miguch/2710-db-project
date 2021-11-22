import { Table, Button } from 'antd';
import { useCallback, useEffect, useState } from 'react';
import useAntTable from '../Hooks/Table';
import useDataPage from '../Hooks/DataPage';
import useDataHandlers from '../Hooks/Data';

const TITLE = 'Region';
const SCHEMA = [
  {
    title: 'Region ID',
    name: 'id',
    key: true,
    formHidden: true
  },
  {
    title: 'Name',
    name: 'region_name'
  },
  {
    title: 'Manager',
    name: 'region_manager'
  },
];

const apiName = 'regions';
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
