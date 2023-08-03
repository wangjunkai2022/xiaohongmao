package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.j2objc.annotations.Weak;
import java.util.AbstractQueue;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Queue;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: MinMaxPriorityQueue.java */
@h3.b
@h3.a
/* loaded from: classes2.dex */
public final class g3<E> extends AbstractQueue<E> {

    /* renamed from: g  reason: collision with root package name */
    private static final int f33502g = 1431655765;

    /* renamed from: h  reason: collision with root package name */
    private static final int f33503h = -1431655766;

    /* renamed from: i  reason: collision with root package name */
    private static final int f33504i = 11;

    /* renamed from: a  reason: collision with root package name */
    private final g3<E>.c f33505a;

    /* renamed from: b  reason: collision with root package name */
    private final g3<E>.c f33506b;
    @h3.d

    /* renamed from: c  reason: collision with root package name */
    final int f33507c;

    /* renamed from: d  reason: collision with root package name */
    private Object[] f33508d;

    /* renamed from: e  reason: collision with root package name */
    private int f33509e;

    /* renamed from: f  reason: collision with root package name */
    private int f33510f;

    /* compiled from: MinMaxPriorityQueue.java */
    @h3.a
    /* loaded from: classes2.dex */
    public static final class b<B> {

        /* renamed from: d  reason: collision with root package name */
        private static final int f33511d = -1;

        /* renamed from: a  reason: collision with root package name */
        private final Comparator<B> f33512a;

        /* renamed from: b  reason: collision with root package name */
        private int f33513b;

        /* renamed from: c  reason: collision with root package name */
        private int f33514c;

        /* JADX INFO: Access modifiers changed from: private */
        public <T extends B> s3<T> g() {
            return s3.k(this.f33512a);
        }

        public <T extends B> g3<T> c() {
            return d(Collections.emptySet());
        }

        public <T extends B> g3<T> d(Iterable<? extends T> iterable) {
            g3<T> g3Var = new g3<>(this, g3.p(this.f33513b, this.f33514c, iterable));
            for (T t9 : iterable) {
                g3Var.offer(t9);
            }
            return g3Var;
        }

        @CanIgnoreReturnValue
        public b<B> e(int i4) {
            com.google.common.base.a0.d(i4 >= 0);
            this.f33513b = i4;
            return this;
        }

        @CanIgnoreReturnValue
        public b<B> f(int i4) {
            com.google.common.base.a0.d(i4 > 0);
            this.f33514c = i4;
            return this;
        }

        private b(Comparator<B> comparator) {
            this.f33513b = -1;
            this.f33514c = Integer.MAX_VALUE;
            this.f33512a = (Comparator) com.google.common.base.a0.E(comparator);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MinMaxPriorityQueue.java */
    /* loaded from: classes2.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        final s3<E> f33515a;
        @Weak
        @MonotonicNonNullDecl

        /* renamed from: b  reason: collision with root package name */
        g3<E>.c f33516b;

        c(s3<E> s3Var) {
            this.f33515a = s3Var;
        }

        private int k(int i4) {
            return m(m(i4));
        }

        private int l(int i4) {
            return (i4 * 2) + 1;
        }

        private int m(int i4) {
            return (i4 - 1) / 2;
        }

        private int n(int i4) {
            return (i4 * 2) + 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean q(int i4) {
            if (l(i4) >= g3.this.f33509e || d(i4, l(i4)) <= 0) {
                if (n(i4) >= g3.this.f33509e || d(i4, n(i4)) <= 0) {
                    if (i4 <= 0 || d(i4, m(i4)) <= 0) {
                        return i4 <= 2 || d(k(i4), i4) <= 0;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        void b(int i4, E e4) {
            c cVar;
            int f10 = f(i4, e4);
            if (f10 == i4) {
                f10 = i4;
                cVar = this;
            } else {
                cVar = this.f33516b;
            }
            cVar.c(f10, e4);
        }

        @CanIgnoreReturnValue
        int c(int i4, E e4) {
            while (i4 > 2) {
                int k10 = k(i4);
                Object j4 = g3.this.j(k10);
                if (((s3<E>) this.f33515a).compare(j4, e4) <= 0) {
                    break;
                }
                g3.this.f33508d[i4] = j4;
                i4 = k10;
            }
            g3.this.f33508d[i4] = e4;
            return i4;
        }

        int d(int i4, int i10) {
            return ((s3<E>) this.f33515a).compare(g3.this.j(i4), g3.this.j(i10));
        }

        int e(int i4, E e4) {
            int i10 = i(i4);
            if (i10 > 0 && ((s3<E>) this.f33515a).compare(g3.this.j(i10), e4) < 0) {
                g3.this.f33508d[i4] = g3.this.j(i10);
                g3.this.f33508d[i10] = e4;
                return i10;
            }
            return f(i4, e4);
        }

        int f(int i4, E e4) {
            int n9;
            if (i4 == 0) {
                g3.this.f33508d[0] = e4;
                return 0;
            }
            int m9 = m(i4);
            Object j4 = g3.this.j(m9);
            if (m9 != 0 && (n9 = n(m(m9))) != m9 && l(n9) >= g3.this.f33509e) {
                Object j10 = g3.this.j(n9);
                if (((s3<E>) this.f33515a).compare(j10, j4) < 0) {
                    m9 = n9;
                    j4 = j10;
                }
            }
            if (((s3<E>) this.f33515a).compare(j4, e4) < 0) {
                g3.this.f33508d[i4] = j4;
                g3.this.f33508d[m9] = e4;
                return m9;
            }
            g3.this.f33508d[i4] = e4;
            return i4;
        }

        int g(int i4) {
            while (true) {
                int j4 = j(i4);
                if (j4 <= 0) {
                    return i4;
                }
                g3.this.f33508d[i4] = g3.this.j(j4);
                i4 = j4;
            }
        }

        int h(int i4, int i10) {
            if (i4 >= g3.this.f33509e) {
                return -1;
            }
            com.google.common.base.a0.g0(i4 > 0);
            int min = Math.min(i4, g3.this.f33509e - i10) + i10;
            for (int i11 = i4 + 1; i11 < min; i11++) {
                if (d(i11, i4) < 0) {
                    i4 = i11;
                }
            }
            return i4;
        }

        int i(int i4) {
            return h(l(i4), 2);
        }

        int j(int i4) {
            int l10 = l(i4);
            if (l10 < 0) {
                return -1;
            }
            return h(l(l10), 4);
        }

        int o(E e4) {
            int n9;
            int m9 = m(g3.this.f33509e);
            if (m9 != 0 && (n9 = n(m(m9))) != m9 && l(n9) >= g3.this.f33509e) {
                Object j4 = g3.this.j(n9);
                if (((s3<E>) this.f33515a).compare(j4, e4) < 0) {
                    g3.this.f33508d[n9] = e4;
                    g3.this.f33508d[g3.this.f33509e] = j4;
                    return n9;
                }
            }
            return g3.this.f33509e;
        }

        d<E> p(int i4, int i10, E e4) {
            Object j4;
            int e10 = e(i10, e4);
            if (e10 == i10) {
                return null;
            }
            if (e10 < i4) {
                j4 = g3.this.j(i4);
            } else {
                j4 = g3.this.j(m(i4));
            }
            if (this.f33516b.c(e10, e4) < i4) {
                return new d<>(e4, j4);
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MinMaxPriorityQueue.java */
    /* loaded from: classes2.dex */
    public static class d<E> {

        /* renamed from: a  reason: collision with root package name */
        final E f33518a;

        /* renamed from: b  reason: collision with root package name */
        final E f33519b;

        d(E e4, E e10) {
            this.f33518a = e4;
            this.f33519b = e10;
        }
    }

    /* compiled from: MinMaxPriorityQueue.java */
    /* loaded from: classes2.dex */
    private class e implements Iterator<E> {

        /* renamed from: a  reason: collision with root package name */
        private int f33520a;

        /* renamed from: b  reason: collision with root package name */
        private int f33521b;

        /* renamed from: c  reason: collision with root package name */
        private int f33522c;
        @MonotonicNonNullDecl

        /* renamed from: d  reason: collision with root package name */
        private Queue<E> f33523d;
        @MonotonicNonNullDecl

        /* renamed from: e  reason: collision with root package name */
        private List<E> f33524e;
        @NullableDecl

        /* renamed from: f  reason: collision with root package name */
        private E f33525f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f33526g;

        private e() {
            this.f33520a = -1;
            this.f33521b = -1;
            this.f33522c = g3.this.f33510f;
        }

        private void a() {
            if (g3.this.f33510f != this.f33522c) {
                throw new ConcurrentModificationException();
            }
        }

        private boolean b(Iterable<E> iterable, E e4) {
            Iterator<E> it = iterable.iterator();
            while (it.hasNext()) {
                if (it.next() == e4) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void c(int i4) {
            if (this.f33521b < i4) {
                if (this.f33524e != null) {
                    while (i4 < g3.this.size() && b(this.f33524e, g3.this.j(i4))) {
                        i4++;
                    }
                }
                this.f33521b = i4;
            }
        }

        private boolean d(Object obj) {
            for (int i4 = 0; i4 < g3.this.f33509e; i4++) {
                if (g3.this.f33508d[i4] == obj) {
                    g3.this.v(i4);
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            a();
            c(this.f33520a + 1);
            if (this.f33521b >= g3.this.size()) {
                Queue<E> queue = this.f33523d;
                return (queue == null || queue.isEmpty()) ? false : true;
            }
            return true;
        }

        @Override // java.util.Iterator
        public E next() {
            a();
            c(this.f33520a + 1);
            if (this.f33521b < g3.this.size()) {
                int i4 = this.f33521b;
                this.f33520a = i4;
                this.f33526g = true;
                return (E) g3.this.j(i4);
            }
            if (this.f33523d != null) {
                this.f33520a = g3.this.size();
                E poll = this.f33523d.poll();
                this.f33525f = poll;
                if (poll != null) {
                    this.f33526g = true;
                    return poll;
                }
            }
            throw new NoSuchElementException("iterator moved past last element in queue.");
        }

        @Override // java.util.Iterator
        public void remove() {
            y.e(this.f33526g);
            a();
            this.f33526g = false;
            this.f33522c++;
            if (this.f33520a < g3.this.size()) {
                d<E> v9 = g3.this.v(this.f33520a);
                if (v9 != null) {
                    if (this.f33523d == null) {
                        this.f33523d = new ArrayDeque();
                        this.f33524e = new ArrayList(3);
                    }
                    if (!b(this.f33524e, v9.f33518a)) {
                        this.f33523d.add(v9.f33518a);
                    }
                    if (!b(this.f33523d, v9.f33519b)) {
                        this.f33524e.add(v9.f33519b);
                    }
                }
                this.f33520a--;
                this.f33521b--;
                return;
            }
            com.google.common.base.a0.g0(d(this.f33525f));
            this.f33525f = null;
        }
    }

    private int d() {
        int length = this.f33508d.length;
        return e(length < 64 ? (length + 1) * 2 : com.google.common.math.d.d(length / 2, 3), this.f33507c);
    }

    private static int e(int i4, int i10) {
        return Math.min(i4 - 1, i10) + 1;
    }

    public static <E extends Comparable<E>> g3<E> g() {
        return new b(s3.B()).c();
    }

    public static <E extends Comparable<E>> g3<E> h(Iterable<? extends E> iterable) {
        return new b(s3.B()).d(iterable);
    }

    public static b<Comparable> k(int i4) {
        return new b(s3.B()).e(i4);
    }

    private d<E> l(int i4, E e4) {
        g3<E>.c o9 = o(i4);
        int g4 = o9.g(i4);
        int c10 = o9.c(g4, e4);
        if (c10 == g4) {
            return o9.p(i4, g4, e4);
        }
        if (c10 < i4) {
            return new d<>(e4, j(i4));
        }
        return null;
    }

    private int m() {
        int i4 = this.f33509e;
        if (i4 != 1) {
            return (i4 == 2 || this.f33506b.d(1, 2) <= 0) ? 1 : 2;
        }
        return 0;
    }

    private void n() {
        if (this.f33509e > this.f33508d.length) {
            Object[] objArr = new Object[d()];
            Object[] objArr2 = this.f33508d;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f33508d = objArr;
        }
    }

    private g3<E>.c o(int i4) {
        return q(i4) ? this.f33505a : this.f33506b;
    }

    @h3.d
    static int p(int i4, int i10, Iterable<?> iterable) {
        if (i4 == -1) {
            i4 = 11;
        }
        if (iterable instanceof Collection) {
            i4 = Math.max(i4, ((Collection) iterable).size());
        }
        return e(i4, i10);
    }

    @h3.d
    static boolean q(int i4) {
        int i10 = ~(~(i4 + 1));
        com.google.common.base.a0.h0(i10 > 0, "negative index");
        return (f33502g & i10) > (i10 & f33503h);
    }

    public static b<Comparable> s(int i4) {
        return new b(s3.B()).f(i4);
    }

    public static <B> b<B> t(Comparator<B> comparator) {
        return new b<>(comparator);
    }

    private E u(int i4) {
        E j4 = j(i4);
        v(i4);
        return j4;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, java.util.Queue
    @CanIgnoreReturnValue
    public boolean add(E e4) {
        offer(e4);
        return true;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    public boolean addAll(Collection<? extends E> collection) {
        boolean z9 = false;
        for (E e4 : collection) {
            offer(e4);
            z9 = true;
        }
        return z9;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        for (int i4 = 0; i4 < this.f33509e; i4++) {
            this.f33508d[i4] = null;
        }
        this.f33509e = 0;
    }

    public Comparator<? super E> comparator() {
        return this.f33505a.f33515a;
    }

    @h3.d
    int f() {
        return this.f33508d.length;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new e();
    }

    E j(int i4) {
        return (E) this.f33508d[i4];
    }

    @Override // java.util.Queue
    @CanIgnoreReturnValue
    public boolean offer(E e4) {
        com.google.common.base.a0.E(e4);
        this.f33510f++;
        int i4 = this.f33509e;
        this.f33509e = i4 + 1;
        n();
        o(i4).b(i4, e4);
        return this.f33509e <= this.f33507c || pollLast() != e4;
    }

    @Override // java.util.Queue
    public E peek() {
        if (isEmpty()) {
            return null;
        }
        return j(0);
    }

    public E peekFirst() {
        return peek();
    }

    public E peekLast() {
        if (isEmpty()) {
            return null;
        }
        return j(m());
    }

    @Override // java.util.Queue
    @CanIgnoreReturnValue
    public E poll() {
        if (isEmpty()) {
            return null;
        }
        return u(0);
    }

    @CanIgnoreReturnValue
    public E pollFirst() {
        return poll();
    }

    @CanIgnoreReturnValue
    public E pollLast() {
        if (isEmpty()) {
            return null;
        }
        return u(m());
    }

    @h3.d
    boolean r() {
        for (int i4 = 1; i4 < this.f33509e; i4++) {
            if (!o(i4).q(i4)) {
                return false;
            }
        }
        return true;
    }

    @CanIgnoreReturnValue
    public E removeFirst() {
        return remove();
    }

    @CanIgnoreReturnValue
    public E removeLast() {
        if (!isEmpty()) {
            return u(m());
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.f33509e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        int i4 = this.f33509e;
        Object[] objArr = new Object[i4];
        System.arraycopy(this.f33508d, 0, objArr, 0, i4);
        return objArr;
    }

    @CanIgnoreReturnValue
    @h3.d
    d<E> v(int i4) {
        com.google.common.base.a0.d0(i4, this.f33509e);
        this.f33510f++;
        int i10 = this.f33509e - 1;
        this.f33509e = i10;
        if (i10 == i4) {
            this.f33508d[i10] = null;
            return null;
        }
        E j4 = j(i10);
        int o9 = o(this.f33509e).o(j4);
        if (o9 == i4) {
            this.f33508d[this.f33509e] = null;
            return null;
        }
        E j10 = j(this.f33509e);
        this.f33508d[this.f33509e] = null;
        d<E> l10 = l(i4, j10);
        if (o9 < i4) {
            if (l10 == null) {
                return new d<>(j4, j10);
            }
            return new d<>(j4, l10.f33519b);
        }
        return l10;
    }

    private g3(b<? super E> bVar, int i4) {
        s3 g4 = bVar.g();
        g3<E>.c cVar = new c(g4);
        this.f33505a = cVar;
        g3<E>.c cVar2 = new c(g4.G());
        this.f33506b = cVar2;
        cVar.f33516b = cVar2;
        cVar2.f33516b = cVar;
        this.f33507c = ((b) bVar).f33514c;
        this.f33508d = new Object[i4];
    }
}
