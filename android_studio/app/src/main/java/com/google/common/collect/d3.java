package com.google.common.collect;

import com.google.common.base.Equivalence;
import com.google.common.base.v;
import com.google.common.collect.e3;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;

/* compiled from: MapMaker.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class d3 {

    /* renamed from: g  reason: collision with root package name */
    private static final int f33238g = 16;

    /* renamed from: h  reason: collision with root package name */
    private static final int f33239h = 4;

    /* renamed from: i  reason: collision with root package name */
    static final int f33240i = -1;

    /* renamed from: a  reason: collision with root package name */
    boolean f33241a;

    /* renamed from: b  reason: collision with root package name */
    int f33242b = -1;

    /* renamed from: c  reason: collision with root package name */
    int f33243c = -1;
    @MonotonicNonNullDecl

    /* renamed from: d  reason: collision with root package name */
    e3.q f33244d;
    @MonotonicNonNullDecl

    /* renamed from: e  reason: collision with root package name */
    e3.q f33245e;
    @MonotonicNonNullDecl

    /* renamed from: f  reason: collision with root package name */
    Equivalence<Object> f33246f;

    /* compiled from: MapMaker.java */
    /* loaded from: classes2.dex */
    enum a {
        VALUE
    }

    @CanIgnoreReturnValue
    public d3 a(int i4) {
        int i10 = this.f33243c;
        com.google.common.base.a0.n0(i10 == -1, "concurrency level was already set to %s", i10);
        com.google.common.base.a0.d(i4 > 0);
        this.f33243c = i4;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        int i4 = this.f33243c;
        if (i4 == -1) {
            return 4;
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        int i4 = this.f33242b;
        if (i4 == -1) {
            return 16;
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Equivalence<Object> d() {
        return (Equivalence) com.google.common.base.v.a(this.f33246f, e().a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e3.q e() {
        return (e3.q) com.google.common.base.v.a(this.f33244d, e3.q.f33377a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e3.q f() {
        return (e3.q) com.google.common.base.v.a(this.f33245e, e3.q.f33377a);
    }

    @CanIgnoreReturnValue
    public d3 g(int i4) {
        int i10 = this.f33242b;
        com.google.common.base.a0.n0(i10 == -1, "initial capacity was already set to %s", i10);
        com.google.common.base.a0.d(i4 >= 0);
        this.f33242b = i4;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CanIgnoreReturnValue
    @h3.c
    public d3 h(Equivalence<Object> equivalence) {
        Equivalence<Object> equivalence2 = this.f33246f;
        com.google.common.base.a0.x0(equivalence2 == null, "key equivalence was already set to %s", equivalence2);
        this.f33246f = (Equivalence) com.google.common.base.a0.E(equivalence);
        this.f33241a = true;
        return this;
    }

    public <K, V> ConcurrentMap<K, V> i() {
        if (!this.f33241a) {
            return new ConcurrentHashMap(c(), 0.75f, b());
        }
        return e3.c(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d3 j(e3.q qVar) {
        e3.q qVar2 = this.f33244d;
        com.google.common.base.a0.x0(qVar2 == null, "Key strength was already set to %s", qVar2);
        this.f33244d = (e3.q) com.google.common.base.a0.E(qVar);
        if (qVar != e3.q.f33377a) {
            this.f33241a = true;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d3 k(e3.q qVar) {
        e3.q qVar2 = this.f33245e;
        com.google.common.base.a0.x0(qVar2 == null, "Value strength was already set to %s", qVar2);
        this.f33245e = (e3.q) com.google.common.base.a0.E(qVar);
        if (qVar != e3.q.f33377a) {
            this.f33241a = true;
        }
        return this;
    }

    @CanIgnoreReturnValue
    @h3.c
    public d3 l() {
        return j(e3.q.f33378b);
    }

    @CanIgnoreReturnValue
    @h3.c
    public d3 m() {
        return k(e3.q.f33378b);
    }

    public String toString() {
        v.b c10 = com.google.common.base.v.c(this);
        int i4 = this.f33242b;
        if (i4 != -1) {
            c10.d("initialCapacity", i4);
        }
        int i10 = this.f33243c;
        if (i10 != -1) {
            c10.d("concurrencyLevel", i10);
        }
        e3.q qVar = this.f33244d;
        if (qVar != null) {
            c10.f("keyStrength", com.google.common.base.c.g(qVar.toString()));
        }
        e3.q qVar2 = this.f33245e;
        if (qVar2 != null) {
            c10.f("valueStrength", com.google.common.base.c.g(qVar2.toString()));
        }
        if (this.f33246f != null) {
            c10.p("keyEquivalence");
        }
        return c10.toString();
    }
}
