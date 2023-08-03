package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ExecutionSequencer.java */
@h3.a
/* loaded from: classes2.dex */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<q0<Object>> f35349a = new AtomicReference<>(j0.n(null));

    /* compiled from: ExecutionSequencer.java */
    /* loaded from: classes2.dex */
    class a implements m<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Callable f35350a;

        a(Callable callable) {
            this.f35350a = callable;
        }

        @Override // com.google.common.util.concurrent.m
        public q0<T> call() throws Exception {
            return j0.n(this.f35350a.call());
        }

        public String toString() {
            return this.f35350a.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ExecutionSequencer.java */
    /* loaded from: classes2.dex */
    public class b implements m<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AtomicReference f35352a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ m f35353b;

        b(AtomicReference atomicReference, m mVar) {
            this.f35352a = atomicReference;
            this.f35353b = mVar;
        }

        @Override // com.google.common.util.concurrent.m
        public q0<T> call() throws Exception {
            if (!this.f35352a.compareAndSet(e.NOT_RUN, e.STARTED)) {
                return j0.j();
            }
            return this.f35353b.call();
        }

        public String toString() {
            return this.f35353b.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ExecutionSequencer.java */
    /* loaded from: classes2.dex */
    public class c implements Executor {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ q0 f35355a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Executor f35356b;

        c(q0 q0Var, Executor executor) {
            this.f35355a = q0Var;
            this.f35356b = executor;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f35355a.addListener(runnable, this.f35356b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ExecutionSequencer.java */
    /* loaded from: classes2.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ q0 f35358a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ q0 f35359b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ AtomicReference f35360c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ e1 f35361d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ q0 f35362e;

        d(q0 q0Var, q0 q0Var2, AtomicReference atomicReference, e1 e1Var, q0 q0Var3) {
            this.f35358a = q0Var;
            this.f35359b = q0Var2;
            this.f35360c = atomicReference;
            this.f35361d = e1Var;
            this.f35362e = q0Var3;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f35358a.isDone() || (this.f35359b.isCancelled() && this.f35360c.compareAndSet(e.NOT_RUN, e.CANCELLED))) {
                this.f35361d.O(this.f35362e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ExecutionSequencer.java */
    /* loaded from: classes2.dex */
    public enum e {
        NOT_RUN,
        CANCELLED,
        STARTED
    }

    private v() {
    }

    public static v a() {
        return new v();
    }

    public <T> q0<T> b(Callable<T> callable, Executor executor) {
        com.google.common.base.a0.E(callable);
        return c(new a(callable), executor);
    }

    public <T> q0<T> c(m<T> mVar, Executor executor) {
        com.google.common.base.a0.E(mVar);
        AtomicReference atomicReference = new AtomicReference(e.NOT_RUN);
        b bVar = new b(atomicReference, mVar);
        e1 R = e1.R();
        q0<Object> andSet = this.f35349a.getAndSet(R);
        q0 t9 = j0.t(bVar, new c(andSet, executor));
        q0<T> r9 = j0.r(t9);
        d dVar = new d(t9, r9, atomicReference, R, andSet);
        r9.addListener(dVar, x0.c());
        t9.addListener(dVar, x0.c());
        return r9;
    }
}
