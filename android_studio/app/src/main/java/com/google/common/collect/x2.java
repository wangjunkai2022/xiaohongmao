package com.google.common.collect;

import com.google.common.base.Optional;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Deque;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.PriorityQueue;
import java.util.Queue;
import kotlin.text.Typography;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Iterators.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class x2 {

    /* compiled from: Iterators.java */
    /* loaded from: classes2.dex */
    static class a extends k5<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Enumeration f33942a;

        a(Enumeration enumeration) {
            this.f33942a = enumeration;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33942a.hasMoreElements();
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
        @Override // java.util.Iterator
        public T next() {
            return this.f33942a.nextElement();
        }
    }

    /* compiled from: Iterators.java */
    /* loaded from: classes2.dex */
    static class b implements Enumeration<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Iterator f33943a;

        b(Iterator it) {
            this.f33943a = it;
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return this.f33943a.hasNext();
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
        @Override // java.util.Enumeration
        public T nextElement() {
            return this.f33943a.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Iterators.java */
    /* loaded from: classes2.dex */
    public static class c extends k5<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Iterator f33944a;

        c(Iterator it) {
            this.f33944a = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33944a.hasNext();
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
        @Override // java.util.Iterator
        public T next() {
            return this.f33944a.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Iterators.java */
    /* loaded from: classes2.dex */
    public static class d implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        Iterator<T> f33945a = x2.w();

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterable f33946b;

        d(Iterable iterable) {
            this.f33946b = iterable;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33945a.hasNext() || this.f33946b.iterator().hasNext();
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
        @Override // java.util.Iterator
        public T next() {
            if (!this.f33945a.hasNext()) {
                Iterator<T> it = this.f33946b.iterator();
                this.f33945a = it;
                if (!it.hasNext()) {
                    throw new NoSuchElementException();
                }
            }
            return this.f33945a.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f33945a.remove();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Iterators.java */
    /* loaded from: classes2.dex */
    public static class e extends k5<T> {

        /* renamed from: a  reason: collision with root package name */
        int f33947a = 0;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object[] f33948b;

        e(Object[] objArr) {
            this.f33948b = objArr;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33947a < this.f33948b.length;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                Object[] objArr = this.f33948b;
                int i4 = this.f33947a;
                T t9 = objArr[i4];
                objArr[i4] = 0;
                this.f33947a = i4 + 1;
                return t9;
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Iterators.java */
    /* loaded from: classes2.dex */
    public static class f extends k5<List<T>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Iterator f33949a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f33950b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f33951c;

        f(Iterator it, int i4, boolean z9) {
            this.f33949a = it;
            this.f33950b = i4;
            this.f33951c = z9;
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public List<T> next() {
            if (hasNext()) {
                Object[] objArr = new Object[this.f33950b];
                int i4 = 0;
                while (i4 < this.f33950b && this.f33949a.hasNext()) {
                    objArr[i4] = this.f33949a.next();
                    i4++;
                }
                for (int i10 = i4; i10 < this.f33950b; i10++) {
                    objArr[i10] = null;
                }
                List<T> unmodifiableList = Collections.unmodifiableList(Arrays.asList(objArr));
                return (this.f33951c || i4 == this.f33950b) ? unmodifiableList : unmodifiableList.subList(0, i4);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33949a.hasNext();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Iterators.java */
    /* loaded from: classes2.dex */
    public static class g extends com.google.common.collect.c<T> {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Iterator f33952c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ com.google.common.base.b0 f33953d;

        g(Iterator it, com.google.common.base.b0 b0Var) {
            this.f33952c = it;
            this.f33953d = b0Var;
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
        @Override // com.google.common.collect.c
        protected T a() {
            while (this.f33952c.hasNext()) {
                ?? next = this.f33952c.next();
                if (this.f33953d.apply(next)) {
                    return next;
                }
            }
            return b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Iterators.java */
    /* loaded from: classes2.dex */
    public static class h extends g5<F, T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.google.common.base.q f33954b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(Iterator it, com.google.common.base.q qVar) {
            super(it);
            this.f33954b = qVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.Object] */
        @Override // com.google.common.collect.g5
        public T a(F f10) {
            return this.f33954b.apply(f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Iterators.java */
    /* loaded from: classes2.dex */
    public static class i implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        private int f33955a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f33956b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Iterator f33957c;

        i(int i4, Iterator it) {
            this.f33956b = i4;
            this.f33957c = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33955a < this.f33956b && this.f33957c.hasNext();
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [T, java.lang.Object] */
        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                this.f33955a++;
                return this.f33957c.next();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f33957c.remove();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Iterators.java */
    /* loaded from: classes2.dex */
    public static class j extends k5<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Iterator f33958a;

        j(Iterator it) {
            this.f33958a = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33958a.hasNext();
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
        @Override // java.util.Iterator
        public T next() {
            ?? next = this.f33958a.next();
            this.f33958a.remove();
            return next;
        }

        public String toString() {
            return "Iterators.consumingIterator(...)";
        }
    }

    /* compiled from: Iterators.java */
    /* loaded from: classes2.dex */
    static class k extends k5<T> {

        /* renamed from: a  reason: collision with root package name */
        boolean f33959a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f33960b;

        k(Object obj) {
            this.f33960b = obj;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f33959a;
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
        @Override // java.util.Iterator
        public T next() {
            if (!this.f33959a) {
                this.f33959a = true;
                return this.f33960b;
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Iterators.java */
    /* loaded from: classes2.dex */
    public static final class l<T> extends com.google.common.collect.b<T> {

        /* renamed from: e  reason: collision with root package name */
        static final l5<Object> f33961e = new l(new Object[0], 0, 0, 0);

        /* renamed from: c  reason: collision with root package name */
        private final T[] f33962c;

        /* renamed from: d  reason: collision with root package name */
        private final int f33963d;

        l(T[] tArr, int i4, int i10, int i11) {
            super(i10, i11);
            this.f33962c = tArr;
            this.f33963d = i4;
        }

        @Override // com.google.common.collect.b
        protected T a(int i4) {
            return this.f33962c[this.f33963d + i4];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Iterators.java */
    /* loaded from: classes2.dex */
    public static class m<T> implements Iterator<T> {
        @NullableDecl

        /* renamed from: a  reason: collision with root package name */
        private Iterator<? extends T> f33964a;

        /* renamed from: b  reason: collision with root package name */
        private Iterator<? extends T> f33965b = x2.u();

        /* renamed from: c  reason: collision with root package name */
        private Iterator<? extends Iterator<? extends T>> f33966c;
        @NullableDecl

        /* renamed from: d  reason: collision with root package name */
        private Deque<Iterator<? extends Iterator<? extends T>>> f33967d;

        m(Iterator<? extends Iterator<? extends T>> it) {
            this.f33966c = (Iterator) com.google.common.base.a0.E(it);
        }

        @NullableDecl
        private Iterator<? extends Iterator<? extends T>> a() {
            while (true) {
                Iterator<? extends Iterator<? extends T>> it = this.f33966c;
                if (it != null && it.hasNext()) {
                    return this.f33966c;
                }
                Deque<Iterator<? extends Iterator<? extends T>>> deque = this.f33967d;
                if (deque == null || deque.isEmpty()) {
                    return null;
                }
                this.f33966c = this.f33967d.removeFirst();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (!((Iterator) com.google.common.base.a0.E(this.f33965b)).hasNext()) {
                Iterator<? extends Iterator<? extends T>> a10 = a();
                this.f33966c = a10;
                if (a10 == null) {
                    return false;
                }
                Iterator<? extends T> next = a10.next();
                this.f33965b = next;
                if (next instanceof m) {
                    m mVar = (m) next;
                    this.f33965b = mVar.f33965b;
                    if (this.f33967d == null) {
                        this.f33967d = new ArrayDeque();
                    }
                    this.f33967d.addFirst(this.f33966c);
                    if (mVar.f33967d != null) {
                        while (!mVar.f33967d.isEmpty()) {
                            this.f33967d.addFirst(mVar.f33967d.removeLast());
                        }
                    }
                    this.f33966c = mVar.f33966c;
                }
            }
            return true;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                Iterator<? extends T> it = this.f33965b;
                this.f33964a = it;
                return it.next();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            y.e(this.f33964a != null);
            this.f33964a.remove();
            this.f33964a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Iterators.java */
    /* loaded from: classes2.dex */
    public enum n implements Iterator<Object> {
        INSTANCE;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            y.e(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Iterators.java */
    /* loaded from: classes2.dex */
    public static class o<T> extends k5<T> {

        /* renamed from: a  reason: collision with root package name */
        final Queue<t3<T>> f33970a;

        /* compiled from: Iterators.java */
        /* loaded from: classes2.dex */
        class a implements Comparator<t3<T>> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Comparator f33971a;

            a(Comparator comparator) {
                this.f33971a = comparator;
            }

            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(t3<T> t3Var, t3<T> t3Var2) {
                return this.f33971a.compare(t3Var.peek(), t3Var2.peek());
            }
        }

        public o(Iterable<? extends Iterator<? extends T>> iterable, Comparator<? super T> comparator) {
            this.f33970a = new PriorityQueue(2, new a(comparator));
            for (Iterator<? extends T> it : iterable) {
                if (it.hasNext()) {
                    this.f33970a.add(x2.T(it));
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f33970a.isEmpty();
        }

        @Override // java.util.Iterator
        public T next() {
            t3<T> remove = this.f33970a.remove();
            T next = remove.next();
            if (remove.hasNext()) {
                this.f33970a.add(remove);
            }
            return next;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Iterators.java */
    /* loaded from: classes2.dex */
    public static class p<E> implements t3<E> {

        /* renamed from: a  reason: collision with root package name */
        private final Iterator<? extends E> f33973a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f33974b;
        @NullableDecl

        /* renamed from: c  reason: collision with root package name */
        private E f33975c;

        public p(Iterator<? extends E> it) {
            this.f33973a = (Iterator) com.google.common.base.a0.E(it);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33974b || this.f33973a.hasNext();
        }

        @Override // com.google.common.collect.t3
        public E next() {
            if (!this.f33974b) {
                return this.f33973a.next();
            }
            E e4 = this.f33975c;
            this.f33974b = false;
            this.f33975c = null;
            return e4;
        }

        @Override // com.google.common.collect.t3
        public E peek() {
            if (!this.f33974b) {
                this.f33975c = this.f33973a.next();
                this.f33974b = true;
            }
            return this.f33975c;
        }

        @Override // com.google.common.collect.t3, java.util.Iterator
        public void remove() {
            com.google.common.base.a0.h0(!this.f33974b, "Can't remove after you've peeked at next");
            this.f33973a.remove();
        }
    }

    private x2() {
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
    @NullableDecl
    public static <T> T A(Iterator<? extends T> it, com.google.common.base.b0<? super T> b0Var, @NullableDecl T t9) {
        com.google.common.base.a0.E(it);
        com.google.common.base.a0.E(b0Var);
        while (it.hasNext()) {
            T next = it.next();
            if (b0Var.apply(next)) {
                return next;
            }
        }
        return t9;
    }

    @SafeVarargs
    public static <T> k5<T> B(T... tArr) {
        return C(tArr, 0, tArr.length, 0);
    }

    static <T> l5<T> C(T[] tArr, int i4, int i10, int i11) {
        com.google.common.base.a0.d(i10 >= 0);
        com.google.common.base.a0.f0(i4, i4 + i10, tArr.length);
        com.google.common.base.a0.d0(i11, i10);
        if (i10 == 0) {
            return v();
        }
        return new l(tArr, i4, i10, i11);
    }

    public static <T> k5<T> D(Enumeration<T> enumeration) {
        com.google.common.base.a0.E(enumeration);
        return new a(enumeration);
    }

    public static int E(Iterator<?> it, @NullableDecl Object obj) {
        int i4 = 0;
        while (q(it, obj)) {
            i4++;
        }
        return i4;
    }

    public static <T> T F(Iterator<T> it, int i4) {
        g(i4);
        int b10 = b(it, i4);
        if (it.hasNext()) {
            return it.next();
        }
        throw new IndexOutOfBoundsException("position (" + i4 + ") must be less than the number of elements that remained (" + b10 + ")");
    }

    @NullableDecl
    public static <T> T G(Iterator<? extends T> it, int i4, @NullableDecl T t9) {
        g(i4);
        b(it, i4);
        return (T) J(it, t9);
    }

    public static <T> T H(Iterator<T> it) {
        T next;
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    @NullableDecl
    public static <T> T I(Iterator<? extends T> it, @NullableDecl T t9) {
        return it.hasNext() ? (T) H(it) : t9;
    }

    @NullableDecl
    public static <T> T J(Iterator<? extends T> it, @NullableDecl T t9) {
        return it.hasNext() ? it.next() : t9;
    }

    public static <T> T K(Iterator<T> it) {
        T next = it.next();
        if (it.hasNext()) {
            StringBuilder sb = new StringBuilder();
            sb.append("expected one element but was: <");
            sb.append(next);
            for (int i4 = 0; i4 < 4 && it.hasNext(); i4++) {
                sb.append(", ");
                sb.append(it.next());
            }
            if (it.hasNext()) {
                sb.append(", ...");
            }
            sb.append(Typography.greater);
            throw new IllegalArgumentException(sb.toString());
        }
        return next;
    }

    @NullableDecl
    public static <T> T L(Iterator<? extends T> it, @NullableDecl T t9) {
        return it.hasNext() ? (T) K(it) : t9;
    }

    public static <T> int M(Iterator<T> it, com.google.common.base.b0<? super T> b0Var) {
        com.google.common.base.a0.F(b0Var, "predicate");
        int i4 = 0;
        while (it.hasNext()) {
            if (b0Var.apply(it.next())) {
                return i4;
            }
            i4++;
        }
        return -1;
    }

    public static <T> Iterator<T> N(Iterator<T> it, int i4) {
        com.google.common.base.a0.E(it);
        com.google.common.base.a0.e(i4 >= 0, "limit is negative");
        return new i(i4, it);
    }

    @h3.a
    public static <T> k5<T> O(Iterable<? extends Iterator<? extends T>> iterable, Comparator<? super T> comparator) {
        com.google.common.base.a0.F(iterable, "iterators");
        com.google.common.base.a0.F(comparator, "comparator");
        return new o(iterable, comparator);
    }

    public static <T> k5<List<T>> P(Iterator<T> it, int i4) {
        return R(it, i4, true);
    }

    public static <T> k5<List<T>> Q(Iterator<T> it, int i4) {
        return R(it, i4, false);
    }

    private static <T> k5<List<T>> R(Iterator<T> it, int i4, boolean z9) {
        com.google.common.base.a0.E(it);
        com.google.common.base.a0.d(i4 > 0);
        return new f(it, i4, z9);
    }

    @Deprecated
    public static <T> t3<T> S(t3<T> t3Var) {
        return (t3) com.google.common.base.a0.E(t3Var);
    }

    public static <T> t3<T> T(Iterator<? extends T> it) {
        if (it instanceof p) {
            return (p) it;
        }
        return new p(it);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NullableDecl
    public static <T> T U(Iterator<T> it) {
        if (it.hasNext()) {
            T next = it.next();
            it.remove();
            return next;
        }
        return null;
    }

    @CanIgnoreReturnValue
    public static boolean V(Iterator<?> it, Collection<?> collection) {
        com.google.common.base.a0.E(collection);
        boolean z9 = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z9 = true;
            }
        }
        return z9;
    }

    @CanIgnoreReturnValue
    public static <T> boolean W(Iterator<T> it, com.google.common.base.b0<? super T> b0Var) {
        com.google.common.base.a0.E(b0Var);
        boolean z9 = false;
        while (it.hasNext()) {
            if (b0Var.apply(it.next())) {
                it.remove();
                z9 = true;
            }
        }
        return z9;
    }

    @CanIgnoreReturnValue
    public static boolean X(Iterator<?> it, Collection<?> collection) {
        com.google.common.base.a0.E(collection);
        boolean z9 = false;
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
                z9 = true;
            }
        }
        return z9;
    }

    public static <T> k5<T> Y(@NullableDecl T t9) {
        return new k(t9);
    }

    public static int Z(Iterator<?> it) {
        long j4 = 0;
        while (it.hasNext()) {
            it.next();
            j4++;
        }
        return com.google.common.primitives.f.x(j4);
    }

    @CanIgnoreReturnValue
    public static <T> boolean a(Collection<T> collection, Iterator<? extends T> it) {
        com.google.common.base.a0.E(collection);
        com.google.common.base.a0.E(it);
        boolean z9 = false;
        while (it.hasNext()) {
            z9 |= collection.add(it.next());
        }
        return z9;
    }

    @h3.c
    public static <T> T[] a0(Iterator<? extends T> it, Class<T> cls) {
        return (T[]) w2.Q(b3.s(it), cls);
    }

    @CanIgnoreReturnValue
    public static int b(Iterator<?> it, int i4) {
        com.google.common.base.a0.E(it);
        int i10 = 0;
        com.google.common.base.a0.e(i4 >= 0, "numberToAdvance must be nonnegative");
        while (i10 < i4 && it.hasNext()) {
            it.next();
            i10++;
        }
        return i10;
    }

    public static String b0(Iterator<?> it) {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        boolean z9 = true;
        while (it.hasNext()) {
            if (!z9) {
                sb.append(", ");
            }
            z9 = false;
            sb.append(it.next());
        }
        sb.append(']');
        return sb.toString();
    }

    public static <T> boolean c(Iterator<T> it, com.google.common.base.b0<? super T> b0Var) {
        com.google.common.base.a0.E(b0Var);
        while (it.hasNext()) {
            if (!b0Var.apply(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static <F, T> Iterator<T> c0(Iterator<F> it, com.google.common.base.q<? super F, ? extends T> qVar) {
        com.google.common.base.a0.E(qVar);
        return new h(it, qVar);
    }

    public static <T> boolean d(Iterator<T> it, com.google.common.base.b0<? super T> b0Var) {
        return M(it, b0Var) != -1;
    }

    public static <T> Optional<T> d0(Iterator<T> it, com.google.common.base.b0<? super T> b0Var) {
        com.google.common.base.a0.E(it);
        com.google.common.base.a0.E(b0Var);
        while (it.hasNext()) {
            T next = it.next();
            if (b0Var.apply(next)) {
                return Optional.of(next);
            }
        }
        return Optional.absent();
    }

    public static <T> Enumeration<T> e(Iterator<T> it) {
        com.google.common.base.a0.E(it);
        return new b(it);
    }

    @Deprecated
    public static <T> k5<T> e0(k5<T> k5Var) {
        return (k5) com.google.common.base.a0.E(k5Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> ListIterator<T> f(Iterator<T> it) {
        return (ListIterator) it;
    }

    public static <T> k5<T> f0(Iterator<? extends T> it) {
        com.google.common.base.a0.E(it);
        if (it instanceof k5) {
            return (k5) it;
        }
        return new c(it);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g(int i4) {
        if (i4 >= 0) {
            return;
        }
        throw new IndexOutOfBoundsException("position (" + i4 + ") must not be negative");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void h(Iterator<?> it) {
        com.google.common.base.a0.E(it);
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    public static <T> Iterator<T> i(Iterator<? extends Iterator<? extends T>> it) {
        return new m(it);
    }

    public static <T> Iterator<T> j(Iterator<? extends T> it, Iterator<? extends T> it2) {
        com.google.common.base.a0.E(it);
        com.google.common.base.a0.E(it2);
        return i(o(it, it2));
    }

    public static <T> Iterator<T> k(Iterator<? extends T> it, Iterator<? extends T> it2, Iterator<? extends T> it3) {
        com.google.common.base.a0.E(it);
        com.google.common.base.a0.E(it2);
        com.google.common.base.a0.E(it3);
        return i(o(it, it2, it3));
    }

    public static <T> Iterator<T> l(Iterator<? extends T> it, Iterator<? extends T> it2, Iterator<? extends T> it3, Iterator<? extends T> it4) {
        com.google.common.base.a0.E(it);
        com.google.common.base.a0.E(it2);
        com.google.common.base.a0.E(it3);
        com.google.common.base.a0.E(it4);
        return i(o(it, it2, it3, it4));
    }

    public static <T> Iterator<T> m(Iterator<? extends T>... itArr) {
        return n((Iterator[]) Arrays.copyOf(itArr, itArr.length));
    }

    static <T> Iterator<T> n(Iterator<? extends T>... itArr) {
        for (Iterator it : (Iterator[]) com.google.common.base.a0.E(itArr)) {
            com.google.common.base.a0.E(it);
        }
        return i(o(itArr));
    }

    private static <T> Iterator<T> o(T... tArr) {
        return new e(tArr);
    }

    public static <T> Iterator<T> p(Iterator<T> it) {
        com.google.common.base.a0.E(it);
        return new j(it);
    }

    public static boolean q(Iterator<?> it, @NullableDecl Object obj) {
        if (obj == null) {
            while (it.hasNext()) {
                if (it.next() == null) {
                    return true;
                }
            }
            return false;
        }
        while (it.hasNext()) {
            if (obj.equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static <T> Iterator<T> r(Iterable<T> iterable) {
        com.google.common.base.a0.E(iterable);
        return new d(iterable);
    }

    @SafeVarargs
    public static <T> Iterator<T> s(T... tArr) {
        return r(b3.t(tArr));
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0006  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean t(java.util.Iterator<?> r3, java.util.Iterator<?> r4) {
        /*
        L0:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L1d
            boolean r0 = r4.hasNext()
            r1 = 0
            if (r0 != 0) goto Le
            return r1
        Le:
            java.lang.Object r0 = r3.next()
            java.lang.Object r2 = r4.next()
            boolean r0 = com.google.common.base.w.a(r0, r2)
            if (r0 != 0) goto L0
            return r1
        L1d:
            boolean r3 = r4.hasNext()
            r3 = r3 ^ 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.x2.t(java.util.Iterator, java.util.Iterator):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> k5<T> u() {
        return v();
    }

    static <T> l5<T> v() {
        return (l5<T>) l.f33961e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> Iterator<T> w() {
        return n.INSTANCE;
    }

    public static <T> k5<T> x(Iterator<T> it, com.google.common.base.b0<? super T> b0Var) {
        com.google.common.base.a0.E(it);
        com.google.common.base.a0.E(b0Var);
        return new g(it, b0Var);
    }

    @h3.c
    public static <T> k5<T> y(Iterator<?> it, Class<T> cls) {
        return x(it, com.google.common.base.c0.o(cls));
    }

    public static <T> T z(Iterator<T> it, com.google.common.base.b0<? super T> b0Var) {
        com.google.common.base.a0.E(it);
        com.google.common.base.a0.E(b0Var);
        while (it.hasNext()) {
            T next = it.next();
            if (b0Var.apply(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }
}
