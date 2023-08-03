package com.google.android.exoplayer2.util;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* compiled from: NalUnitUtil.java */
/* loaded from: classes2.dex */
public final class b0 {

    /* renamed from: a  reason: collision with root package name */
    private static final String f27493a = "NalUnitUtil";

    /* renamed from: c  reason: collision with root package name */
    public static final int f27495c = 255;

    /* renamed from: e  reason: collision with root package name */
    private static final int f27497e = 6;

    /* renamed from: f  reason: collision with root package name */
    private static final int f27498f = 7;

    /* renamed from: g  reason: collision with root package name */
    private static final int f27499g = 39;

    /* renamed from: b  reason: collision with root package name */
    public static final byte[] f27494b = {0, 0, 0, 1};

    /* renamed from: d  reason: collision with root package name */
    public static final float[] f27496d = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: h  reason: collision with root package name */
    private static final Object f27500h = new Object();

    /* renamed from: i  reason: collision with root package name */
    private static int[] f27501i = new int[10];

    /* compiled from: NalUnitUtil.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f27502a;

        /* renamed from: b  reason: collision with root package name */
        public final int f27503b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f27504c;

        public a(int i4, int i10, boolean z9) {
            this.f27502a = i4;
            this.f27503b = i10;
            this.f27504c = z9;
        }
    }

    /* compiled from: NalUnitUtil.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f27505a;

        /* renamed from: b  reason: collision with root package name */
        public final int f27506b;

        /* renamed from: c  reason: collision with root package name */
        public final int f27507c;

        /* renamed from: d  reason: collision with root package name */
        public final int f27508d;

        /* renamed from: e  reason: collision with root package name */
        public final int f27509e;

        /* renamed from: f  reason: collision with root package name */
        public final int f27510f;

        /* renamed from: g  reason: collision with root package name */
        public final float f27511g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f27512h;

        /* renamed from: i  reason: collision with root package name */
        public final boolean f27513i;

        /* renamed from: j  reason: collision with root package name */
        public final int f27514j;

        /* renamed from: k  reason: collision with root package name */
        public final int f27515k;

        /* renamed from: l  reason: collision with root package name */
        public final int f27516l;

        /* renamed from: m  reason: collision with root package name */
        public final boolean f27517m;

        public b(int i4, int i10, int i11, int i12, int i13, int i14, float f10, boolean z9, boolean z10, int i15, int i16, int i17, boolean z11) {
            this.f27505a = i4;
            this.f27506b = i10;
            this.f27507c = i11;
            this.f27508d = i12;
            this.f27509e = i13;
            this.f27510f = i14;
            this.f27511g = f10;
            this.f27512h = z9;
            this.f27513i = z10;
            this.f27514j = i15;
            this.f27515k = i16;
            this.f27516l = i17;
            this.f27517m = z11;
        }
    }

    private b0() {
    }

    public static void a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static void b(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int i4 = 0;
        int i10 = 0;
        while (true) {
            int i11 = i4 + 1;
            if (i11 < position) {
                int i12 = byteBuffer.get(i4) & 255;
                if (i10 == 3) {
                    if (i12 == 1 && (byteBuffer.get(i11) & com.google.common.base.c.I) == 7) {
                        ByteBuffer duplicate = byteBuffer.duplicate();
                        duplicate.position(i4 - 3);
                        duplicate.limit(position);
                        byteBuffer.position(0);
                        byteBuffer.put(duplicate);
                        return;
                    }
                } else if (i12 == 0) {
                    i10++;
                }
                if (i12 != 0) {
                    i10 = 0;
                }
                i4 = i11;
            } else {
                byteBuffer.clear();
                return;
            }
        }
    }

    public static int c(byte[] bArr, int i4, int i10, boolean[] zArr) {
        int i11 = i10 - i4;
        com.google.android.exoplayer2.util.a.i(i11 >= 0);
        if (i11 == 0) {
            return i10;
        }
        if (zArr[0]) {
            a(zArr);
            return i4 - 3;
        } else if (i11 > 1 && zArr[1] && bArr[i4] == 1) {
            a(zArr);
            return i4 - 2;
        } else if (i11 > 2 && zArr[2] && bArr[i4] == 0 && bArr[i4 + 1] == 1) {
            a(zArr);
            return i4 - 1;
        } else {
            int i12 = i10 - 1;
            int i13 = i4 + 2;
            while (i13 < i12) {
                if ((bArr[i13] & 254) == 0) {
                    int i14 = i13 - 2;
                    if (bArr[i14] == 0 && bArr[i13 - 1] == 0 && bArr[i13] == 1) {
                        a(zArr);
                        return i14;
                    }
                    i13 -= 2;
                }
                i13 += 3;
            }
            zArr[0] = i11 <= 2 ? !(i11 != 2 ? !(zArr[1] && bArr[i12] == 1) : !(zArr[2] && bArr[i10 + (-2)] == 0 && bArr[i12] == 1)) : bArr[i10 + (-3)] == 0 && bArr[i10 + (-2)] == 0 && bArr[i12] == 1;
            zArr[1] = i11 <= 1 ? zArr[2] && bArr[i12] == 0 : bArr[i10 + (-2)] == 0 && bArr[i12] == 0;
            zArr[2] = bArr[i12] == 0;
            return i10;
        }
    }

    private static int d(byte[] bArr, int i4, int i10) {
        while (i4 < i10 - 2) {
            if (bArr[i4] == 0 && bArr[i4 + 1] == 0 && bArr[i4 + 2] == 3) {
                return i4;
            }
            i4++;
        }
        return i10;
    }

    public static int e(byte[] bArr, int i4) {
        return (bArr[i4 + 3] & 126) >> 1;
    }

    public static int f(byte[] bArr, int i4) {
        return bArr[i4 + 3] & com.google.common.base.c.I;
    }

    public static boolean g(@Nullable String str, byte b10) {
        if ("video/avc".equals(str) && (b10 & com.google.common.base.c.I) == 6) {
            return true;
        }
        return a0.f27451k.equals(str) && ((b10 & 126) >> 1) == 39;
    }

    public static a h(byte[] bArr, int i4, int i10) {
        i0 i0Var = new i0(bArr, i4, i10);
        i0Var.l(8);
        int h4 = i0Var.h();
        int h10 = i0Var.h();
        i0Var.k();
        return new a(h4, h10, i0Var.d());
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0149  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.exoplayer2.util.b0.b i(byte[] r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.b0.i(byte[], int, int):com.google.android.exoplayer2.util.b0$b");
    }

    private static void j(i0 i0Var, int i4) {
        int i10 = 8;
        int i11 = 8;
        for (int i12 = 0; i12 < i4; i12++) {
            if (i10 != 0) {
                i10 = ((i0Var.g() + i11) + 256) % 256;
            }
            if (i10 != 0) {
                i11 = i10;
            }
        }
    }

    public static int k(byte[] bArr, int i4) {
        int i10;
        synchronized (f27500h) {
            int i11 = 0;
            int i12 = 0;
            while (i11 < i4) {
                try {
                    i11 = d(bArr, i11, i4);
                    if (i11 < i4) {
                        int[] iArr = f27501i;
                        if (iArr.length <= i12) {
                            f27501i = Arrays.copyOf(iArr, iArr.length * 2);
                        }
                        f27501i[i12] = i11;
                        i11 += 3;
                        i12++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            i10 = i4 - i12;
            int i13 = 0;
            int i14 = 0;
            for (int i15 = 0; i15 < i12; i15++) {
                int i16 = f27501i[i15] - i14;
                System.arraycopy(bArr, i14, bArr, i13, i16);
                int i17 = i13 + i16;
                int i18 = i17 + 1;
                bArr[i17] = 0;
                i13 = i18 + 1;
                bArr[i18] = 0;
                i14 += i16 + 3;
            }
            System.arraycopy(bArr, i14, bArr, i13, i10 - i13);
        }
        return i10;
    }
}
