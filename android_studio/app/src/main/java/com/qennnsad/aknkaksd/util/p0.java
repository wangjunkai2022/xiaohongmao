package com.qennnsad.aknkaksd.util;

import androidx.exifinterface.media.ExifInterface;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MathUtils.java */
/* loaded from: classes3.dex */
public class p0 {
    private p0() {
    }

    private static List<int[]> a(int[] iArr, int i4) {
        boolean z9;
        int length = iArr.length;
        if (i4 <= length) {
            ArrayList arrayList = new ArrayList();
            int[] iArr2 = new int[length];
            for (int i10 = 0; i10 < length; i10++) {
                iArr2[i10] = 0;
            }
            for (int i11 = 0; i11 < i4; i11++) {
                iArr2[i11] = 1;
            }
            do {
                arrayList.add(d(iArr2, iArr, i4));
                int i12 = 0;
                while (true) {
                    if (i12 >= length - 1) {
                        i12 = 0;
                        break;
                    }
                    if (iArr2[i12] == 1) {
                        int i13 = i12 + 1;
                        if (iArr2[i13] == 0) {
                            iArr2[i12] = 0;
                            iArr2[i13] = 1;
                            break;
                        }
                    }
                    i12++;
                }
                int i14 = 0;
                for (int i15 = 0; i15 < i12; i15++) {
                    if (iArr2[i15] == 1) {
                        i14++;
                    }
                }
                for (int i16 = 0; i16 < i12; i16++) {
                    if (i16 < i14) {
                        iArr2[i16] = 1;
                    } else {
                        iArr2[i16] = 0;
                    }
                }
                int i17 = length - i4;
                while (true) {
                    if (i17 >= length) {
                        z9 = true;
                        break;
                    } else if (iArr2[i17] == 0) {
                        z9 = false;
                        break;
                    } else {
                        i17++;
                    }
                }
            } while (!z9);
            arrayList.add(d(iArr2, iArr, i4));
            return arrayList;
        }
        throw new RuntimeException("错误！数组a中只有" + length + "个元素。" + i4 + "大于2!!!");
    }

    public static String b(String str) {
        float parseFloat = Float.parseFloat(str);
        if (parseFloat >= 10000.0f) {
            DecimalFormat decimalFormat = new DecimalFormat("#.##");
            return decimalFormat.format(parseFloat / 10000.0f) + ExifInterface.LONGITUDE_WEST;
        }
        return str;
    }

    public static List<int[]> c() {
        return a(new int[]{0, 1, 2, 3, 4, 5, 6}, 5);
    }

    private static int[] d(int[] iArr, int[] iArr2, int i4) {
        int[] iArr3 = new int[i4];
        int i10 = 0;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            if (iArr[i11] == 1) {
                iArr3[i10] = iArr2[i11];
                i10++;
            }
        }
        return iArr3;
    }

    public static String e(float f10) {
        return new DecimalFormat("0.#####").format(f10);
    }
}
