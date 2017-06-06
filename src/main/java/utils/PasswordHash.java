package utils;

import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import java.math.BigInteger;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;

/**
 * Passsword Hash Util Class
 */
public class PasswordHash {
    private static final int SALT_BYTE_SIZE = 24;
    private static final int HASH_BYTE_SIZE = 24;
    private static final int PBKDF2_ITERATIONS = 1000;
    private static final String PBKDF2_ALGORITHM = "PBKDF2WithHmacSHA1";
    private static final int ITERATION_INDEX = 0;
    private static final int SALT_INDEX = 1;
    private static final int PBKDF2_INDEX = 2;

    public static String createHash(String password) throws InvalidKeySpecException, NoSuchAlgorithmException {
        return createHash(password.toCharArray());
    }

    private static String createHash(char[] password) throws InvalidKeySpecException, NoSuchAlgorithmException {
        //生成随机盐
        SecureRandom random = new SecureRandom();
        byte[] salt = new byte[SALT_BYTE_SIZE];
        random.nextBytes(salt);

        //hash密码
        byte[] hash = pkbdf2(password, salt, PBKDF2_ITERATIONS, HASH_BYTE_SIZE);
        return PBKDF2_ITERATIONS + ":" + toHex(salt) + ":" + toHex(hash);
    }

    // 将byte数组转化为16进制字符串
    private static String toHex(byte[] array) {
        BigInteger bi = new BigInteger(1, array);
        String hex = bi.toString(16);
        int paddingLength = (array.length * 2) -hex.length();
        if (paddingLength > 0)
            return String.format("%0" + paddingLength + "d", 0) + hex;
        else
            return hex;
    }

    private static byte[] pkbdf2(char[] password, byte[] salt, int pbkdf2Iterations, int hashByteSize) throws NoSuchAlgorithmException, InvalidKeySpecException {
        PBEKeySpec spec = new PBEKeySpec(password, salt, pbkdf2Iterations, hashByteSize*8);
        SecretKeyFactory skf = SecretKeyFactory.getInstance(PBKDF2_ALGORITHM);
        return skf.generateSecret(spec).getEncoded();
    }

    public static boolean validatePassword(String password, String correctHash) throws InvalidKeySpecException, NoSuchAlgorithmException {
        return validatePassword(password.toCharArray(), correctHash);
    }

    private static boolean validatePassword(char[] password, String correctHash) throws InvalidKeySpecException, NoSuchAlgorithmException {
        String[] params = correctHash.split(":");
        int iterations = Integer.parseInt(params[ITERATION_INDEX]);
        byte[] salt = fromHex(params[SALT_INDEX]);
        byte[] hash = fromHex(params[PBKDF2_INDEX]);
        byte[] testHash = pkbdf2(password, salt, iterations, hash.length);
        return slowEquals(hash, testHash);
    }

    private static boolean slowEquals(byte[] a, byte[] b) {
        int diff = a.length ^ b.length;
        for (int i = 0; i < a.length && i < b.length; i++)
            diff |= a[i] ^ b[i];
        return diff == 0;
    }

    private static byte[] fromHex(String hex) {
        byte[] binary = new byte[hex.length()/2];
        for (int i = 0; i < binary.length; i++) {
            binary[i] = (byte) Integer.parseInt(hex.substring(2*i, 2*i+2), 16);
        }
        return binary;
    }
}
