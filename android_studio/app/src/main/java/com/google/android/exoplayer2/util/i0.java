package com.google.android.exoplayer2.util;

/* compiled from: ParsableNalUnitBitArray.java */
/* loaded from: classes2.dex */
public final class i0 {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f27558a;

    /* renamed from: b  reason: collision with root package name */
    private int f27559b;

    /* renamed from: c  reason: collision with root package name */
    private int f27560c;

    /* renamed from: d  reason: collision with root package name */
    private int f27561d;

    public i0(byte[] bArr, int i4, int i10) {
        i(bArr, i4, i10);
    }

    private void a() {
        int i4;
        int i10 = this.f27560c;
        a.i(i10 >= 0 && (i10 < (i4 = this.f27559b) || (i10 == i4 && this.f27561d == 0)));
    }

    private int f() {
        int i4 = 0;
        while (!d()) {
            i4++;
        }
        return ((1 << i4) - 1) + (i4 > 0 ? e(i4) : 0);
    }

    private boolean j(int i4) {
        if (2 <= i4 && i4 < this.f27559b) {
            byte[] bArr = this.f27558a;
            if (bArr[i4] == 3 && bArr[i4 - 2] == 0 && bArr[i4 - 1] == 0) {
                return true;
            }
        }
        return false;
    }

    public boolean b(int i4) {
        int i10 = this.f27560c;
        int i11 = i4 / 8;
        int i12 = i10 + i11;
        int i13 = (this.f27561d + i4) - (i11 * 8);
        if (i13 > 7) {
            i12++;
            i13 -= 8;
        }
        while (true) {
            i10++;
            if (i10 > i12 || i12 >= this.f27559b) {
                break;
            } else if (j(i10)) {
                i12++;
                i10 += 2;
            }
        }
        int i14 = this.f27559b;
        if (i12 >= i14) {
            return i12 == i14 && i13 == 0;
        }
        return true;
    }

    public boolean c() {
        int i4 = this.f27560c;
        int i10 = this.f27561d;
        int i11 = 0;
        while (this.f27560c < this.f27559b && !d()) {
            i11++;
        }
        boolean z9 = this.f27560c == this.f27559b;
        this.f27560c = i4;
        this.f27561d = i10;
        return !z9 && b((i11 * 2) + 1);
    }

    public boolean d() {
        boolean z9 = (this.f27558a[this.f27560c] & (128 >> this.f27561d)) != 0;
        k();
        return z9;
    }

    public int e(int i4) {
        int i10;
        this.f27561d += i4;
        int i11 = 0;
        while (true) {
            i10 = this.f27561d;
            if (i10 <= 8) {
                break;
            }
            int i12 = i10 - 8;
            this.f27561d = i12;
            byte[] bArr = this.f27558a;
            int i13 = this.f27560c;
            i11 |= (bArr[i13] & 255) << i12;
            if (!j(i13 + 1)) {
                r3 = 1;
            }
            this.f27560c = i13 + r3;
        }
        byte[] bArr2 = this.f27558a;
        int i14 = this.f27560c;
        int i15 = ((-1) >>> (32 - i4)) & (i11 | ((bArr2[i14] & 255) >> (8 - i10)));
        if (i10 == 8) {
            this.f27561d = 0;
            this.f27560c = i14 + (j(i14 + 1) ? 2 : 1);
        }
        a();
        return i15;
    }

    public int g() {
        int f10 = f();
        return (f10 % 2 == 0 ? -1 : 1) * ((f10 + 1) / 2);
    }

    public int h() {
        return f();
    }

    public void i(byte[] bArr, int i4, int i10) {
        this.f27558a = bArr;
        this.f27560c = i4;
        this.f27559b = i10;
        this.f27561d = 0;
        a();
    }

    public void k() {
        int i4 = this.f27561d + 1;
        this.f27561d = i4;
        if (i4 == 8) {
            this.f27561d = 0;
            int i10 = this.f27560c;
            this.f27560c = i10 + (j(i10 + 1) ? 2 : 1);
        }
        a();
    }

    public void l(int i4) {
        int i10 = this.f27560c;
        int i11 = i4 / 8;
        int i12 = i10 + i11;
        this.f27560c = i12;
        int i13 = this.f27561d + (i4 - (i11 * 8));
        this.f27561d = i13;
        if (i13 > 7) {
            this.f27560c = i12 + 1;
            this.f27561d = i13 - 8;
        }
        while (true) {
            i10++;
            if (i10 <= this.f27560c) {
                if (j(i10)) {
                    this.f27560c++;
                    i10 += 2;
                }
            } else {
                a();
                return;
            }
        }
    }
}
