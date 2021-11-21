import axios from 'axios';
import { useState } from 'react';
import storage from '../utils/storage';

export default function useNetwork(requireAuth=true) {
  const [service] = useState(() => axios.create());
  
  if (requireAuth) {
    // Auth service will send the authentication token
    // when doing request.
    authService.interceptors.request.use((config) => {
      if (storage.getItem('user-token')) {
        config.headers['Authentication'] = 'Bearer ' + storage.getItem('user-token');
        return config;
      } else {
        // TODO: trigger login prompt
      }
    }, err => {
    
    });
  }

  return service;
}