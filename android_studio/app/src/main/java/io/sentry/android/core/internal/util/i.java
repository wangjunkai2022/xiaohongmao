package io.sentry.android.core.internal.util;

import android.content.Context;
import android.os.Process;
import m8.a;

/* compiled from: Permissions.java */
@a.c
/* loaded from: classes4.dex */
public final class i {
    private i() {
    }

    public static boolean a(@m8.g Context context, @m8.g String str) {
        io.sentry.util.l.c(context, "The application context is required.");
        return context.checkPermission(str, Process.myPid(), Process.myUid()) == 0;
    }
}
