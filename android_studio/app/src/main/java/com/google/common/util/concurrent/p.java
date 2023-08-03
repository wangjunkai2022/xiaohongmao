package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Callables.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class p {

    /* compiled from: Callables.java */
    /* loaded from: classes2.dex */
    static class a implements Callable<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f35306a;

        a(Object obj) {
            this.f35306a = obj;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [T, java.lang.Object] */
        @Override // java.util.concurrent.Callable
        public T call() {
            return this.f35306a;
        }
    }

    /* compiled from: Callables.java */
    /* loaded from: classes2.dex */
    static class b implements m<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ u0 f35307a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Callable f35308b;

        b(u0 u0Var, Callable callable) {
            this.f35307a = u0Var;
            this.f35308b = callable;
        }

        @Override // com.google.common.util.concurrent.m
        public q0<T> call() throws Exception {
            return this.f35307a.submit(this.f35308b);
        }
    }

    /* compiled from: Callables.java */
    /* loaded from: classes2.dex */
    static class c implements Callable<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.google.common.base.i0 f35309a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Callable f35310b;

        c(com.google.common.base.i0 i0Var, Callable callable) {
            this.f35309a = i0Var;
            this.f35310b = callable;
        }

        /* JADX WARN: Type inference failed for: r3v2, types: [T, java.lang.Object] */
        @Override // java.util.concurrent.Callable
        public T call() throws Exception {
            Thread currentThread = Thread.currentThread();
            String name = currentThread.getName();
            boolean f10 = p.f((String) this.f35309a.get(), currentThread);
            try {
                return this.f35310b.call();
            } finally {
                if (f10) {
                    p.f(name, currentThread);
                }
            }
        }
    }

    /* compiled from: Callables.java */
    /* loaded from: classes2.dex */
    static class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.google.common.base.i0 f35311a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Runnable f35312b;

        d(com.google.common.base.i0 i0Var, Runnable runnable) {
            this.f35311a = i0Var;
            this.f35312b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            Thread currentThread = Thread.currentThread();
            String name = currentThread.getName();
            boolean f10 = p.f((String) this.f35311a.get(), currentThread);
            try {
                this.f35312b.run();
            } finally {
                if (f10) {
                    p.f(name, currentThread);
                }
            }
        }
    }

    private p() {
    }

    @h3.c
    @h3.a
    public static <T> m<T> b(Callable<T> callable, u0 u0Var) {
        com.google.common.base.a0.E(callable);
        com.google.common.base.a0.E(u0Var);
        return new b(u0Var, callable);
    }

    public static <T> Callable<T> c(@NullableDecl T t9) {
        return new a(t9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @h3.c
    public static Runnable d(Runnable runnable, com.google.common.base.i0<String> i0Var) {
        com.google.common.base.a0.E(i0Var);
        com.google.common.base.a0.E(runnable);
        return new d(i0Var, runnable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @h3.c
    public static <T> Callable<T> e(Callable<T> callable, com.google.common.base.i0<String> i0Var) {
        com.google.common.base.a0.E(i0Var);
        com.google.common.base.a0.E(callable);
        return new c(i0Var, callable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @h3.c
    public static boolean f(String str, Thread thread) {
        try {
            thread.setName(str);
            return true;
        } catch (SecurityException unused) {
            return false;
        }
    }
}
