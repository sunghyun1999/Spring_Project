package com.vam.persistence;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class JDBCTest {

	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Test
	public void testConnection() {
		try (Connection conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:orcl", "scott", "1234")) {
			System.out.println(conn);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}
}
