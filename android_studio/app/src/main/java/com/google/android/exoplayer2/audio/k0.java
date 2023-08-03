package com.google.android.exoplayer2.audio;

import java.nio.ShortBuffer;
import java.util.Arrays;

/* compiled from: Sonic.java */
/* loaded from: classes2.dex */
final class k0 {

    /* renamed from: w  reason: collision with root package name */
    private static final int f21270w = 65;

    /* renamed from: x  reason: collision with root package name */
    private static final int f21271x = 400;

    /* renamed from: y  reason: collision with root package name */
    private static final int f21272y = 4000;

    /* renamed from: z  reason: collision with root package name */
    private static final int f21273z = 2;

    /* renamed from: a  reason: collision with root package name */
    private final int f21274a;

    /* renamed from: b  reason: collision with root package name */
    private final int f21275b;

    /* renamed from: c  reason: collision with root package name */
    private final float f21276c;

    /* renamed from: d  reason: collision with root package name */
    private final float f21277d;

    /* renamed from: e  reason: collision with root package name */
    private final float f21278e;

    /* renamed from: f  reason: collision with root package name */
    private final int f21279f;

    /* renamed from: g  reason: collision with root package name */
    private final int f21280g;

    /* renamed from: h  reason: collision with root package name */
    private final int f21281h;

    /* renamed from: i  reason: collision with root package name */
    private final short[] f21282i;

    /* renamed from: j  reason: collision with root package name */
    private short[] f21283j;

    /* renamed from: k  reason: collision with root package name */
    private int f21284k;

    /* renamed from: l  reason: collision with root package name */
    private short[] f21285l;

    /* renamed from: m  reason: collision with root package name */
    private int f21286m;

    /* renamed from: n  reason: collision with root package name */
    private short[] f21287n;

    /* renamed from: o  reason: collision with root package name */
    private int f21288o;

    /* renamed from: p  reason: collision with root package name */
    private int f21289p;

    /* renamed from: q  reason: collision with root package name */
    private int f21290q;

    /* renamed from: r  reason: collision with root package name */
    private int f21291r;

    /* renamed from: s  reason: collision with root package name */
    private int f21292s;

    /* renamed from: t  reason: collision with root package name */
    private int f21293t;

    /* renamed from: u  reason: collision with root package name */
    private int f21294u;

    /* renamed from: v  reason: collision with root package name */
    private int f21295v;

    public k0(int i4, int i10, float f10, float f11, int i11) {
        this.f21274a = i4;
        this.f21275b = i10;
        this.f21276c = f10;
        this.f21277d = f11;
        this.f21278e = i4 / i11;
        this.f21279f = i4 / 400;
        int i12 = i4 / 65;
        this.f21280g = i12;
        int i13 = i12 * 2;
        this.f21281h = i13;
        this.f21282i = new short[i13];
        this.f21283j = new short[i13 * i10];
        this.f21285l = new short[i13 * i10];
        this.f21287n = new short[i13 * i10];
    }

    private void a(float f10, int i4) {
        int i10;
        int i11;
        if (this.f21286m == i4) {
            return;
        }
        int i12 = this.f21274a;
        int i13 = (int) (i12 / f10);
        while (true) {
            if (i13 <= 16384 && i12 <= 16384) {
                break;
            }
            i13 /= 2;
            i12 /= 2;
        }
        o(i4);
        int i14 = 0;
        while (true) {
            int i15 = this.f21288o;
            if (i14 < i15 - 1) {
                while (true) {
                    i10 = this.f21289p;
                    int i16 = (i10 + 1) * i13;
                    i11 = this.f21290q;
                    if (i16 <= i11 * i12) {
                        break;
                    }
                    this.f21285l = f(this.f21285l, this.f21286m, 1);
                    int i17 = 0;
                    while (true) {
                        int i18 = this.f21275b;
                        if (i17 < i18) {
                            this.f21285l[(this.f21286m * i18) + i17] = n(this.f21287n, (i18 * i14) + i17, i12, i13);
                            i17++;
                        }
                    }
                    this.f21290q++;
                    this.f21286m++;
                }
                int i19 = i10 + 1;
                this.f21289p = i19;
                if (i19 == i12) {
                    this.f21289p = 0;
                    com.google.android.exoplayer2.util.a.i(i11 == i13);
                    this.f21290q = 0;
                }
                i14++;
            } else {
                u(i15 - 1);
                return;
            }
        }
    }

    private void b(float f10) {
        int m9;
        int i4 = this.f21284k;
        if (i4 < this.f21281h) {
            return;
        }
        int i10 = 0;
        do {
            if (this.f21291r > 0) {
                m9 = c(i10);
            } else {
                int g4 = g(this.f21283j, i10);
                if (f10 > 1.0d) {
                    m9 = g4 + w(this.f21283j, i10, f10, g4);
                } else {
                    m9 = m(this.f21283j, i10, f10, g4);
                }
            }
            i10 += m9;
        } while (this.f21281h + i10 <= i4);
        v(i10);
    }

    private int c(int i4) {
        int min = Math.min(this.f21281h, this.f21291r);
        d(this.f21283j, i4, min);
        this.f21291r -= min;
        return min;
    }

    private void d(short[] sArr, int i4, int i10) {
        short[] f10 = f(this.f21285l, this.f21286m, i10);
        this.f21285l = f10;
        int i11 = this.f21275b;
        System.arraycopy(sArr, i4 * i11, f10, this.f21286m * i11, i11 * i10);
        this.f21286m += i10;
    }

    private void e(short[] sArr, int i4, int i10) {
        int i11 = this.f21281h / i10;
        int i12 = this.f21275b;
        int i13 = i10 * i12;
        int i14 = i4 * i12;
        for (int i15 = 0; i15 < i11; i15++) {
            int i16 = 0;
            for (int i17 = 0; i17 < i13; i17++) {
                i16 += sArr[(i15 * i13) + i14 + i17];
            }
            this.f21282i[i15] = (short) (i16 / i13);
        }
    }

    private short[] f(short[] sArr, int i4, int i10) {
        int length = sArr.length;
        int i11 = this.f21275b;
        int i12 = length / i11;
        return i4 + i10 <= i12 ? sArr : Arrays.copyOf(sArr, (((i12 * 3) / 2) + i10) * i11);
    }

    private int g(short[] sArr, int i4) {
        int i10;
        int i11 = this.f21274a;
        int i12 = i11 > f21272y ? i11 / f21272y : 1;
        if (this.f21275b == 1 && i12 == 1) {
            i10 = h(sArr, i4, this.f21279f, this.f21280g);
        } else {
            e(sArr, i4, i12);
            int h4 = h(this.f21282i, 0, this.f21279f / i12, this.f21280g / i12);
            if (i12 != 1) {
                int i13 = h4 * i12;
                int i14 = i12 * 4;
                int i15 = i13 - i14;
                int i16 = i13 + i14;
                int i17 = this.f21279f;
                if (i15 < i17) {
                    i15 = i17;
                }
                int i18 = this.f21280g;
                if (i16 > i18) {
                    i16 = i18;
                }
                if (this.f21275b == 1) {
                    i10 = h(sArr, i4, i15, i16);
                } else {
                    e(sArr, i4, 1);
                    i10 = h(this.f21282i, 0, i15, i16);
                }
            } else {
                i10 = h4;
            }
        }
        int i19 = q(this.f21294u, this.f21295v) ? this.f21292s : i10;
        this.f21293t = this.f21294u;
        this.f21292s = i10;
        return i19;
    }

    private int h(short[] sArr, int i4, int i10, int i11) {
        int i12 = i4 * this.f21275b;
        int i13 = 1;
        int i14 = 255;
        int i15 = 0;
        int i16 = 0;
        while (i10 <= i11) {
            int i17 = 0;
            for (int i18 = 0; i18 < i10; i18++) {
                i17 += Math.abs(sArr[i12 + i18] - sArr[(i12 + i10) + i18]);
            }
            if (i17 * i15 < i13 * i10) {
                i15 = i10;
                i13 = i17;
            }
            if (i17 * i14 > i16 * i10) {
                i14 = i10;
                i16 = i17;
            }
            i10++;
        }
        this.f21294u = i13 / i15;
        this.f21295v = i16 / i14;
        return i15;
    }

    private int m(short[] sArr, int i4, float f10, int i10) {
        int i11;
        if (f10 < 0.5f) {
            i11 = (int) ((i10 * f10) / (1.0f - f10));
        } else {
            this.f21291r = (int) ((i10 * ((2.0f * f10) - 1.0f)) / (1.0f - f10));
            i11 = i10;
        }
        int i12 = i10 + i11;
        short[] f11 = f(this.f21285l, this.f21286m, i12);
        this.f21285l = f11;
        int i13 = this.f21275b;
        System.arraycopy(sArr, i4 * i13, f11, this.f21286m * i13, i13 * i10);
        p(i11, this.f21275b, this.f21285l, this.f21286m + i10, sArr, i4 + i10, sArr, i4);
        this.f21286m += i12;
        return i11;
    }

    private short n(short[] sArr, int i4, int i10, int i11) {
        short s9 = sArr[i4];
        short s10 = sArr[i4 + this.f21275b];
        int i12 = this.f21290q * i10;
        int i13 = this.f21289p;
        int i14 = i13 * i11;
        int i15 = (i13 + 1) * i11;
        int i16 = i15 - i12;
        int i17 = i15 - i14;
        return (short) (((s9 * i16) + ((i17 - i16) * s10)) / i17);
    }

    private void o(int i4) {
        int i10 = this.f21286m - i4;
        short[] f10 = f(this.f21287n, this.f21288o, i10);
        this.f21287n = f10;
        short[] sArr = this.f21285l;
        int i11 = this.f21275b;
        System.arraycopy(sArr, i4 * i11, f10, this.f21288o * i11, i11 * i10);
        this.f21286m = i4;
        this.f21288o += i10;
    }

    private static void p(int i4, int i10, short[] sArr, int i11, short[] sArr2, int i12, short[] sArr3, int i13) {
        for (int i14 = 0; i14 < i10; i14++) {
            int i15 = (i11 * i10) + i14;
            int i16 = (i13 * i10) + i14;
            int i17 = (i12 * i10) + i14;
            for (int i18 = 0; i18 < i4; i18++) {
                sArr[i15] = (short) (((sArr2[i17] * (i4 - i18)) + (sArr3[i16] * i18)) / i4);
                i15 += i10;
                i17 += i10;
                i16 += i10;
            }
        }
    }

    private boolean q(int i4, int i10) {
        return i4 != 0 && this.f21292s != 0 && i10 <= i4 * 3 && i4 * 2 > this.f21293t * 3;
    }

    private void r() {
        int i4 = this.f21286m;
        float f10 = this.f21276c;
        float f11 = this.f21277d;
        float f12 = f10 / f11;
        float f13 = this.f21278e * f11;
        double d4 = f12;
        if (d4 <= 1.00001d && d4 >= 0.99999d) {
            d(this.f21283j, 0, this.f21284k);
            this.f21284k = 0;
        } else {
            b(f12);
        }
        if (f13 != 1.0f) {
            a(f13, i4);
        }
    }

    private void u(int i4) {
        if (i4 == 0) {
            return;
        }
        short[] sArr = this.f21287n;
        int i10 = this.f21275b;
        System.arraycopy(sArr, i4 * i10, sArr, 0, (this.f21288o - i4) * i10);
        this.f21288o -= i4;
    }

    private void v(int i4) {
        int i10 = this.f21284k - i4;
        short[] sArr = this.f21283j;
        int i11 = this.f21275b;
        System.arraycopy(sArr, i4 * i11, sArr, 0, i11 * i10);
        this.f21284k = i10;
    }

    private int w(short[] sArr, int i4, float f10, int i10) {
        int i11;
        if (f10 >= 2.0f) {
            i11 = (int) (i10 / (f10 - 1.0f));
        } else {
            this.f21291r = (int) ((i10 * (2.0f - f10)) / (f10 - 1.0f));
            i11 = i10;
        }
        short[] f11 = f(this.f21285l, this.f21286m, i11);
        this.f21285l = f11;
        p(i11, this.f21275b, f11, this.f21286m, sArr, i4, sArr, i4 + i10);
        this.f21286m += i11;
        return i11;
    }

    public void i() {
        this.f21284k = 0;
        this.f21286m = 0;
        this.f21288o = 0;
        this.f21289p = 0;
        this.f21290q = 0;
        this.f21291r = 0;
        this.f21292s = 0;
        this.f21293t = 0;
        this.f21294u = 0;
        this.f21295v = 0;
    }

    public void j(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.f21275b, this.f21286m);
        shortBuffer.put(this.f21285l, 0, this.f21275b * min);
        int i4 = this.f21286m - min;
        this.f21286m = i4;
        short[] sArr = this.f21285l;
        int i10 = this.f21275b;
        System.arraycopy(sArr, min * i10, sArr, 0, i4 * i10);
    }

    public int k() {
        return this.f21286m * this.f21275b * 2;
    }

    public int l() {
        return this.f21284k * this.f21275b * 2;
    }

    public void s() {
        int i4;
        int i10 = this.f21284k;
        float f10 = this.f21276c;
        float f11 = this.f21277d;
        int i11 = this.f21286m + ((int) ((((i10 / (f10 / f11)) + this.f21288o) / (this.f21278e * f11)) + 0.5f));
        this.f21283j = f(this.f21283j, i10, (this.f21281h * 2) + i10);
        int i12 = 0;
        while (true) {
            i4 = this.f21281h;
            int i13 = this.f21275b;
            if (i12 >= i4 * 2 * i13) {
                break;
            }
            this.f21283j[(i13 * i10) + i12] = 0;
            i12++;
        }
        this.f21284k += i4 * 2;
        r();
        if (this.f21286m > i11) {
            this.f21286m = i11;
        }
        this.f21284k = 0;
        this.f21291r = 0;
        this.f21288o = 0;
    }

    public void t(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i4 = this.f21275b;
        int i10 = remaining / i4;
        short[] f10 = f(this.f21283j, this.f21284k, i10);
        this.f21283j = f10;
        shortBuffer.get(f10, this.f21284k * this.f21275b, ((i4 * i10) * 2) / 2);
        this.f21284k += i10;
        r();
    }
}
