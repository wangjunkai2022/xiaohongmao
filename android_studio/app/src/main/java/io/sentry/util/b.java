package io.sentry.util;

import m8.a;

/* compiled from: ExceptionUtils.java */
@a.c
/* loaded from: classes4.dex */
public final class b {
    @m8.g
    public static Throwable a(@m8.g Throwable th) {
        l.c(th, "throwable cannot be null");
        while (th.getCause() != null && th.getCause() != th) {
            th = th.getCause();
        }
        return th;
    }
}
