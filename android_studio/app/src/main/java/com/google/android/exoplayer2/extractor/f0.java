package com.google.android.exoplayer2.extractor;

/* compiled from: VorbisBitArray.java */
/* loaded from: classes2.dex */
public final class f0 {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f22152a;

    /* renamed from: b  reason: collision with root package name */
    private final int f22153b;

    /* renamed from: c  reason: collision with root package name */
    private int f22154c;

    /* renamed from: d  reason: collision with root package name */
    private int f22155d;

    public f0(byte[] bArr) {
        this.f22152a = bArr;
        this.f22153b = bArr.length;
    }

    private void a() {
        int i4;
        int i10 = this.f22154c;
        com.google.android.exoplayer2.util.a.i(i10 >= 0 && (i10 < (i4 = this.f22153b) || (i10 == i4 && this.f22155d == 0)));
    }

    public int b() {
        return ((this.f22153b - this.f22154c) * 8) - this.f22155d;
    }

    public int c() {
        return (this.f22154c * 8) + this.f22155d;
    }

    public boolean d() {
        boolean z9 = (((this.f22152a[this.f22154c] & 255) >> this.f22155d) & 1) == 1;
        h(1);
        return z9;
    }

    public int e(int i4) {
        int i10 = this.f22154c;
        int min = Math.min(i4, 8 - this.f22155d);
        int i11 = i10 + 1;
        int i12 = ((this.f22152a[i10] & 255) >> this.f22155d) & (255 >> (8 - min));
        while (min < i4) {
            i12 |= (this.f22152a[i11] & 255) << min;
            min += 8;
            i11++;
        }
        int i13 = i12 & ((-1) >>> (32 - i4));
        h(i4);
        return i13;
    }

    public void f() {
        this.f22154c = 0;
        this.f22155d = 0;
    }

    public void g(int i4) {
        int i10 = i4 / 8;
        this.f22154c = i10;
        this.f22155d = i4 - (i10 * 8);
        a();
    }

    public void h(int i4) {
        int i10 = i4 / 8;
        int i11 = this.f22154c + i10;
        this.f22154c = i11;
        int i12 = this.f22155d + (i4 - (i10 * 8));
        this.f22155d = i12;
        if (i12 > 7) {
            this.f22154c = i11 + 1;
            this.f22155d = i12 - 8;
        }
        a();
    }
}
