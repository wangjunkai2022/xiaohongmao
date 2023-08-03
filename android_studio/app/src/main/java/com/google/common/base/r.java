package com.google.common.base;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: FunctionalEquivalence.java */
@h3.b
@h3.a
/* loaded from: classes2.dex */
final class r<F, T> extends Equivalence<F> implements Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final long f32285c = 0;

    /* renamed from: a  reason: collision with root package name */
    private final q<F, ? extends T> f32286a;

    /* renamed from: b  reason: collision with root package name */
    private final Equivalence<T> f32287b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(q<F, ? extends T> qVar, Equivalence<T> equivalence) {
        this.f32286a = (q) a0.E(qVar);
        this.f32287b = (Equivalence) a0.E(equivalence);
    }

    @Override // com.google.common.base.Equivalence
    protected boolean a(F f10, F f11) {
        return this.f32287b.d(this.f32286a.apply(f10), this.f32286a.apply(f11));
    }

    @Override // com.google.common.base.Equivalence
    protected int b(F f10) {
        return this.f32287b.h(this.f32286a.apply(f10));
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof r) {
            r rVar = (r) obj;
            return this.f32286a.equals(rVar.f32286a) && this.f32287b.equals(rVar.f32287b);
        }
        return false;
    }

    public int hashCode() {
        return w.b(this.f32286a, this.f32287b);
    }

    public String toString() {
        return this.f32287b + ".onResultOf(" + this.f32286a + ")";
    }
}
