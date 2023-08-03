package com.fasterxml.jackson.core.sym;

/* compiled from: Name3.java */
/* loaded from: classes.dex */
public final class e extends f {

    /* renamed from: c  reason: collision with root package name */
    private final int f14211c;

    /* renamed from: d  reason: collision with root package name */
    private final int f14212d;

    /* renamed from: e  reason: collision with root package name */
    private final int f14213e;

    e(String str, int i4, int i10, int i11, int i12) {
        super(str, i4);
        this.f14211c = i10;
        this.f14212d = i11;
        this.f14213e = i12;
    }

    @Override // com.fasterxml.jackson.core.sym.f
    public boolean a(int i4) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.f
    public boolean b(int i4, int i10) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.f
    public boolean c(int i4, int i10, int i11) {
        return this.f14211c == i4 && this.f14212d == i10 && this.f14213e == i11;
    }

    @Override // com.fasterxml.jackson.core.sym.f
    public boolean d(int[] iArr, int i4) {
        return i4 == 3 && iArr[0] == this.f14211c && iArr[1] == this.f14212d && iArr[2] == this.f14213e;
    }
}
