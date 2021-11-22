import { useCallback, useEffect, useMemo, useState } from 'react';

export default function useAntTable(dataLoader, schema, defaultData = []) {
  const [loading, setLoading] = useState(true);
  const [pagination, setPagination] = useState({
    total: defaultData.length,
    showSizeChanger: true,
    current: 1,
    pageSize: 10,
    showTotal: (total, range) =>
      `Showing ${range[0]}-${range[1]} of ${total} records`
  });
  const [tableData, setTableData] = useState(defaultData);
  const loadData = useCallback(
    (pagination) => {
      setLoading(true);
      dataLoader(pagination.current, pagination.pageSize)
        .then((data) => {
          setTableData(data.data);
          setPagination({...pagination, total: data.total})
        })
        .finally(() => {
          setLoading(false);
        });
    },
    [dataLoader]
  );
  // eslint-disable-next-line react-hooks/exhaustive-deps
  useEffect(() => loadData(pagination), []);
  const onTableChange = useCallback((newPagination, filters, sorter) => {
    console.log(newPagination);
    setPagination({
      ...pagination,
      current: newPagination.current,
      pageSize: newPagination.pageSize
    });
    loadData(newPagination);
  }, [pagination, loadData]);
  const reload = useCallback(() => {
    loadData(pagination);
  }, [loadData, pagination]);
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
    reload,
    pagination,
    loading,
    columns,
    tableData
  };
}
