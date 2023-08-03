package io.sentry.android.core;

import io.sentry.MeasurementUnit;
import io.sentry.f5;
import io.sentry.h4;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PerformanceAndroidEventProcessor.java */
/* loaded from: classes4.dex */
public final class d1 implements io.sentry.z {

    /* renamed from: a  reason: collision with root package name */
    private boolean f82192a = false;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g f82193b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final SentryAndroidOptions f82194c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d1(@m8.g SentryAndroidOptions sentryAndroidOptions, @m8.g g gVar) {
        this.f82194c = (SentryAndroidOptions) io.sentry.util.l.c(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.f82193b = (g) io.sentry.util.l.c(gVar, "ActivityFramesTracker is required");
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x000a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean c(@m8.g java.util.List<io.sentry.protocol.q> r4) {
        /*
            r3 = this;
            java.util.Iterator r4 = r4.iterator()
        L4:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L2a
            java.lang.Object r0 = r4.next()
            io.sentry.protocol.q r0 = (io.sentry.protocol.q) r0
            java.lang.String r1 = r0.d()
            java.lang.String r2 = "app.start.cold"
            boolean r1 = r1.contentEquals(r2)
            if (r1 != 0) goto L28
            java.lang.String r0 = r0.d()
            java.lang.String r1 = "app.start.warm"
            boolean r0 = r0.contentEquals(r1)
            if (r0 == 0) goto L4
        L28:
            r4 = 1
            return r4
        L2a:
            r4 = 0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.core.d1.c(java.util.List):boolean");
    }

    @Override // io.sentry.z
    @m8.h
    public h4 a(@m8.g h4 h4Var, @m8.g io.sentry.b0 b0Var) {
        return h4Var;
    }

    @Override // io.sentry.z
    @m8.g
    public synchronized io.sentry.protocol.u b(@m8.g io.sentry.protocol.u uVar, @m8.g io.sentry.b0 b0Var) {
        Map<String, io.sentry.protocol.e> q9;
        Long a10;
        if (this.f82194c.isTracingEnabled()) {
            if (!this.f82192a && c(uVar.w0()) && (a10 = i0.d().a()) != null) {
                uVar.u0().put(i0.d().e().booleanValue() ? "app_start_cold" : "app_start_warm", new io.sentry.protocol.e(Float.valueOf((float) a10.longValue()), MeasurementUnit.Duration.MILLISECOND.a()));
                this.f82192a = true;
            }
            io.sentry.protocol.n I = uVar.I();
            f5 trace = uVar.E().getTrace();
            if (I != null && trace != null && trace.b().contentEquals(io.sentry.android.fragment.d.f82777f) && (q9 = this.f82193b.q(I)) != null) {
                uVar.u0().putAll(q9);
            }
            return uVar;
        }
        return uVar;
    }
}
