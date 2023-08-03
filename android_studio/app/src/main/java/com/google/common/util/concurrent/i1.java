package com.google.common.util.concurrent;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.CheckReturnValue;
import java.lang.Thread;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: ThreadFactoryBuilder.java */
@CanIgnoreReturnValue
@h3.c
/* loaded from: classes2.dex */
public final class i1 {

    /* renamed from: a  reason: collision with root package name */
    private String f35227a = null;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f35228b = null;

    /* renamed from: c  reason: collision with root package name */
    private Integer f35229c = null;

    /* renamed from: d  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f35230d = null;

    /* renamed from: e  reason: collision with root package name */
    private ThreadFactory f35231e = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ThreadFactoryBuilder.java */
    /* loaded from: classes2.dex */
    public static class a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ThreadFactory f35232a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f35233b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ AtomicLong f35234c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Boolean f35235d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Integer f35236e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Thread.UncaughtExceptionHandler f35237f;

        a(ThreadFactory threadFactory, String str, AtomicLong atomicLong, Boolean bool, Integer num, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.f35232a = threadFactory;
            this.f35233b = str;
            this.f35234c = atomicLong;
            this.f35235d = bool;
            this.f35236e = num;
            this.f35237f = uncaughtExceptionHandler;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = this.f35232a.newThread(runnable);
            String str = this.f35233b;
            if (str != null) {
                newThread.setName(i1.d(str, Long.valueOf(this.f35234c.getAndIncrement())));
            }
            Boolean bool = this.f35235d;
            if (bool != null) {
                newThread.setDaemon(bool.booleanValue());
            }
            Integer num = this.f35236e;
            if (num != null) {
                newThread.setPriority(num.intValue());
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f35237f;
            if (uncaughtExceptionHandler != null) {
                newThread.setUncaughtExceptionHandler(uncaughtExceptionHandler);
            }
            return newThread;
        }
    }

    private static ThreadFactory c(i1 i1Var) {
        String str = i1Var.f35227a;
        Boolean bool = i1Var.f35228b;
        Integer num = i1Var.f35229c;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = i1Var.f35230d;
        ThreadFactory threadFactory = i1Var.f35231e;
        if (threadFactory == null) {
            threadFactory = Executors.defaultThreadFactory();
        }
        return new a(threadFactory, str, str != null ? new AtomicLong(0L) : null, bool, num, uncaughtExceptionHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(String str, Object... objArr) {
        return String.format(Locale.ROOT, str, objArr);
    }

    @CheckReturnValue
    public ThreadFactory b() {
        return c(this);
    }

    public i1 e(boolean z9) {
        this.f35228b = Boolean.valueOf(z9);
        return this;
    }

    public i1 f(String str) {
        d(str, 0);
        this.f35227a = str;
        return this;
    }

    public i1 g(int i4) {
        com.google.common.base.a0.m(i4 >= 1, "Thread priority (%s) must be >= %s", i4, 1);
        com.google.common.base.a0.m(i4 <= 10, "Thread priority (%s) must be <= %s", i4, 10);
        this.f35229c = Integer.valueOf(i4);
        return this;
    }

    public i1 h(ThreadFactory threadFactory) {
        this.f35231e = (ThreadFactory) com.google.common.base.a0.E(threadFactory);
        return this;
    }

    public i1 i(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f35230d = (Thread.UncaughtExceptionHandler) com.google.common.base.a0.E(uncaughtExceptionHandler);
        return this;
    }
}
