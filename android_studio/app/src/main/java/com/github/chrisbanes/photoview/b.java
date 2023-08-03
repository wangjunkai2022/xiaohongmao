package com.github.chrisbanes.photoview;

import android.annotation.TargetApi;
import android.view.View;

/* compiled from: Compat.java */
/* loaded from: classes2.dex */
class b {

    /* renamed from: a  reason: collision with root package name */
    private static final int f19240a = 16;

    b() {
    }

    public static void a(View view, Runnable runnable) {
        b(view, runnable);
    }

    @TargetApi(16)
    private static void b(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }
}
