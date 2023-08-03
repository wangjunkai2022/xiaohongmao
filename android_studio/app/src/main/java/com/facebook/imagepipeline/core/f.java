package com.facebook.imagepipeline.core;

import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: ExecutorSupplier.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public interface f {
    Executor a();

    Executor b();

    @r7.h
    ScheduledExecutorService c();

    Executor d();

    Executor e();

    Executor f();

    Executor g();
}
