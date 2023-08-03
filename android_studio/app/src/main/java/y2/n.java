package y2;

import androidx.annotation.NonNull;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
@com.google.android.gms.common.internal.y
/* loaded from: classes2.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f94721a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f94722b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    @NonNull
    @u2.a
    public static String a(@NonNull byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length + length];
        int i4 = 0;
        for (byte b10 : bArr) {
            int i10 = b10 & 255;
            int i11 = i4 + 1;
            char[] cArr2 = f94722b;
            cArr[i4] = cArr2[i10 >>> 4];
            i4 = i11 + 1;
            cArr[i11] = cArr2[i10 & 15];
        }
        return new String(cArr);
    }

    @NonNull
    @u2.a
    public static String b(@NonNull byte[] bArr) {
        return c(bArr, false);
    }

    @NonNull
    @u2.a
    public static String c(@NonNull byte[] bArr, boolean z9) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (int i4 = 0; i4 < length && (!z9 || i4 != length - 1 || (bArr[i4] & 255) != 0); i4++) {
            char[] cArr = f94721a;
            sb.append(cArr[(bArr[i4] & 240) >>> 4]);
            sb.append(cArr[bArr[i4] & com.google.common.base.c.f32110q]);
        }
        return sb.toString();
    }

    @NonNull
    @u2.a
    public static byte[] d(@NonNull String str) throws IllegalArgumentException {
        int length = str.length();
        if (length % 2 == 0) {
            byte[] bArr = new byte[length / 2];
            int i4 = 0;
            while (i4 < length) {
                int i10 = i4 + 2;
                bArr[i4 / 2] = (byte) Integer.parseInt(str.substring(i4, i10), 16);
                i4 = i10;
            }
            return bArr;
        }
        throw new IllegalArgumentException("Hex string has odd number of characters");
    }
}
