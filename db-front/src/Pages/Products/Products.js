import tableStyles from '../../styles/table.module.less';
import pageStyles from '../../styles/page.module.less';
import { Table } from 'antd';
import { useCallback, useEffect, useState } from 'react';
import useAntTable from '../../Hooks/Table';
import useDataPage from '../../Hooks/DataPage';

const TITLE = "Products"
const SCHEMA = [
  {
    title: 'Product ID',
    name: 'productId',
    key: true,
    formHidden: true,
  },
  {
    title: 'Name',
    name: 'name',
  },
  {
    title: 'Inventory',
    name: 'inventory',
    type: 'number'
  },
  {
    title: 'Price',
    name: 'price',
    type: 'number'
  },
  {
    title: 'Kind',
    name: 'kind',
  }
]

export default function Customer() {
  const dataLoader = (async () => {}, []);

  const page = useDataPage(TITLE, SCHEMA, dataLoader, {
    onCreate(form) {

    }
  }, [
    {
      productId: '123',
      name: 'Vaccine',
      inventory: 12021,
      price: 20,
      kind: "medical"
    }
  ]);
  return page;
}
