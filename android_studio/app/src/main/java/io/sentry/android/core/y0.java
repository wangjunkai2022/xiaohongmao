package io.sentry.android.core;

import io.sentry.SentryLevel;
import io.sentry.SentryOptions;

/* compiled from: LoadClass.java */
/* loaded from: classes4.dex */
public final class y0 {
    public boolean a(@m8.g String str, @m8.h io.sentry.o0 o0Var) {
        return c(str, o0Var) != null;
    }

    public boolean b(@m8.g String str, @m8.h SentryOptions sentryOptions) {
        return a(str, sentryOptions != null ? sentryOptions.getLogger() : null);
    }

    @m8.h
    public Class<?> c(@m8.g String str, @m8.h io.sentry.o0 o0Var) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e4) {
            if (o0Var != null) {
                SentryLevel sentryLevel = SentryLevel.DEBUG;
                o0Var.b(sentryLevel, "Class not available:" + str, e4);
                return null;
            }
            return null;
        } catch (UnsatisfiedLinkError e10) {
            if (o0Var != null) {
                SentryLevel sentryLevel2 = SentryLevel.ERROR;
                o0Var.b(sentryLevel2, "Failed to load (UnsatisfiedLinkError) " + str, e10);
                return null;
            }
            return null;
        } catch (Throwable th) {
            if (o0Var != null) {
                SentryLevel sentryLevel3 = SentryLevel.ERROR;
                o0Var.b(sentryLevel3, "Failed to initialize " + str, th);
                return null;
            }
            return null;
        }
    }
}
