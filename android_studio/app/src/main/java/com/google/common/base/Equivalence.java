package com.google.common.base;

import com.google.errorprone.annotations.ForOverride;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b
/* loaded from: classes2.dex */
public abstract class Equivalence<T> {

    /* loaded from: classes2.dex */
    public static final class Wrapper<T> implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f32068c = 0;

        /* renamed from: a  reason: collision with root package name */
        private final Equivalence<? super T> f32069a;
        @NullableDecl

        /* renamed from: b  reason: collision with root package name */
        private final T f32070b;

        public boolean equals(@NullableDecl Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof Wrapper) {
                Wrapper wrapper = (Wrapper) obj;
                if (this.f32069a.equals(wrapper.f32069a)) {
                    return this.f32069a.d((T) this.f32070b, (T) wrapper.f32070b);
                }
                return false;
            }
            return false;
        }

        @NullableDecl
        public T get() {
            return this.f32070b;
        }

        public int hashCode() {
            return this.f32069a.h((T) this.f32070b);
        }

        public String toString() {
            return this.f32069a + ".wrap(" + this.f32070b + ")";
        }

        private Wrapper(Equivalence<? super T> equivalence, @NullableDecl T t9) {
            this.f32069a = (Equivalence) a0.E(equivalence);
            this.f32070b = t9;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class b extends Equivalence<Object> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        static final b f32071a = new b();

        /* renamed from: b  reason: collision with root package name */
        private static final long f32072b = 1;

        b() {
        }

        private Object m() {
            return f32071a;
        }

        @Override // com.google.common.base.Equivalence
        protected boolean a(Object obj, Object obj2) {
            return obj.equals(obj2);
        }

        @Override // com.google.common.base.Equivalence
        protected int b(Object obj) {
            return obj.hashCode();
        }
    }

    /* loaded from: classes2.dex */
    private static final class c<T> implements b0<T>, Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f32073c = 0;

        /* renamed from: a  reason: collision with root package name */
        private final Equivalence<T> f32074a;
        @NullableDecl

        /* renamed from: b  reason: collision with root package name */
        private final T f32075b;

        c(Equivalence<T> equivalence, @NullableDecl T t9) {
            this.f32074a = (Equivalence) a0.E(equivalence);
            this.f32075b = t9;
        }

        @Override // com.google.common.base.b0
        public boolean apply(@NullableDecl T t9) {
            return this.f32074a.d(t9, this.f32075b);
        }

        @Override // com.google.common.base.b0
        public boolean equals(@NullableDecl Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof c) {
                c cVar = (c) obj;
                return this.f32074a.equals(cVar.f32074a) && w.a(this.f32075b, cVar.f32075b);
            }
            return false;
        }

        public int hashCode() {
            return w.b(this.f32074a, this.f32075b);
        }

        public String toString() {
            return this.f32074a + ".equivalentTo(" + this.f32075b + ")";
        }
    }

    /* loaded from: classes2.dex */
    static final class d extends Equivalence<Object> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        static final d f32076a = new d();

        /* renamed from: b  reason: collision with root package name */
        private static final long f32077b = 1;

        d() {
        }

        private Object m() {
            return f32076a;
        }

        @Override // com.google.common.base.Equivalence
        protected boolean a(Object obj, Object obj2) {
            return false;
        }

        @Override // com.google.common.base.Equivalence
        protected int b(Object obj) {
            return System.identityHashCode(obj);
        }
    }

    public static Equivalence<Object> c() {
        return b.f32071a;
    }

    public static Equivalence<Object> i() {
        return d.f32076a;
    }

    @ForOverride
    protected abstract boolean a(T t9, T t10);

    @ForOverride
    protected abstract int b(T t9);

    public final boolean d(@NullableDecl T t9, @NullableDecl T t10) {
        if (t9 == t10) {
            return true;
        }
        if (t9 == null || t10 == null) {
            return false;
        }
        return a(t9, t10);
    }

    public final b0<T> e(@NullableDecl T t9) {
        return new c(this, t9);
    }

    public final int h(@NullableDecl T t9) {
        if (t9 == null) {
            return 0;
        }
        return b(t9);
    }

    public final <F> Equivalence<F> j(q<F, ? extends T> qVar) {
        return new r(qVar, this);
    }

    @h3.b(serializable = true)
    public final <S extends T> Equivalence<Iterable<S>> k() {
        return new x(this);
    }

    public final <S extends T> Wrapper<S> l(@NullableDecl S s9) {
        return new Wrapper<>(s9);
    }
}
