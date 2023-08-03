package io.sentry.android.core.internal.util;

import io.sentry.SentryLevel;
import io.sentry.protocol.t;
import m8.a;

/* compiled from: BreadcrumbFactory.java */
@a.c
/* loaded from: classes4.dex */
public class c {
    @m8.g
    public static io.sentry.f a(@m8.g String str) {
        io.sentry.f fVar = new io.sentry.f();
        fVar.y(io.sentry.cache.d.f83059h);
        fVar.v(t.b.f83859d, str);
        fVar.u("app.lifecycle");
        fVar.w(SentryLevel.INFO);
        return fVar;
    }
}
