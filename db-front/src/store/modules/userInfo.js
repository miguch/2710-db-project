import { createSlice } from '@reduxjs/toolkit';


export const counterSlice = createSlice({
  name: 'userInfo',
  initialState: {
    userInfo: {
      userName: 'gg'
    }
  },
  reducers: {

  }
});

// Action creators are generated for each case reducer function
export const {  } = counterSlice.actions;

export default counterSlice.reducer;