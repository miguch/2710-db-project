import axios from 'axios';
import storage from './storage';

// Auth service will send the authentication token
// when doing request.
const authService = axios.create();
// For login purpose, no token will be sent
const loginService = axios.create();

authService.interceptors.request.use((config) => {
  config.headers['Authentication'] = 'Bearer ' + storage.getItem('user-token');
  return config;
});

export {
  authService,
  loginService,
};
