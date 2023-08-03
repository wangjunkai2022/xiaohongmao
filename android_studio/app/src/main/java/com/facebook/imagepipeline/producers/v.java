package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.Executor;

/* compiled from: ExperimentalThreadHandoffProducerQueueImpl.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class v implements d1 {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f13256a;

    public v(Executor executor) {
        this.f13256a = (Executor) com.facebook.common.internal.j.i(executor);
    }

    @Override // com.facebook.imagepipeline.producers.d1
    public void a() {
        throw new UnsupportedOperationException();
    }

    @Override // com.facebook.imagepipeline.producers.d1
    public void b(Runnable runnable) {
    }

    @Override // com.facebook.imagepipeline.producers.d1
    public void c(Runnable runnable) {
        this.f13256a.execute(runnable);
    }

    @Override // com.facebook.imagepipeline.producers.d1
    public void d() {
        throw new UnsupportedOperationException();
    }

    @Override // com.facebook.imagepipeline.producers.d1
    public boolean e() {
        return false;
    }
}
