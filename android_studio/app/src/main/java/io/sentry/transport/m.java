package io.sentry.transport;

import m8.a;

/* compiled from: CurrentDateProvider.java */
@a.c
/* loaded from: classes4.dex */
public final class m implements o {

    /* renamed from: a  reason: collision with root package name */
    private static final o f84036a = new m();

    private m() {
    }

    public static o b() {
        return f84036a;
    }

    @Override // io.sentry.transport.o
    public final long a() {
        return System.currentTimeMillis();
    }
}
