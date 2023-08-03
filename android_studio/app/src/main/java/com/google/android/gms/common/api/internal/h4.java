package com.google.android.gms.common.api.internal;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
final class h4 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ LifecycleCallback f28718a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f28719b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ i4 f28720c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h4(i4 i4Var, LifecycleCallback lifecycleCallback, String str) {
        this.f28720c = i4Var;
        this.f28718a = lifecycleCallback;
        this.f28719b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i4;
        int i10;
        int i11;
        int i12;
        int i13;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3;
        i4 i4Var = this.f28720c;
        i4 = i4Var.f28749b;
        if (i4 > 0) {
            LifecycleCallback lifecycleCallback = this.f28718a;
            bundle = i4Var.f28750c;
            if (bundle != null) {
                bundle3 = i4Var.f28750c;
                bundle2 = bundle3.getBundle(this.f28719b);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.g(bundle2);
        }
        i10 = this.f28720c.f28749b;
        if (i10 >= 2) {
            this.f28718a.k();
        }
        i11 = this.f28720c.f28749b;
        if (i11 >= 3) {
            this.f28718a.i();
        }
        i12 = this.f28720c.f28749b;
        if (i12 >= 4) {
            this.f28718a.l();
        }
        i13 = this.f28720c.f28749b;
        if (i13 >= 5) {
            this.f28718a.h();
        }
    }
}
