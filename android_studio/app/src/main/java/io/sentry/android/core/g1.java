package io.sentry.android.core;

import android.app.Activity;
import io.sentry.SentryLevel;
import io.sentry.h4;
import io.sentry.t5;
import m8.a;

/* compiled from: ScreenshotEventProcessor.java */
@a.c
/* loaded from: classes4.dex */
public final class g1 implements io.sentry.z {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final SentryAndroidOptions f82412a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final m0 f82413b;

    public g1(@m8.g SentryAndroidOptions sentryAndroidOptions, @m8.g m0 m0Var) {
        this.f82412a = (SentryAndroidOptions) io.sentry.util.l.c(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.f82413b = (m0) io.sentry.util.l.c(m0Var, "BuildInfoProvider is required");
    }

    @Override // io.sentry.z
    @m8.g
    public h4 a(@m8.g h4 h4Var, @m8.g io.sentry.b0 b0Var) {
        byte[] b10;
        if (h4Var.H0()) {
            if (!this.f82412a.isAttachScreenshot()) {
                this.f82412a.getLogger().c(SentryLevel.DEBUG, "attachScreenshot is disabled.", new Object[0]);
                return h4Var;
            }
            Activity b11 = o0.c().b();
            if (b11 == null || io.sentry.util.h.h(b0Var) || (b10 = io.sentry.android.core.internal.util.k.b(b11, this.f82412a.getLogger(), this.f82413b)) == null) {
                return h4Var;
            }
            b0Var.n(io.sentry.b.a(b10));
            b0Var.m(t5.f83984g, b11);
            return h4Var;
        }
        return h4Var;
    }

    @Override // io.sentry.z
    public /* synthetic */ io.sentry.protocol.u b(io.sentry.protocol.u uVar, io.sentry.b0 b0Var) {
        return io.sentry.y.b(this, uVar, b0Var);
    }
}
