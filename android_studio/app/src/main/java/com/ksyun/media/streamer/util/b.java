package com.ksyun.media.streamer.util;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

/* compiled from: CredtpUtil.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final String f46756a = "ISO-8859-1";

    public static byte[] a(byte[] bArr, byte[] bArr2) {
        SecureRandom secureRandom = new SecureRandom();
        try {
            SecretKey generateSecret = SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(bArr2));
            Cipher cipher = Cipher.getInstance("DES");
            cipher.init(2, generateSecret, secureRandom);
            return cipher.doFinal(bArr);
        } catch (InvalidKeyException e4) {
            e4.printStackTrace();
            return null;
        } catch (NoSuchAlgorithmException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvalidKeySpecException e11) {
            e11.printStackTrace();
            return null;
        } catch (BadPaddingException e12) {
            e12.printStackTrace();
            return null;
        } catch (IllegalBlockSizeException e13) {
            e13.printStackTrace();
            return null;
        } catch (NoSuchPaddingException e14) {
            e14.printStackTrace();
            return null;
        }
    }
}
