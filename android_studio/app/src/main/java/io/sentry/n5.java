package io.sentry;

import java.security.SecureRandom;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TracesSampler.java */
/* loaded from: classes4.dex */
public final class n5 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final SentryOptions f83499a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final SecureRandom f83500b;

    public n5(@m8.g SentryOptions sentryOptions) {
        this((SentryOptions) io.sentry.util.l.c(sentryOptions, "options are required"), new SecureRandom());
    }

    private boolean b(@m8.g Double d4) {
        return d4.doubleValue() >= this.f83500b.nextDouble();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0081 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x004d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public io.sentry.o5 a(@m8.g io.sentry.q2 r8) {
        /*
            r7 = this;
            io.sentry.p5 r0 = r8.b()
            io.sentry.o5 r0 = r0.f()
            if (r0 == 0) goto Lb
            return r0
        Lb:
            io.sentry.SentryOptions r0 = r7.f83499a
            io.sentry.SentryOptions$d r0 = r0.getProfilesSampler()
            r1 = 0
            if (r0 == 0) goto L2d
            io.sentry.SentryOptions r0 = r7.f83499a     // Catch: java.lang.Throwable -> L1f
            io.sentry.SentryOptions$d r0 = r0.getProfilesSampler()     // Catch: java.lang.Throwable -> L1f
            java.lang.Double r0 = r0.a(r8)     // Catch: java.lang.Throwable -> L1f
            goto L2e
        L1f:
            r0 = move-exception
            io.sentry.SentryOptions r2 = r7.f83499a
            io.sentry.o0 r2 = r2.getLogger()
            io.sentry.SentryLevel r3 = io.sentry.SentryLevel.ERROR
            java.lang.String r4 = "Error in the 'ProfilesSamplerCallback' callback."
            r2.b(r3, r4, r0)
        L2d:
            r0 = r1
        L2e:
            if (r0 != 0) goto L36
            io.sentry.SentryOptions r0 = r7.f83499a
            java.lang.Double r0 = r0.getProfilesSampleRate()
        L36:
            if (r0 == 0) goto L40
            boolean r2 = r7.b(r0)
            if (r2 == 0) goto L40
            r2 = 1
            goto L41
        L40:
            r2 = 0
        L41:
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
            io.sentry.SentryOptions r3 = r7.f83499a
            io.sentry.SentryOptions$f r3 = r3.getTracesSampler()
            if (r3 == 0) goto L77
            io.sentry.SentryOptions r3 = r7.f83499a     // Catch: java.lang.Throwable -> L58
            io.sentry.SentryOptions$f r3 = r3.getTracesSampler()     // Catch: java.lang.Throwable -> L58
            java.lang.Double r3 = r3.a(r8)     // Catch: java.lang.Throwable -> L58
            goto L67
        L58:
            r3 = move-exception
            io.sentry.SentryOptions r4 = r7.f83499a
            io.sentry.o0 r4 = r4.getLogger()
            io.sentry.SentryLevel r5 = io.sentry.SentryLevel.ERROR
            java.lang.String r6 = "Error in the 'TracesSamplerCallback' callback."
            r4.b(r5, r6, r3)
            r3 = r1
        L67:
            if (r3 == 0) goto L77
            io.sentry.o5 r8 = new io.sentry.o5
            boolean r1 = r7.b(r3)
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            r8.<init>(r1, r3, r2, r0)
            return r8
        L77:
            io.sentry.p5 r8 = r8.b()
            io.sentry.o5 r8 = r8.y()
            if (r8 == 0) goto L82
            return r8
        L82:
            io.sentry.SentryOptions r8 = r7.f83499a
            java.lang.Double r8 = r8.getTracesSampleRate()
            if (r8 == 0) goto L98
            io.sentry.o5 r1 = new io.sentry.o5
            boolean r3 = r7.b(r8)
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r3)
            r1.<init>(r3, r8, r2, r0)
            return r1
        L98:
            io.sentry.o5 r8 = new io.sentry.o5
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            r8.<init>(r0, r1, r0, r1)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.n5.a(io.sentry.q2):io.sentry.o5");
    }

    @m8.k
    n5(@m8.g SentryOptions sentryOptions, @m8.g SecureRandom secureRandom) {
        this.f83499a = sentryOptions;
        this.f83500b = secureRandom;
    }
}
