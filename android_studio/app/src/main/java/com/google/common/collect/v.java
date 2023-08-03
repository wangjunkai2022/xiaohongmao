package com.google.common.collect;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByFunctionOrdering.java */
@h3.b(serializable = true)
/* loaded from: classes2.dex */
public final class v<F, T> extends s3<F> implements Serializable {

    /* renamed from: e  reason: collision with root package name */
    private static final long f33906e = 0;

    /* renamed from: c  reason: collision with root package name */
    final com.google.common.base.q<F, ? extends T> f33907c;

    /* renamed from: d  reason: collision with root package name */
    final s3<T> f33908d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(com.google.common.base.q<F, ? extends T> qVar, s3<T> s3Var) {
        this.f33907c = (com.google.common.base.q) com.google.common.base.a0.E(qVar);
        this.f33908d = (s3) com.google.common.base.a0.E(s3Var);
    }

    @Override // com.google.common.collect.s3, java.util.Comparator
    public int compare(F f10, F f11) {
        return this.f33908d.compare(this.f33907c.apply(f10), this.f33907c.apply(f11));
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof v) {
            v vVar = (v) obj;
            return this.f33907c.equals(vVar.f33907c) && this.f33908d.equals(vVar.f33908d);
        }
        return false;
    }

    public int hashCode() {
        return com.google.common.base.w.b(this.f33907c, this.f33908d);
    }

    public String toString() {
        return this.f33908d + ".onResultOf(" + this.f33907c + ")";
    }
}
