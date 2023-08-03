package io.sentry.util;

import io.sentry.SentryLevel;
import io.sentry.o0;
import m8.a;

/* compiled from: LogUtils.java */
@a.c
/* loaded from: classes4.dex */
public final class k {
    public static void a(@m8.g Class<?> cls, @m8.h Object obj, @m8.g o0 o0Var) {
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        Object[] objArr = new Object[2];
        objArr[0] = obj != null ? obj.getClass().getCanonicalName() : "Hint";
        objArr[1] = cls.getCanonicalName();
        o0Var.c(sentryLevel, "%s is not %s", objArr);
    }
}
