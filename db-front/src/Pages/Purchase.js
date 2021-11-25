import { Button, Table } from 'antd';
import { useCallback, useEffect, useState } from 'react';
import useAntTable from '../Hooks/Table';
import useDataPage from '../Hooks/DataPage';
import useDataHandlers from '../Hooks/Data';
import { ShoppingCartOutlined } from '@ant-design/icons';
import PurchaseForm from '../components/PurchaseForm';

const TITLE = 'Product';

const apiName = 'products';
const API = {
  get: `/${apiName}`
  // create: `/${apiName}`,
  // update: (id) => `/${apiName}/${id}`,
  // delete: (id) => `/${apiName}/${id}`
};

export default function Customer() {
  const handlers = useDataHandlers(API);

  const [purchaseTarget, setPurchaseTarget] = useState(null);
  const [showPurchaseDialog, setShowPurchaseDialog] = useState(false);
  const onClickPurchase = useCallback((item) => {
    setPurchaseTarget(item);
    setShowPurchaseDialog(true);
  }, []);
  const SCHEMA = [
    {
      title: 'Product ID',
      name: 'id',
      key: true,
      formHidden: true
    },
    {
      title: 'Name',
      name: 'name'
    },
    {
      title: 'In Stock',
      name: 'amount',
      type: 'number'
    },
    {
      title: 'Price',
      name: 'price',
      type: 'number'
    },
    {
      title: 'Description',
      name: 'description'
    },
    {
      title: 'Type',
      name: 'product_type',
      relationApi: '/product-kinds',
      relationField: 'name',
      type: 'select'
    },
    {
      title: 'Purchase',
      render: (_, item) => (
        <Button
          disabled={item.amount === 0}
          onClick={() => onClickPurchase(item)}
        >
          <ShoppingCartOutlined></ShoppingCartOutlined>Buy
        </Button>
      )
    }
  ];

  const page = useDataPage(TITLE, SCHEMA, handlers.dataLoader, handlers, []);
  return (
    <>
      {page}
      <PurchaseForm
        visible={showPurchaseDialog}
        purchaseTarget={purchaseTarget}
        onClose={() => setShowPurchaseDialog(false)}
      ></PurchaseForm>
    </>
  );
}
