package com.google.android.datatransport.runtime;

import java.util.concurrent.Executor;

/* compiled from: ExecutionModule_ExecutorFactory.java */
/* loaded from: classes2.dex */
public final class k implements com.google.android.datatransport.runtime.dagger.internal.g<Executor> {

    /* compiled from: ExecutionModule_ExecutorFactory.java */
    /* loaded from: classes2.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final k f20455a = new k();

        private a() {
        }
    }

    public static k a() {
        return a.f20455a;
    }

    public static Executor b() {
        return (Executor) com.google.android.datatransport.runtime.dagger.internal.p.c(j.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // u7.c
    /* renamed from: c */
    public Executor get() {
        return b();
    }
}
