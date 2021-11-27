import pageStyles from '../styles/page.module.less';
import { message, Tabs, Table, Form, Input, Select, Button } from 'antd';
import { useCallback, useEffect, useMemo, useState } from 'react';
import useNetwork from '../Hooks/Network';
import querystring from 'querystring';

export default function Aggregation() {
  const service = useNetwork();
  const analyzers = useMemo(
    () =>
      [
        {
          name: 'Product Rank',
          url: '/aggregation/saleProfit',
          columns: [
            {
              title: 'Product Name',
              dataIndex: 'name'
            },
            {
              title: 'Sales Volume',
              dataIndex: 'sales_volume',
              sortable: true
            },
            {
              title: 'Profit',
              dataIndex: 'total_profit',
              sortable: true,
              render: (val) => '$' + val
            }
          ]
        },
        {
          name: 'Categories Rank',
          url: '/aggregation/topSaleCategory',
          columns: [
            {
              title: 'Product Category',
              dataIndex: 'product_type'
            },
            {
              title: 'Sales Volume',
              dataIndex: 'sales_volume',
              sortable: true
            },
            {
              title: 'Profit',
              dataIndex: 'total_profit',
              sortable: true,
              render: (val) => '$' + val
            }
          ]
        },
        {
          name: 'Region Rank',
          url: '/aggregation/topRegions',
          columns: [
            {
              title: 'Region',
              dataIndex: 'region'
            },
            {
              title: 'Sales Volume',
              dataIndex: 'sales_volume',
              sortable: true
            },
            {
              title: 'Profit',
              dataIndex: 'total_profit',
              sortable: true,
              render: (val) => '$' + val
            }
          ]
        },
        {
          name: 'Business Customers Rank',
          url: '/aggregation/topBusinesses',
          inputs: [
            { name: 'product', title: 'Product', selectUrl: '/products' }
          ],
          columns: [
            {
              title: 'Product',
              dataIndex: 'product_name'
            },
            {
              title: 'Customer Name',
              dataIndex: 'customer_name'
            },
            {
              title: 'Business Category',
              dataIndex: 'business_category'
            },
            {
              title: 'Sales Volume',
              dataIndex: 'sales_volume',
              sortable: true
            },
            {
              title: 'Profit',
              dataIndex: 'total_profit',
              sortable: true,
              render: (val) => '$' + val
            }
          ]
        }
      ].map((tab) => ({
        ...tab,
        columns: tab.columns?.map((e) =>
          e.sortable
            ? {
                ...e,
                sorter: (a, b) => a[e.dataIndex] - b[e.dataIndex]
              }
            : e
        )
      })),
    []
  );
  const [activeTabConfig, setActiveTabConfig] = useState(analyzers[0]);
  const [data, setData] = useState([]);
  const [loading, setLoading] = useState(false);

  const [formOptions, setFormOptions] = useState([]);
  const [queryForm] = Form.useForm();
  const loadQueryFormData = useCallback(
    (config) => {
      if (config.inputs) {
        Promise.all(
          config.inputs
            .filter((e) => e.selectUrl)
            .map(async (e) => ({
              name: e.name,
              data: await service({
                url: e.selectUrl,
                method: 'get'
              })
            }))
        )
          .then((res) => {
            setFormOptions(res);
          })
          .catch((err) => {
            console.log(err);
            message.error('Failed to fetch form option data');
          });
      }
    },
    [service]
  );

  const loadData = useCallback(
    async (config, queryParams) => {
      let url = config.url;
      if (queryParams) {
        url += '?' + querystring.stringify(queryParams);
      }
      setLoading(true);
      service({
        method: 'get',
        url: url
      })
        .then((data) => {
          data.forEach((e, index) => {
            e.key = index;
          });
          setData(data);
        })
        .catch((err) => {
          console.log(err);
          message.error('Failed to fetch aggregation data.');
        })
        .finally(() => {
          setLoading(false);
        });
    },
    [service]
  );
  const onDoQuery = useCallback(() => {
    const action = async () => {
      if (activeTabConfig.inputs) {
        try {
          const values = await queryForm.validateFields();
          loadData(activeTabConfig, values);
        } catch (err) {
          return;
        }
      }
    };
    action();
  }, [loadData, activeTabConfig, queryForm]);
  useEffect(() => {
    loadData(analyzers[0]);
    loadQueryFormData(analyzers[0]);
  }, [loadData, analyzers, loadQueryFormData]);

  const onChangeTab = useCallback(
    (tab) => {
      const newConfig = analyzers.find((e) => e.name === tab);
      setActiveTabConfig(newConfig);
      setData([]);
      setFormOptions([]);
      if (!newConfig.inputs) {
        loadData(newConfig);
      } else {
        loadQueryFormData(newConfig);
        queryForm.resetFields();
      }
    },
    [loadData, analyzers, loadQueryFormData, queryForm]
  );
  return (
    <div>
      <div className={pageStyles.PageTitle}>Data Aggregation</div>
      <Tabs onChange={onChangeTab} defaultActiveKey={analyzers[0].name}>
        {analyzers.map((e) => (
          <Tabs.TabPane tab={e.name} key={e.name}>
            {activeTabConfig.inputs && (
              <Form
                style={{ marginBottom: 12 }}
                form={queryForm}
                layout="inline"
              >
                {activeTabConfig.inputs.map((e) => {
                  if (e.selectUrl) {
                    const options =
                      formOptions.find((o) => o.name === e.name)?.data || [];
                    return (
                      <Form.Item
                        key={e.name}
                        rules={[{ required: true }]}
                        style={{ width: 250 }}
                        label={e.title}
                        name={e.name}
                      >
                        <Select>
                          {options.map((o) => (
                            <Select.Option key={o.name} value={o.name}>
                              {o.name}
                            </Select.Option>
                          ))}
                        </Select>
                      </Form.Item>
                    );
                  } else {
                    return (
                      <Form.Item
                        key={e.name}
                        rules={[{ required: true }]}
                        style={{ width: 250 }}
                        label={e.title}
                        name={e.name}
                      >
                        <Input></Input>
                      </Form.Item>
                    );
                  }
                })}
                <Form.Item>
                  <Button type="primary" onClick={onDoQuery}>
                    Query
                  </Button>
                </Form.Item>
              </Form>
            )}
            <Table
              loading={loading}
              pagination={false}
              dataSource={data}
              columns={activeTabConfig.columns}
            ></Table>
          </Tabs.TabPane>
        ))}
      </Tabs>
    </div>
  );
}
