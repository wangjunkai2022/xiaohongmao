package io.sentry.android.core;

import android.os.Debug;
import io.sentry.k2;
import m8.a;

/* compiled from: AndroidMemoryCollector.java */
@a.c
/* loaded from: classes4.dex */
public class s implements io.sentry.j0 {
    @Override // io.sentry.j0
    public void a() {
    }

    @Override // io.sentry.j0
    public void b(@m8.g Iterable<k2> iterable) {
        io.sentry.r1 r1Var = new io.sentry.r1(System.currentTimeMillis(), Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory(), Debug.getNativeHeapSize() - Debug.getNativeHeapFreeSize());
        for (k2 k2Var : iterable) {
            k2Var.b(r1Var);
        }
    }
}
