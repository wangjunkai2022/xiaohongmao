package com.facebook.imagepipeline.core;

import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: DefaultExecutorSupplier.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class b implements f {

    /* renamed from: f  reason: collision with root package name */
    private static final int f12217f = 2;

    /* renamed from: g  reason: collision with root package name */
    private static final int f12218g = 1;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f12220b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f12221c;

    /* renamed from: e  reason: collision with root package name */
    private final ScheduledExecutorService f12223e;

    /* renamed from: a  reason: collision with root package name */
    private final Executor f12219a = Executors.newFixedThreadPool(2, new p(10, "FrescoIoBoundExecutor", true));

    /* renamed from: d  reason: collision with root package name */
    private final Executor f12222d = Executors.newFixedThreadPool(1, new p(10, "FrescoLightWeightBackgroundExecutor", true));

    public b(int numCpuBoundThreads) {
        this.f12220b = Executors.newFixedThreadPool(numCpuBoundThreads, new p(10, "FrescoDecodeExecutor", true));
        this.f12221c = Executors.newFixedThreadPool(numCpuBoundThreads, new p(10, "FrescoBackgroundExecutor", true));
        this.f12223e = Executors.newScheduledThreadPool(numCpuBoundThreads, new p(10, "FrescoBackgroundExecutor", true));
    }

    @Override // com.facebook.imagepipeline.core.f
    public Executor a() {
        return this.f12222d;
    }

    @Override // com.facebook.imagepipeline.core.f
    public Executor b() {
        return this.f12219a;
    }

    @Override // com.facebook.imagepipeline.core.f
    public ScheduledExecutorService c() {
        return this.f12223e;
    }

    @Override // com.facebook.imagepipeline.core.f
    public Executor d() {
        return this.f12220b;
    }

    @Override // com.facebook.imagepipeline.core.f
    public Executor e() {
        return this.f12221c;
    }

    @Override // com.facebook.imagepipeline.core.f
    public Executor f() {
        return this.f12219a;
    }

    @Override // com.facebook.imagepipeline.core.f
    public Executor g() {
        return this.f12219a;
    }
}
