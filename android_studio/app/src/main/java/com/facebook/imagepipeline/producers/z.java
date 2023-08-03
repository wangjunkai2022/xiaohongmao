package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: InternalRequestListener.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class z extends y implements q1.e {
    @r7.h

    /* renamed from: c  reason: collision with root package name */
    private final q1.f f13314c;
    @r7.h

    /* renamed from: d  reason: collision with root package name */
    private final q1.e f13315d;

    public z(@r7.h q1.f requestListener, @r7.h q1.e requestListener2) {
        super(requestListener, requestListener2);
        this.f13314c = requestListener;
        this.f13315d = requestListener2;
    }

    @Override // q1.e
    public void a(s0 producerContext) {
        q1.f fVar = this.f13314c;
        if (fVar != null) {
            fVar.a(producerContext.c(), producerContext.d(), producerContext.getId(), producerContext.q());
        }
        q1.e eVar = this.f13315d;
        if (eVar != null) {
            eVar.a(producerContext);
        }
    }

    @Override // q1.e
    public void e(s0 producerContext) {
        q1.f fVar = this.f13314c;
        if (fVar != null) {
            fVar.c(producerContext.c(), producerContext.getId(), producerContext.q());
        }
        q1.e eVar = this.f13315d;
        if (eVar != null) {
            eVar.e(producerContext);
        }
    }

    @Override // q1.e
    public void g(s0 producerContext) {
        q1.f fVar = this.f13314c;
        if (fVar != null) {
            fVar.k(producerContext.getId());
        }
        q1.e eVar = this.f13315d;
        if (eVar != null) {
            eVar.g(producerContext);
        }
    }

    @Override // q1.e
    public void i(s0 producerContext, Throwable throwable) {
        q1.f fVar = this.f13314c;
        if (fVar != null) {
            fVar.i(producerContext.c(), producerContext.getId(), throwable, producerContext.q());
        }
        q1.e eVar = this.f13315d;
        if (eVar != null) {
            eVar.i(producerContext, throwable);
        }
    }
}
