import { useCallback, useEffect, useState } from 'react';

export default function useAntTable(dataLoader, defaultData = []) {
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
  return {
    onTableChange,
    pagination,
    loading,
    tableData
  };
}
