package io.sentry.android.core;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import io.sentry.SentryLevel;
import io.sentry.h4;
import java.util.ArrayList;
import m8.a;

/* compiled from: ViewHierarchyEventProcessor.java */
@a.c
/* loaded from: classes4.dex */
public final class s1 implements io.sentry.z {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final SentryAndroidOptions f82590a;

    public s1(@m8.g SentryAndroidOptions sentryAndroidOptions) {
        this.f82590a = (SentryAndroidOptions) io.sentry.util.l.c(sentryAndroidOptions, "SentryAndroidOptions is required");
    }

    private static void c(@m8.g View view, @m8.g io.sentry.protocol.y yVar) {
        ViewGroup viewGroup;
        int childCount;
        if ((view instanceof ViewGroup) && (childCount = (viewGroup = (ViewGroup) view).getChildCount()) != 0) {
            ArrayList arrayList = new ArrayList(childCount);
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = viewGroup.getChildAt(i4);
                if (childAt != null) {
                    io.sentry.protocol.y f10 = f(childAt);
                    arrayList.add(f10);
                    c(childAt, f10);
                }
            }
            yVar.x(arrayList);
        }
    }

    @m8.h
    public static io.sentry.protocol.x d(@m8.h Activity activity, @m8.g io.sentry.o0 o0Var) {
        if (activity == null) {
            o0Var.c(SentryLevel.INFO, "Missing activity for view hierarchy snapshot.", new Object[0]);
            return null;
        }
        Window window = activity.getWindow();
        if (window == null) {
            o0Var.c(SentryLevel.INFO, "Missing window for view hierarchy snapshot.", new Object[0]);
            return null;
        }
        View peekDecorView = window.peekDecorView();
        if (peekDecorView == null) {
            o0Var.c(SentryLevel.INFO, "Missing decor view for view hierarchy snapshot.", new Object[0]);
            return null;
        }
        try {
            return e(peekDecorView);
        } catch (Throwable th) {
            o0Var.b(SentryLevel.ERROR, "Failed to process view hierarchy.", th);
            return null;
        }
    }

    @m8.g
    public static io.sentry.protocol.x e(@m8.g View view) {
        ArrayList arrayList = new ArrayList(1);
        io.sentry.protocol.x xVar = new io.sentry.protocol.x("android_view_system", arrayList);
        io.sentry.protocol.y f10 = f(view);
        arrayList.add(f10);
        c(view, f10);
        return xVar;
    }

    @m8.g
    private static io.sentry.protocol.y f(@m8.g View view) {
        io.sentry.protocol.y yVar = new io.sentry.protocol.y();
        String canonicalName = view.getClass().getCanonicalName();
        if (canonicalName == null) {
            canonicalName = view.getClass().getSimpleName();
        }
        yVar.C(canonicalName);
        try {
            yVar.z(io.sentry.android.core.internal.gestures.j.b(view));
        } catch (Throwable unused) {
        }
        yVar.F(Double.valueOf(view.getX()));
        yVar.G(Double.valueOf(view.getY()));
        yVar.E(Double.valueOf(view.getWidth()));
        yVar.y(Double.valueOf(view.getHeight()));
        yVar.w(Double.valueOf(view.getAlpha()));
        int visibility = view.getVisibility();
        if (visibility == 0) {
            yVar.D("visible");
        } else if (visibility == 4) {
            yVar.D("invisible");
        } else if (visibility == 8) {
            yVar.D("gone");
        }
        return yVar;
    }

    @Override // io.sentry.z
    @m8.g
    public h4 a(@m8.g h4 h4Var, @m8.g io.sentry.b0 b0Var) {
        if (h4Var.H0()) {
            if (!this.f82590a.isAttachViewHierarchy()) {
                this.f82590a.getLogger().c(SentryLevel.DEBUG, "attachViewHierarchy is disabled.", new Object[0]);
                return h4Var;
            }
            io.sentry.protocol.x d4 = d(o0.c().b(), this.f82590a.getLogger());
            if (d4 != null) {
                b0Var.o(io.sentry.b.b(d4));
            }
            return h4Var;
        }
        return h4Var;
    }

    @Override // io.sentry.z
    public /* synthetic */ io.sentry.protocol.u b(io.sentry.protocol.u uVar, io.sentry.b0 b0Var) {
        return io.sentry.y.b(this, uVar, b0Var);
    }
}
