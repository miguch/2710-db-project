import { Table, Button } from 'antd';
import { useCallback, useEffect, useState } from 'react';
import useAntTable from '../Hooks/Table';
import useDataPage from '../Hooks/DataPage';
import useDataHandlers from '../Hooks/Data';

const TITLE = 'Transactions';

const apiName = 'transactions';
const API = {
  get: `/${apiName}`
  // create: `/${apiName}`,
  // update: (id) => `/${apiName}/${id}`,
  // delete: (id) => `/${apiName}/${id}`
};

export default function Transactions() {
  const handlers = useDataHandlers(API);

  const SCHEMA = [
    {
      title: 'Transactions ID',
      name: 'id',
      key: true,
      formHidden: true
    },
    {
      title: 'Salesperson',
      name: 'salesperson_user',
      relationField: 'user.username'
    },

    {
      title: 'Date',
      name: 'sale_date'
    },
    {
      title: 'Detail',
      render: (_, item) => <Button>Show Details</Button>
    }
  ];

  const page = useDataPage(TITLE, SCHEMA, handlers.dataLoader, handlers, []);
  return page;
}
