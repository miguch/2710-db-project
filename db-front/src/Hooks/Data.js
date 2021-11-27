import { message } from 'antd';
import { useCallback, useMemo, useRef } from 'react';
import useNetwork from '../Hooks/Network';
import querystring from 'querystring';

export default function useDataHandlers(apis) {
  const service = useNetwork();
  let reloadFunc = useRef(null);
  const res = useMemo(() => {
    const res = {};
    if (apis.get) {
      res.dataLoader = async (current, pageSize, filter, sorter, additionalParams) => {
        try {
          let sortParams = {};
          if (sorter && sorter.column) {
            console.log(sorter);
            const orderMap = {
              ascend: 'ASC',
              descend: 'DESC'
            };
            sortParams['_sort'] =
              sorter.column.dataIndex + ':' + orderMap[sorter.order];
          }
          const res = await service({
            method: 'get',
            url: `${apis.get}?${querystring.stringify({
              _start: (current - 1) * pageSize,
              _limit: pageSize,
              ...sortParams,
              ...additionalParams
            })}`
          });
          const count = await service({
            method: 'get',
            url: `${apis.get}/count`
          });
          return { data: res, total: count };
        } catch (err) {
          console.log(err);
          message.error('request error');
        }
      };
      res.onReload = (func) => {
        reloadFunc.current = func;
      };
      res.doReload = (...args) => {
        reloadFunc.current && reloadFunc.current(...args);
      };
    }
    if (apis.create) {
      res.onCreate = async (newData) => {
        const res = await service({
          method: 'post',
          url: apis.create,
          data: newData
        });
        return res;
      };
    }
    if (apis.update) {
      res.onEdit = async (originId, newData) => {
        const res = await service({
          method: 'put',
          url: apis.update(originId),
          data: newData
        });
        return res;
      };
    }
    if (apis.delete) {
      res.onDelete = async (id) => {
        const res = await service({
          method: 'delete',
          url: apis.delete(id)
        });
      };
    }
    return res;
  }, [apis, service, reloadFunc]);
  return res;
}
