import axios from 'axios';
import { useMemo, useState } from 'react';
import { useDispatch } from 'react-redux';
import { setLoginRequired } from '../store/modules/userInfo';
import storage from '../utils/storage';

const BASEURL = '/api';

export default function useNetwork(requireAuth = true) {
  const dispatch = useDispatch();
  const service = useMemo(() => {
    const service = axios.create({
      baseURL: BASEURL
    });
    if (requireAuth) {
      // Auth service will send the authentication token
      // when doing request.
      service.interceptors.request.use(
        (config) => {
          if (storage.getItem('user-token')) {
            config.headers['Authorization'] =
              'Bearer ' + storage.getItem('user-token');
            return config;
          } else {
            dispatch(setLoginRequired(true));
          }
        },
        (err) => {}
      );
    }
    service.interceptors.response.use(value => {
      return value.data;
    })
    return service;
  }, [requireAuth, dispatch]);

  return service;
}
