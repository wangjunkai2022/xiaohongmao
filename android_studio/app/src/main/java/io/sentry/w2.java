package io.sentry;

import io.sentry.u2;
import java.io.File;

/* compiled from: SendCachedEnvelopeFireAndForgetIntegration.java */
/* loaded from: classes4.dex */
public final /* synthetic */ class w2 {
    public static boolean a(u2.c cVar, @m8.h String str, @m8.g o0 o0Var) {
        if (str == null) {
            o0Var.c(SentryLevel.INFO, "No cached dir path is defined in options.", new Object[0]);
            return false;
        }
        return true;
    }

    @m8.g
    public static u2.a b(u2.c cVar, @m8.g final p pVar, @m8.g final String str, @m8.g final o0 o0Var) {
        final File file = new File(str);
        return new u2.a() { // from class: io.sentry.v2
            @Override // io.sentry.u2.a
            public final void a() {
                w2.c(o0.this, str, pVar, file);
            }
        };
    }

    public static /* synthetic */ void c(o0 o0Var, String str, p pVar, File file) {
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        o0Var.c(sentryLevel, "Started processing cached files from %s", str);
        pVar.e(file);
        o0Var.c(sentryLevel, "Finished processing cached files from %s", str);
    }
}
