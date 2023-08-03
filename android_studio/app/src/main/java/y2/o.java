package y2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public final class o {
    @Nullable
    @u2.a
    public static String a(@NonNull byte[] bArr, int i4, int i10, boolean z9) {
        int length;
        if (bArr == null || (length = bArr.length) == 0 || i4 < 0 || i10 <= 0 || i4 + i10 > length) {
            return null;
        }
        StringBuilder sb = new StringBuilder((z9 ? 75 : 57) * ((i10 + 15) / 16));
        int i11 = i10;
        int i12 = 0;
        int i13 = 0;
        while (i11 > 0) {
            if (i12 == 0) {
                if (i10 < 65536) {
                    sb.append(String.format("%04X:", Integer.valueOf(i4)));
                } else {
                    sb.append(String.format("%08X:", Integer.valueOf(i4)));
                }
                i13 = i4;
            } else if (i12 == 8) {
                sb.append(" -");
            }
            sb.append(String.format(" %02X", Integer.valueOf(bArr[i4] & 255)));
            i11--;
            i12++;
            if (z9 && (i12 == 16 || i11 == 0)) {
                int i14 = 16 - i12;
                if (i14 > 0) {
                    for (int i15 = 0; i15 < i14; i15++) {
                        sb.append("   ");
                    }
                }
                if (i14 >= 8) {
                    sb.append("  ");
                }
                sb.append("  ");
                for (int i16 = 0; i16 < i12; i16++) {
                    char c10 = (char) bArr[i13 + i16];
                    if (c10 < ' ' || c10 > '~') {
                        c10 = '.';
                    }
                    sb.append(c10);
                }
            }
            if (i12 == 16 || i11 == 0) {
                sb.append('\n');
                i12 = 0;
            }
            i4++;
        }
        return sb.toString();
    }
}
