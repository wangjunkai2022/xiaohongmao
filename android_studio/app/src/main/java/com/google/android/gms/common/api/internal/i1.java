package com.google.android.gms.common.api.internal;

import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class i1 extends b2 {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<j1> f28744a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i1(j1 j1Var) {
        this.f28744a = new WeakReference<>(j1Var);
    }

    @Override // com.google.android.gms.common.api.internal.b2
    public final void a() {
        j1 j1Var = this.f28744a.get();
        if (j1Var == null) {
            return;
        }
        j1.P(j1Var);
    }
}
