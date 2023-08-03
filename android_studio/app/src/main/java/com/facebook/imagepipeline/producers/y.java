package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;

/* compiled from: InternalProducerListener.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class y implements u0 {
    @r7.h

    /* renamed from: a  reason: collision with root package name */
    private final v0 f13289a;
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    private final u0 f13290b;

    public y(@r7.h v0 producerListener, @r7.h u0 producerListener2) {
        this.f13289a = producerListener;
        this.f13290b = producerListener2;
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public void b(s0 context, String producerName, boolean successful) {
        v0 v0Var = this.f13289a;
        if (v0Var != null) {
            v0Var.h(context.getId(), producerName, successful);
        }
        u0 u0Var = this.f13290b;
        if (u0Var != null) {
            u0Var.b(context, producerName, successful);
        }
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public void c(s0 context, String producerName, @r7.h Map<String, String> extraMap) {
        v0 v0Var = this.f13289a;
        if (v0Var != null) {
            v0Var.g(context.getId(), producerName, extraMap);
        }
        u0 u0Var = this.f13290b;
        if (u0Var != null) {
            u0Var.c(context, producerName, extraMap);
        }
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public void d(s0 context, String producerName) {
        v0 v0Var = this.f13289a;
        if (v0Var != null) {
            v0Var.b(context.getId(), producerName);
        }
        u0 u0Var = this.f13290b;
        if (u0Var != null) {
            u0Var.d(context, producerName);
        }
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public boolean f(s0 context, String producerName) {
        u0 u0Var;
        v0 v0Var = this.f13289a;
        boolean d4 = v0Var != null ? v0Var.d(context.getId()) : false;
        return (d4 || (u0Var = this.f13290b) == null) ? d4 : u0Var.f(context, producerName);
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public void h(s0 context, String producerName, String eventName) {
        v0 v0Var = this.f13289a;
        if (v0Var != null) {
            v0Var.j(context.getId(), producerName, eventName);
        }
        u0 u0Var = this.f13290b;
        if (u0Var != null) {
            u0Var.h(context, producerName, eventName);
        }
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public void j(s0 context, String producerName, @r7.h Map<String, String> extraMap) {
        v0 v0Var = this.f13289a;
        if (v0Var != null) {
            v0Var.e(context.getId(), producerName, extraMap);
        }
        u0 u0Var = this.f13290b;
        if (u0Var != null) {
            u0Var.j(context, producerName, extraMap);
        }
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public void k(s0 context, String producerName, Throwable t9, @r7.h Map<String, String> extraMap) {
        v0 v0Var = this.f13289a;
        if (v0Var != null) {
            v0Var.f(context.getId(), producerName, t9, extraMap);
        }
        u0 u0Var = this.f13290b;
        if (u0Var != null) {
            u0Var.k(context, producerName, t9, extraMap);
        }
    }

    @r7.h
    public v0 l() {
        return this.f13289a;
    }

    @r7.h
    public u0 m() {
        return this.f13290b;
    }
}
