import styles from './layout.module.less';
import Header from './Header';
import Nav from './Nav'
import Content from './Content';

export default function Layout() {
  return (
    <div className={styles.Layout}>
      <Header></Header>
      <Nav></Nav>
      <Content></Content>
    </div>
  );
}