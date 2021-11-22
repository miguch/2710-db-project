import { message } from 'antd';
import { useCallback, useMemo } from 'react';
import useNetwork from '../Hooks/Network';
import querystring from 'querystring';

export default function useDataHandlers(apis) {
  const service = useNetwork();
  const res = useMemo(() => {
    const res = {};
    if (apis.get) {
      res.dataLoader = async (current, pageSize) => {
        try {
          const res = await service({
            method: 'get',
            url: `${apis.get}?${querystring.stringify({
              _start: (current - 1) * pageSize,
              _limit: pageSize
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
    }
    if (apis.create) {
      res.onCreate = async (newData) => {
        try {
          const res = await service({
            method: 'post',
            url: apis.create,
            data: newData
          });
          return res;
        } catch (err) {
          console.log(err);
          message.error('request error');
        }
      };
    }
    return res;
  }, [apis, service]);
  return res;
}
