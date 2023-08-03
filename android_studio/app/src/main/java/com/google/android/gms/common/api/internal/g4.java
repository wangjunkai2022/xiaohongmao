package com.google.android.gms.common.api.internal;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
final class g4 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ LifecycleCallback f28699a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f28700b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ zzb f28701c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g4(zzb zzbVar, LifecycleCallback lifecycleCallback, String str) {
        this.f28701c = zzbVar;
        this.f28699a = lifecycleCallback;
        this.f28700b = str;
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
        zzb zzbVar = this.f28701c;
        i4 = zzbVar.f28955b;
        if (i4 > 0) {
            LifecycleCallback lifecycleCallback = this.f28699a;
            bundle = zzbVar.f28956c;
            if (bundle != null) {
                bundle3 = zzbVar.f28956c;
                bundle2 = bundle3.getBundle(this.f28700b);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.g(bundle2);
        }
        i10 = this.f28701c.f28955b;
        if (i10 >= 2) {
            this.f28699a.k();
        }
        i11 = this.f28701c.f28955b;
        if (i11 >= 3) {
            this.f28699a.i();
        }
        i12 = this.f28701c.f28955b;
        if (i12 >= 4) {
            this.f28699a.l();
        }
        i13 = this.f28701c.f28955b;
        if (i13 >= 5) {
            this.f28699a.h();
        }
    }
}
