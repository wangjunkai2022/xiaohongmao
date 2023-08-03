package com.google.android.exoplayer2.util;

import androidx.core.view.MotionEventCompat;
import java.nio.charset.Charset;

/* compiled from: ParsableBitArray.java */
/* loaded from: classes2.dex */
public final class g0 {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f27547a;

    /* renamed from: b  reason: collision with root package name */
    private int f27548b;

    /* renamed from: c  reason: collision with root package name */
    private int f27549c;

    /* renamed from: d  reason: collision with root package name */
    private int f27550d;

    public g0() {
        this.f27547a = z0.f27748f;
    }

    private void a() {
        int i4;
        int i10 = this.f27548b;
        a.i(i10 >= 0 && (i10 < (i4 = this.f27550d) || (i10 == i4 && this.f27549c == 0)));
    }

    public int b() {
        return ((this.f27550d - this.f27548b) * 8) - this.f27549c;
    }

    public void c() {
        if (this.f27549c == 0) {
            return;
        }
        this.f27549c = 0;
        this.f27548b++;
        a();
    }

    public int d() {
        a.i(this.f27549c == 0);
        return this.f27548b;
    }

    public int e() {
        return (this.f27548b * 8) + this.f27549c;
    }

    public void f(int i4, int i10) {
        if (i10 < 32) {
            i4 &= (1 << i10) - 1;
        }
        int min = Math.min(8 - this.f27549c, i10);
        int i11 = this.f27549c;
        int i12 = (8 - i11) - min;
        int i13 = (MotionEventCompat.ACTION_POINTER_INDEX_MASK >> i11) | ((1 << i12) - 1);
        byte[] bArr = this.f27547a;
        int i14 = this.f27548b;
        bArr[i14] = (byte) (i13 & bArr[i14]);
        int i15 = i10 - min;
        bArr[i14] = (byte) (((i4 >>> i15) << i12) | bArr[i14]);
        int i16 = i14 + 1;
        while (i15 > 8) {
            this.f27547a[i16] = (byte) (i4 >>> (i15 - 8));
            i15 -= 8;
            i16++;
        }
        int i17 = 8 - i15;
        byte[] bArr2 = this.f27547a;
        bArr2[i16] = (byte) (bArr2[i16] & ((1 << i17) - 1));
        bArr2[i16] = (byte) (((i4 & ((1 << i15) - 1)) << i17) | bArr2[i16]);
        s(i10);
        a();
    }

    public boolean g() {
        boolean z9 = (this.f27547a[this.f27548b] & (128 >> this.f27549c)) != 0;
        r();
        return z9;
    }

    public int h(int i4) {
        int i10;
        if (i4 == 0) {
            return 0;
        }
        this.f27549c += i4;
        int i11 = 0;
        while (true) {
            i10 = this.f27549c;
            if (i10 <= 8) {
                break;
            }
            int i12 = i10 - 8;
            this.f27549c = i12;
            byte[] bArr = this.f27547a;
            int i13 = this.f27548b;
            this.f27548b = i13 + 1;
            i11 |= (bArr[i13] & 255) << i12;
        }
        byte[] bArr2 = this.f27547a;
        int i14 = this.f27548b;
        int i15 = ((-1) >>> (32 - i4)) & (i11 | ((bArr2[i14] & 255) >> (8 - i10)));
        if (i10 == 8) {
            this.f27549c = 0;
            this.f27548b = i14 + 1;
        }
        a();
        return i15;
    }

    public void i(byte[] bArr, int i4, int i10) {
        int i11 = (i10 >> 3) + i4;
        while (i4 < i11) {
            byte[] bArr2 = this.f27547a;
            int i12 = this.f27548b;
            int i13 = i12 + 1;
            this.f27548b = i13;
            byte b10 = bArr2[i12];
            int i14 = this.f27549c;
            bArr[i4] = (byte) (b10 << i14);
            bArr[i4] = (byte) (((255 & bArr2[i13]) >> (8 - i14)) | bArr[i4]);
            i4++;
        }
        int i15 = i10 & 7;
        if (i15 == 0) {
            return;
        }
        bArr[i11] = (byte) (bArr[i11] & (255 >> i15));
        int i16 = this.f27549c;
        if (i16 + i15 > 8) {
            int i17 = bArr[i11];
            byte[] bArr3 = this.f27547a;
            int i18 = this.f27548b;
            this.f27548b = i18 + 1;
            bArr[i11] = (byte) (i17 | ((bArr3[i18] & 255) << i16));
            this.f27549c = i16 - 8;
        }
        int i19 = this.f27549c + i15;
        this.f27549c = i19;
        byte[] bArr4 = this.f27547a;
        int i20 = this.f27548b;
        bArr[i11] = (byte) (((byte) (((255 & bArr4[i20]) >> (8 - i19)) << (8 - i15))) | bArr[i11]);
        if (i19 == 8) {
            this.f27549c = 0;
            this.f27548b = i20 + 1;
        }
        a();
    }

    public long j(int i4) {
        if (i4 <= 32) {
            return z0.u1(h(i4));
        }
        return z0.t1(h(i4 - 32), h(32));
    }

    public void k(byte[] bArr, int i4, int i10) {
        a.i(this.f27549c == 0);
        System.arraycopy(this.f27547a, this.f27548b, bArr, i4, i10);
        this.f27548b += i10;
        a();
    }

    public String l(int i4) {
        return m(i4, com.google.common.base.e.f32190c);
    }

    public String m(int i4, Charset charset) {
        byte[] bArr = new byte[i4];
        k(bArr, 0, i4);
        return new String(bArr, charset);
    }

    public void n(h0 h0Var) {
        p(h0Var.d(), h0Var.f());
        q(h0Var.e() * 8);
    }

    public void o(byte[] bArr) {
        p(bArr, bArr.length);
    }

    public void p(byte[] bArr, int i4) {
        this.f27547a = bArr;
        this.f27548b = 0;
        this.f27549c = 0;
        this.f27550d = i4;
    }

    public void q(int i4) {
        int i10 = i4 / 8;
        this.f27548b = i10;
        this.f27549c = i4 - (i10 * 8);
        a();
    }

    public void r() {
        int i4 = this.f27549c + 1;
        this.f27549c = i4;
        if (i4 == 8) {
            this.f27549c = 0;
            this.f27548b++;
        }
        a();
    }

    public void s(int i4) {
        int i10 = i4 / 8;
        int i11 = this.f27548b + i10;
        this.f27548b = i11;
        int i12 = this.f27549c + (i4 - (i10 * 8));
        this.f27549c = i12;
        if (i12 > 7) {
            this.f27548b = i11 + 1;
            this.f27549c = i12 - 8;
        }
        a();
    }

    public void t(int i4) {
        a.i(this.f27549c == 0);
        this.f27548b += i4;
        a();
    }

    public g0(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public g0(byte[] bArr, int i4) {
        this.f27547a = bArr;
        this.f27550d = i4;
    }
}
