package io.reactivex.internal.queue;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import m7.f;
import o7.n;

/* compiled from: MpscLinkedQueue.java */
/* loaded from: classes4.dex */
public final class a<T> implements n<T> {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<C0610a<T>> f75599a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicReference<C0610a<T>> f75600b = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MpscLinkedQueue.java */
    /* renamed from: io.reactivex.internal.queue.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0610a<E> extends AtomicReference<C0610a<E>> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f75601b = 2404266111789071508L;

        /* renamed from: a  reason: collision with root package name */
        private E f75602a;

        C0610a() {
        }

        public E a() {
            E b10 = b();
            e(null);
            return b10;
        }

        public E b() {
            return this.f75602a;
        }

        public C0610a<E> c() {
            return get();
        }

        public void d(C0610a<E> c0610a) {
            lazySet(c0610a);
        }

        public void e(E e4) {
            this.f75602a = e4;
        }

        C0610a(E e4) {
            e(e4);
        }
    }

    public a() {
        C0610a<T> c0610a = new C0610a<>();
        g(c0610a);
        h(c0610a);
    }

    C0610a<T> a() {
        return this.f75600b.get();
    }

    C0610a<T> b() {
        return this.f75600b.get();
    }

    @Override // o7.o
    public void clear() {
        while (poll() != null && !isEmpty()) {
        }
    }

    C0610a<T> f() {
        return this.f75599a.get();
    }

    void g(C0610a<T> c0610a) {
        this.f75600b.lazySet(c0610a);
    }

    C0610a<T> h(C0610a<T> c0610a) {
        return this.f75599a.getAndSet(c0610a);
    }

    @Override // o7.o
    public boolean isEmpty() {
        return b() == f();
    }

    @Override // o7.o
    public boolean offer(T t9) {
        Objects.requireNonNull(t9, "Null is not a valid element");
        C0610a<T> c0610a = new C0610a<>(t9);
        h(c0610a).d(c0610a);
        return true;
    }

    @Override // o7.n, o7.o
    @f
    public T poll() {
        C0610a<T> c10;
        C0610a<T> a10 = a();
        C0610a<T> c11 = a10.c();
        if (c11 != null) {
            T a11 = c11.a();
            g(c11);
            return a11;
        } else if (a10 != f()) {
            do {
                c10 = a10.c();
            } while (c10 == null);
            T a12 = c10.a();
            g(c10);
            return a12;
        } else {
            return null;
        }
    }

    @Override // o7.o
    public boolean offer(T t9, T t10) {
        offer(t9);
        offer(t10);
        return true;
    }
}
