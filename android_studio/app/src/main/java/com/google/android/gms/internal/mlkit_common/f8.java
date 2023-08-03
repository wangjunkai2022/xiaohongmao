package com.google.android.gms.internal.mlkit_common;

import androidx.annotation.Nullable;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class f8 {

    /* renamed from: a  reason: collision with root package name */
    private final String f29632a;

    /* renamed from: b  reason: collision with root package name */
    private final String f29633b;

    /* renamed from: c  reason: collision with root package name */
    private final zzje f29634c;

    /* renamed from: d  reason: collision with root package name */
    private final String f29635d;

    /* renamed from: e  reason: collision with root package name */
    private final String f29636e;

    /* renamed from: f  reason: collision with root package name */
    private final zzjd f29637f;

    /* renamed from: g  reason: collision with root package name */
    private final Long f29638g;

    /* renamed from: h  reason: collision with root package name */
    private final Boolean f29639h;

    /* renamed from: i  reason: collision with root package name */
    private final Boolean f29640i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ f8(d8 d8Var, e8 e8Var) {
        String str;
        zzje zzjeVar;
        String str2;
        zzjd zzjdVar;
        str = d8Var.f29568a;
        this.f29632a = str;
        this.f29633b = null;
        zzjeVar = d8Var.f29569b;
        this.f29634c = zzjeVar;
        this.f29635d = null;
        str2 = d8Var.f29570c;
        this.f29636e = str2;
        zzjdVar = d8Var.f29571d;
        this.f29637f = zzjdVar;
        this.f29638g = null;
        this.f29639h = null;
        this.f29640i = null;
    }

    @Nullable
    @g0(zza = 6)
    public final zzjd a() {
        return this.f29637f;
    }

    @Nullable
    @g0(zza = 3)
    public final zzje b() {
        return this.f29634c;
    }

    @Nullable
    @g0(zza = 5)
    public final String c() {
        return this.f29636e;
    }

    @Nullable
    @g0(zza = 1)
    public final String d() {
        return this.f29632a;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f8) {
            f8 f8Var = (f8) obj;
            return com.google.android.gms.common.internal.s.b(this.f29632a, f8Var.f29632a) && com.google.android.gms.common.internal.s.b(null, null) && com.google.android.gms.common.internal.s.b(this.f29634c, f8Var.f29634c) && com.google.android.gms.common.internal.s.b(null, null) && com.google.android.gms.common.internal.s.b(this.f29636e, f8Var.f29636e) && com.google.android.gms.common.internal.s.b(this.f29637f, f8Var.f29637f) && com.google.android.gms.common.internal.s.b(null, null) && com.google.android.gms.common.internal.s.b(null, null) && com.google.android.gms.common.internal.s.b(null, null);
        }
        return false;
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.s.c(this.f29632a, null, this.f29634c, null, this.f29636e, this.f29637f, null, null, null);
    }
}
