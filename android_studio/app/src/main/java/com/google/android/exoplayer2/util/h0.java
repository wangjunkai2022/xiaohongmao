package com.google.android.exoplayer2.util;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;
import okio.Utf8;

/* compiled from: ParsableByteArray.java */
/* loaded from: classes2.dex */
public final class h0 {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f27551a;

    /* renamed from: b  reason: collision with root package name */
    private int f27552b;

    /* renamed from: c  reason: collision with root package name */
    private int f27553c;

    public h0() {
        this.f27551a = z0.f27748f;
    }

    @Nullable
    public String A() {
        return l((char) 0);
    }

    public String B(int i4) {
        if (i4 == 0) {
            return "";
        }
        int i10 = this.f27552b;
        int i11 = (i10 + i4) - 1;
        String K = z0.K(this.f27551a, i10, (i11 >= this.f27553c || this.f27551a[i11] != 0) ? i4 : i4 - 1);
        this.f27552b += i4;
        return K;
    }

    public short C() {
        byte[] bArr = this.f27551a;
        int i4 = this.f27552b;
        int i10 = i4 + 1;
        this.f27552b = i10;
        this.f27552b = i10 + 1;
        return (short) ((bArr[i10] & 255) | ((bArr[i4] & 255) << 8));
    }

    public String D(int i4) {
        return E(i4, com.google.common.base.e.f32190c);
    }

    public String E(int i4, Charset charset) {
        String str = new String(this.f27551a, this.f27552b, i4, charset);
        this.f27552b += i4;
        return str;
    }

    public int F() {
        return (G() << 21) | (G() << 14) | (G() << 7) | G();
    }

    public int G() {
        byte[] bArr = this.f27551a;
        int i4 = this.f27552b;
        this.f27552b = i4 + 1;
        return bArr[i4] & 255;
    }

    public int H() {
        byte[] bArr = this.f27551a;
        int i4 = this.f27552b;
        int i10 = i4 + 1;
        this.f27552b = i10;
        int i11 = i10 + 1;
        this.f27552b = i11;
        int i12 = (bArr[i10] & 255) | ((bArr[i4] & 255) << 8);
        this.f27552b = i11 + 2;
        return i12;
    }

    public long I() {
        byte[] bArr = this.f27551a;
        int i4 = this.f27552b;
        int i10 = i4 + 1;
        this.f27552b = i10;
        int i11 = i10 + 1;
        this.f27552b = i11;
        int i12 = i11 + 1;
        this.f27552b = i12;
        this.f27552b = i12 + 1;
        return ((bArr[i4] & 255) << 24) | ((bArr[i10] & 255) << 16) | ((bArr[i11] & 255) << 8) | (bArr[i12] & 255);
    }

    public int J() {
        byte[] bArr = this.f27551a;
        int i4 = this.f27552b;
        int i10 = i4 + 1;
        this.f27552b = i10;
        int i11 = i10 + 1;
        this.f27552b = i11;
        int i12 = ((bArr[i4] & 255) << 16) | ((bArr[i10] & 255) << 8);
        this.f27552b = i11 + 1;
        return (bArr[i11] & 255) | i12;
    }

    public int K() {
        int o9 = o();
        if (o9 >= 0) {
            return o9;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(o9);
        throw new IllegalStateException(sb.toString());
    }

    public long L() {
        long z9 = z();
        if (z9 >= 0) {
            return z9;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Top bit not zero: ");
        sb.append(z9);
        throw new IllegalStateException(sb.toString());
    }

    public int M() {
        byte[] bArr = this.f27551a;
        int i4 = this.f27552b;
        int i10 = i4 + 1;
        this.f27552b = i10;
        this.f27552b = i10 + 1;
        return (bArr[i10] & 255) | ((bArr[i4] & 255) << 8);
    }

    public long N() {
        int i4;
        int i10;
        byte b10;
        int i11;
        long j4 = this.f27551a[this.f27552b];
        int i12 = 7;
        while (true) {
            if (i12 < 0) {
                break;
            }
            if (((1 << i12) & j4) != 0) {
                i12--;
            } else if (i12 < 6) {
                j4 &= i11 - 1;
                i10 = 7 - i12;
            } else if (i12 == 7) {
                i10 = 1;
            }
        }
        i10 = 0;
        if (i10 != 0) {
            for (i4 = 1; i4 < i10; i4++) {
                if ((this.f27551a[this.f27552b + i4] & 192) != 128) {
                    StringBuilder sb = new StringBuilder(62);
                    sb.append("Invalid UTF-8 sequence continuation byte: ");
                    sb.append(j4);
                    throw new NumberFormatException(sb.toString());
                }
                j4 = (j4 << 6) | (b10 & Utf8.REPLACEMENT_BYTE);
            }
            this.f27552b += i10;
            return j4;
        }
        StringBuilder sb2 = new StringBuilder(55);
        sb2.append("Invalid UTF-8 sequence first byte: ");
        sb2.append(j4);
        throw new NumberFormatException(sb2.toString());
    }

    public void O(int i4) {
        Q(b() < i4 ? new byte[i4] : this.f27551a, i4);
    }

    public void P(byte[] bArr) {
        Q(bArr, bArr.length);
    }

    public void Q(byte[] bArr, int i4) {
        this.f27551a = bArr;
        this.f27553c = i4;
        this.f27552b = 0;
    }

    public void R(int i4) {
        a.a(i4 >= 0 && i4 <= this.f27551a.length);
        this.f27553c = i4;
    }

    public void S(int i4) {
        a.a(i4 >= 0 && i4 <= this.f27553c);
        this.f27552b = i4;
    }

    public void T(int i4) {
        S(this.f27552b + i4);
    }

    public int a() {
        return this.f27553c - this.f27552b;
    }

    public int b() {
        return this.f27551a.length;
    }

    public void c(int i4) {
        if (i4 > b()) {
            this.f27551a = Arrays.copyOf(this.f27551a, i4);
        }
    }

    public byte[] d() {
        return this.f27551a;
    }

    public int e() {
        return this.f27552b;
    }

    public int f() {
        return this.f27553c;
    }

    public char g() {
        byte[] bArr = this.f27551a;
        int i4 = this.f27552b;
        return (char) ((bArr[i4 + 1] & 255) | ((bArr[i4] & 255) << 8));
    }

    public int h() {
        return this.f27551a[this.f27552b] & 255;
    }

    public void i(g0 g0Var, int i4) {
        k(g0Var.f27547a, 0, i4);
        g0Var.q(0);
    }

    public void j(ByteBuffer byteBuffer, int i4) {
        byteBuffer.put(this.f27551a, this.f27552b, i4);
        this.f27552b += i4;
    }

    public void k(byte[] bArr, int i4, int i10) {
        System.arraycopy(this.f27551a, this.f27552b, bArr, i4, i10);
        this.f27552b += i10;
    }

    @Nullable
    public String l(char c10) {
        if (a() == 0) {
            return null;
        }
        int i4 = this.f27552b;
        while (i4 < this.f27553c && this.f27551a[i4] != c10) {
            i4++;
        }
        byte[] bArr = this.f27551a;
        int i10 = this.f27552b;
        String K = z0.K(bArr, i10, i4 - i10);
        this.f27552b = i4;
        if (i4 < this.f27553c) {
            this.f27552b = i4 + 1;
        }
        return K;
    }

    public double m() {
        return Double.longBitsToDouble(z());
    }

    public float n() {
        return Float.intBitsToFloat(o());
    }

    public int o() {
        byte[] bArr = this.f27551a;
        int i4 = this.f27552b;
        int i10 = i4 + 1;
        this.f27552b = i10;
        int i11 = i10 + 1;
        this.f27552b = i11;
        int i12 = ((bArr[i4] & 255) << 24) | ((bArr[i10] & 255) << 16);
        int i13 = i11 + 1;
        this.f27552b = i13;
        int i14 = i12 | ((bArr[i11] & 255) << 8);
        this.f27552b = i13 + 1;
        return (bArr[i13] & 255) | i14;
    }

    public int p() {
        byte[] bArr = this.f27551a;
        int i4 = this.f27552b;
        int i10 = i4 + 1;
        this.f27552b = i10;
        int i11 = i10 + 1;
        this.f27552b = i11;
        int i12 = (((bArr[i4] & 255) << 24) >> 8) | ((bArr[i10] & 255) << 8);
        this.f27552b = i11 + 1;
        return (bArr[i11] & 255) | i12;
    }

    @Nullable
    public String q() {
        if (a() == 0) {
            return null;
        }
        int i4 = this.f27552b;
        while (i4 < this.f27553c && !z0.D0(this.f27551a[i4])) {
            i4++;
        }
        int i10 = this.f27552b;
        if (i4 - i10 >= 3) {
            byte[] bArr = this.f27551a;
            if (bArr[i10] == -17 && bArr[i10 + 1] == -69 && bArr[i10 + 2] == -65) {
                this.f27552b = i10 + 3;
            }
        }
        byte[] bArr2 = this.f27551a;
        int i11 = this.f27552b;
        String K = z0.K(bArr2, i11, i4 - i11);
        this.f27552b = i4;
        int i12 = this.f27553c;
        if (i4 == i12) {
            return K;
        }
        byte[] bArr3 = this.f27551a;
        if (bArr3[i4] == 13) {
            int i13 = i4 + 1;
            this.f27552b = i13;
            if (i13 == i12) {
                return K;
            }
        }
        int i14 = this.f27552b;
        if (bArr3[i14] == 10) {
            this.f27552b = i14 + 1;
        }
        return K;
    }

    public int r() {
        byte[] bArr = this.f27551a;
        int i4 = this.f27552b;
        int i10 = i4 + 1;
        this.f27552b = i10;
        int i11 = i10 + 1;
        this.f27552b = i11;
        int i12 = (bArr[i4] & 255) | ((bArr[i10] & 255) << 8);
        int i13 = i11 + 1;
        this.f27552b = i13;
        int i14 = i12 | ((bArr[i11] & 255) << 16);
        this.f27552b = i13 + 1;
        return ((bArr[i13] & 255) << 24) | i14;
    }

    public int s() {
        byte[] bArr = this.f27551a;
        int i4 = this.f27552b;
        int i10 = i4 + 1;
        this.f27552b = i10;
        int i11 = i10 + 1;
        this.f27552b = i11;
        int i12 = (bArr[i4] & 255) | ((bArr[i10] & 255) << 8);
        this.f27552b = i11 + 1;
        return ((bArr[i11] & 255) << 16) | i12;
    }

    public long t() {
        byte[] bArr = this.f27551a;
        int i4 = this.f27552b;
        int i10 = i4 + 1;
        this.f27552b = i10;
        int i11 = i10 + 1;
        this.f27552b = i11;
        int i12 = i11 + 1;
        this.f27552b = i12;
        int i13 = i12 + 1;
        this.f27552b = i13;
        int i14 = i13 + 1;
        this.f27552b = i14;
        int i15 = i14 + 1;
        this.f27552b = i15;
        int i16 = i15 + 1;
        this.f27552b = i16;
        this.f27552b = i16 + 1;
        return (bArr[i4] & 255) | ((bArr[i10] & 255) << 8) | ((bArr[i11] & 255) << 16) | ((bArr[i12] & 255) << 24) | ((bArr[i13] & 255) << 32) | ((bArr[i14] & 255) << 40) | ((bArr[i15] & 255) << 48) | ((bArr[i16] & 255) << 56);
    }

    public short u() {
        byte[] bArr = this.f27551a;
        int i4 = this.f27552b;
        int i10 = i4 + 1;
        this.f27552b = i10;
        this.f27552b = i10 + 1;
        return (short) (((bArr[i10] & 255) << 8) | (bArr[i4] & 255));
    }

    public long v() {
        byte[] bArr = this.f27551a;
        int i4 = this.f27552b;
        int i10 = i4 + 1;
        this.f27552b = i10;
        int i11 = i10 + 1;
        this.f27552b = i11;
        int i12 = i11 + 1;
        this.f27552b = i12;
        this.f27552b = i12 + 1;
        return (bArr[i4] & 255) | ((bArr[i10] & 255) << 8) | ((bArr[i11] & 255) << 16) | ((bArr[i12] & 255) << 24);
    }

    public int w() {
        byte[] bArr = this.f27551a;
        int i4 = this.f27552b;
        int i10 = i4 + 1;
        this.f27552b = i10;
        int i11 = i10 + 1;
        this.f27552b = i11;
        int i12 = (bArr[i4] & 255) | ((bArr[i10] & 255) << 8);
        this.f27552b = i11 + 1;
        return ((bArr[i11] & 255) << 16) | i12;
    }

    public int x() {
        int r9 = r();
        if (r9 >= 0) {
            return r9;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(r9);
        throw new IllegalStateException(sb.toString());
    }

    public int y() {
        byte[] bArr = this.f27551a;
        int i4 = this.f27552b;
        int i10 = i4 + 1;
        this.f27552b = i10;
        this.f27552b = i10 + 1;
        return ((bArr[i10] & 255) << 8) | (bArr[i4] & 255);
    }

    public long z() {
        byte[] bArr = this.f27551a;
        int i4 = this.f27552b;
        int i10 = i4 + 1;
        this.f27552b = i10;
        int i11 = i10 + 1;
        this.f27552b = i11;
        int i12 = i11 + 1;
        this.f27552b = i12;
        int i13 = i12 + 1;
        this.f27552b = i13;
        int i14 = i13 + 1;
        this.f27552b = i14;
        int i15 = i14 + 1;
        this.f27552b = i15;
        int i16 = i15 + 1;
        this.f27552b = i16;
        this.f27552b = i16 + 1;
        return ((bArr[i4] & 255) << 56) | ((bArr[i10] & 255) << 48) | ((bArr[i11] & 255) << 40) | ((bArr[i12] & 255) << 32) | ((bArr[i13] & 255) << 24) | ((bArr[i14] & 255) << 16) | ((bArr[i15] & 255) << 8) | (bArr[i16] & 255);
    }

    public h0(int i4) {
        this.f27551a = new byte[i4];
        this.f27553c = i4;
    }

    public h0(byte[] bArr) {
        this.f27551a = bArr;
        this.f27553c = bArr.length;
    }

    public h0(byte[] bArr, int i4) {
        this.f27551a = bArr;
        this.f27553c = i4;
    }
}
