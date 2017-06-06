package utils;

import junit.framework.TestCase;
import org.junit.Assert;
import org.junit.Test;

import static org.junit.Assert.*;

public class PasswordHashTest extends TestCase{

    public void testValidatePassword() throws Exception {
        String password = "admin";
        String passhash = PasswordHash.createHash(password);
        assertTrue(PasswordHash.validatePassword(password, passhash));
    }

}