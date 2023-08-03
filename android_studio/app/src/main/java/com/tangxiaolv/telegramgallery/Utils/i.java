package com.tangxiaolv.telegramgallery.Utils;

import android.graphics.Bitmap;
import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: Utilities.java */
/* loaded from: classes3.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    public static Pattern f56708a = Pattern.compile("[\\-0-9]+");

    /* renamed from: b  reason: collision with root package name */
    public static SecureRandom f56709b = new SecureRandom();

    /* renamed from: c  reason: collision with root package name */
    public static volatile com.tangxiaolv.telegramgallery.d f56710c = new com.tangxiaolv.telegramgallery.d("stageQueue");

    /* renamed from: d  reason: collision with root package name */
    protected static final char[] f56711d = "0123456789ABCDEF".toCharArray();

    static {
        try {
            File file = new File("/dev/urandom");
            FileInputStream a10 = h.b.a(new FileInputStream(file), file);
            byte[] bArr = new byte[1024];
            a10.read(bArr);
            a10.close();
            f56709b.setSeed(bArr);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static String a(String str) {
        if (str == null) {
            return null;
        }
        try {
            byte[] digest = MessageDigest.getInstance(shaded.org.apache.commons.codec.digest.f.f93510b).digest(str.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b10 : digest) {
                sb.append(Integer.toHexString((b10 & 255) | 256).substring(1, 3));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static boolean b(byte[] bArr, int i4, byte[] bArr2, int i10) {
        if (bArr == null || bArr2 == null || i4 < 0 || i10 < 0 || bArr.length - i4 != bArr2.length - i10 || bArr.length - i4 < 0 || bArr2.length - i10 < 0) {
            return false;
        }
        boolean z9 = true;
        for (int i11 = i4; i11 < bArr.length; i11++) {
            if (bArr[i11 + i4] != bArr2[i11 + i10]) {
                z9 = false;
            }
        }
        return z9;
    }

    public static String c(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        char[] cArr = new char[bArr.length * 2];
        for (int i4 = 0; i4 < bArr.length; i4++) {
            int i10 = bArr[i4] & 255;
            int i11 = i4 * 2;
            char[] cArr2 = f56711d;
            cArr[i11] = cArr2[i10 >>> 4];
            cArr[i11 + 1] = cArr2[i10 & 15];
        }
        return new String(cArr);
    }

    public static long d(byte[] bArr) {
        return (bArr[7] << 56) + ((bArr[6] & 255) << 48) + ((bArr[5] & 255) << 40) + ((bArr[4] & 255) << 32) + ((bArr[3] & 255) << 24) + ((bArr[2] & 255) << 16) + ((bArr[1] & 255) << 8) + (bArr[0] & 255);
    }

    public static byte[] e(ByteBuffer byteBuffer) {
        return f(byteBuffer, 0, byteBuffer.limit());
    }

    public static byte[] f(ByteBuffer byteBuffer, int i4, int i10) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        try {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
                byteBuffer.position(i4);
                byteBuffer.limit(i10);
                messageDigest.update(byteBuffer);
                return messageDigest.digest();
            } catch (Exception e4) {
                e4.printStackTrace();
                byteBuffer.limit(limit);
                byteBuffer.position(position);
                return new byte[20];
            }
        } finally {
            byteBuffer.limit(limit);
            byteBuffer.position(position);
        }
    }

    public static byte[] g(byte[] bArr) {
        return h(bArr, 0, bArr.length);
    }

    public static byte[] h(byte[] bArr, int i4, int i10) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(bArr, i4, i10);
            return messageDigest.digest();
        } catch (Exception e4) {
            e4.printStackTrace();
            return new byte[20];
        }
    }

    public static byte[] i(byte[] bArr, int i4, int i10) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bArr, i4, i10);
            return messageDigest.digest();
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static byte[] j(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i4 = 0; i4 < length; i4 += 2) {
            bArr[i4 / 2] = (byte) ((Character.digit(str.charAt(i4), 16) << 4) + Character.digit(str.charAt(i4 + 1), 16));
        }
        return bArr;
    }

    public static boolean k(String str) {
        return new File(str).exists();
    }

    public static boolean l(BigInteger bigInteger, BigInteger bigInteger2) {
        return bigInteger.compareTo(BigInteger.valueOf(1L)) == 1 && bigInteger.compareTo(bigInteger2.subtract(BigInteger.valueOf(1L))) == -1;
    }

    public static boolean m(byte[] bArr, int i4) {
        int intValue;
        if (i4 < 2 || i4 > 7 || bArr.length != 256 || bArr[0] >= 0) {
            return false;
        }
        BigInteger bigInteger = new BigInteger(1, bArr);
        if (i4 == 2) {
            if (bigInteger.mod(BigInteger.valueOf(8L)).intValue() != 7) {
                return false;
            }
        } else if (i4 == 3) {
            if (bigInteger.mod(BigInteger.valueOf(3L)).intValue() != 2) {
                return false;
            }
        } else if (i4 == 5) {
            int intValue2 = bigInteger.mod(BigInteger.valueOf(5L)).intValue();
            if (intValue2 != 1 && intValue2 != 4) {
                return false;
            }
        } else if (i4 == 6) {
            int intValue3 = bigInteger.mod(BigInteger.valueOf(24L)).intValue();
            if (intValue3 != 19 && intValue3 != 23) {
                return false;
            }
        } else if (i4 == 7 && (intValue = bigInteger.mod(BigInteger.valueOf(7L)).intValue()) != 3 && intValue != 5 && intValue != 6) {
            return false;
        }
        if (c(bArr).equals("C71CAEB9C6B1C9048E6C522F70F13F73980D40238E3E21C14934D037563D930F48198A0AA7C14058229493D22530F4DBFA336F6E0AC925139543AED44CCE7C3720FD51F69458705AC68CD4FE6B6B13ABDC9746512969328454F18FAF8C595F642477FE96BB2A941D5BCD1D4AC8CC49880708FA9B378E3C4F3A9060BEE67CF9A4A4A695811051907E162753B56B0F6B410DBA74D8A84B2A14B3144E0EF1284754FD17ED950D5965B4B9DD46582DB1178D169C6BC465B0D6FF9CA3928FEF5B9AE4E418FC15E83EBEA0F87FA9FF5EED70050DED2849F47BF959D956850CE929851F0D8115F635B105EE2E4E15D04B2454BF6F4FADF034B10403119CD8E3B92FCC5B")) {
            return true;
        }
        return bigInteger.isProbablePrime(30) && bigInteger.subtract(BigInteger.valueOf(1L)).divide(BigInteger.valueOf(2L)).isProbablePrime(30);
    }

    public static Integer n(String str) {
        if (str == null) {
            return 0;
        }
        try {
            Matcher matcher = f56708a.matcher(str);
            if (!matcher.find()) {
                return 0;
            }
            return Integer.valueOf(Integer.parseInt(matcher.group(0)));
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    public static String o(String str) {
        Matcher matcher = f56708a.matcher(str);
        if (matcher.find()) {
            return matcher.group(0);
        }
        return null;
    }

    public static Long p(String str) {
        if (str == null) {
            return 0L;
        }
        try {
            Matcher matcher = f56708a.matcher(str);
            if (!matcher.find()) {
                return 0L;
            }
            return Long.valueOf(Long.parseLong(matcher.group(0)));
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0L;
        }
    }

    public static void q(Bitmap bitmap) {
    }
}
