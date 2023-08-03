package com.google.common.collect;

import com.google.common.base.Equivalence;
import com.google.common.collect.d3;

/* compiled from: Interners.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class v2 {

    /* compiled from: Interners.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final d3 f33909a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f33910b;

        public <E> u2<E> a() {
            if (!this.f33910b) {
                this.f33909a.l();
            }
            return new d(this.f33909a);
        }

        public b b(int i4) {
            this.f33909a.a(i4);
            return this;
        }

        public b c() {
            this.f33910b = true;
            return this;
        }

        @h3.c("java.lang.ref.WeakReference")
        public b d() {
            this.f33910b = false;
            return this;
        }

        private b() {
            this.f33909a = new d3();
            this.f33910b = true;
        }
    }

    /* compiled from: Interners.java */
    /* loaded from: classes2.dex */
    private static class c<E> implements com.google.common.base.q<E, E> {

        /* renamed from: a  reason: collision with root package name */
        private final u2<E> f33911a;

        public c(u2<E> u2Var) {
            this.f33911a = u2Var;
        }

        @Override // com.google.common.base.q
        public E apply(E e4) {
            return this.f33911a.a(e4);
        }

        @Override // com.google.common.base.q
        public boolean equals(Object obj) {
            if (obj instanceof c) {
                return this.f33911a.equals(((c) obj).f33911a);
            }
            return false;
        }

        public int hashCode() {
            return this.f33911a.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Interners.java */
    @h3.d
    /* loaded from: classes2.dex */
    public static final class d<E> implements u2<E> {
        @h3.d

        /* renamed from: a  reason: collision with root package name */
        final e3<E, d3.a, ?, ?> f33912a;

        /* JADX WARN: Type inference failed for: r0v1, types: [com.google.common.collect.e3$j] */
        @Override // com.google.common.collect.u2
        public E a(E e4) {
            E e10;
            do {
                ?? h4 = this.f33912a.h(e4);
                if (h4 != 0 && (e10 = (E) h4.getKey()) != null) {
                    return e10;
                }
            } while (this.f33912a.putIfAbsent(e4, d3.a.VALUE) != null);
            return e4;
        }

        private d(d3 d3Var) {
            this.f33912a = e3.e(d3Var.h(Equivalence.c()));
        }
    }

    private v2() {
    }

    public static <E> com.google.common.base.q<E, E> a(u2<E> u2Var) {
        return new c((u2) com.google.common.base.a0.E(u2Var));
    }

    public static b b() {
        return new b();
    }

    public static <E> u2<E> c() {
        return b().c().a();
    }

    @h3.c("java.lang.ref.WeakReference")
    public static <E> u2<E> d() {
        return b().d().a();
    }
}
