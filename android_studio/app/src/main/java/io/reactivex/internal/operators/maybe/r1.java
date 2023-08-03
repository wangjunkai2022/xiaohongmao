package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.operators.maybe.u0;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeZipArray.java */
/* loaded from: classes3.dex */
public final class r1<T, R> extends io.reactivex.q<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<? extends T>[] f73453a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super Object[], ? extends R> f73454b;

    /* compiled from: MaybeZipArray.java */
    /* loaded from: classes3.dex */
    final class a implements n7.o<T, R> {
        a() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // n7.o
        public R apply(T t9) throws Exception {
            return (R) io.reactivex.internal.functions.b.g(r1.this.f73454b.apply(new Object[]{t9}), "The zipper returned a null value");
        }
    }

    /* compiled from: MaybeZipArray.java */
    /* loaded from: classes3.dex */
    static final class b<T, R> extends AtomicInteger implements io.reactivex.disposables.c {

        /* renamed from: e  reason: collision with root package name */
        private static final long f73456e = -5556924161382950569L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super R> f73457a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super Object[], ? extends R> f73458b;

        /* renamed from: c  reason: collision with root package name */
        final c<T>[] f73459c;

        /* renamed from: d  reason: collision with root package name */
        final Object[] f73460d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(io.reactivex.t<? super R> tVar, int i4, n7.o<? super Object[], ? extends R> oVar) {
            super(i4);
            this.f73457a = tVar;
            this.f73458b = oVar;
            c<T>[] cVarArr = new c[i4];
            for (int i10 = 0; i10 < i4; i10++) {
                cVarArr[i10] = new c<>(this, i10);
            }
            this.f73459c = cVarArr;
            this.f73460d = new Object[i4];
        }

        void a(int i4) {
            c<T>[] cVarArr = this.f73459c;
            int length = cVarArr.length;
            for (int i10 = 0; i10 < i4; i10++) {
                cVarArr[i10].a();
            }
            while (true) {
                i4++;
                if (i4 >= length) {
                    return;
                }
                cVarArr[i4].a();
            }
        }

        void b(int i4) {
            if (getAndSet(0) > 0) {
                a(i4);
                this.f73457a.onComplete();
            }
        }

        void c(Throwable th, int i4) {
            if (getAndSet(0) > 0) {
                a(i4);
                this.f73457a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void d(T t9, int i4) {
            this.f73460d[i4] = t9;
            if (decrementAndGet() == 0) {
                try {
                    this.f73457a.onSuccess(io.reactivex.internal.functions.b.g(this.f73458b.apply(this.f73460d), "The zipper returned a null value"));
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f73457a.onError(th);
                }
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (getAndSet(0) > 0) {
                for (c<T> cVar : this.f73459c) {
                    cVar.a();
                }
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get() <= 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaybeZipArray.java */
    /* loaded from: classes3.dex */
    public static final class c<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f73461c = 3323743579927613702L;

        /* renamed from: a  reason: collision with root package name */
        final b<T, ?> f73462a;

        /* renamed from: b  reason: collision with root package name */
        final int f73463b;

        c(b<T, ?> bVar, int i4) {
            this.f73462a = bVar;
            this.f73463b = i4;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73462a.b(this.f73463b);
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73462a.c(th, this.f73463b);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73462a.d(t9, this.f73463b);
        }
    }

    public r1(io.reactivex.w<? extends T>[] wVarArr, n7.o<? super Object[], ? extends R> oVar) {
        this.f73453a = wVarArr;
        this.f73454b = oVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super R> tVar) {
        io.reactivex.w<? extends T>[] wVarArr = this.f73453a;
        int length = wVarArr.length;
        if (length == 1) {
            wVarArr[0].b(new u0.a(tVar, new a()));
            return;
        }
        b bVar = new b(tVar, length, this.f73454b);
        tVar.onSubscribe(bVar);
        for (int i4 = 0; i4 < length && !bVar.isDisposed(); i4++) {
            io.reactivex.w<? extends T> wVar = wVarArr[i4];
            if (wVar == null) {
                bVar.c(new NullPointerException("One of the sources is null"), i4);
                return;
            }
            wVar.b(bVar.f73459c[i4]);
        }
    }
}
