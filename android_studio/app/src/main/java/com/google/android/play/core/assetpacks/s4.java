package com.google.android.play.core.assetpacks;

import android.content.Context;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class s4 implements com.google.android.play.core.internal.r1 {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.play.core.internal.r1 f31578a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.play.core.internal.r1 f31579b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.play.core.internal.r1 f31580c;

    public s4(com.google.android.play.core.internal.r1 r1Var, com.google.android.play.core.internal.r1 r1Var2, com.google.android.play.core.internal.r1 r1Var3) {
        this.f31578a = r1Var;
        this.f31579b = r1Var2;
        this.f31580c = r1Var3;
    }

    @Override // com.google.android.play.core.internal.r1
    public final /* bridge */ /* synthetic */ Object zza() {
        x4 x4Var;
        Context a10 = ((t4) this.f31578a).a();
        com.google.android.play.core.internal.n1 a11 = com.google.android.play.core.internal.p1.a(this.f31579b);
        com.google.android.play.core.internal.n1 a12 = com.google.android.play.core.internal.p1.a(this.f31580c);
        if (o4.b(a10) == null) {
            x4Var = (x4) a11.zza();
        } else {
            x4Var = (x4) a12.zza();
        }
        com.google.android.play.core.internal.q1.a(x4Var);
        return x4Var;
    }
}
