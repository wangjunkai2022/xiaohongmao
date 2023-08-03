package com.google.android.gms.common.api.internal;

import com.google.android.gms.signin.internal.zak;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class x2 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zak f28930a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ z2 f28931b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x2(z2 z2Var, zak zakVar) {
        this.f28931b = z2Var;
        this.f28930a = zakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        z2.L1(this.f28931b, this.f28930a);
    }
}
