package com.google.common.collect;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NaturalOrdering.java */
@h3.b(serializable = true)
/* loaded from: classes2.dex */
public final class m3 extends s3<Comparable> implements Serializable {

    /* renamed from: e  reason: collision with root package name */
    static final m3 f33741e = new m3();

    /* renamed from: f  reason: collision with root package name */
    private static final long f33742f = 0;
    @MonotonicNonNullDecl

    /* renamed from: c  reason: collision with root package name */
    private transient s3<Comparable> f33743c;
    @MonotonicNonNullDecl

    /* renamed from: d  reason: collision with root package name */
    private transient s3<Comparable> f33744d;

    private m3() {
    }

    private Object K() {
        return f33741e;
    }

    @Override // com.google.common.collect.s3
    public <S extends Comparable> s3<S> C() {
        s3<S> s3Var = (s3<S>) this.f33743c;
        if (s3Var == null) {
            s3<S> C = super.C();
            this.f33743c = C;
            return C;
        }
        return s3Var;
    }

    @Override // com.google.common.collect.s3
    public <S extends Comparable> s3<S> D() {
        s3<S> s3Var = (s3<S>) this.f33744d;
        if (s3Var == null) {
            s3<S> D = super.D();
            this.f33744d = D;
            return D;
        }
        return s3Var;
    }

    @Override // com.google.common.collect.s3
    public <S extends Comparable> s3<S> G() {
        return j4.f33643c;
    }

    @Override // com.google.common.collect.s3, java.util.Comparator
    /* renamed from: J */
    public int compare(Comparable comparable, Comparable comparable2) {
        com.google.common.base.a0.E(comparable);
        com.google.common.base.a0.E(comparable2);
        return comparable.compareTo(comparable2);
    }

    public String toString() {
        return "Ordering.natural()";
    }
}
