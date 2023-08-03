package io.sentry.util.thread;

import io.sentry.protocol.t;
import m8.g;

/* compiled from: IMainThreadChecker.java */
/* loaded from: classes4.dex */
public final /* synthetic */ class a {
    public static boolean a(b bVar) {
        return bVar.d(Thread.currentThread());
    }

    public static boolean b(b bVar, @g t tVar) {
        Long i4 = tVar.i();
        return i4 != null && bVar.b(i4.longValue());
    }

    public static boolean c(b bVar, Thread thread) {
        return bVar.b(thread.getId());
    }
}
