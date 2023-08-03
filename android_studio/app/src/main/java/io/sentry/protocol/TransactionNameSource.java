package io.sentry.protocol;

import java.util.Locale;
import m8.a;

@a.c
/* loaded from: classes4.dex */
public enum TransactionNameSource {
    CUSTOM,
    URL,
    ROUTE,
    VIEW,
    COMPONENT,
    TASK;

    public String apiName() {
        return name().toLowerCase(Locale.ROOT);
    }
}
