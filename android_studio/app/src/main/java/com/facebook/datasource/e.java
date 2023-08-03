package com.facebook.datasource;

import com.facebook.common.internal.m;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;

/* compiled from: DataSources.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class e {

    /* compiled from: DataSources.java */
    /* loaded from: classes.dex */
    static class a implements m<com.facebook.datasource.d<T>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Throwable f11078a;

        a(final Throwable val$failure) {
            this.f11078a = val$failure;
        }

        @Override // com.facebook.common.internal.m
        /* renamed from: a */
        public com.facebook.datasource.d<T> get() {
            return e.c(this.f11078a);
        }
    }

    /* compiled from: DataSources.java */
    /* loaded from: classes.dex */
    static class b implements f<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f11079a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CountDownLatch f11080b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ d f11081c;

        b(final d val$pendingException, final CountDownLatch val$latch, final d val$resultHolder) {
            this.f11079a = val$pendingException;
            this.f11080b = val$latch;
            this.f11081c = val$resultHolder;
        }

        @Override // com.facebook.datasource.f
        public void a(com.facebook.datasource.d<T> dataSource) {
            this.f11080b.countDown();
        }

        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Throwable, T] */
        @Override // com.facebook.datasource.f
        public void b(com.facebook.datasource.d<T> dataSource) {
            try {
                this.f11081c.f11082a = dataSource.e();
            } finally {
                this.f11080b.countDown();
            }
        }

        /* JADX WARN: Type inference failed for: r2v2, types: [T, java.lang.Object] */
        @Override // com.facebook.datasource.f
        public void c(com.facebook.datasource.d<T> dataSource) {
            if (dataSource.b()) {
                try {
                    this.f11079a.f11082a = dataSource.a();
                } finally {
                    this.f11080b.countDown();
                }
            }
        }

        @Override // com.facebook.datasource.f
        public void d(com.facebook.datasource.d<T> dataSource) {
        }
    }

    /* compiled from: DataSources.java */
    /* loaded from: classes.dex */
    static class c implements Executor {
        c() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable command) {
            command.run();
        }
    }

    private e() {
    }

    public static <T> m<com.facebook.datasource.d<T>> a(final Throwable failure) {
        return new a(failure);
    }

    public static <T> com.facebook.datasource.d<T> b(T result) {
        j y9 = j.y();
        y9.z(result);
        return y9;
    }

    public static <T> com.facebook.datasource.d<T> c(Throwable failure) {
        j y9 = j.y();
        y9.p(failure);
        return y9;
    }

    @r7.h
    public static <T> T d(com.facebook.datasource.d<T> dataSource) throws Throwable {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        d dVar = new d(null);
        d dVar2 = new d(null);
        dataSource.f(new b(dVar, countDownLatch, dVar2), new c());
        countDownLatch.await();
        T t9 = dVar2.f11082a;
        if (t9 == null) {
            return dVar.f11082a;
        }
        throw ((Throwable) t9);
    }

    /* compiled from: DataSources.java */
    /* loaded from: classes.dex */
    private static class d<T> {
        @r7.h

        /* renamed from: a  reason: collision with root package name */
        public T f11082a;

        private d() {
            this.f11082a = null;
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }
}
