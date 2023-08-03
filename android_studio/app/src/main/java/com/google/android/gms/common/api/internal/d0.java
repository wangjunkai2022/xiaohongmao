package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.annotation.MainThread;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@VisibleForTesting(otherwise = 2)
/* loaded from: classes2.dex */
final class d0 extends LifecycleCallback {

    /* renamed from: b  reason: collision with root package name */
    private List<Runnable> f28662b;

    private d0(m mVar) {
        super(mVar);
        this.f28662b = new ArrayList();
        this.f28615a.h("LifecycleObserverOnStop", this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ d0 m(Activity activity) {
        d0 d0Var;
        synchronized (activity) {
            m c10 = LifecycleCallback.c(activity);
            d0Var = (d0) c10.m("LifecycleObserverOnStop", d0.class);
            if (d0Var == null) {
                d0Var = new d0(c10);
            }
        }
        return d0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void o(Runnable runnable) {
        this.f28662b.add(runnable);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    @MainThread
    public final void l() {
        List<Runnable> list;
        synchronized (this) {
            list = this.f28662b;
            this.f28662b = new ArrayList();
        }
        for (Runnable runnable : list) {
            runnable.run();
        }
    }
}
