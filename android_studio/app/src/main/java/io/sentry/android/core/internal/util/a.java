package io.sentry.android.core.internal.util;

import android.os.SystemClock;
import m8.a;

/* compiled from: AndroidCurrentDateProvider.java */
@a.c
/* loaded from: classes4.dex */
public final class a implements io.sentry.transport.o {

    /* renamed from: a  reason: collision with root package name */
    private static final io.sentry.transport.o f82461a = new a();

    private a() {
    }

    public static io.sentry.transport.o b() {
        return f82461a;
    }

    @Override // io.sentry.transport.o
    public long a() {
        return SystemClock.uptimeMillis();
    }
}
