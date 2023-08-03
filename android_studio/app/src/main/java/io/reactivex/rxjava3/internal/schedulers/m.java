package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.o0;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SchedulerWhen.java */
/* loaded from: classes4.dex */
public class m extends o0 implements io.reactivex.rxjava3.disposables.f {

    /* renamed from: e  reason: collision with root package name */
    static final io.reactivex.rxjava3.disposables.f f81141e = new g();

    /* renamed from: f  reason: collision with root package name */
    static final io.reactivex.rxjava3.disposables.f f81142f = io.reactivex.rxjava3.disposables.e.a();

    /* renamed from: b  reason: collision with root package name */
    private final o0 f81143b;

    /* renamed from: c  reason: collision with root package name */
    private final io.reactivex.rxjava3.processors.c<io.reactivex.rxjava3.core.m<io.reactivex.rxjava3.core.a>> f81144c;

    /* renamed from: d  reason: collision with root package name */
    private io.reactivex.rxjava3.disposables.f f81145d;

    /* compiled from: SchedulerWhen.java */
    /* loaded from: classes4.dex */
    static final class a implements q7.o<f, io.reactivex.rxjava3.core.a> {

        /* renamed from: a  reason: collision with root package name */
        final o0.c f81146a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SchedulerWhen.java */
        /* renamed from: io.reactivex.rxjava3.internal.schedulers.m$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public final class C0694a extends io.reactivex.rxjava3.core.a {

            /* renamed from: a  reason: collision with root package name */
            final f f81147a;

            C0694a(f action) {
                this.f81147a = action;
            }

            @Override // io.reactivex.rxjava3.core.a
            protected void Y0(io.reactivex.rxjava3.core.d actionCompletable) {
                actionCompletable.onSubscribe(this.f81147a);
                this.f81147a.a(a.this.f81146a, actionCompletable);
            }
        }

        a(o0.c actualWorker) {
            this.f81146a = actualWorker;
        }

        @Override // q7.o
        /* renamed from: a */
        public io.reactivex.rxjava3.core.a apply(final f action) {
            return new C0694a(action);
        }
    }

    /* compiled from: SchedulerWhen.java */
    /* loaded from: classes4.dex */
    static class b extends f {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f81149a;

        /* renamed from: b  reason: collision with root package name */
        private final long f81150b;

        /* renamed from: c  reason: collision with root package name */
        private final TimeUnit f81151c;

        b(Runnable action, long delayTime, TimeUnit unit) {
            this.f81149a = action;
            this.f81150b = delayTime;
            this.f81151c = unit;
        }

        @Override // io.reactivex.rxjava3.internal.schedulers.m.f
        protected io.reactivex.rxjava3.disposables.f b(o0.c actualWorker, io.reactivex.rxjava3.core.d actionCompletable) {
            return actualWorker.c(new d(this.f81149a, actionCompletable), this.f81150b, this.f81151c);
        }
    }

    /* compiled from: SchedulerWhen.java */
    /* loaded from: classes4.dex */
    static class c extends f {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f81152a;

        c(Runnable action) {
            this.f81152a = action;
        }

        @Override // io.reactivex.rxjava3.internal.schedulers.m.f
        protected io.reactivex.rxjava3.disposables.f b(o0.c actualWorker, io.reactivex.rxjava3.core.d actionCompletable) {
            return actualWorker.b(new d(this.f81152a, actionCompletable));
        }
    }

    /* compiled from: SchedulerWhen.java */
    /* loaded from: classes4.dex */
    static class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f81153a;

        /* renamed from: b  reason: collision with root package name */
        final Runnable f81154b;

        d(Runnable action, io.reactivex.rxjava3.core.d actionCompletable) {
            this.f81154b = action;
            this.f81153a = actionCompletable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f81154b.run();
            } finally {
                this.f81153a.onComplete();
            }
        }
    }

    /* compiled from: SchedulerWhen.java */
    /* loaded from: classes4.dex */
    static final class e extends o0.c {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicBoolean f81155a = new AtomicBoolean();

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.rxjava3.processors.c<f> f81156b;

        /* renamed from: c  reason: collision with root package name */
        private final o0.c f81157c;

        e(io.reactivex.rxjava3.processors.c<f> actionProcessor, o0.c actualWorker) {
            this.f81156b = actionProcessor;
            this.f81157c = actualWorker;
        }

        @Override // io.reactivex.rxjava3.core.o0.c
        @p7.e
        public io.reactivex.rxjava3.disposables.f b(@p7.e final Runnable action) {
            c cVar = new c(action);
            this.f81156b.onNext(cVar);
            return cVar;
        }

        @Override // io.reactivex.rxjava3.core.o0.c
        @p7.e
        public io.reactivex.rxjava3.disposables.f c(@p7.e final Runnable action, final long delayTime, @p7.e final TimeUnit unit) {
            b bVar = new b(action, delayTime, unit);
            this.f81156b.onNext(bVar);
            return bVar;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f81155a.compareAndSet(false, true)) {
                this.f81156b.onComplete();
                this.f81157c.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f81155a.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SchedulerWhen.java */
    /* loaded from: classes4.dex */
    public static abstract class f extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.disposables.f {
        f() {
            super(m.f81141e);
        }

        void a(o0.c actualWorker, io.reactivex.rxjava3.core.d actionCompletable) {
            io.reactivex.rxjava3.disposables.f fVar;
            io.reactivex.rxjava3.disposables.f fVar2 = get();
            if (fVar2 != m.f81142f && fVar2 == (fVar = m.f81141e)) {
                io.reactivex.rxjava3.disposables.f b10 = b(actualWorker, actionCompletable);
                if (compareAndSet(fVar, b10)) {
                    return;
                }
                b10.dispose();
            }
        }

        protected abstract io.reactivex.rxjava3.disposables.f b(o0.c actualWorker, io.reactivex.rxjava3.core.d actionCompletable);

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            getAndSet(m.f81142f).dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get().isDisposed();
        }
    }

    /* compiled from: SchedulerWhen.java */
    /* loaded from: classes4.dex */
    static final class g implements io.reactivex.rxjava3.disposables.f {
        g() {
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public m(q7.o<io.reactivex.rxjava3.core.m<io.reactivex.rxjava3.core.m<io.reactivex.rxjava3.core.a>>, io.reactivex.rxjava3.core.a> combine, o0 actualScheduler) {
        this.f81143b = actualScheduler;
        io.reactivex.rxjava3.processors.c k92 = io.reactivex.rxjava3.processors.h.m9().k9();
        this.f81144c = k92;
        try {
            this.f81145d = ((io.reactivex.rxjava3.core.a) combine.apply(k92)).V0();
        } catch (Throwable th) {
            throw io.reactivex.rxjava3.internal.util.g.i(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.o0
    @p7.e
    public o0.c d() {
        o0.c d4 = this.f81143b.d();
        io.reactivex.rxjava3.processors.c<T> k92 = io.reactivex.rxjava3.processors.h.m9().k9();
        io.reactivex.rxjava3.core.m<io.reactivex.rxjava3.core.a> Z3 = k92.Z3(new a(d4));
        e eVar = new e(k92, d4);
        this.f81144c.onNext(Z3);
        return eVar;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        this.f81145d.dispose();
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return this.f81145d.isDisposed();
    }
}
