package arthur.dy.lee.datasource.config;

import org.apache.commons.lang.StringUtils;

public enum DBSourceEnum {
    TEST1("test1"),
    TEST2("test2"),
    TEST3("test3"),
    TEST4("test4"),
    TEST5("test5"),
    TEST6("test6"),
    TEST7("test7"),
    TEST8("test8"),
    TEST9("test9"),
    TEST10("test10"),
    TEST11("test11"),
    TEST12("test12"),
    TEST13("test13"),
    TEST14("test14"),
    TEST15("test15"),
    TEST16("test16"),
    TEST17("test17"),
    TEST18("test18"),
    TEST19("test19"),
    TEST20("test20"),
    TEST21("test21"),
    TEST22("test22"),
    TEST23("test23"),
    TEST24("test24"),
    TEST25("test25"),
    TEST26("test26"),
    TEST27("test27"),
    TEST28("test28"),
    TEST29("test29"),
    TEST30("test30"),
    TEST31("test31"),
    TEST32("test32"),
    TEST33("test33"),
    TEST34("test34"),
    TEST35("test35"),
    TEST36("test36"),
    TEST37("test37"),
    TEST38("test38"),
    TEST39("test39"),
    TEST40("test40"),
    TEST41("test41"),
    TEST42("test42"),
    TEST43("test43"),
    TEST44("test44"),
    TEST45("test45"),
    TEST46("test46"),
    TEST47("test47"),
    TEST48("test48"),
    TEST49("test49"),
    TEST50("test50"),
    TEST51("test51"),
    TEST52("test52"),
    TEST53("test53"),
    TEST54("test54"),
    TEST55("test55"),
    TEST56("test56"),
    TEST57("test57"),
    TEST58("test58"),
    TEST59("test59"),
    TEST60("test60"),
    TEST61("test61"),
    TEST62("test62"),
    TEST63("test63"),
    TEST64("test64"),
    TEST65("test65"),
    TEST66("test66"),
    TEST67("test67"),
    TEST68("test68"),
    TEST69("test69"),
    TEST70("test70"),
    TEST71("test71"),
    TEST72("test72"),
    TEST73("test73"),
    TEST74("test74"),
    TEST75("test75"),
    TEST76("test76"),
    TEST77("test77"),
    TEST78("test78"),
    TEST79("test79"),
    TEST80("test80"),
    TEST81("test81"),
    TEST82("test82"),
    TEST83("test83"),
    TEST84("test84"),
    TEST85("test85"),
    TEST86("test86"),
    TEST87("test87"),
    TEST88("test88"),
    TEST89("test89"),
    TEST90("test90"),
    TEST91("test91"),
    TEST92("test92"),
    TEST93("test93"),
    TEST94("test94"),
    TEST95("test95"),
    TEST96("test96"),
    TEST97("test97"),
    TEST98("test98"),
    TEST99("test99"),
    TEST100("test100");

    private String value;

    DBSourceEnum(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }

    public static DBSourceEnum parse(String value) {
        if (StringUtils.isBlank(value)) {
            return null;
        }
        for (DBSourceEnum val : DBSourceEnum.values()) {
            if (val.equals(val)) {
                return val;
            }
        }
        return null;
    }

    public static void main(String[] args) {
        System.out.println(DBSourceEnum.TEST1);
        System.out.println(DBSourceEnum.TEST1.getValue());
        System.out.println(DBSourceEnum.parse(DBSourceEnum.TEST1.value));
    }

}
