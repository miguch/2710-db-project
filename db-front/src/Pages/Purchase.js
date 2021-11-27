import {
  Button,
  Input,
  InputNumber,
  message,
  Modal,
  Table,
  Form,
  Select
} from 'antd';
import { useCallback, useEffect, useState } from 'react';
import useAntTable from '../Hooks/Table';
import useDataPage from '../Hooks/DataPage';
import useDataHandlers from '../Hooks/Data';
import { ShoppingCartOutlined } from '@ant-design/icons';
import PurchaseForm from '../components/PurchaseForm';
import _ from 'lodash';
import useNetwork from '../Hooks/Network';

const TITLE = 'Shopping';

const apiName = 'products';
const API = {
  get: `/${apiName}`,
  // create: `/${apiName}`,
  // update: (id) => `/${apiName}/${id}`,
  // delete: (id) => `/${apiName}/${id}`
  salesperson: '/sales-people'
};

export default function Customer() {
  const handlers = useDataHandlers(API);
  const service = useNetwork();

  // product id to {purchase amount, product}
  const [selected, setSelected] = useState({});
  const [showPurchaseDialog, setShowPurchaseDialog] = useState(false);
  const [salespersonList, setSalespersonList] = useState([]);
  const [searchForm] = Form.useForm();
  const [currentForm, setCurrentForm] = useState({});
  const onClickPurchase = useCallback(
    (item) => {
      setSelected({ ...selected, [item.id]: { product: item, quantity: 1 } });
    },
    [selected]
  );

  useEffect(() => {
    service({
      method: 'get',
      url: API.salesperson
    })
      .then((res) => {
        setSalespersonList(res);
      })
      .catch((err) => {
        console.log(err);
        message.error('Failed to fetch salesperson list');
      });
  }, [service]);

  const onSearch = useCallback(() => {
    const newForm = searchForm.getFieldsValue();
    setCurrentForm(newForm);
    handlers.originDataLoader =
      handlers.originDataLoader || handlers.dataLoader;
    handlers.dataLoader = async (current, pageSize, filter, sorter) => {
      const query = newForm.name;
      let queryParams = {};
      if (query) {
        queryParams['name_contains'] = query;
      }
      const sales = newForm.salesperson;
      if (sales) {
        queryParams['salesperson'] = sales;
      }
      const data = await handlers.originDataLoader(
        current,
        pageSize,
        filter,
        sorter,
        queryParams
      );
      return data;
    };
    handlers.doReload(handlers.dataLoader);
  }, [handlers, searchForm]);

  const SCHEMA = [
    {
      title: 'Product ID',
      name: 'id',
      key: true,
      formHidden: true
    },
    {
      title: 'Name',
      name: 'name',
      sorter: true
    },
    {
      title: 'Price',
      name: 'price',
      type: 'number',
      render: (text) => '$' + text,
      sorter: true
    },
    ...(!currentForm.salesperson
      ? []
      : [
          {
            title: 'In Stock',
            name: 'amount'
          }
        ]),
    {
      title: 'Description',
      name: 'description'
    },
    {
      title: 'Type',
      name: 'product_type',
      relationApi: '/product-kinds',
      relationField: 'name',
      type: 'select',
      sorter: true
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
            // disabled={item.amount === 0}
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
    ),
    beforeTable: () => (
      <Form form={searchForm} layout="inline" style={{ marginBottom: 6 }}>
        <Form.Item name="name" label="Name">
          <Input></Input>
        </Form.Item>
        <Form.Item name="salesperson" label="Salesperson">
          <Select onChange={onSearch} style={{ width: 160 }}>
            {salespersonList.map((p) => (
              <Select.Option key={p.id} value={p.id}>
                {p.user.username} ({p.store.name})
              </Select.Option>
            ))}
          </Select>
        </Form.Item>
        <Form.Item>
          <Button htmlType="submit" type="primary" onClick={onSearch}>
            Search
          </Button>
        </Form.Item>
      </Form>
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
          salesperson={currentForm.salesperson}
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
