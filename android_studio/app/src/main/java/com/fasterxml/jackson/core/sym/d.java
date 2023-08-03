package com.fasterxml.jackson.core.sym;

/* compiled from: Name2.java */
/* loaded from: classes.dex */
public final class d extends f {

    /* renamed from: c  reason: collision with root package name */
    private final int f14209c;

    /* renamed from: d  reason: collision with root package name */
    private final int f14210d;

    d(String str, int i4, int i10, int i11) {
        super(str, i4);
        this.f14209c = i10;
        this.f14210d = i11;
    }

    @Override // com.fasterxml.jackson.core.sym.f
    public boolean a(int i4) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.f
    public boolean b(int i4, int i10) {
        return i4 == this.f14209c && i10 == this.f14210d;
    }

    @Override // com.fasterxml.jackson.core.sym.f
    public boolean c(int i4, int i10, int i11) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.f
    public boolean d(int[] iArr, int i4) {
        return i4 == 2 && iArr[0] == this.f14209c && iArr[1] == this.f14210d;
    }
}
