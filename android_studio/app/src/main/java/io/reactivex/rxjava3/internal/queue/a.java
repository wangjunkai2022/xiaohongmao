package io.reactivex.rxjava3.internal.queue;

import io.reactivex.rxjava3.internal.fuseable.p;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import p7.f;

/* compiled from: MpscLinkedQueue.java */
/* loaded from: classes4.dex */
public final class a<T> implements p<T> {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<C0691a<T>> f81014a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicReference<C0691a<T>> f81015b = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MpscLinkedQueue.java */
    /* renamed from: io.reactivex.rxjava3.internal.queue.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0691a<E> extends AtomicReference<C0691a<E>> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f81016b = 2404266111789071508L;

        /* renamed from: a  reason: collision with root package name */
        private E f81017a;

        C0691a() {
        }

        public E a() {
            E b10 = b();
            e(null);
            return b10;
        }

        public E b() {
            return this.f81017a;
        }

        public C0691a<E> c() {
            return get();
        }

        public void d(C0691a<E> n9) {
            lazySet(n9);
        }

        public void e(E newValue) {
            this.f81017a = newValue;
        }

        C0691a(E val) {
            e(val);
        }
    }

    public a() {
        C0691a<T> c0691a = new C0691a<>();
        g(c0691a);
        h(c0691a);
    }

    C0691a<T> a() {
        return this.f81015b.get();
    }

    C0691a<T> b() {
        return this.f81015b.get();
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public void clear() {
        while (poll() != null && !isEmpty()) {
        }
    }

    C0691a<T> f() {
        return this.f81014a.get();
    }

    void g(C0691a<T> node) {
        this.f81015b.lazySet(node);
    }

    C0691a<T> h(C0691a<T> node) {
        return this.f81014a.getAndSet(node);
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public boolean isEmpty() {
        return b() == f();
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public boolean offer(final T e4) {
        Objects.requireNonNull(e4, "Null is not a valid element");
        C0691a<T> c0691a = new C0691a<>(e4);
        h(c0691a).d(c0691a);
        return true;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.p, io.reactivex.rxjava3.internal.fuseable.q
    @f
    public T poll() {
        C0691a<T> c10;
        C0691a<T> a10 = a();
        C0691a<T> c11 = a10.c();
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

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public boolean offer(T v12, T v22) {
        offer(v12);
        offer(v22);
        return true;
    }
}
