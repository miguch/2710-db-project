import { createSlice } from '@reduxjs/toolkit';


export const counterSlice = createSlice({
  name: 'userInfo',
  initialState: {
    userInfo: {
      userName: 'gg',
      loginRequired: false,
    }
  },
  reducers: {
    setUserInfo(state, action) {
      state.userInfo = actions.payload;
    },
    setLoginRequired(state, action) {
      state.userInfo.loginRequired = action.payload;
    }
  }
});

// Action creators are generated for each case reducer function
export const { setUserInfo, setLoginRequired } = counterSlice.actions;

export default counterSlice.reducer;