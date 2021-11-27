import { Button, InputNumber, message, Modal, Table } from 'antd';
import { useCallback, useEffect, useState } from 'react';
import useAntTable from '../Hooks/Table';
import useDataPage from '../Hooks/DataPage';
import useDataHandlers from '../Hooks/Data';
import { ShoppingCartOutlined } from '@ant-design/icons';
import PurchaseForm from '../components/PurchaseForm';
import _ from 'lodash';

const TITLE = 'Shopping';

const apiName = 'products';
const API = {
  get: `/${apiName}`
  // create: `/${apiName}`,
  // update: (id) => `/${apiName}/${id}`,
  // delete: (id) => `/${apiName}/${id}`
};

export default function Customer() {
  const handlers = useDataHandlers(API);

  // product id to {purchase amount, product}
  const [selected, setSelected] = useState({});
  const [showPurchaseDialog, setShowPurchaseDialog] = useState(false);
  const onClickPurchase = useCallback(
    (item) => {
      setSelected({ ...selected, [item.id]: { product: item, quantity: 1 } });
    },
    [selected]
  );
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
    // {
    //   title: 'In Stock',
    //   name: 'amount',
    //   type: 'number'
    // },
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
      width: 300,
      render: (_, item) =>
        item.id in selected ? (
          <>
            <InputNumber
              style={{ marginRight: 8 }}
              min={1}
              parser={(numStr) => parseInt(numStr)}
              onChange={(num) => {
                setSelected({
                  ...selected,
                  [item.id]: { product: item, quantity: num }
                });
              }}
              value={selected[item.id].quantity}
            ></InputNumber>
            <Button
              onClick={() => {
                delete selected[item.id];
                setSelected({ ...selected });
              }}
            >
              Cancel
            </Button>
            <span style={{ marginLeft: 6 }}>
              ${selected[item.id].product.price * selected[item.id].quantity}
            </span>
          </>
        ) : (
          <Button
            disabled={item.amount === 0}
            onClick={() => onClickPurchase(item)}
          >
            <ShoppingCartOutlined></ShoppingCartOutlined>Buy
          </Button>
        )
    }
  ];

  const page = useDataPage(TITLE, SCHEMA, handlers.dataLoader, handlers, [], {
    header: () => (
      <div style={{ float: 'right' }}>
        <span style={{ marginRight: 8, fontSize: 14 }}>
          Total: $
          {Object.keys(selected).reduce(
            (sum, currProd) =>
              sum +
              selected[currProd].product.price * selected[currProd].quantity,
            0
          )}
        </span>
        <Button
          type="primary"
          onClick={_.throttle(
            () => {
              if (Object.keys(selected).length === 0) {
                message.info('Please choose what you want to buy first');
              } else {
                setShowPurchaseDialog(true);
              }
            },
            2000,
            { trailing: false }
          )}
        >
          Check out
        </Button>
      </div>
    )
  });
  return (
    <>
      {page}

      <Modal
        title="Purchase"
        footer={null}
        onCancel={() => setShowPurchaseDialog(false)}
        visible={showPurchaseDialog}
      >
        <PurchaseForm
          selectedProducts={selected}
          onClose={() => setShowPurchaseDialog(false)}
          onComplete={() => {
            handlers.doReload();
            setSelected({});
            setShowPurchaseDialog(false);
          }}
        ></PurchaseForm>
      </Modal>
    </>
  );
}
