import com.example.util.JDBCUtils;

import java.sql.Connection;
import java.sql.SQLException;

public class mytest {
    public static void main(String[] args) {
        try {
            Connection connection = JDBCUtils.getConnecton();
            System.out.println(connection);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}