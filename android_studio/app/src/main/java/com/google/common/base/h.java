package com.google.common.base;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.ForOverride;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.Serializable;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Converter.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class h<A, B> implements q<A, B> {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f32229a;
    @LazyInit
    @MonotonicNonNullDecl

    /* renamed from: b  reason: collision with root package name */
    private transient h<B, A> f32230b;

    /* compiled from: Converter.java */
    /* loaded from: classes2.dex */
    class a implements Iterable<B> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Iterable f32231a;

        /* compiled from: Converter.java */
        /* renamed from: com.google.common.base.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0206a implements Iterator<B> {

            /* renamed from: a  reason: collision with root package name */
            private final Iterator<? extends A> f32233a;

            C0206a() {
                this.f32233a = a.this.f32231a.iterator();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f32233a.hasNext();
            }

            @Override // java.util.Iterator
            public B next() {
                return (B) h.this.c(this.f32233a.next());
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f32233a.remove();
            }
        }

        a(Iterable iterable) {
            this.f32231a = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<B> iterator() {
            return new C0206a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Converter.java */
    /* loaded from: classes2.dex */
    public static final class b<A, B, C> extends h<A, C> implements Serializable {

        /* renamed from: e  reason: collision with root package name */
        private static final long f32235e = 0;

        /* renamed from: c  reason: collision with root package name */
        final h<A, B> f32236c;

        /* renamed from: d  reason: collision with root package name */
        final h<B, C> f32237d;

        b(h<A, B> hVar, h<B, C> hVar2) {
            this.f32236c = hVar;
            this.f32237d = hVar2;
        }

        @Override // com.google.common.base.h
        @NullableDecl
        A e(@NullableDecl C c10) {
            return this.f32236c.e(this.f32237d.e(c10));
        }

        @Override // com.google.common.base.h, com.google.common.base.q
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                return this.f32236c.equals(bVar.f32236c) && this.f32237d.equals(bVar.f32237d);
            }
            return false;
        }

        public int hashCode() {
            return (this.f32236c.hashCode() * 31) + this.f32237d.hashCode();
        }

        @Override // com.google.common.base.h
        @NullableDecl
        C i(@NullableDecl A a10) {
            return this.f32237d.i(this.f32236c.i(a10));
        }

        @Override // com.google.common.base.h
        protected A k(C c10) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.h
        protected C l(A a10) {
            throw new AssertionError();
        }

        public String toString() {
            return this.f32236c + ".andThen(" + this.f32237d + ")";
        }
    }

    /* compiled from: Converter.java */
    /* loaded from: classes2.dex */
    private static final class c<A, B> extends h<A, B> implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        private final q<? super A, ? extends B> f32238c;

        /* renamed from: d  reason: collision with root package name */
        private final q<? super B, ? extends A> f32239d;

        /* synthetic */ c(q qVar, q qVar2, a aVar) {
            this(qVar, qVar2);
        }

        @Override // com.google.common.base.h, com.google.common.base.q
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                return this.f32238c.equals(cVar.f32238c) && this.f32239d.equals(cVar.f32239d);
            }
            return false;
        }

        public int hashCode() {
            return (this.f32238c.hashCode() * 31) + this.f32239d.hashCode();
        }

        @Override // com.google.common.base.h
        protected A k(B b10) {
            return this.f32239d.apply(b10);
        }

        @Override // com.google.common.base.h
        protected B l(A a10) {
            return this.f32238c.apply(a10);
        }

        public String toString() {
            return "Converter.from(" + this.f32238c + ", " + this.f32239d + ")";
        }

        private c(q<? super A, ? extends B> qVar, q<? super B, ? extends A> qVar2) {
            this.f32238c = (q) a0.E(qVar);
            this.f32239d = (q) a0.E(qVar2);
        }
    }

    /* compiled from: Converter.java */
    /* loaded from: classes2.dex */
    private static final class d<T> extends h<T, T> implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        static final d f32240c = new d();

        /* renamed from: d  reason: collision with root package name */
        private static final long f32241d = 0;

        private d() {
        }

        private Object p() {
            return f32240c;
        }

        @Override // com.google.common.base.h
        <S> h<T, S> j(h<T, S> hVar) {
            return (h) a0.F(hVar, "otherConverter");
        }

        @Override // com.google.common.base.h
        protected T k(T t9) {
            return t9;
        }

        @Override // com.google.common.base.h
        protected T l(T t9) {
            return t9;
        }

        @Override // com.google.common.base.h
        /* renamed from: q */
        public d<T> o() {
            return this;
        }

        public String toString() {
            return "Converter.identity()";
        }
    }

    /* compiled from: Converter.java */
    /* loaded from: classes2.dex */
    private static final class e<A, B> extends h<B, A> implements Serializable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f32242d = 0;

        /* renamed from: c  reason: collision with root package name */
        final h<A, B> f32243c;

        e(h<A, B> hVar) {
            this.f32243c = hVar;
        }

        @Override // com.google.common.base.h
        @NullableDecl
        B e(@NullableDecl A a10) {
            return this.f32243c.i(a10);
        }

        @Override // com.google.common.base.h, com.google.common.base.q
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof e) {
                return this.f32243c.equals(((e) obj).f32243c);
            }
            return false;
        }

        public int hashCode() {
            return ~this.f32243c.hashCode();
        }

        @Override // com.google.common.base.h
        @NullableDecl
        A i(@NullableDecl B b10) {
            return this.f32243c.e(b10);
        }

        @Override // com.google.common.base.h
        protected B k(A a10) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.h
        protected A l(B b10) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.h
        public h<A, B> o() {
            return this.f32243c;
        }

        public String toString() {
            return this.f32243c + ".reverse()";
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public h() {
        this(true);
    }

    public static <A, B> h<A, B> m(q<? super A, ? extends B> qVar, q<? super B, ? extends A> qVar2) {
        return new c(qVar, qVar2, null);
    }

    public static <T> h<T, T> n() {
        return d.f32240c;
    }

    public final <C> h<A, C> a(h<B, C> hVar) {
        return j(hVar);
    }

    @Override // com.google.common.base.q
    @CanIgnoreReturnValue
    @NullableDecl
    @Deprecated
    public final B apply(@NullableDecl A a10) {
        return c(a10);
    }

    @CanIgnoreReturnValue
    @NullableDecl
    public final B c(@NullableDecl A a10) {
        return i(a10);
    }

    @CanIgnoreReturnValue
    public Iterable<B> d(Iterable<? extends A> iterable) {
        a0.F(iterable, "fromIterable");
        return new a(iterable);
    }

    @NullableDecl
    A e(@NullableDecl B b10) {
        if (this.f32229a) {
            if (b10 == null) {
                return null;
            }
            return (A) a0.E(k(b10));
        }
        return k(b10);
    }

    @Override // com.google.common.base.q
    public boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    @NullableDecl
    B i(@NullableDecl A a10) {
        if (this.f32229a) {
            if (a10 == null) {
                return null;
            }
            return (B) a0.E(l(a10));
        }
        return l(a10);
    }

    <C> h<A, C> j(h<B, C> hVar) {
        return new b(this, (h) a0.E(hVar));
    }

    @ForOverride
    protected abstract A k(B b10);

    @ForOverride
    protected abstract B l(A a10);

    @CanIgnoreReturnValue
    public h<B, A> o() {
        h<B, A> hVar = this.f32230b;
        if (hVar == null) {
            e eVar = new e(this);
            this.f32230b = eVar;
            return eVar;
        }
        return hVar;
    }

    h(boolean z9) {
        this.f32229a = z9;
    }
}
