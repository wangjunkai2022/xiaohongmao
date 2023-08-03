package o1;

import android.graphics.Bitmap;
import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: InPlaceRoundFilter.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public final class a {
    private a() {
    }

    public static void a(Bitmap bitmap) {
        j.i(bitmap);
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int min = Math.min(width, height) / 2;
        int i4 = width / 2;
        int i10 = height / 2;
        if (min == 0) {
            return;
        }
        j.d(Boolean.valueOf(min >= 1));
        j.d(Boolean.valueOf(width > 0 && ((float) width) <= 2048.0f));
        j.d(Boolean.valueOf(height > 0 && ((float) height) <= 2048.0f));
        j.d(Boolean.valueOf(i4 > 0 && i4 < width));
        j.d(Boolean.valueOf(i10 > 0 && i10 < height));
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        int i11 = min - 1;
        j.d(Boolean.valueOf(i4 - i11 >= 0 && i10 - i11 >= 0 && i4 + i11 < width && i10 + i11 < height));
        int i12 = (-min) * 2;
        int[] iArr2 = new int[width];
        int i13 = i12 + 1;
        int i14 = 0;
        int i15 = 1;
        int i16 = 1;
        while (i11 >= i14) {
            int i17 = i4 + i11;
            int i18 = i4 - i11;
            int i19 = i4 + i14;
            int i20 = min;
            int i21 = i4 - i14;
            int i22 = i10 + i11;
            int i23 = i10 - i11;
            int i24 = i4;
            int i25 = i10 + i14;
            int i26 = i10 - i14;
            j.d(Boolean.valueOf(i11 >= 0 && i19 < width && i21 >= 0 && i25 < height && i26 >= 0));
            int i27 = i25 * width;
            int i28 = height;
            int i29 = width * i26;
            int i30 = i10;
            int i31 = width * i22;
            int i32 = i12;
            int i33 = width * i23;
            int i34 = i15;
            System.arraycopy(iArr2, 0, iArr, i27, i18);
            System.arraycopy(iArr2, 0, iArr, i29, i18);
            System.arraycopy(iArr2, 0, iArr, i31, i21);
            System.arraycopy(iArr2, 0, iArr, i33, i21);
            int i35 = width - i17;
            System.arraycopy(iArr2, 0, iArr, i27 + i17, i35);
            System.arraycopy(iArr2, 0, iArr, i29 + i17, i35);
            int i36 = width - i19;
            System.arraycopy(iArr2, 0, iArr, i31 + i19, i36);
            System.arraycopy(iArr2, 0, iArr, i33 + i19, i36);
            if (i13 <= 0) {
                i14++;
                i16 += 2;
                i13 += i16;
            }
            if (i13 > 0) {
                i11--;
                i15 = i34 + 2;
                i13 += i15 + i32;
                min = i20;
                i12 = i32;
            } else {
                min = i20;
                i12 = i32;
                i15 = i34;
            }
            i4 = i24;
            i10 = i30;
            height = i28;
        }
        int i37 = height;
        int i38 = min;
        int i39 = i10;
        for (int i40 = i39 - i38; i40 >= 0; i40--) {
            System.arraycopy(iArr2, 0, iArr, i40 * width, width);
        }
        for (int i41 = i39 + i38; i41 < i37; i41++) {
            System.arraycopy(iArr2, 0, iArr, i41 * width, width);
        }
        bitmap.setPixels(iArr, 0, width, 0, 0, width, i37);
    }
}
