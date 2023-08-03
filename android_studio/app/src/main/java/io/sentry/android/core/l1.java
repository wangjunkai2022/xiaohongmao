package io.sentry.android.core;

import android.content.Context;
import android.os.SystemClock;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.fragment.FragmentLifecycleIntegration;
import io.sentry.android.timber.SentryTimberIntegration;
import io.sentry.c3;
import io.sentry.g2;
import io.sentry.j3;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;

/* compiled from: SentryAndroid.java */
/* loaded from: classes4.dex */
public final class l1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private static final j3 f82513a = q.a();

    /* renamed from: b  reason: collision with root package name */
    private static final long f82514b = SystemClock.uptimeMillis();

    /* renamed from: c  reason: collision with root package name */
    static final String f82515c = "io.sentry.android.fragment.FragmentLifecycleIntegration";

    /* renamed from: d  reason: collision with root package name */
    static final String f82516d = "io.sentry.android.timber.SentryTimberIntegration";

    /* renamed from: e  reason: collision with root package name */
    private static final String f82517e = "timber.log.Timber";

    /* renamed from: f  reason: collision with root package name */
    private static final String f82518f = "androidx.fragment.app.FragmentManager$FragmentLifecycleCallbacks";

    private l1() {
    }

    private static void c(@m8.g SentryOptions sentryOptions, boolean z9, boolean z10) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (io.sentry.z0 z0Var : sentryOptions.getIntegrations()) {
            if (z9 && (z0Var instanceof FragmentLifecycleIntegration)) {
                arrayList2.add(z0Var);
            }
            if (z10 && (z0Var instanceof SentryTimberIntegration)) {
                arrayList.add(z0Var);
            }
        }
        if (arrayList2.size() > 1) {
            for (int i4 = 1; i4 < arrayList2.size(); i4++) {
                sentryOptions.getIntegrations().remove((io.sentry.z0) arrayList2.get(i4));
            }
        }
        if (arrayList.size() > 1) {
            for (int i10 = 1; i10 < arrayList.size(); i10++) {
                sentryOptions.getIntegrations().remove((io.sentry.z0) arrayList.get(i10));
            }
        }
    }

    public static void d(@m8.g Context context) {
        e(context, new r());
    }

    public static void e(@m8.g Context context, @m8.g io.sentry.o0 o0Var) {
        f(context, o0Var, k1.f82504a);
    }

    public static synchronized void f(@m8.g final Context context, @m8.g final io.sentry.o0 o0Var, @m8.g final c3.a<SentryAndroidOptions> aVar) {
        synchronized (l1.class) {
            i0.d().k(f82514b, f82513a);
            try {
                try {
                    try {
                        c3.G(g2.a(SentryAndroidOptions.class), new c3.a() { // from class: io.sentry.android.core.j1
                            @Override // io.sentry.c3.a
                            public final void a(SentryOptions sentryOptions) {
                                l1.i(io.sentry.o0.this, context, aVar, (SentryAndroidOptions) sentryOptions);
                            }
                        }, true);
                        io.sentry.n0 B = c3.B();
                        if (B.A().isEnableAutoSessionTracking()) {
                            B.g(io.sentry.android.core.internal.util.c.a("session.start"));
                            B.b0();
                        }
                    } catch (InstantiationException e4) {
                        o0Var.b(SentryLevel.FATAL, "Fatal error during SentryAndroid.init(...)", e4);
                        throw new RuntimeException("Failed to initialize Sentry's SDK", e4);
                    } catch (NoSuchMethodException e10) {
                        o0Var.b(SentryLevel.FATAL, "Fatal error during SentryAndroid.init(...)", e10);
                        throw new RuntimeException("Failed to initialize Sentry's SDK", e10);
                    }
                } catch (IllegalAccessException e11) {
                    o0Var.b(SentryLevel.FATAL, "Fatal error during SentryAndroid.init(...)", e11);
                    throw new RuntimeException("Failed to initialize Sentry's SDK", e11);
                }
            } catch (InvocationTargetException e12) {
                o0Var.b(SentryLevel.FATAL, "Fatal error during SentryAndroid.init(...)", e12);
                throw new RuntimeException("Failed to initialize Sentry's SDK", e12);
            }
        }
    }

    public static void g(@m8.g Context context, @m8.g c3.a<SentryAndroidOptions> aVar) {
        f(context, new r(), aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(SentryAndroidOptions sentryAndroidOptions) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i(io.sentry.o0 o0Var, Context context, c3.a aVar, SentryAndroidOptions sentryAndroidOptions) {
        y0 y0Var = new y0();
        boolean b10 = y0Var.b(f82517e, sentryAndroidOptions);
        boolean z9 = true;
        boolean z10 = y0Var.b(f82518f, sentryAndroidOptions) && y0Var.b(f82515c, sentryAndroidOptions);
        z9 = (b10 && y0Var.b(f82516d, sentryAndroidOptions)) ? false : false;
        m0 m0Var = new m0(o0Var);
        y0 y0Var2 = new y0();
        v.m(sentryAndroidOptions, context, o0Var, m0Var);
        aVar.a(sentryAndroidOptions);
        v.g(sentryAndroidOptions, context, m0Var, y0Var2, z10, z9);
        c(sentryAndroidOptions, z10, z9);
    }
}
