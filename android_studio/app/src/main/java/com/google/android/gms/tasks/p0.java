package com.google.android.gms.tasks;

import android.app.Activity;
import androidx.annotation.MainThread;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
final class p0 extends LifecycleCallback {

    /* renamed from: b  reason: collision with root package name */
    private final List<WeakReference<k0<?>>> f31135b;

    private p0(com.google.android.gms.common.api.internal.m mVar) {
        super(mVar);
        this.f31135b = new ArrayList();
        this.f28615a.h("TaskOnStopCallback", this);
    }

    public static p0 m(Activity activity) {
        com.google.android.gms.common.api.internal.m c10 = LifecycleCallback.c(activity);
        p0 p0Var = (p0) c10.m("TaskOnStopCallback", p0.class);
        return p0Var == null ? new p0(c10) : p0Var;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    @MainThread
    public final void l() {
        synchronized (this.f31135b) {
            for (WeakReference<k0<?>> weakReference : this.f31135b) {
                k0<?> k0Var = weakReference.get();
                if (k0Var != null) {
                    k0Var.e();
                }
            }
            this.f31135b.clear();
        }
    }

    public final <T> void n(k0<T> k0Var) {
        synchronized (this.f31135b) {
            this.f31135b.add(new WeakReference<>(k0Var));
        }
    }
}
