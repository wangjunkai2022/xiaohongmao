package v7;

import android.graphics.Bitmap;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Array;

/* compiled from: FastBlur.java */
/* loaded from: classes4.dex */
public class a {
    public static Bitmap a(Bitmap sentBitmap, int radius, boolean canReuseInBitmap) {
        int[] iArr;
        int i4 = radius;
        Bitmap copy = canReuseInBitmap ? sentBitmap : sentBitmap.copy(sentBitmap.getConfig(), true);
        if (i4 < 1) {
            return null;
        }
        int width = copy.getWidth();
        int height = copy.getHeight();
        int i10 = width * height;
        int[] iArr2 = new int[i10];
        copy.getPixels(iArr2, 0, width, 0, 0, width, height);
        int i11 = width - 1;
        int i12 = height - 1;
        int i13 = i4 + i4 + 1;
        int[] iArr3 = new int[i10];
        int[] iArr4 = new int[i10];
        int[] iArr5 = new int[i10];
        int[] iArr6 = new int[Math.max(width, height)];
        int i14 = (i13 + 1) >> 1;
        int i15 = i14 * i14;
        int i16 = i15 * 256;
        int[] iArr7 = new int[i16];
        for (int i17 = 0; i17 < i16; i17++) {
            iArr7[i17] = i17 / i15;
        }
        int[][] iArr8 = (int[][]) Array.newInstance(int.class, i13, 3);
        int i18 = i4 + 1;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        while (i19 < height) {
            Bitmap bitmap = copy;
            int i22 = height;
            int i23 = 0;
            int i24 = 0;
            int i25 = 0;
            int i26 = 0;
            int i27 = 0;
            int i28 = 0;
            int i29 = 0;
            int i30 = 0;
            int i31 = -i4;
            int i32 = 0;
            while (i31 <= i4) {
                int i33 = i12;
                int[] iArr9 = iArr6;
                int i34 = iArr2[i20 + Math.min(i11, Math.max(i31, 0))];
                int[] iArr10 = iArr8[i31 + i4];
                iArr10[0] = (i34 & 16711680) >> 16;
                iArr10[1] = (i34 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr10[2] = i34 & 255;
                int abs = i18 - Math.abs(i31);
                i32 += iArr10[0] * abs;
                i23 += iArr10[1] * abs;
                i24 += iArr10[2] * abs;
                if (i31 > 0) {
                    i28 += iArr10[0];
                    i29 += iArr10[1];
                    i30 += iArr10[2];
                } else {
                    i25 += iArr10[0];
                    i26 += iArr10[1];
                    i27 += iArr10[2];
                }
                i31++;
                i12 = i33;
                iArr6 = iArr9;
            }
            int i35 = i12;
            int[] iArr11 = iArr6;
            int i36 = i4;
            int i37 = i32;
            int i38 = 0;
            while (i38 < width) {
                iArr3[i20] = iArr7[i37];
                iArr4[i20] = iArr7[i23];
                iArr5[i20] = iArr7[i24];
                int i39 = i37 - i25;
                int i40 = i23 - i26;
                int i41 = i24 - i27;
                int[] iArr12 = iArr8[((i36 - i4) + i13) % i13];
                int i42 = i25 - iArr12[0];
                int i43 = i26 - iArr12[1];
                int i44 = i27 - iArr12[2];
                if (i19 == 0) {
                    iArr = iArr7;
                    iArr11[i38] = Math.min(i38 + i4 + 1, i11);
                } else {
                    iArr = iArr7;
                }
                int i45 = iArr2[i21 + iArr11[i38]];
                iArr12[0] = (i45 & 16711680) >> 16;
                iArr12[1] = (i45 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr12[2] = i45 & 255;
                int i46 = i28 + iArr12[0];
                int i47 = i29 + iArr12[1];
                int i48 = i30 + iArr12[2];
                i37 = i39 + i46;
                i23 = i40 + i47;
                i24 = i41 + i48;
                i36 = (i36 + 1) % i13;
                int[] iArr13 = iArr8[i36 % i13];
                i25 = i42 + iArr13[0];
                i26 = i43 + iArr13[1];
                i27 = i44 + iArr13[2];
                i28 = i46 - iArr13[0];
                i29 = i47 - iArr13[1];
                i30 = i48 - iArr13[2];
                i20++;
                i38++;
                iArr7 = iArr;
            }
            i21 += width;
            i19++;
            copy = bitmap;
            height = i22;
            i12 = i35;
            iArr6 = iArr11;
        }
        Bitmap bitmap2 = copy;
        int i49 = i12;
        int[] iArr14 = iArr6;
        int i50 = height;
        int[] iArr15 = iArr7;
        int i51 = 0;
        while (i51 < width) {
            int i52 = -i4;
            int i53 = i13;
            int[] iArr16 = iArr2;
            int i54 = 0;
            int i55 = 0;
            int i56 = 0;
            int i57 = 0;
            int i58 = 0;
            int i59 = 0;
            int i60 = 0;
            int i61 = i52;
            int i62 = i52 * width;
            int i63 = 0;
            int i64 = 0;
            while (i61 <= i4) {
                int i65 = width;
                int max = Math.max(0, i62) + i51;
                int[] iArr17 = iArr8[i61 + i4];
                iArr17[0] = iArr3[max];
                iArr17[1] = iArr4[max];
                iArr17[2] = iArr5[max];
                int abs2 = i18 - Math.abs(i61);
                i63 += iArr3[max] * abs2;
                i64 += iArr4[max] * abs2;
                i54 += iArr5[max] * abs2;
                if (i61 > 0) {
                    i58 += iArr17[0];
                    i59 += iArr17[1];
                    i60 += iArr17[2];
                } else {
                    i55 += iArr17[0];
                    i56 += iArr17[1];
                    i57 += iArr17[2];
                }
                int i66 = i49;
                if (i61 < i66) {
                    i62 += i65;
                }
                i61++;
                i49 = i66;
                width = i65;
            }
            int i67 = width;
            int i68 = i49;
            int i69 = i4;
            int i70 = i51;
            int i71 = i64;
            int i72 = i50;
            int i73 = i63;
            int i74 = 0;
            while (i74 < i72) {
                iArr16[i70] = (iArr16[i70] & ViewCompat.MEASURED_STATE_MASK) | (iArr15[i73] << 16) | (iArr15[i71] << 8) | iArr15[i54];
                int i75 = i73 - i55;
                int i76 = i71 - i56;
                int i77 = i54 - i57;
                int[] iArr18 = iArr8[((i69 - i4) + i53) % i53];
                int i78 = i55 - iArr18[0];
                int i79 = i56 - iArr18[1];
                int i80 = i57 - iArr18[2];
                if (i51 == 0) {
                    iArr14[i74] = Math.min(i74 + i18, i68) * i67;
                }
                int i81 = iArr14[i74] + i51;
                iArr18[0] = iArr3[i81];
                iArr18[1] = iArr4[i81];
                iArr18[2] = iArr5[i81];
                int i82 = i58 + iArr18[0];
                int i83 = i59 + iArr18[1];
                int i84 = i60 + iArr18[2];
                i73 = i75 + i82;
                i71 = i76 + i83;
                i54 = i77 + i84;
                i69 = (i69 + 1) % i53;
                int[] iArr19 = iArr8[i69];
                i55 = i78 + iArr19[0];
                i56 = i79 + iArr19[1];
                i57 = i80 + iArr19[2];
                i58 = i82 - iArr19[0];
                i59 = i83 - iArr19[1];
                i60 = i84 - iArr19[2];
                i70 += i67;
                i74++;
                i4 = radius;
            }
            i51++;
            i4 = radius;
            i49 = i68;
            i50 = i72;
            i13 = i53;
            iArr2 = iArr16;
            width = i67;
        }
        int i85 = width;
        bitmap2.setPixels(iArr2, 0, i85, 0, 0, i85, i50);
        return bitmap2;
    }
}
