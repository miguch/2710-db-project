import { createSlice } from '@reduxjs/toolkit';

let loginPromise = new Promise((res) => {
  res();
});
let loginPromiseResolve = null;

export const counterSlice = createSlice({
  name: 'userInfo',
  initialState: {
    userInfo: {
      username: 'gg',
      loginRequired: false
    }
  },
  reducers: {
    setUsername(state, action) {
      state.username = actions.payload;
    },
    setUserInfo(state, action) {
      Object.assign(state.userInfo, action.payload);
    },
    setLoginRequired(state, action) {
      console.log(action)
      state.userInfo.loginRequired = action.payload;
      if (state.userInfo.loginRequired) {
        loginPromise = new Promise((resolve) => {
          loginPromiseResolve = resolve;
        });
      } else {
        loginPromiseResolve && loginPromiseResolve();
      }
    }
  }
});

// Action creators are generated for each case reducer function
export const { setUsername, setLoginRequired, setUserInfo } =
  counterSlice.actions;

export default counterSlice.reducer;
