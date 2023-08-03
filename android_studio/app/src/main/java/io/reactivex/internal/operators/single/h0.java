package io.reactivex.internal.operators.single;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;

/* compiled from: SingleInternalHelper.java */
/* loaded from: classes4.dex */
public final class h0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SingleInternalHelper.java */
    /* loaded from: classes4.dex */
    public enum a implements Callable<NoSuchElementException> {
        INSTANCE;

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public NoSuchElementException call() throws Exception {
            return new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SingleInternalHelper.java */
    /* loaded from: classes4.dex */
    public enum b implements n7.o<io.reactivex.o0, org.reactivestreams.c> {
        INSTANCE;

        @Override // n7.o
        /* renamed from: a */
        public org.reactivestreams.c apply(io.reactivex.o0 o0Var) {
            return new u0(o0Var);
        }
    }

    /* compiled from: SingleInternalHelper.java */
    /* loaded from: classes4.dex */
    static final class c<T> implements Iterable<io.reactivex.j<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final Iterable<? extends io.reactivex.o0<? extends T>> f75403a;

        c(Iterable<? extends io.reactivex.o0<? extends T>> iterable) {
            this.f75403a = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<io.reactivex.j<T>> iterator() {
            return new d(this.f75403a.iterator());
        }
    }

    /* compiled from: SingleInternalHelper.java */
    /* loaded from: classes4.dex */
    static final class d<T> implements Iterator<io.reactivex.j<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final Iterator<? extends io.reactivex.o0<? extends T>> f75404a;

        d(Iterator<? extends io.reactivex.o0<? extends T>> it) {
            this.f75404a = it;
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public io.reactivex.j<T> next() {
            return new u0(this.f75404a.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f75404a.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SingleInternalHelper.java */
    /* loaded from: classes4.dex */
    public enum e implements n7.o<io.reactivex.o0, io.reactivex.z> {
        INSTANCE;

        @Override // n7.o
        /* renamed from: a */
        public io.reactivex.z apply(io.reactivex.o0 o0Var) {
            return new v0(o0Var);
        }
    }

    private h0() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> Callable<NoSuchElementException> a() {
        return a.INSTANCE;
    }

    public static <T> Iterable<? extends io.reactivex.j<T>> b(Iterable<? extends io.reactivex.o0<? extends T>> iterable) {
        return new c(iterable);
    }

    public static <T> n7.o<io.reactivex.o0<? extends T>, org.reactivestreams.c<? extends T>> c() {
        return b.INSTANCE;
    }

    public static <T> n7.o<io.reactivex.o0<? extends T>, io.reactivex.z<? extends T>> d() {
        return e.INSTANCE;
    }
}
