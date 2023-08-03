package shaded.org.apache.commons.codec.digest;

import java.security.MessageDigest;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: Sha2Crypt.java */
/* loaded from: classes5.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static final int f93532a = 5000;

    /* renamed from: b  reason: collision with root package name */
    private static final int f93533b = 999999999;

    /* renamed from: c  reason: collision with root package name */
    private static final int f93534c = 1000;

    /* renamed from: d  reason: collision with root package name */
    private static final String f93535d = "rounds=";

    /* renamed from: e  reason: collision with root package name */
    private static final int f93536e = 32;

    /* renamed from: f  reason: collision with root package name */
    static final String f93537f = "$5$";

    /* renamed from: g  reason: collision with root package name */
    private static final int f93538g = 64;

    /* renamed from: h  reason: collision with root package name */
    static final String f93539h = "$6$";

    /* renamed from: i  reason: collision with root package name */
    private static final Pattern f93540i = Pattern.compile("^\\$([56])\\$(rounds=(\\d+)\\$)?([\\.\\/a-zA-Z0-9]{1,16}).*");

    public static String a(byte[] bArr) {
        return b(bArr, null);
    }

    public static String b(byte[] bArr, String str) {
        if (str == null) {
            str = f93537f + a.b(8);
        }
        return c(bArr, str, f93537f, 32, "SHA-256");
    }

    private static String c(byte[] bArr, String str, String str2, int i4, String str3) {
        int i10;
        boolean z9;
        byte b10;
        byte[] bArr2;
        int i11;
        int length = bArr.length;
        if (str != null) {
            Matcher matcher = f93540i.matcher(str);
            if (matcher.find()) {
                if (matcher.group(3) != null) {
                    i10 = Math.max(1000, Math.min((int) f93533b, Integer.parseInt(matcher.group(3))));
                    z9 = true;
                } else {
                    i10 = 5000;
                    z9 = false;
                }
                String group = matcher.group(4);
                byte[] bytes = group.getBytes(h9.d.f69074f);
                int length2 = bytes.length;
                MessageDigest o9 = c.o(str3);
                o9.update(bArr);
                o9.update(bytes);
                MessageDigest o10 = c.o(str3);
                o10.update(bArr);
                o10.update(bytes);
                o10.update(bArr);
                byte[] digest = o10.digest();
                int length3 = bArr.length;
                while (length3 > i4) {
                    o9.update(digest, 0, i4);
                    length3 -= i4;
                }
                o9.update(digest, 0, length3);
                for (int length4 = bArr.length; length4 > 0; length4 >>= 1) {
                    if ((length4 & 1) != 0) {
                        o9.update(digest, 0, i4);
                    } else {
                        o9.update(bArr);
                    }
                }
                byte[] digest2 = o9.digest();
                MessageDigest o11 = c.o(str3);
                for (int i12 = 1; i12 <= length; i12++) {
                    o11.update(bArr);
                }
                byte[] digest3 = o11.digest();
                byte[] bArr3 = new byte[length];
                int i13 = 0;
                while (i13 < length - i4) {
                    System.arraycopy(digest3, 0, bArr3, i13, i4);
                    i13 += i4;
                }
                System.arraycopy(digest3, 0, bArr3, i13, length - i13);
                MessageDigest o12 = c.o(str3);
                for (int i14 = 1; i14 <= (digest2[0] & 255) + 16; i14++) {
                    o12.update(bytes);
                }
                byte[] digest4 = o12.digest();
                byte[] bArr4 = new byte[length2];
                int i15 = 0;
                while (i15 < length2 - i4) {
                    System.arraycopy(digest4, 0, bArr4, i15, i4);
                    i15 += i4;
                }
                System.arraycopy(digest4, 0, bArr4, i15, length2 - i15);
                MessageDigest messageDigest = o9;
                int i16 = 0;
                while (i16 <= i10 - 1) {
                    messageDigest = c.o(str3);
                    int i17 = i16 & 1;
                    if (i17 != 0) {
                        bArr2 = bytes;
                        i11 = 0;
                        messageDigest.update(bArr3, 0, length);
                    } else {
                        bArr2 = bytes;
                        i11 = 0;
                        messageDigest.update(digest2, 0, i4);
                    }
                    if (i16 % 3 != 0) {
                        messageDigest.update(bArr4, i11, length2);
                    }
                    if (i16 % 7 != 0) {
                        messageDigest.update(bArr3, i11, length);
                    }
                    if (i17 != 0) {
                        messageDigest.update(digest2, i11, i4);
                    } else {
                        messageDigest.update(bArr3, i11, length);
                    }
                    digest2 = messageDigest.digest();
                    i16++;
                    bytes = bArr2;
                }
                byte[] bArr5 = bytes;
                StringBuilder sb = new StringBuilder(str2);
                if (z9) {
                    sb.append(f93535d);
                    sb.append(i10);
                    sb.append("$");
                }
                sb.append(group);
                sb.append("$");
                if (i4 == 32) {
                    a.a(digest2[0], digest2[10], digest2[20], 4, sb);
                    a.a(digest2[21], digest2[1], digest2[11], 4, sb);
                    a.a(digest2[12], digest2[22], digest2[2], 4, sb);
                    a.a(digest2[3], digest2[13], digest2[23], 4, sb);
                    a.a(digest2[24], digest2[4], digest2[14], 4, sb);
                    a.a(digest2[15], digest2[25], digest2[5], 4, sb);
                    a.a(digest2[6], digest2[16], digest2[26], 4, sb);
                    a.a(digest2[27], digest2[7], digest2[17], 4, sb);
                    a.a(digest2[18], digest2[28], digest2[8], 4, sb);
                    a.a(digest2[9], digest2[19], digest2[29], 4, sb);
                    a.a((byte) 0, digest2[31], digest2[30], 3, sb);
                    b10 = 0;
                } else {
                    a.a(digest2[0], digest2[21], digest2[42], 4, sb);
                    a.a(digest2[22], digest2[43], digest2[1], 4, sb);
                    a.a(digest2[44], digest2[2], digest2[23], 4, sb);
                    a.a(digest2[3], digest2[24], digest2[45], 4, sb);
                    a.a(digest2[25], digest2[46], digest2[4], 4, sb);
                    a.a(digest2[47], digest2[5], digest2[26], 4, sb);
                    a.a(digest2[6], digest2[27], digest2[48], 4, sb);
                    a.a(digest2[28], digest2[49], digest2[7], 4, sb);
                    a.a(digest2[50], digest2[8], digest2[29], 4, sb);
                    a.a(digest2[9], digest2[30], digest2[51], 4, sb);
                    a.a(digest2[31], digest2[52], digest2[10], 4, sb);
                    a.a(digest2[53], digest2[11], digest2[32], 4, sb);
                    a.a(digest2[12], digest2[33], digest2[54], 4, sb);
                    a.a(digest2[34], digest2[55], digest2[13], 4, sb);
                    a.a(digest2[56], digest2[14], digest2[35], 4, sb);
                    a.a(digest2[15], digest2[36], digest2[57], 4, sb);
                    a.a(digest2[37], digest2[58], digest2[16], 4, sb);
                    a.a(digest2[59], digest2[17], digest2[38], 4, sb);
                    a.a(digest2[18], digest2[39], digest2[60], 4, sb);
                    a.a(digest2[40], digest2[61], digest2[19], 4, sb);
                    a.a(digest2[62], digest2[20], digest2[41], 4, sb);
                    b10 = 0;
                    a.a((byte) 0, (byte) 0, digest2[63], 2, sb);
                }
                Arrays.fill(digest4, b10);
                Arrays.fill(bArr3, b10);
                Arrays.fill(bArr4, b10);
                messageDigest.reset();
                o12.reset();
                Arrays.fill(bArr, b10);
                Arrays.fill(bArr5, b10);
                return sb.toString();
            }
            throw new IllegalArgumentException("Invalid salt value: " + str);
        }
        throw new IllegalArgumentException("Salt must not be null");
    }

    public static String d(byte[] bArr) {
        return e(bArr, null);
    }

    public static String e(byte[] bArr, String str) {
        if (str == null) {
            str = f93539h + a.b(8);
        }
        return c(bArr, str, f93539h, 64, "SHA-512");
    }
}
