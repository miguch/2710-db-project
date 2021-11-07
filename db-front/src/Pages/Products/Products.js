import tableStyles from '../../styles/table.module.less';
import pageStyles from '../../styles/page.module.less';
import { Table } from 'antd';
import { useCallback, useEffect, useState } from 'react';
import useAntTable from '../../Hooks/Table';

export default function Customer() {
  const dataLoader = (async () => {}, []);
  const { onTableChange, pagination, loading, tableData } = useAntTable(
    dataLoader,
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
  const columns = [
    {
      title: 'Product ID',
      dataIndex: 'productId',
      key: 'productId'
    },
    {
      title: 'Name',
      dataIndex: 'name',
      key: 'name'
    },
    {
      title: 'Inventory amount',
      dataIndex: 'inventory',
      key: 'inventory'
    },
    {
      title: 'Price',
      dataIndex: 'price',
      key: 'price'
    },
    {
      title: 'Kind',
      dataIndex: 'kind',
      key: 'kind'
    }
  ];

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
