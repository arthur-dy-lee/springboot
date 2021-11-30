//package arthur.dy.lee.datasource.config;
//
//import org.apache.commons.lang.StringUtils;
//
//public enum DBSourceEnum {
//    TEST1("test1"),
//    TEST2("test2"),
//    TEST3("test3"),
//    TEST4("test4"),;
//
//    private String value;
//
//    DBSourceEnum(String value) {
//        this.value = value;
//    }
//
//    public String getValue() {
//        return value;
//    }
//
//    public static DBSourceEnum parse(String value) {
//        if (StringUtils.isBlank(value)) {
//            return null;
//        }
//        for (DBSourceEnum val : DBSourceEnum.values()) {
//            if (val.equals(val)) {
//                return val;
//            }
//        }
//        return null;
//    }
//
//    public static void main(String[] args) {
//        System.out.println(DBSourceEnum.TEST1);
//        System.out.println(DBSourceEnum.TEST1.getValue());
//        System.out.println(DBSourceEnum.parse(DBSourceEnum.TEST1.value));
//    }
//
//}
