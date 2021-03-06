import { message } from 'antd';
import { useCallback, useEffect, useMemo, useState } from 'react';
import _ from 'lodash';

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
  const [filters, setFilters] = useState(null);
  const [sorter, setSorter] = useState(null);
  const [tableData, setTableData] = useState(defaultData);
  const loadData = useCallback(
    (pagination, filter, sorter, newLoader) => {
      setLoading(true);
      (newLoader || dataLoader)(
        pagination.current,
        pagination.pageSize,
        filter,
        sorter
      )
        .then((data) => {
          setTableData(data.data);
          setPagination({ ...pagination, total: data.total });
        })
        .catch((err) => {
          console.log(err);
          message.error('request error');
        })
        .finally(() => {
          setLoading(false);
        });
    },
    [dataLoader]
  );
  // eslint-disable-next-line react-hooks/exhaustive-deps
  useEffect(() => loadData(pagination), []);
  const onTableChange = useCallback(
    (newPagination, filters, sorter) => {
      newPagination = {
        ...pagination,
        current: newPagination.current,
        pageSize: newPagination.pageSize
      };
      setPagination(newPagination);
      setFilters(filters);
      setSorter(sorter);
      loadData(newPagination, filters, sorter);
    },
    [pagination, loadData]
  );
  const reload = useCallback(
    (newLoader) => {
      loadData(pagination, filters, sorter, newLoader);
    },
    [loadData, pagination, filters, sorter]
  );
  const columns = useMemo(
    () => [
      {
        title: 'No.',
        render: (_, __, index) =>
          (pagination.current - 1) * pagination.pageSize + index
      },
      ...schema.map((e) => ({
        title: e.title,
        dataIndex: e.name,
        key: e.name,
        ...(e.relationField
          ? {
              render: (val, item) =>
                _.get(item[e.name], e.tableRenderField || e.relationField)
            }
          : {}),
        ...e
      }))
    ],
    [schema, pagination]
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
