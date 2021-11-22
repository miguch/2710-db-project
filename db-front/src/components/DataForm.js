import { Form, Input, InputNumber, Select } from 'antd';
import { useEffect, useMemo, useState } from 'react';
import useNetwork from '../Hooks/Network';

const formItemLayout = {
  labelCol: { span: 4 },
  wrapperCol: { span: 20 }
};

export default function DataForm({ formSchema, form }) {
  const service = useNetwork();
  const [relationMappings, setRelationMappings] = useState({});
  useEffect(() => {
    (async () => {
      const mapping = {};
      for (const field of formSchema) {
        if (field.relationApi) {
          mapping[field.name] = await service({
            method: 'get',
            url: field.relationApi
          });
        }
      }
      setRelationMappings(mapping);
    })();
  }, [formSchema, service]);

  const formItemsMap = {
    number: (field) => <InputNumber></InputNumber>,
    select: (field) => (
      <Select>
        {relationMappings[field.name] &&
          relationMappings[field.name].map((option) => (
            <Select.Option value={option.id}>
              {option[field.relationField]}
            </Select.Option>
          ))}
      </Select>
    )
  };
  const defaultFormItem = (field) => <Input></Input>;
  return (
    <Form form={form} {...formItemLayout}>
      {formSchema
        .filter((item) => !item.formHidden)
        .map((item) => (
          <Form.Item
            label={item.title}
            key={item.name}
            name={item.name}
            rules={item.rules}
          >
            {(formItemsMap[item.type] || defaultFormItem)(item)}
          </Form.Item>
        ))}
    </Form>
  );
}
