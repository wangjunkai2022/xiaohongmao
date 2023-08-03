package com.google.common.util.concurrent;

import com.google.errorprone.annotations.concurrent.GuardedBy;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ExecutionList.java */
@h3.c
/* loaded from: classes2.dex */
public final class u {

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f35343c = Logger.getLogger(u.class.getName());
    @NullableDecl
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private a f35344a;
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    private boolean f35345b;

    /* compiled from: ExecutionList.java */
    /* loaded from: classes2.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Runnable f35346a;

        /* renamed from: b  reason: collision with root package name */
        final Executor f35347b;
        @NullableDecl

        /* renamed from: c  reason: collision with root package name */
        a f35348c;

        a(Runnable runnable, Executor executor, a aVar) {
            this.f35346a = runnable;
            this.f35347b = executor;
            this.f35348c = aVar;
        }
    }

    private static void c(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e4) {
            Logger logger = f35343c;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e4);
        }
    }

    public void a(Runnable runnable, Executor executor) {
        com.google.common.base.a0.F(runnable, "Runnable was null.");
        com.google.common.base.a0.F(executor, "Executor was null.");
        synchronized (this) {
            if (!this.f35345b) {
                this.f35344a = new a(runnable, executor, this.f35344a);
            } else {
                c(runnable, executor);
            }
        }
    }

    public void b() {
        synchronized (this) {
            if (this.f35345b) {
                return;
            }
            this.f35345b = true;
            a aVar = this.f35344a;
            a aVar2 = null;
            this.f35344a = null;
            while (aVar != null) {
                a aVar3 = aVar.f35348c;
                aVar.f35348c = aVar2;
                aVar2 = aVar;
                aVar = aVar3;
            }
            while (aVar2 != null) {
                c(aVar2.f35346a, aVar2.f35347b);
                aVar2 = aVar2.f35348c;
            }
        }
    }
}
