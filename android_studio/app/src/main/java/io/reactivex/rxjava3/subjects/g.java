package io.reactivex.rxjava3.subjects;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.internal.util.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SerializedSubject.java */
/* loaded from: classes4.dex */
public final class g<T> extends i<T> implements a.InterfaceC0695a<Object> {

    /* renamed from: a  reason: collision with root package name */
    final i<T> f81619a;

    /* renamed from: b  reason: collision with root package name */
    boolean f81620b;

    /* renamed from: c  reason: collision with root package name */
    io.reactivex.rxjava3.internal.util.a<Object> f81621c;

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f81622d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(final i<T> actual) {
        this.f81619a = actual;
    }

    @Override // io.reactivex.rxjava3.subjects.i
    @p7.f
    public Throwable A8() {
        return this.f81619a.A8();
    }

    @Override // io.reactivex.rxjava3.subjects.i
    public boolean B8() {
        return this.f81619a.B8();
    }

    @Override // io.reactivex.rxjava3.subjects.i
    public boolean C8() {
        return this.f81619a.C8();
    }

    @Override // io.reactivex.rxjava3.subjects.i
    public boolean D8() {
        return this.f81619a.D8();
    }

    void F8() {
        io.reactivex.rxjava3.internal.util.a<Object> aVar;
        while (true) {
            synchronized (this) {
                aVar = this.f81621c;
                if (aVar == null) {
                    this.f81620b = false;
                    return;
                }
                this.f81621c = null;
            }
            aVar.d(this);
        }
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(n0<? super T> observer) {
        this.f81619a.a(observer);
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onComplete() {
        if (this.f81622d) {
            return;
        }
        synchronized (this) {
            if (this.f81622d) {
                return;
            }
            this.f81622d = true;
            if (this.f81620b) {
                io.reactivex.rxjava3.internal.util.a<Object> aVar = this.f81621c;
                if (aVar == null) {
                    aVar = new io.reactivex.rxjava3.internal.util.a<>(4);
                    this.f81621c = aVar;
                }
                aVar.c(NotificationLite.complete());
                return;
            }
            this.f81620b = true;
            this.f81619a.onComplete();
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onError(Throwable t9) {
        if (this.f81622d) {
            io.reactivex.rxjava3.plugins.a.Y(t9);
            return;
        }
        synchronized (this) {
            boolean z9 = true;
            if (!this.f81622d) {
                this.f81622d = true;
                if (this.f81620b) {
                    io.reactivex.rxjava3.internal.util.a<Object> aVar = this.f81621c;
                    if (aVar == null) {
                        aVar = new io.reactivex.rxjava3.internal.util.a<>(4);
                        this.f81621c = aVar;
                    }
                    aVar.f(NotificationLite.error(t9));
                    return;
                }
                this.f81620b = true;
                z9 = false;
            }
            if (z9) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
            } else {
                this.f81619a.onError(t9);
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onNext(T t9) {
        if (this.f81622d) {
            return;
        }
        synchronized (this) {
            if (this.f81622d) {
                return;
            }
            if (this.f81620b) {
                io.reactivex.rxjava3.internal.util.a<Object> aVar = this.f81621c;
                if (aVar == null) {
                    aVar = new io.reactivex.rxjava3.internal.util.a<>(4);
                    this.f81621c = aVar;
                }
                aVar.c(NotificationLite.next(t9));
                return;
            }
            this.f81620b = true;
            this.f81619a.onNext(t9);
            F8();
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        boolean z9 = true;
        if (!this.f81622d) {
            synchronized (this) {
                if (!this.f81622d) {
                    if (this.f81620b) {
                        io.reactivex.rxjava3.internal.util.a<Object> aVar = this.f81621c;
                        if (aVar == null) {
                            aVar = new io.reactivex.rxjava3.internal.util.a<>(4);
                            this.f81621c = aVar;
                        }
                        aVar.c(NotificationLite.disposable(d4));
                        return;
                    }
                    this.f81620b = true;
                    z9 = false;
                }
            }
        }
        if (z9) {
            d4.dispose();
            return;
        }
        this.f81619a.onSubscribe(d4);
        F8();
    }

    @Override // io.reactivex.rxjava3.internal.util.a.InterfaceC0695a, q7.r
    public boolean test(Object o9) {
        return NotificationLite.acceptFull(o9, this.f81619a);
    }
}
