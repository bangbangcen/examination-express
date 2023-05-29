const COLUMNS = {
  admin: ["name", "phone", "password", "role_id", "create_time"],
  assignment: ["category_id", "order_id", "doctor_id", "status", "is_extra"],
  category: ["name", "package_id", "average_duration", "price","department_id"],
  department: [ "name", "parent_id", "level", "is_full","queue_length"],
  department_doctor: ["department_id", "administer_id"],
  district: ["name"],
  doctor_status: ["doctor_id", "is_busy"],
  examination_center: [
    "name",
    "address",
    "nearby",
    "telephone",
    "latitude",
    "longitude",
    "district_id",
    "operator_id"
  ],
  examination_order: [
    "examinee_id",
    "package_id",
    "status",
    "type",
    "examine_date",
    "group_information_id",
    "center_id",
    "phone",
    "name"
  ],
  examination_result: ["result_value", "text_option_id", "assignment_id", "item_id"],
  examinee: [
    "name",
    "identification_number",
    "sex",
    "birthday",
    "phone",
    "create_time",
    "user_id",
    "relation",
  ],
  group_information: [
    "company_name",
    "create_time",
    "start_time",
    "end_time",
    "number",
    "package_id"
  ],
  item: [
    "name",
    "unit",
    "normal_range_id",
    "normal_option_id",
    "average_duration",
    "value_type",
    "department_id",
  ],
  item_option: ["option_id", "item_id"],
  normal_range: ["start", "end"],
  package: ["name", "price", "tag", "is_hot", "image"],
  package_category: ["package_id", "category_id"],
  permission: ["name", "parent_id", "level", "path", "component", "icon"],
  queue: ["department_id","order_id", "serial_number","time"],
  relationship: ["name"],
  result_text_option: ["text"],
  role: ["name", "description"],
  role_permission: ["permission_id", "role_id"],
  user: [
    "name",
    "identification_number",
    "sex",
    "birthday",
    "phone",
    "create_time",
  ],
};

/* 
  字段查询类型：
  -1 - 不支持作为过滤条件
  0 - 精确过滤，完全相等才满足
  1 - 模糊过滤
  2 - 范围过滤（无限集合）
  3 - 范围过滤（有限集合）
*/
const COLUMN_QUERY_TYPE = {
  admin: { id: 0, name: 1, phone: 1, password: -1, role_id: 0, create_time: 2 },
  assignment: { id: 0, category_id: 0, order_id: 0, doctor_id: 0, status: 3, is_extra: 0 },
  category: { id: 0, name: 1, package_id: 0, average_duration: 2, price: 2 },
  department: { id: 0, name: 1, parent_id: 0, level: 0, is_full: 0 },
  department_doctor: { id: 0, department_id: 3, administer_id: 0 },
  district: { id: 0, name: 3 },
  doctor_status: { id: 0, doctor_id: 0, is_busy: 0 },
  examination_center: {
    id: 0,
    name: 1,
    address: 1,
    nearby: 1,
    telephone: 1,
    announcement: 1,
    latitude: 0,
    longitude: 0,
    morning_limit: 2,
    afternoon_limit: 2,
    district_id: 3
  },
  examination_order: {
    id: 0,
    examinee_id: 0,
    package_id: 0,
    status: 3,
    type: 0,
    examine_date: 2,
    period: 0,
    group_information_id: 0,
    center_id: 0
  },
  examination_result: { id: 0, result_value: -1, text_option_id: -1, assignment_id: 0, item_id: 0 },
  examinee: {
    id: 0,
    name: 1,
    identification_number: 1,
    sex: 0,
    birthday: 2,
    phone: 1,
    create_time: 2,
    user_id: 0,
    relationship_id: 0
  },
  group_information: {
    id: 0,
    company_name: 1,
    create_time: 2,
    start_time: 2,
    end_time: 2,
    number: 2
  },
  item: {
    id: 0,
    name: 1,
    unit: 0,
    normal_range_id: 0,
    normal_option_id: 0,
    average_duration: 2,
    value_type: 0,
    category_id: 0
  },
  item_option: { id: 0, option_id: 0, item_id: 0 },
  normal_range: { id: 0, start: -1, end: -1 },
  package: { id: 0, name: 1, price: 2, applicable_group: 3 },
  package_category: { id: 0, package_id: 0, category_id: 0 },
  permission: { id: 0, name: 1, parent_id: 0, level: 0, path: 1, component: 1, icon: 1},
  queue: { id: 0, examinee_id: 0, department_id: 0, serial_number: 0 },
  relationship: { id: 0, name: -1 },
  result_text_option: { id: 0, text: 1 },
  role: { id: 0, name: 1, description: 1 },
  role_permission: { id: 0, permission_id: 0, role_id: 0 },
  user: {
    id: 0,
    name: 1,
    identification_number: 1,
    sex: 0,
    birthday: 2,
    phone: 1,
    create_time: 2
  }
}

module.exports = {
  COLUMNS,
  COLUMN_QUERY_TYPE,
};
