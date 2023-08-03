package com.google.android.play.core.internal;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class o1 implements r1 {

    /* renamed from: a  reason: collision with root package name */
    private r1 f31734a;

    public static void a(r1 r1Var, r1 r1Var2) {
        o1 o1Var = (o1) r1Var;
        if (o1Var.f31734a != null) {
            throw new IllegalStateException();
        }
        o1Var.f31734a = r1Var2;
    }

    @Override // com.google.android.play.core.internal.r1
    public final Object zza() {
        r1 r1Var = this.f31734a;
        if (r1Var != null) {
            return r1Var.zza();
        }
        throw new IllegalStateException();
    }
}
