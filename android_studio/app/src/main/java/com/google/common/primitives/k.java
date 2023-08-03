package com.google.common.primitives;

import com.google.common.base.a0;
import java.util.Arrays;
import java.util.Comparator;

/* compiled from: SignedBytes.java */
@h3.b
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public static final byte f34876a = 64;

    /* compiled from: SignedBytes.java */
    /* loaded from: classes2.dex */
    private enum a implements Comparator<byte[]> {
        INSTANCE;

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(byte[] bArr, byte[] bArr2) {
            int min = Math.min(bArr.length, bArr2.length);
            for (int i4 = 0; i4 < min; i4++) {
                int b10 = k.b(bArr[i4], bArr2[i4]);
                if (b10 != 0) {
                    return b10;
                }
            }
            return bArr.length - bArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "SignedBytes.lexicographicalComparator()";
        }
    }

    private k() {
    }

    public static byte a(long j4) {
        byte b10 = (byte) j4;
        a0.p(((long) b10) == j4, "Out of range: %s", j4);
        return b10;
    }

    public static int b(byte b10, byte b11) {
        return b10 - b11;
    }

    public static String c(String str, byte... bArr) {
        a0.E(str);
        if (bArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(bArr.length * 5);
        sb.append((int) bArr[0]);
        for (int i4 = 1; i4 < bArr.length; i4++) {
            sb.append(str);
            sb.append((int) bArr[i4]);
        }
        return sb.toString();
    }

    public static Comparator<byte[]> d() {
        return a.INSTANCE;
    }

    public static byte e(byte... bArr) {
        a0.d(bArr.length > 0);
        byte b10 = bArr[0];
        for (int i4 = 1; i4 < bArr.length; i4++) {
            if (bArr[i4] > b10) {
                b10 = bArr[i4];
            }
        }
        return b10;
    }

    public static byte f(byte... bArr) {
        a0.d(bArr.length > 0);
        byte b10 = bArr[0];
        for (int i4 = 1; i4 < bArr.length; i4++) {
            if (bArr[i4] < b10) {
                b10 = bArr[i4];
            }
        }
        return b10;
    }

    public static byte g(long j4) {
        if (j4 > 127) {
            return Byte.MAX_VALUE;
        }
        if (j4 < -128) {
            return Byte.MIN_VALUE;
        }
        return (byte) j4;
    }

    public static void h(byte[] bArr) {
        a0.E(bArr);
        i(bArr, 0, bArr.length);
    }

    public static void i(byte[] bArr, int i4, int i10) {
        a0.E(bArr);
        a0.f0(i4, i10, bArr.length);
        Arrays.sort(bArr, i4, i10);
        b.n(bArr, i4, i10);
    }
}
