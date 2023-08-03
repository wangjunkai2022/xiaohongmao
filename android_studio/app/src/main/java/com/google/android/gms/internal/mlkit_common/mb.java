package com.google.android.gms.internal.mlkit_common;

import com.google.mlkit.common.sdkinternal.ModelType;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public abstract class mb {
    public static lb h() {
        xa xaVar = new xa();
        xaVar.h("NA");
        xaVar.f(false);
        xaVar.e(false);
        xaVar.d(ModelType.UNKNOWN);
        xaVar.b(zzit.NO_ERROR);
        xaVar.a(zziz.UNKNOWN_STATUS);
        xaVar.c(0);
        return xaVar;
    }

    public abstract int a();

    public abstract ModelType b();

    public abstract zzit c();

    public abstract zziz d();

    public abstract String e();

    public abstract boolean f();

    public abstract boolean g();
}
