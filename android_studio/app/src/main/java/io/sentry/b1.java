package io.sentry;

import m8.a;

/* compiled from: JavaMemoryCollector.java */
@a.c
/* loaded from: classes4.dex */
public final class b1 implements j0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Runtime f83036a = Runtime.getRuntime();

    @Override // io.sentry.j0
    public void a() {
    }

    @Override // io.sentry.j0
    public void b(@m8.g Iterable<k2> iterable) {
        r1 r1Var = new r1(System.currentTimeMillis(), this.f83036a.totalMemory() - this.f83036a.freeMemory());
        for (k2 k2Var : iterable) {
            k2Var.b(r1Var);
        }
    }
}
