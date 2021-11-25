import { Table, Button } from 'antd';
import { useCallback, useEffect, useState } from 'react';
import useAntTable from '../Hooks/Table';
import useDataPage from '../Hooks/DataPage';
import useDataHandlers from '../Hooks/Data';
import useNetwork from '../Hooks/Network';

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
    name: 'region_manager',
    relationApi: '/sales-people',
    relationField: 'user.username',
    tableRenderField: 'managerName',
    type: 'select'
  }
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
  const service = useNetwork();
  const defaultLoader = handlers.dataLoader;
  handlers.dataLoader = async (current, pageSize) => {
    const result = await defaultLoader(current, pageSize);
    await Promise.all(
      result.data.map(async (e) => {
        if (e.region_manager?.user) {
          const userInfo = await service({
            url: '/users/' + e.region_manager.user,
            method: 'get'
          });
          e.region_manager.managerName = userInfo.username;
        }
      })
    );
    return result;
  };

  const page = useDataPage(TITLE, SCHEMA, handlers.dataLoader, handlers, []);
  return page;
}
