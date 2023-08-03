package y2;

import androidx.annotation.NonNull;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class t {
    private t() {
    }

    @u2.a
    public static int a(@NonNull byte[] bArr, int i4, int i10, int i11) {
        int i12 = (i10 & (-4)) + i4;
        while (i4 < i12) {
            int i13 = ((bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8) | ((bArr[i4 + 2] & 255) << 16) | (bArr[i4 + 3] << 24)) * (-862048943);
            int i14 = i11 ^ (((i13 << 15) | (i13 >>> 17)) * 461845907);
            i11 = (((i14 >>> 19) | (i14 << 13)) * 5) - 430675100;
            i4 += 4;
        }
        int i15 = i10 & 3;
        if (i15 != 1) {
            if (i15 != 2) {
                r3 = i15 == 3 ? (bArr[i12 + 2] & 255) << 16 : 0;
                int i16 = i11 ^ i10;
                int i17 = (i16 ^ (i16 >>> 16)) * (-2048144789);
                int i18 = (i17 ^ (i17 >>> 13)) * (-1028477387);
                return i18 ^ (i18 >>> 16);
            }
            r3 |= (bArr[i12 + 1] & 255) << 8;
        }
        int i19 = ((bArr[i12] & 255) | r3) * (-862048943);
        i11 ^= ((i19 >>> 17) | (i19 << 15)) * 461845907;
        int i162 = i11 ^ i10;
        int i172 = (i162 ^ (i162 >>> 16)) * (-2048144789);
        int i182 = (i172 ^ (i172 >>> 13)) * (-1028477387);
        return i182 ^ (i182 >>> 16);
    }
}
