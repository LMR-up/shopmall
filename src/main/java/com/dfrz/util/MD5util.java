package com.dfrz.util;


import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import java.util.Objects;

public class MD5util {
    private MD5util() {
    }

    public static String md5(String source) {
        Objects.requireNonNull(source);
        //1创建信息摘要对象
        String salt = "@#2";//一串特殊内容，提高数据安全性
        source = source + salt;

        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            //2将需要解密的文本更新到messageDigest
            messageDigest.update(source.getBytes());
            //加密
            byte[] digest = messageDigest.digest();//字节数组
            // System.out.println(Arrays.toString(digest));//[-127, -36, -101, -37, 82, -48, 77, -62, 0, 54, -37, -40, 49, 62, -48, 85]
            //将字节数组转换成字符串biginteger
            BigInteger bigInteger = new BigInteger(1, digest);//
            return bigInteger.toString(16).toUpperCase(Locale.ROOT);//转进制-->>81DC9BDB52D04DC20036DBD8313ED055
            // System.out.println(bigInteger);//-167666489005720902570968031516667490219
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }

        return null;
    }

    public static void main(String[] args) {
        System.out.println(md5("123456"));
    }
}