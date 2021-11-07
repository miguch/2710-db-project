import { configureStore } from '@reduxjs/toolkit'
import userInfo from './modules/userInfo'

export default configureStore({
  reducer: {
    userInfo
  },
})