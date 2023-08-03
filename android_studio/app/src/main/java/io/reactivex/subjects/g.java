package io.reactivex.subjects;

import io.reactivex.g0;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.internal.util.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SerializedSubject.java */
/* loaded from: classes4.dex */
public final class g<T> extends i<T> implements a.InterfaceC0614a<Object> {

    /* renamed from: a  reason: collision with root package name */
    final i<T> f81769a;

    /* renamed from: b  reason: collision with root package name */
    boolean f81770b;

    /* renamed from: c  reason: collision with root package name */
    io.reactivex.internal.util.a<Object> f81771c;

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f81772d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(i<T> iVar) {
        this.f81769a = iVar;
    }

    @Override // io.reactivex.subjects.i
    @m7.f
    public Throwable b() {
        return this.f81769a.b();
    }

    @Override // io.reactivex.subjects.i
    public boolean d() {
        return this.f81769a.d();
    }

    @Override // io.reactivex.subjects.i
    public boolean e() {
        return this.f81769a.e();
    }

    @Override // io.reactivex.subjects.i
    public boolean f() {
        return this.f81769a.f();
    }

    void h() {
        io.reactivex.internal.util.a<Object> aVar;
        while (true) {
            synchronized (this) {
                aVar = this.f81771c;
                if (aVar == null) {
                    this.f81770b = false;
                    return;
                }
                this.f81771c = null;
            }
            aVar.d(this);
        }
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        if (this.f81772d) {
            return;
        }
        synchronized (this) {
            if (this.f81772d) {
                return;
            }
            this.f81772d = true;
            if (this.f81770b) {
                io.reactivex.internal.util.a<Object> aVar = this.f81771c;
                if (aVar == null) {
                    aVar = new io.reactivex.internal.util.a<>(4);
                    this.f81771c = aVar;
                }
                aVar.c(NotificationLite.complete());
                return;
            }
            this.f81770b = true;
            this.f81769a.onComplete();
        }
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        if (this.f81772d) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        synchronized (this) {
            boolean z9 = true;
            if (!this.f81772d) {
                this.f81772d = true;
                if (this.f81770b) {
                    io.reactivex.internal.util.a<Object> aVar = this.f81771c;
                    if (aVar == null) {
                        aVar = new io.reactivex.internal.util.a<>(4);
                        this.f81771c = aVar;
                    }
                    aVar.f(NotificationLite.error(th));
                    return;
                }
                this.f81770b = true;
                z9 = false;
            }
            if (z9) {
                io.reactivex.plugins.a.Y(th);
            } else {
                this.f81769a.onError(th);
            }
        }
    }

    @Override // io.reactivex.g0
    public void onNext(T t9) {
        if (this.f81772d) {
            return;
        }
        synchronized (this) {
            if (this.f81772d) {
                return;
            }
            if (this.f81770b) {
                io.reactivex.internal.util.a<Object> aVar = this.f81771c;
                if (aVar == null) {
                    aVar = new io.reactivex.internal.util.a<>(4);
                    this.f81771c = aVar;
                }
                aVar.c(NotificationLite.next(t9));
                return;
            }
            this.f81770b = true;
            this.f81769a.onNext(t9);
            h();
        }
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        boolean z9 = true;
        if (!this.f81772d) {
            synchronized (this) {
                if (!this.f81772d) {
                    if (this.f81770b) {
                        io.reactivex.internal.util.a<Object> aVar = this.f81771c;
                        if (aVar == null) {
                            aVar = new io.reactivex.internal.util.a<>(4);
                            this.f81771c = aVar;
                        }
                        aVar.c(NotificationLite.disposable(cVar));
                        return;
                    }
                    this.f81770b = true;
                    z9 = false;
                }
            }
        }
        if (z9) {
            cVar.dispose();
            return;
        }
        this.f81769a.onSubscribe(cVar);
        h();
    }

    @Override // io.reactivex.z
    protected void subscribeActual(g0<? super T> g0Var) {
        this.f81769a.subscribe(g0Var);
    }

    @Override // io.reactivex.internal.util.a.InterfaceC0614a, n7.r
    public boolean test(Object obj) {
        return NotificationLite.acceptFull(obj, this.f81769a);
    }
}
