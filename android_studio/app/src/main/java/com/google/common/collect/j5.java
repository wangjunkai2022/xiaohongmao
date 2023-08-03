package com.google.common.collect;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.Queue;

/* compiled from: TreeTraverser.java */
@h3.b
@h3.a
@Deprecated
/* loaded from: classes2.dex */
public abstract class j5<T> {

    /* compiled from: TreeTraverser.java */
    /* loaded from: classes2.dex */
    static class a extends j5<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.google.common.base.q f33645a;

        a(com.google.common.base.q qVar) {
            this.f33645a = qVar;
        }

        @Override // com.google.common.collect.j5
        public Iterable<T> b(T t9) {
            return (Iterable) this.f33645a.apply(t9);
        }
    }

    /* compiled from: TreeTraverser.java */
    /* loaded from: classes2.dex */
    class b extends c1<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f33646b;

        b(Object obj) {
            this.f33646b = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Iterable
        /* renamed from: P */
        public k5<T> iterator() {
            return j5.this.e(this.f33646b);
        }
    }

    /* compiled from: TreeTraverser.java */
    /* loaded from: classes2.dex */
    class c extends c1<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f33648b;

        c(Object obj) {
            this.f33648b = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Iterable
        /* renamed from: P */
        public k5<T> iterator() {
            return j5.this.c(this.f33648b);
        }
    }

    /* compiled from: TreeTraverser.java */
    /* loaded from: classes2.dex */
    class d extends c1<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f33650b;

        d(Object obj) {
            this.f33650b = obj;
        }

        @Override // java.lang.Iterable
        /* renamed from: P */
        public k5<T> iterator() {
            return new e(this.f33650b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TreeTraverser.java */
    /* loaded from: classes2.dex */
    public final class e extends k5<T> implements t3<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Queue<T> f33652a;

        e(T t9) {
            ArrayDeque arrayDeque = new ArrayDeque();
            this.f33652a = arrayDeque;
            arrayDeque.add(t9);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f33652a.isEmpty();
        }

        @Override // java.util.Iterator, com.google.common.collect.t3
        public T next() {
            T remove = this.f33652a.remove();
            w2.a(this.f33652a, j5.this.b(remove));
            return remove;
        }

        @Override // com.google.common.collect.t3
        public T peek() {
            return this.f33652a.element();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TreeTraverser.java */
    /* loaded from: classes2.dex */
    public final class f extends com.google.common.collect.c<T> {

        /* renamed from: c  reason: collision with root package name */
        private final ArrayDeque<g<T>> f33654c;

        f(T t9) {
            ArrayDeque<g<T>> arrayDeque = new ArrayDeque<>();
            this.f33654c = arrayDeque;
            arrayDeque.addLast(d(t9));
        }

        private g<T> d(T t9) {
            return new g<>(t9, j5.this.b(t9).iterator());
        }

        @Override // com.google.common.collect.c
        protected T a() {
            while (!this.f33654c.isEmpty()) {
                g<T> last = this.f33654c.getLast();
                if (last.f33657b.hasNext()) {
                    this.f33654c.addLast(d(last.f33657b.next()));
                } else {
                    this.f33654c.removeLast();
                    return last.f33656a;
                }
            }
            return b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TreeTraverser.java */
    /* loaded from: classes2.dex */
    public static final class g<T> {

        /* renamed from: a  reason: collision with root package name */
        final T f33656a;

        /* renamed from: b  reason: collision with root package name */
        final Iterator<T> f33657b;

        g(T t9, Iterator<T> it) {
            this.f33656a = (T) com.google.common.base.a0.E(t9);
            this.f33657b = (Iterator) com.google.common.base.a0.E(it);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TreeTraverser.java */
    /* loaded from: classes2.dex */
    public final class h extends k5<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Deque<Iterator<T>> f33658a;

        h(T t9) {
            ArrayDeque arrayDeque = new ArrayDeque();
            this.f33658a = arrayDeque;
            arrayDeque.addLast(x2.Y(com.google.common.base.a0.E(t9)));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f33658a.isEmpty();
        }

        @Override // java.util.Iterator
        public T next() {
            Iterator<T> last = this.f33658a.getLast();
            T t9 = (T) com.google.common.base.a0.E(last.next());
            if (!last.hasNext()) {
                this.f33658a.removeLast();
            }
            Iterator<T> it = j5.this.b(t9).iterator();
            if (it.hasNext()) {
                this.f33658a.addLast(it);
            }
            return t9;
        }
    }

    @Deprecated
    public static <T> j5<T> g(com.google.common.base.q<T, ? extends Iterable<T>> qVar) {
        com.google.common.base.a0.E(qVar);
        return new a(qVar);
    }

    @Deprecated
    public final c1<T> a(T t9) {
        com.google.common.base.a0.E(t9);
        return new d(t9);
    }

    public abstract Iterable<T> b(T t9);

    k5<T> c(T t9) {
        return new f(t9);
    }

    @Deprecated
    public final c1<T> d(T t9) {
        com.google.common.base.a0.E(t9);
        return new c(t9);
    }

    k5<T> e(T t9) {
        return new h(t9);
    }

    @Deprecated
    public final c1<T> f(T t9) {
        com.google.common.base.a0.E(t9);
        return new b(t9);
    }
}
