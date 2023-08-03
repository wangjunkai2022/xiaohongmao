package com.google.android.exoplayer2.util;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;

/* compiled from: CodecSpecificDataUtil.java */
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f27531a = {0, 0, 0, 1};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f27532b = {"", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C"};

    private e() {
    }

    public static String a(int i4, int i10, int i11) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i4), Integer.valueOf(i10), Integer.valueOf(i11));
    }

    public static List<byte[]> b(boolean z9) {
        return Collections.singletonList(z9 ? new byte[]{1} : new byte[]{0});
    }

    public static String c(i0 i0Var) {
        i0Var.l(24);
        int e4 = i0Var.e(2);
        boolean d4 = i0Var.d();
        int e10 = i0Var.e(5);
        int i4 = 0;
        for (int i10 = 0; i10 < 32; i10++) {
            if (i0Var.d()) {
                i4 |= 1 << i10;
            }
        }
        int i11 = 6;
        int[] iArr = new int[6];
        for (int i12 = 0; i12 < 6; i12++) {
            iArr[i12] = i0Var.e(8);
        }
        int e11 = i0Var.e(8);
        Object[] objArr = new Object[5];
        objArr[0] = f27532b[e4];
        objArr[1] = Integer.valueOf(e10);
        objArr[2] = Integer.valueOf(i4);
        objArr[3] = Character.valueOf(d4 ? 'H' : Matrix.MATRIX_TYPE_RANDOM_LT);
        objArr[4] = Integer.valueOf(e11);
        StringBuilder sb = new StringBuilder(z0.I("hvc1.%s%d.%X.%c%d", objArr));
        while (i11 > 0 && iArr[i11 - 1] == 0) {
            i11--;
        }
        for (int i13 = 0; i13 < i11; i13++) {
            sb.append(String.format(".%02X", Integer.valueOf(iArr[i13])));
        }
        return sb.toString();
    }

    public static byte[] d(byte[] bArr, int i4, int i10) {
        byte[] bArr2 = f27531a;
        byte[] bArr3 = new byte[bArr2.length + i10];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i4, bArr3, bArr2.length, i10);
        return bArr3;
    }

    private static int e(byte[] bArr, int i4) {
        int length = bArr.length - f27531a.length;
        while (i4 <= length) {
            if (f(bArr, i4)) {
                return i4;
            }
            i4++;
        }
        return -1;
    }

    private static boolean f(byte[] bArr, int i4) {
        if (bArr.length - i4 <= f27531a.length) {
            return false;
        }
        int i10 = 0;
        while (true) {
            byte[] bArr2 = f27531a;
            if (i10 >= bArr2.length) {
                return true;
            }
            if (bArr[i4 + i10] != bArr2[i10]) {
                return false;
            }
            i10++;
        }
    }

    public static Pair<Integer, Integer> g(byte[] bArr) {
        h0 h0Var = new h0(bArr);
        h0Var.S(9);
        int G = h0Var.G();
        h0Var.S(20);
        return Pair.create(Integer.valueOf(h0Var.K()), Integer.valueOf(G));
    }

    public static boolean h(List<byte[]> list) {
        return list.size() == 1 && list.get(0).length == 1 && list.get(0)[0] == 1;
    }

    @Nullable
    public static byte[][] i(byte[] bArr) {
        if (f(bArr, 0)) {
            ArrayList arrayList = new ArrayList();
            int i4 = 0;
            do {
                arrayList.add(Integer.valueOf(i4));
                i4 = e(bArr, i4 + f27531a.length);
            } while (i4 != -1);
            byte[][] bArr2 = new byte[arrayList.size()];
            int i10 = 0;
            while (i10 < arrayList.size()) {
                int intValue = ((Integer) arrayList.get(i10)).intValue();
                int intValue2 = (i10 < arrayList.size() + (-1) ? ((Integer) arrayList.get(i10 + 1)).intValue() : bArr.length) - intValue;
                byte[] bArr3 = new byte[intValue2];
                System.arraycopy(bArr, intValue, bArr3, 0, intValue2);
                bArr2[i10] = bArr3;
                i10++;
            }
            return bArr2;
        }
        return null;
    }
}
