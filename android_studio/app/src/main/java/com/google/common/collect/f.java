package com.google.common.collect;

import com.google.common.collect.k3;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractMapBasedMultiset.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public abstract class f<E> extends i<E> implements Serializable {
    @h3.c

    /* renamed from: e  reason: collision with root package name */
    private static final long f33411e = 0;

    /* renamed from: c  reason: collision with root package name */
    transient q3<E> f33412c;

    /* renamed from: d  reason: collision with root package name */
    transient long f33413d;

    /* compiled from: AbstractMapBasedMultiset.java */
    /* loaded from: classes2.dex */
    class a extends f<E>.c<E> {
        a() {
            super();
        }

        @Override // com.google.common.collect.f.c
        E b(int i4) {
            return f.this.f33412c.j(i4);
        }
    }

    /* compiled from: AbstractMapBasedMultiset.java */
    /* loaded from: classes2.dex */
    class b extends f<E>.c<k3.a<E>> {
        b() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.f.c
        /* renamed from: c */
        public k3.a<E> b(int i4) {
            return f.this.f33412c.h(i4);
        }
    }

    /* compiled from: AbstractMapBasedMultiset.java */
    /* loaded from: classes2.dex */
    abstract class c<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        int f33416a;

        /* renamed from: b  reason: collision with root package name */
        int f33417b = -1;

        /* renamed from: c  reason: collision with root package name */
        int f33418c;

        c() {
            this.f33416a = f.this.f33412c.f();
            this.f33418c = f.this.f33412c.f33844d;
        }

        private void a() {
            if (f.this.f33412c.f33844d != this.f33418c) {
                throw new ConcurrentModificationException();
            }
        }

        abstract T b(int i4);

        @Override // java.util.Iterator
        public boolean hasNext() {
            a();
            return this.f33416a >= 0;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T b10 = b(this.f33416a);
                int i4 = this.f33416a;
                this.f33417b = i4;
                this.f33416a = f.this.f33412c.t(i4);
                return b10;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            f fVar;
            a();
            y.e(this.f33417b != -1);
            f.this.f33413d -= fVar.f33412c.y(this.f33417b);
            this.f33416a = f.this.f33412c.u(this.f33416a, this.f33417b);
            this.f33417b = -1;
            this.f33418c = f.this.f33412c.f33844d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(int i4) {
        h(i4);
    }

    @h3.c
    private void j(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int h4 = m4.h(objectInputStream);
        h(3);
        m4.g(this, objectInputStream, h4);
    }

    @h3.c
    private void k(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        m4.k(this, objectOutputStream);
    }

    @Override // com.google.common.collect.i, com.google.common.collect.k3
    @CanIgnoreReturnValue
    public final int add(@NullableDecl E e4, int i4) {
        if (i4 == 0) {
            return count(e4);
        }
        com.google.common.base.a0.k(i4 > 0, "occurrences cannot be negative: %s", i4);
        int n9 = this.f33412c.n(e4);
        if (n9 == -1) {
            this.f33412c.v(e4, i4);
            this.f33413d += i4;
            return 0;
        }
        int l10 = this.f33412c.l(n9);
        long j4 = i4;
        long j10 = l10 + j4;
        com.google.common.base.a0.p(j10 <= 2147483647L, "too many occurrences: %s", j10);
        this.f33412c.C(n9, (int) j10);
        this.f33413d += j4;
        return l10;
    }

    @Override // com.google.common.collect.i
    final int b() {
        return this.f33412c.D();
    }

    @Override // com.google.common.collect.i
    final Iterator<E> c() {
        return new a();
    }

    @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.f33412c.a();
        this.f33413d = 0L;
    }

    @Override // com.google.common.collect.k3
    public final int count(@NullableDecl Object obj) {
        return this.f33412c.g(obj);
    }

    @Override // com.google.common.collect.i
    final Iterator<k3.a<E>> d() {
        return new b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(k3<? super E> k3Var) {
        com.google.common.base.a0.E(k3Var);
        int f10 = this.f33412c.f();
        while (f10 >= 0) {
            k3Var.add((E) this.f33412c.j(f10), this.f33412c.l(f10));
            f10 = this.f33412c.t(f10);
        }
    }

    abstract void h(int i4);

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.k3
    public final Iterator<E> iterator() {
        return l3.n(this);
    }

    @Override // com.google.common.collect.i, com.google.common.collect.k3
    @CanIgnoreReturnValue
    public final int remove(@NullableDecl Object obj, int i4) {
        if (i4 == 0) {
            return count(obj);
        }
        com.google.common.base.a0.k(i4 > 0, "occurrences cannot be negative: %s", i4);
        int n9 = this.f33412c.n(obj);
        if (n9 == -1) {
            return 0;
        }
        int l10 = this.f33412c.l(n9);
        if (l10 > i4) {
            this.f33412c.C(n9, l10 - i4);
        } else {
            this.f33412c.y(n9);
            i4 = l10;
        }
        this.f33413d -= i4;
        return l10;
    }

    @Override // com.google.common.collect.i, com.google.common.collect.k3
    @CanIgnoreReturnValue
    public final int setCount(@NullableDecl E e4, int i4) {
        y.b(i4, "count");
        q3<E> q3Var = this.f33412c;
        int w9 = i4 == 0 ? q3Var.w(e4) : q3Var.v(e4, i4);
        this.f33413d += i4 - w9;
        return w9;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
    public final int size() {
        return com.google.common.primitives.f.x(this.f33413d);
    }

    @Override // com.google.common.collect.i, com.google.common.collect.k3
    public final boolean setCount(@NullableDecl E e4, int i4, int i10) {
        y.b(i4, "oldCount");
        y.b(i10, "newCount");
        int n9 = this.f33412c.n(e4);
        if (n9 == -1) {
            if (i4 != 0) {
                return false;
            }
            if (i10 > 0) {
                this.f33412c.v(e4, i10);
                this.f33413d += i10;
            }
            return true;
        } else if (this.f33412c.l(n9) != i4) {
            return false;
        } else {
            if (i10 == 0) {
                this.f33412c.y(n9);
                this.f33413d -= i4;
            } else {
                this.f33412c.C(n9, i10);
                this.f33413d += i10 - i4;
            }
            return true;
        }
    }
}
