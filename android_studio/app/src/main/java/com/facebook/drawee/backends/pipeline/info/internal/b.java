package com.facebook.drawee.backends.pipeline.info.internal;

import android.graphics.drawable.Animatable;
import androidx.annotation.VisibleForTesting;
import com.facebook.imagepipeline.image.g;
import com.facebook.infer.annotation.Nullsafe;
import i1.h;
import x0.j;
import x0.l;

/* compiled from: ImagePerfControllerListener.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class b extends com.facebook.drawee.controller.b<g> implements h<g> {

    /* renamed from: b  reason: collision with root package name */
    private final s0.c f11305b;

    /* renamed from: c  reason: collision with root package name */
    private final l f11306c;

    /* renamed from: d  reason: collision with root package name */
    private final j f11307d;

    public b(s0.c clock, l imagePerfState, j imagePerfMonitor) {
        this.f11305b = clock;
        this.f11306c = imagePerfState;
        this.f11307d = imagePerfMonitor;
    }

    @VisibleForTesting
    private void k(long time) {
        this.f11306c.G(false);
        this.f11306c.z(time);
        this.f11307d.a(this.f11306c, 2);
    }

    @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
    public void b(String id, Throwable throwable) {
        long now = this.f11305b.now();
        this.f11306c.j(now);
        this.f11306c.l(id);
        this.f11306c.q(throwable);
        this.f11307d.b(this.f11306c, 5);
        k(now);
    }

    @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
    public void c(String id) {
        super.c(id);
        long now = this.f11305b.now();
        int d4 = this.f11306c.d();
        if (d4 != 3 && d4 != 5 && d4 != 6) {
            this.f11306c.i(now);
            this.f11306c.l(id);
            this.f11307d.b(this.f11306c, 4);
        }
        k(now);
    }

    @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
    public void e(String id, Object callerContext) {
        long now = this.f11305b.now();
        this.f11306c.f();
        this.f11306c.o(now);
        this.f11306c.l(id);
        this.f11306c.g(callerContext);
        this.f11307d.b(this.f11306c, 0);
        l(now);
    }

    @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
    /* renamed from: h */
    public void d(String id, @r7.h g imageInfo, @r7.h Animatable animatable) {
        long now = this.f11305b.now();
        this.f11306c.k(now);
        this.f11306c.x(now);
        this.f11306c.l(id);
        this.f11306c.t(imageInfo);
        this.f11307d.b(this.f11306c, 3);
    }

    @Override // i1.h
    /* renamed from: i */
    public void p(String id, g info, i1.d dimensionsInfo) {
        this.f11306c.s(this.f11305b.now());
        this.f11306c.p(dimensionsInfo);
        this.f11307d.b(this.f11306c, 6);
    }

    @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
    /* renamed from: j */
    public void a(String id, @r7.h g imageInfo) {
        this.f11306c.n(this.f11305b.now());
        this.f11306c.l(id);
        this.f11306c.t(imageInfo);
        this.f11307d.b(this.f11306c, 2);
    }

    @VisibleForTesting
    public void l(long now) {
        this.f11306c.G(true);
        this.f11306c.F(now);
        this.f11307d.a(this.f11306c, 1);
    }
}
