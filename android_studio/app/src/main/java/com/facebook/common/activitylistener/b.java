package com.facebook.common.activitylistener;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;
import java.lang.ref.WeakReference;
import r7.h;

/* compiled from: ActivityListenerManager.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class b {

    /* compiled from: ActivityListenerManager.java */
    /* loaded from: classes.dex */
    private static class a extends c {

        /* renamed from: c  reason: collision with root package name */
        private final WeakReference<com.facebook.common.activitylistener.a> f10953c;

        public a(com.facebook.common.activitylistener.a activityListener) {
            this.f10953c = new WeakReference<>(activityListener);
        }

        @h
        private com.facebook.common.activitylistener.a g(Activity activity) {
            com.facebook.common.activitylistener.a aVar = this.f10953c.get();
            if (aVar == null) {
                j.d(Boolean.valueOf(activity instanceof d));
                ((d) activity).b(this);
            }
            return aVar;
        }

        @Override // com.facebook.common.activitylistener.c, com.facebook.common.activitylistener.a
        public void a(Activity activity) {
            com.facebook.common.activitylistener.a g4 = g(activity);
            if (g4 != null) {
                g4.a(activity);
            }
        }

        @Override // com.facebook.common.activitylistener.c, com.facebook.common.activitylistener.a
        public void b(Activity activity) {
            com.facebook.common.activitylistener.a g4 = g(activity);
            if (g4 != null) {
                g4.b(activity);
            }
        }

        @Override // com.facebook.common.activitylistener.c, com.facebook.common.activitylistener.a
        public void c(Activity activity) {
            com.facebook.common.activitylistener.a g4 = g(activity);
            if (g4 != null) {
                g4.c(activity);
            }
        }

        @Override // com.facebook.common.activitylistener.c, com.facebook.common.activitylistener.a
        public void d(Activity activity) {
            com.facebook.common.activitylistener.a g4 = g(activity);
            if (g4 != null) {
                g4.d(activity);
            }
        }

        @Override // com.facebook.common.activitylistener.c, com.facebook.common.activitylistener.a
        public void e(Activity activity) {
            com.facebook.common.activitylistener.a g4 = g(activity);
            if (g4 != null) {
                g4.e(activity);
            }
        }

        @Override // com.facebook.common.activitylistener.c, com.facebook.common.activitylistener.a
        public void f(Activity activity) {
            com.facebook.common.activitylistener.a g4 = g(activity);
            if (g4 != null) {
                g4.f(activity);
            }
        }
    }

    @h
    public static d a(Context context) {
        if (!(context instanceof d) && (context instanceof ContextWrapper)) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof d) {
            return (d) context;
        }
        return null;
    }

    public static void b(com.facebook.common.activitylistener.a activityListener, Context context) {
        d a10 = a(context);
        if (a10 != null) {
            a10.a(new a(activityListener));
        }
    }
}
