import { useCallback, useEffect, useMemo, useState } from 'react';

export default function useAntTable(dataLoader, schema, defaultData = []) {
  const [loading, setLoading] = useState(true);
  const [pagination, setPagination] = useState({
    total: defaultData.length,
    showSizeChanger: true,
    showTotal: (total, range) =>
      `Showing ${range[0]}-${range[1]} of ${total} records`
  });
  const [tableData, setTableData] = useState(defaultData);
  const loadData = (pagination) => {};
  useEffect(loadData, []);
  const onTableChange = useCallback((newPagination, filters, sorter) => {
    console.log(newPagination);
  }, []);
  const columns = useMemo(
    () =>
      schema.map((e) => ({
        title: e.title,
        dataIndex: e.name,
        key: e.name,
        ...e
      })),
    [schema]
  );
  return {
    onTableChange,
    pagination,
    loading,
    columns,
    tableData
  };
}
