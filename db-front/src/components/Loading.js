import { Spin } from "antd";
import styles from './Loading.module.less';

export default function Loading() {
  return (
    <div className={styles.loading}>
      <Spin></Spin>
    </div>
  );
}