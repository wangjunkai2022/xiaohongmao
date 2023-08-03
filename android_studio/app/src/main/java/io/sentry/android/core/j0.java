package io.sentry.android.core;

import m8.a;

/* compiled from: AppState.java */
@a.c
/* loaded from: classes4.dex */
public final class j0 {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static j0 f82495b = new j0();
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private Boolean f82496a = null;

    private j0() {
    }

    @m8.g
    public static j0 a() {
        return f82495b;
    }

    @m8.h
    public Boolean b() {
        return this.f82496a;
    }

    @m8.k
    void c() {
        f82495b = new j0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void d(boolean z9) {
        this.f82496a = Boolean.valueOf(z9);
    }
}
