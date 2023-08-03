package io.sentry;

import java.util.Locale;
import m8.a;

/* compiled from: DsnUtil.java */
@a.c
/* loaded from: classes4.dex */
public final class r {
    public static boolean a(@m8.h SentryOptions sentryOptions, @m8.h String str) {
        String dsn;
        String host;
        if (sentryOptions == null || str == null || (dsn = sentryOptions.getDsn()) == null || (host = new q(dsn).e().getHost()) == null) {
            return false;
        }
        Locale locale = Locale.ROOT;
        return str.toLowerCase(locale).contains(host.toLowerCase(locale));
    }
}
