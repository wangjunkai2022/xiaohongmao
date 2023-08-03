package com.google.android.play.core.assetpacks;

import android.content.Context;
import java.io.File;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class z2 implements com.google.android.play.core.internal.r1 {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.play.core.internal.r1 f31696a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.play.core.internal.r1 f31697b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.play.core.internal.r1 f31698c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.play.core.internal.r1 f31699d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.play.core.internal.r1 f31700e;

    /* renamed from: f  reason: collision with root package name */
    private final com.google.android.play.core.internal.r1 f31701f;

    /* renamed from: g  reason: collision with root package name */
    private final com.google.android.play.core.internal.r1 f31702g;

    public z2(com.google.android.play.core.internal.r1 r1Var, com.google.android.play.core.internal.r1 r1Var2, com.google.android.play.core.internal.r1 r1Var3, com.google.android.play.core.internal.r1 r1Var4, com.google.android.play.core.internal.r1 r1Var5, com.google.android.play.core.internal.r1 r1Var6, com.google.android.play.core.internal.r1 r1Var7) {
        this.f31696a = r1Var;
        this.f31697b = r1Var2;
        this.f31698c = r1Var3;
        this.f31699d = r1Var4;
        this.f31700e = r1Var5;
        this.f31701f = r1Var6;
        this.f31702g = r1Var7;
    }

    @Override // com.google.android.play.core.internal.r1
    public final /* bridge */ /* synthetic */ Object zza() {
        File externalFilesDir;
        String str = (String) this.f31696a.zza();
        Object zza = this.f31697b.zza();
        Object zza2 = this.f31698c.zza();
        Context a10 = ((t4) this.f31699d).a();
        Object zza3 = this.f31700e.zza();
        com.google.android.play.core.internal.n1 a11 = com.google.android.play.core.internal.p1.a(this.f31701f);
        j0 j0Var = (j0) zza;
        x1 x1Var = (x1) zza2;
        o3 o3Var = (o3) zza3;
        m3 m3Var = (m3) this.f31702g.zza();
        if (str != null) {
            externalFilesDir = new File(a10.getExternalFilesDir(null), str);
        } else {
            externalFilesDir = a10.getExternalFilesDir(null);
        }
        return new y2(externalFilesDir, j0Var, x1Var, a10, o3Var, a11, m3Var);
    }
}
