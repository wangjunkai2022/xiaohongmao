package com.fasterxml.jackson.core.sym;

/* compiled from: Name1.java */
/* loaded from: classes.dex */
public final class c extends f {

    /* renamed from: d  reason: collision with root package name */
    private static final c f14207d = new c("", 0, 0);

    /* renamed from: c  reason: collision with root package name */
    private final int f14208c;

    c(String str, int i4, int i10) {
        super(str, i4);
        this.f14208c = i10;
    }

    public static c f() {
        return f14207d;
    }

    @Override // com.fasterxml.jackson.core.sym.f
    public boolean a(int i4) {
        return i4 == this.f14208c;
    }

    @Override // com.fasterxml.jackson.core.sym.f
    public boolean b(int i4, int i10) {
        return i4 == this.f14208c && i10 == 0;
    }

    @Override // com.fasterxml.jackson.core.sym.f
    public boolean c(int i4, int i10, int i11) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.f
    public boolean d(int[] iArr, int i4) {
        return i4 == 1 && iArr[0] == this.f14208c;
    }
}
