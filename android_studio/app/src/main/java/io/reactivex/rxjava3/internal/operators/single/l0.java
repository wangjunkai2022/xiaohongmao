package io.reactivex.rxjava3.internal.operators.single;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: SingleInternalHelper.java */
/* loaded from: classes4.dex */
public final class l0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SingleInternalHelper.java */
    /* loaded from: classes4.dex */
    public enum a implements q7.s<NoSuchElementException> {
        INSTANCE;

        @Override // q7.s
        /* renamed from: a */
        public NoSuchElementException get() {
            return new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SingleInternalHelper.java */
    /* loaded from: classes4.dex */
    public enum b implements q7.o<io.reactivex.rxjava3.core.v0, org.reactivestreams.c> {
        INSTANCE;

        @Override // q7.o
        /* renamed from: a */
        public org.reactivestreams.c apply(io.reactivex.rxjava3.core.v0 v9) {
            return new a1(v9);
        }
    }

    /* compiled from: SingleInternalHelper.java */
    /* loaded from: classes4.dex */
    static final class c<T> implements Iterable<io.reactivex.rxjava3.core.m<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final Iterable<? extends io.reactivex.rxjava3.core.v0<? extends T>> f80863a;

        c(Iterable<? extends io.reactivex.rxjava3.core.v0<? extends T>> sources) {
            this.f80863a = sources;
        }

        @Override // java.lang.Iterable
        public Iterator<io.reactivex.rxjava3.core.m<T>> iterator() {
            return new d(this.f80863a.iterator());
        }
    }

    /* compiled from: SingleInternalHelper.java */
    /* loaded from: classes4.dex */
    static final class d<T> implements Iterator<io.reactivex.rxjava3.core.m<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final Iterator<? extends io.reactivex.rxjava3.core.v0<? extends T>> f80864a;

        d(Iterator<? extends io.reactivex.rxjava3.core.v0<? extends T>> sit) {
            this.f80864a = sit;
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public io.reactivex.rxjava3.core.m<T> next() {
            return new a1(this.f80864a.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f80864a.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    private l0() {
        throw new IllegalStateException("No instances!");
    }

    public static q7.s<NoSuchElementException> a() {
        return a.INSTANCE;
    }

    public static <T> Iterable<? extends io.reactivex.rxjava3.core.m<T>> b(final Iterable<? extends io.reactivex.rxjava3.core.v0<? extends T>> sources) {
        return new c(sources);
    }

    public static <T> q7.o<io.reactivex.rxjava3.core.v0<? extends T>, org.reactivestreams.c<? extends T>> c() {
        return b.INSTANCE;
    }
}
