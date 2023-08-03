package shaded.org.apache.commons.codec.digest;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: Md5Crypt.java */
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    static final String f93505a = "$apr1$";

    /* renamed from: b  reason: collision with root package name */
    private static final int f93506b = 16;

    /* renamed from: c  reason: collision with root package name */
    static final String f93507c = "$1$";

    /* renamed from: d  reason: collision with root package name */
    private static final int f93508d = 1000;

    public static String a(String str) {
        return c(str.getBytes(h9.d.f69074f));
    }

    public static String b(String str, String str2) {
        return d(str.getBytes(h9.d.f69074f), str2);
    }

    public static String c(byte[] bArr) {
        return d(bArr, f93505a + a.b(8));
    }

    public static String d(byte[] bArr, String str) {
        if (str != null && !str.startsWith(f93505a)) {
            str = f93505a + str;
        }
        return g(bArr, str, f93505a);
    }

    public static String e(byte[] bArr) {
        return f(bArr, f93507c + a.b(8));
    }

    public static String f(byte[] bArr, String str) {
        return g(bArr, str, f93507c);
    }

    public static String g(byte[] bArr, String str, String str2) {
        String group;
        int length = bArr.length;
        if (str == null) {
            group = a.b(8);
        } else {
            Matcher matcher = Pattern.compile("^" + str2.replace("$", "\\$") + "([\\.\\/a-zA-Z0-9]{1,8}).*").matcher(str);
            if (matcher.find()) {
                group = matcher.group(1);
            } else {
                throw new IllegalArgumentException("Invalid salt value: " + str);
            }
        }
        Charset charset = h9.d.f69074f;
        byte[] bytes = group.getBytes(charset);
        MessageDigest r9 = c.r();
        r9.update(bArr);
        r9.update(str2.getBytes(charset));
        r9.update(bytes);
        MessageDigest r10 = c.r();
        r10.update(bArr);
        r10.update(bytes);
        r10.update(bArr);
        byte[] digest = r10.digest();
        int i4 = length;
        while (true) {
            int i10 = 16;
            if (i4 <= 0) {
                break;
            }
            if (i4 <= 16) {
                i10 = i4;
            }
            r9.update(digest, 0, i10);
            i4 -= 16;
        }
        Arrays.fill(digest, (byte) 0);
        while (length > 0) {
            if ((length & 1) == 1) {
                r9.update(digest[0]);
            } else {
                r9.update(bArr[0]);
            }
            length >>= 1;
        }
        StringBuilder sb = new StringBuilder(str2 + group + "$");
        byte[] digest2 = r9.digest();
        for (int i11 = 0; i11 < 1000; i11++) {
            r10 = c.r();
            int i12 = i11 & 1;
            if (i12 != 0) {
                r10.update(bArr);
            } else {
                r10.update(digest2, 0, 16);
            }
            if (i11 % 3 != 0) {
                r10.update(bytes);
            }
            if (i11 % 7 != 0) {
                r10.update(bArr);
            }
            if (i12 != 0) {
                r10.update(digest2, 0, 16);
            } else {
                r10.update(bArr);
            }
            digest2 = r10.digest();
        }
        a.a(digest2[0], digest2[6], digest2[12], 4, sb);
        a.a(digest2[1], digest2[7], digest2[13], 4, sb);
        a.a(digest2[2], digest2[8], digest2[14], 4, sb);
        a.a(digest2[3], digest2[9], digest2[15], 4, sb);
        a.a(digest2[4], digest2[10], digest2[5], 4, sb);
        a.a((byte) 0, (byte) 0, digest2[11], 2, sb);
        r9.reset();
        r10.reset();
        Arrays.fill(bArr, (byte) 0);
        Arrays.fill(bytes, (byte) 0);
        Arrays.fill(digest2, (byte) 0);
        return sb.toString();
    }
}
