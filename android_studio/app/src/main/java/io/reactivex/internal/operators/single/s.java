package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.EmptyDisposable;

/* compiled from: SingleDoOnSubscribe.java */
/* loaded from: classes4.dex */
public final class s<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75495a;

    /* renamed from: b  reason: collision with root package name */
    final n7.g<? super io.reactivex.disposables.c> f75496b;

    /* compiled from: SingleDoOnSubscribe.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.l0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75497a;

        /* renamed from: b  reason: collision with root package name */
        final n7.g<? super io.reactivex.disposables.c> f75498b;

        /* renamed from: c  reason: collision with root package name */
        boolean f75499c;

        a(io.reactivex.l0<? super T> l0Var, n7.g<? super io.reactivex.disposables.c> gVar) {
            this.f75497a = l0Var;
            this.f75498b = gVar;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            if (this.f75499c) {
                io.reactivex.plugins.a.Y(th);
            } else {
                this.f75497a.onError(th);
            }
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            try {
                this.f75498b.accept(cVar);
                this.f75497a.onSubscribe(cVar);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f75499c = true;
                cVar.dispose();
                EmptyDisposable.error(th, this.f75497a);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            if (this.f75499c) {
                return;
            }
            this.f75497a.onSuccess(t9);
        }
    }

    public s(io.reactivex.o0<T> o0Var, n7.g<? super io.reactivex.disposables.c> gVar) {
        this.f75495a = o0Var;
        this.f75496b = gVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f75495a.d(new a(l0Var, this.f75496b));
    }
}
