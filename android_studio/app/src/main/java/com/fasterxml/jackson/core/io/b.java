package com.fasterxml.jackson.core.io;

import com.google.android.exoplayer2.extractor.ts.a0;
import java.util.Arrays;

/* compiled from: CharTypes.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    protected static final char[] f13912a;

    /* renamed from: b  reason: collision with root package name */
    protected static final byte[] f13913b;

    /* renamed from: c  reason: collision with root package name */
    protected static final int[] f13914c;

    /* renamed from: d  reason: collision with root package name */
    protected static final int[] f13915d;

    /* renamed from: e  reason: collision with root package name */
    protected static final int[] f13916e;

    /* renamed from: f  reason: collision with root package name */
    protected static final int[] f13917f;

    /* renamed from: g  reason: collision with root package name */
    protected static final int[] f13918g;

    /* renamed from: h  reason: collision with root package name */
    protected static final int[] f13919h;

    /* renamed from: i  reason: collision with root package name */
    protected static final int[] f13920i;

    /* renamed from: j  reason: collision with root package name */
    protected static final int[] f13921j;

    /* compiled from: CharTypes.java */
    /* loaded from: classes.dex */
    private static class a {

        /* renamed from: b  reason: collision with root package name */
        public static final a f13922b = new a();

        /* renamed from: a  reason: collision with root package name */
        private int[][] f13923a = new int[128];

        private a() {
        }

        public int[] a(int i4) {
            int[] iArr = this.f13923a[i4];
            if (iArr == null) {
                iArr = Arrays.copyOf(b.f13920i, 128);
                if (iArr[i4] == 0) {
                    iArr[i4] = -1;
                }
                this.f13923a[i4] = iArr;
            }
            return iArr;
        }
    }

    static {
        char[] charArray = "0123456789ABCDEF".toCharArray();
        f13912a = charArray;
        int length = charArray.length;
        f13913b = new byte[length];
        for (int i4 = 0; i4 < length; i4++) {
            f13913b[i4] = (byte) f13912a[i4];
        }
        int[] iArr = new int[256];
        for (int i10 = 0; i10 < 32; i10++) {
            iArr[i10] = -1;
        }
        iArr[34] = 1;
        iArr[92] = 1;
        f13914c = iArr;
        int length2 = iArr.length;
        int[] iArr2 = new int[length2];
        System.arraycopy(iArr, 0, iArr2, 0, length2);
        for (int i11 = 128; i11 < 256; i11++) {
            iArr2[i11] = (i11 & 224) == 192 ? 2 : (i11 & a0.A) == 224 ? 3 : (i11 & 248) == 240 ? 4 : -1;
        }
        f13915d = iArr2;
        int[] iArr3 = new int[256];
        Arrays.fill(iArr3, -1);
        for (int i12 = 33; i12 < 256; i12++) {
            if (Character.isJavaIdentifierPart((char) i12)) {
                iArr3[i12] = 0;
            }
        }
        iArr3[64] = 0;
        iArr3[35] = 0;
        iArr3[42] = 0;
        iArr3[45] = 0;
        iArr3[43] = 0;
        f13916e = iArr3;
        int[] iArr4 = new int[256];
        System.arraycopy(iArr3, 0, iArr4, 0, 256);
        Arrays.fill(iArr4, 128, 128, 0);
        f13917f = iArr4;
        int[] iArr5 = new int[256];
        int[] iArr6 = f13915d;
        System.arraycopy(iArr6, 128, iArr5, 128, 128);
        Arrays.fill(iArr5, 0, 32, -1);
        iArr5[9] = 0;
        iArr5[10] = 10;
        iArr5[13] = 13;
        iArr5[42] = 42;
        f13918g = iArr5;
        int[] iArr7 = new int[256];
        System.arraycopy(iArr6, 128, iArr7, 128, 128);
        Arrays.fill(iArr7, 0, 32, -1);
        iArr7[32] = 1;
        iArr7[9] = 1;
        iArr7[10] = 10;
        iArr7[13] = 13;
        iArr7[47] = 47;
        iArr7[35] = 35;
        f13919h = iArr7;
        int[] iArr8 = new int[128];
        for (int i13 = 0; i13 < 32; i13++) {
            iArr8[i13] = -1;
        }
        iArr8[34] = 34;
        iArr8[92] = 92;
        iArr8[8] = 98;
        iArr8[9] = 116;
        iArr8[12] = 102;
        iArr8[10] = 110;
        iArr8[13] = 114;
        f13920i = iArr8;
        int[] iArr9 = new int[256];
        f13921j = iArr9;
        Arrays.fill(iArr9, -1);
        for (int i14 = 0; i14 < 10; i14++) {
            f13921j[i14 + 48] = i14;
        }
        for (int i15 = 0; i15 < 6; i15++) {
            int[] iArr10 = f13921j;
            int i16 = i15 + 10;
            iArr10[i15 + 97] = i16;
            iArr10[i15 + 65] = i16;
        }
    }

    public static void a(StringBuilder sb, String str) {
        int[] iArr = f13920i;
        int length = iArr.length;
        int length2 = str.length();
        for (int i4 = 0; i4 < length2; i4++) {
            char charAt = str.charAt(i4);
            if (charAt < length && iArr[charAt] != 0) {
                sb.append('\\');
                int i10 = iArr[charAt];
                if (i10 < 0) {
                    sb.append('u');
                    sb.append('0');
                    sb.append('0');
                    char[] cArr = f13912a;
                    sb.append(cArr[charAt >> 4]);
                    sb.append(cArr[charAt & 15]);
                } else {
                    sb.append((char) i10);
                }
            } else {
                sb.append(charAt);
            }
        }
    }

    public static int b(int i4) {
        return f13921j[i4 & 255];
    }

    public static byte[] c() {
        return (byte[]) f13913b.clone();
    }

    public static char[] d() {
        return (char[]) f13912a.clone();
    }

    public static int[] e() {
        return f13920i;
    }

    public static int[] f(int i4) {
        if (i4 == 34) {
            return f13920i;
        }
        return a.f13922b.a(i4);
    }

    public static int[] g() {
        return f13918g;
    }

    public static int[] h() {
        return f13914c;
    }

    public static int[] i() {
        return f13916e;
    }

    public static int[] j() {
        return f13915d;
    }

    public static int[] k() {
        return f13917f;
    }

    public static int[] l() {
        return f13919h;
    }

    public static char m(int i4) {
        return f13912a[i4];
    }
}
