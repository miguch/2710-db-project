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
        customerId: '123',
        name: 'Pitt',
        address: 'oakland',
        kind: 'business'
      }
    ]
  );
  const columns = [
    {
      title: 'Customer ID',
      dataIndex: 'customerId',
      key: 'customerId'
    },
    {
      title: 'Name',
      dataIndex: 'name',
      key: 'name'
    },
    {
      title: 'Address',
      dataIndex: 'address',
      key: 'address'
    },
    {
      title: 'Kind',
      dataIndex: 'kind',
      key: 'kind'
    }
  ];

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
