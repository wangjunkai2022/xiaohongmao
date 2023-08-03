package io.sentry;

import java.io.IOException;
import java.util.Locale;

/* loaded from: classes4.dex */
public enum SentryLevel implements m1 {
    DEBUG,
    INFO,
    WARNING,
    ERROR,
    FATAL;

    /* loaded from: classes4.dex */
    static final class a implements c1<SentryLevel> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public SentryLevel a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            return SentryLevel.valueOf(i1Var.M().toUpperCase(Locale.ROOT));
        }
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.l0(name().toLowerCase(Locale.ROOT));
    }
}
