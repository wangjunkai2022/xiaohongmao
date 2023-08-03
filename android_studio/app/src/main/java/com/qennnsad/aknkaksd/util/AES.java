package com.qennnsad.aknkaksd.util;

import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;

/* loaded from: classes3.dex */
public class AES {
    private static final String CIPHERMODEPADDING = "AES/CBC/PKCS7Padding";
    private static String ivParameter = "i4r$cnEQK#fjR$4u";
    private IvParameterSpec IV;
    private SecretKeyFactory keyfactory;
    private SecretKey sk;
    private SecretKeySpec skforAES;
    private final String KEY_GENERATION_ALG = "PBEWITHSHAANDTWOFISH-CBC";
    private final int HASH_ITERATIONS = 10000;
    private final int KEY_LENGTH = 128;
    private char[] humanPassphrase = {'P', 'e', 'r', ' ', 'v', 'a', 'l', 'l', 'u', 'm', ' ', 'd', 'u', 'c', 'e', 's', ' ', Matrix.MATRIX_TYPE_RANDOM_LT, 'a', 'b', 'a', 'n', 't'};
    private byte[] salt = "I0g2Vq!8U5StM9NE".getBytes();
    private PBEKeySpec myKeyspec = new PBEKeySpec(this.humanPassphrase, this.salt, 10000, 128);
    private byte[] iv = ivParameter.getBytes();
    String sKey = "d$ya*F8j52eGj^UZ";

    public AES() {
        this.keyfactory = null;
        this.sk = null;
        this.skforAES = null;
        try {
            SecretKeyFactory secretKeyFactory = SecretKeyFactory.getInstance("PBEWITHSHAANDTWOFISH-CBC");
            this.keyfactory = secretKeyFactory;
            this.sk = secretKeyFactory.generateSecret(this.myKeyspec);
        } catch (NoSuchAlgorithmException unused) {
            o0.c("AESdemo", "no key factory support for PBEWITHSHAANDTWOFISH-CBC");
        } catch (InvalidKeySpecException unused2) {
            o0.c("AESdemo", "invalid key spec for PBEWITHSHAANDTWOFISH-CBC");
        }
        try {
            this.skforAES = new SecretKeySpec(this.sKey.getBytes("ASCII"), "AES");
        } catch (UnsupportedEncodingException e4) {
            e4.printStackTrace();
        }
        this.IV = new IvParameterSpec(this.iv);
    }

    private byte[] addPadding(byte[] bArr) {
        int length = 16 - (bArr.length % 16);
        int i4 = length != 0 ? length : 16;
        byte[] bArr2 = new byte[bArr.length + i4];
        for (int i10 = 0; i10 < bArr.length; i10++) {
            bArr2[i10] = bArr[i10];
        }
        for (int length2 = bArr.length; length2 < bArr.length + i4; length2++) {
            bArr2[length2] = (byte) i4;
        }
        return bArr2;
    }

    public static String aesdecrypt(String str, String str2) {
        o0.g("AES", "Decode AES. key:" + str2 + "--secret:" + str2.substring(0, 16) + "--vector:" + str2.substring(str2.length() - 16));
        try {
            byte[] decode = Base64.decode(str, 0);
            return new String(decrypt2(CIPHERMODEPADDING, new SecretKeySpec(str2.substring(0, 16).getBytes("ASCII"), "AES"), new IvParameterSpec(str2.substring(str2.length() - 16).getBytes()), decode));
        } catch (Exception e4) {
            o0.f("AES", e4);
            return "{code=1,msg=\"数据解析失败\"}";
        }
    }

    public static String aesdecrypt_tiger(String str) throws Exception {
        try {
            byte[] decrypt2 = decrypt2(CIPHERMODEPADDING, new SecretKeySpec("7#0apwZ0zg*a932y".getBytes("ASCII"), "AES"), new IvParameterSpec("6v2cOih#uL2rmBj^".getBytes()), Base64.decode(str, 0));
            return decrypt2 == null ? "" : new String(decrypt2);
        } catch (Exception e4) {
            o0.f("AES-Tiger", e4);
            return "{code=1,msg=\"数据解析失败\"}";
        }
    }

    public static String aesdecrypt_tiger2(String str) throws Exception {
        try {
            byte[] decrypt2 = decrypt2(CIPHERMODEPADDING, new SecretKeySpec("xW.uc8LUi.x7@k!p".getBytes("ASCII"), "AES"), new IvParameterSpec("Nz_zu4*xT8-8Z4ve".getBytes()), Base64.decode(str, 0));
            return decrypt2 == null ? "" : new String(decrypt2);
        } catch (Exception e4) {
            o0.f("AES-Tiger2", e4);
            return "{code=1,msg=\"数据解析失败\"}";
        }
    }

    public static String aesencrypt_tiger(String str) throws Exception {
        o0.g("device_id", "aesencrypt_tiger:" + str);
        return Base64.encodeToString(encrypt2(CIPHERMODEPADDING, new SecretKeySpec("7#0apwZ0zg*a932y".getBytes("ASCII"), "AES"), new IvParameterSpec("6v2cOih#uL2rmBj^".getBytes()), str.getBytes()), 2).trim();
    }

    public static String aesencrypt_tiger2(String str) throws Exception {
        o0.g("device_id", "aesencrypt_tiger:" + str);
        return Base64.encodeToString(encrypt2(CIPHERMODEPADDING, new SecretKeySpec("xW.uc8LUi.x7@k!p".getBytes("ASCII"), "AES"), new IvParameterSpec("Nz_zu4*xT8-8Z4ve".getBytes()), str.getBytes()), 2).trim();
    }

    private static byte[] decrypt2(String str, SecretKey secretKey, IvParameterSpec ivParameterSpec, byte[] bArr) {
        try {
            Cipher cipher = Cipher.getInstance(str);
            cipher.init(2, secretKey, ivParameterSpec);
            return cipher.doFinal(bArr);
        } catch (InvalidAlgorithmParameterException unused) {
            o0.c("AESdemo", "invalid algorithm parameter exception");
            return null;
        } catch (InvalidKeyException unused2) {
            o0.c("AESdemo", "invalid key exception");
            return null;
        } catch (NoSuchAlgorithmException unused3) {
            o0.c("AESdemo", "no cipher getinstance support for " + str);
            return null;
        } catch (BadPaddingException unused4) {
            o0.c("AESdemo", "bad padding exception");
            return null;
        } catch (IllegalBlockSizeException unused5) {
            o0.c("AESdemo", "illegal block size exception");
            return null;
        } catch (NoSuchPaddingException unused6) {
            o0.c("AESdemo", "no cipher getinstance support for padding " + str);
            return null;
        }
    }

    private byte[] dropPadding(byte[] bArr) {
        int length = bArr.length - bArr[bArr.length - 1];
        byte[] bArr2 = new byte[length];
        for (int i4 = 0; i4 < length; i4++) {
            bArr2[i4] = bArr[i4];
            bArr[i4] = 0;
        }
        return bArr2;
    }

    private static byte[] encrypt2(String str, SecretKey secretKey, IvParameterSpec ivParameterSpec, byte[] bArr) {
        try {
            Cipher cipher = Cipher.getInstance(str);
            cipher.init(1, secretKey, ivParameterSpec);
            return cipher.doFinal(bArr);
        } catch (InvalidAlgorithmParameterException unused) {
            o0.c("AESdemo", "invalid algorithm parameter exception");
            return null;
        } catch (InvalidKeyException unused2) {
            o0.c("AESdemo", "invalid key exception");
            return null;
        } catch (NoSuchAlgorithmException unused3) {
            o0.c("AESdemo", "no cipher getinstance support for " + str);
            return null;
        } catch (BadPaddingException unused4) {
            o0.c("AESdemo", "bad padding exception");
            return null;
        } catch (IllegalBlockSizeException unused5) {
            o0.c("AESdemo", "illegal block size exception");
            return null;
        } catch (NoSuchPaddingException unused6) {
            o0.c("AESdemo", "no cipher getinstance support for padding " + str);
            return null;
        }
    }

    public String decrypt(String str) {
        return new String(decrypt(CIPHERMODEPADDING, this.skforAES, this.IV, Base64.decode(str, 0)));
    }

    public String encrypt(byte[] bArr) {
        return Base64.encodeToString(encrypt(CIPHERMODEPADDING, this.skforAES, this.IV, bArr), 0);
    }

    public byte[] hex(String str) {
        if (str == null || str.length() < 2) {
            return new byte[0];
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i4 = 0; i4 < length; i4++) {
            int i10 = i4 * 2;
            bArr[i4] = (byte) (Integer.parseInt(str.substring(i10, i10 + 2), 16) & 255);
        }
        return bArr;
    }

    private byte[] decrypt(String str, SecretKey secretKey, IvParameterSpec ivParameterSpec, byte[] bArr) {
        try {
            Cipher cipher = Cipher.getInstance(str);
            cipher.init(2, secretKey, ivParameterSpec);
            return cipher.doFinal(bArr);
        } catch (InvalidAlgorithmParameterException unused) {
            o0.c("AESdemo", "invalid algorithm parameter exception");
            return null;
        } catch (InvalidKeyException unused2) {
            o0.c("AESdemo", "invalid key exception");
            return null;
        } catch (NoSuchAlgorithmException unused3) {
            o0.c("AESdemo", "no cipher getinstance support for " + str);
            return null;
        } catch (BadPaddingException unused4) {
            o0.c("AESdemo", "bad padding exception");
            return null;
        } catch (IllegalBlockSizeException unused5) {
            o0.c("AESdemo", "illegal block size exception");
            return null;
        } catch (NoSuchPaddingException unused6) {
            o0.c("AESdemo", "no cipher getinstance support for padding " + str);
            return null;
        }
    }

    private byte[] encrypt(String str, SecretKey secretKey, IvParameterSpec ivParameterSpec, byte[] bArr) {
        try {
            Cipher cipher = Cipher.getInstance(str);
            cipher.init(1, secretKey, ivParameterSpec);
            return cipher.doFinal(bArr);
        } catch (InvalidAlgorithmParameterException unused) {
            o0.c("AESdemo", "invalid algorithm parameter exception");
            return null;
        } catch (InvalidKeyException unused2) {
            o0.c("AESdemo", "invalid key exception");
            return null;
        } catch (NoSuchAlgorithmException unused3) {
            o0.c("AESdemo", "no cipher getinstance support for " + str);
            return null;
        } catch (BadPaddingException unused4) {
            o0.c("AESdemo", "bad padding exception");
            return null;
        } catch (IllegalBlockSizeException unused5) {
            o0.c("AESdemo", "illegal block size exception");
            return null;
        } catch (NoSuchPaddingException unused6) {
            o0.c("AESdemo", "no cipher getinstance support for padding " + str);
            return null;
        }
    }
}
