package common;

public class Validate {
    public static final String NUMBER_PHONE = "^09[0|1][0-9]{7}$";
    public static final String CUSTOMER_NAME = "^[A-Z]{1}[a-zA-Z]*";
    public static final String FACILITY_NAME = "^[A-Z]{1}[a-zA-Z0-9]*";
    public static final String ID_CARD = "^[0-9]{9}$";
    public static final String EMAIL = "^\\w+([.-]?\\w+)*@[a-z]+\\.(\\w+){2,}(\\.\\w{2,3})?^\\w+([.-]?\\w+)*@[a-z]+\\.(\\w+){2,}(\\.\\w{2,3})?";
}
