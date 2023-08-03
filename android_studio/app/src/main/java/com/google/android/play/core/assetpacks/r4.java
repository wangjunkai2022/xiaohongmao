package com.google.android.play.core.assetpacks;

import android.content.ComponentName;
import android.content.Context;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class r4 implements com.google.android.play.core.internal.r1 {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.play.core.internal.r1 f31564a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.play.core.internal.r1 f31565b;

    public r4(com.google.android.play.core.internal.r1 r1Var, com.google.android.play.core.internal.r1 r1Var2) {
        this.f31564a = r1Var;
        this.f31565b = r1Var2;
    }

    @Override // com.google.android.play.core.internal.r1
    public final /* bridge */ /* synthetic */ Object zza() {
        Object zza = this.f31564a.zza();
        Context a10 = ((t4) this.f31565b).a();
        k4 k4Var = (k4) zza;
        com.google.android.play.core.internal.d1.a(a10.getPackageManager(), new ComponentName(a10.getPackageName(), "com.google.android.play.core.assetpacks.AssetPackExtractionService"), 4);
        com.google.android.play.core.internal.d1.a(a10.getPackageManager(), new ComponentName(a10.getPackageName(), "com.google.android.play.core.assetpacks.ExtractionForegroundService"), 4);
        com.google.android.play.core.internal.q1.a(k4Var);
        return k4Var;
    }
}
