package com.facebook.drawee.backends.pipeline.info.internal;

import com.facebook.infer.annotation.Nullsafe;
import r7.h;
import x0.e;
import x0.j;
import x0.l;

/* compiled from: ImagePerfImageOriginListener.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class c implements e {

    /* renamed from: a  reason: collision with root package name */
    private final l f11308a;

    /* renamed from: b  reason: collision with root package name */
    private final j f11309b;

    public c(l imagePerfState, j imagePerfMonitor) {
        this.f11308a = imagePerfState;
        this.f11309b = imagePerfMonitor;
    }

    @Override // x0.e
    public void a(String controllerId, int imageOrigin, boolean successful, @h String ultimateProducerName) {
        this.f11308a.v(imageOrigin);
        this.f11308a.E(ultimateProducerName);
        this.f11309b.b(this.f11308a, 1);
    }
}
