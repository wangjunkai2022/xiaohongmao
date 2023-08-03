package com.facebook.imagepipeline.request;

import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: BaseRepeatedPostProcessor.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public abstract class b extends a implements e {
    @h

    /* renamed from: c  reason: collision with root package name */
    private f f13369c;

    @h
    private synchronized f g() {
        return this.f13369c;
    }

    @Override // com.facebook.imagepipeline.request.e
    public synchronized void b(f runner) {
        this.f13369c = runner;
    }

    public void h() {
        f g4 = g();
        if (g4 != null) {
            g4.e();
        }
    }
}
