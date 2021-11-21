import tableStyles from '../../styles/table.module.less';
import pageStyles from '../../styles/page.module.less';
import { Table } from 'antd';
import { useCallback, useEffect, useState } from 'react';
import useAntTable from '../../Hooks/Table';

const SCHEMA = [
  {
    title: 'Customer ID',
    name: 'customerId',
  },
  {
    title: 'Name',
    name: 'name',
  },
  {
    title: 'Address',
    name: 'address',
  },
  {
    title: 'Kind',
    name: 'kind',
  }
]

export default function Customer() {
  const dataLoader = (async () => {}, []);
  const { onTableChange, pagination, loading, tableData, columns } = useAntTable(
    dataLoader,
    SCHEMA,
    [
      {
        customerId: '123',
        name: 'Pitt',
        address: 'oakland',
        kind: 'business'
      }
    ]
  );

  return (
    <div>
      <div className={pageStyles.PageTitle}>Customer</div>
      <Table
        columns={columns}
        dataSource={tableData}
        pagination={pagination}
        onChange={onTableChange}
        rowKey="customerId"
      ></Table>
    </div>
  );
}
