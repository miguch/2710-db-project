import tableStyles from '../../styles/table.module.less';
import pageStyles from '../../styles/page.module.less';
import { Table } from 'antd';
import { useCallback, useEffect, useState } from 'react';
import useAntTable from '../../Hooks/Table';

const SCHEMA = [
  {
    title: 'Product ID',
    name: 'productId',
  },
  {
    title: 'Name',
    name: 'name',
  },
  {
    title: 'Inventory amount',
    name: 'inventory',
  },
  {
    title: 'Price',
    name: 'price',
  },
  {
    title: 'Kind',
    name: 'kind',
  }
]

export default function Customer() {
  const dataLoader = (async () => {}, []);
  const { onTableChange, pagination, columns, loading, tableData } = useAntTable(
    dataLoader,
    SCHEMA,
    [
      {
        productId: '123',
        name: 'Vaccine',
        inventory: 12021,
        price: 20,
        kind: "medical"
      }
    ]
  );

  return (
    <div>
      <div className={pageStyles.PageTitle}>Product</div>
      <Table
        columns={columns}
        dataSource={tableData}
        pagination={pagination}
        onChange={onTableChange}
        rowKey="productId"
      ></Table>
    </div>
  );
}
