package com.fasterxml.jackson.core.sym;

/* compiled from: Name.java */
/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a  reason: collision with root package name */
    protected final String f14214a;

    /* renamed from: b  reason: collision with root package name */
    protected final int f14215b;

    /* JADX INFO: Access modifiers changed from: protected */
    public f(String str, int i4) {
        this.f14214a = str;
        this.f14215b = i4;
    }

    public abstract boolean a(int i4);

    public abstract boolean b(int i4, int i10);

    public abstract boolean c(int i4, int i10, int i11);

    public abstract boolean d(int[] iArr, int i4);

    public String e() {
        return this.f14214a;
    }

    public boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return this.f14215b;
    }

    public String toString() {
        return this.f14214a;
    }
}
