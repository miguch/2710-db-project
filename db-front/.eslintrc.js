module.exports = {
  "plugins": [
    "react-hooks"
  ],
  "rules": {
    "react-hooks/rules-of-hooks": "error", // 检查 Hook 的规则
    "react-hooks/exhaustive-deps": "warn" // 检查 effect 的依赖
  },
  "parserOptions": {
    ecmaFeatures: {
      jsx: true,
    },
    ecmaVersion: 2018,
    "sourceType": "module"
  }
}