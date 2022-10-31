import org.junit.Test;

import java.util.Date;

public class DbutilTest {
    @Test
    public void druitTestconn(){

        try {
            Class.forName("com.dfrz.util.DruidUtil");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println((String.valueOf(new Date().getTime())).substring(6));
    }
}
