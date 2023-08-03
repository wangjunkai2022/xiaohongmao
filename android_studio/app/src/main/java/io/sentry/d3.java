package io.sentry;

import m8.a;

/* compiled from: SentryAutoDateProvider.java */
@a.c
/* loaded from: classes4.dex */
public final class d3 implements k3 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final k3 f83112a;

    public d3() {
        if (a()) {
            this.f83112a = new l4();
        } else {
            this.f83112a = new o4();
        }
    }

    private static boolean a() {
        return io.sentry.util.n.c() && io.sentry.util.n.b();
    }

    @Override // io.sentry.k3
    @m8.g
    public j3 now() {
        return this.f83112a.now();
    }
}
