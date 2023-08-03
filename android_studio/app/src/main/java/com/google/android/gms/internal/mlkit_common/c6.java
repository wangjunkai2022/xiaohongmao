package com.google.android.gms.internal.mlkit_common;

import android.content.Context;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class c6 {

    /* renamed from: d */
    public static final c6 f29519d;

    /* renamed from: e */
    public static final c6 f29520e;

    /* renamed from: a */
    private final boolean f29521a;

    /* renamed from: b */
    private final boolean f29522b = false;

    /* renamed from: c */
    private final zzan f29523c;

    static {
        a4 a4Var = new a4(null);
        a4Var.a();
        f29519d = a4Var.c();
        a4 a4Var2 = new a4(null);
        a4Var2.b();
        f29520e = a4Var2.c();
    }

    public /* synthetic */ c6(boolean z9, boolean z10, zzan zzanVar, b5 b5Var) {
        this.f29521a = z9;
        this.f29523c = zzanVar;
    }

    public static /* bridge */ /* synthetic */ boolean a(c6 c6Var) {
        boolean z9 = c6Var.f29522b;
        return false;
    }

    public static /* bridge */ /* synthetic */ boolean b(c6 c6Var) {
        return c6Var.f29521a;
    }

    public static /* bridge */ /* synthetic */ int c(c6 c6Var, Context context, dc dcVar) {
        zzan zzanVar = c6Var.f29523c;
        int size = zzanVar.size();
        int i4 = 0;
        while (i4 < size) {
            int a10 = ((ec) zzanVar.get(i4)).a();
            int i10 = a10 - 1;
            if (a10 == 0) {
                throw null;
            }
            i4++;
            if (i10 == 0) {
                return 1;
            }
            if (i10 == 1) {
                return 2;
            }
        }
        return 3;
    }
}
