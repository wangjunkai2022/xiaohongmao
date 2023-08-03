package com.google.android.gms.internal.mlkit_common;

import androidx.annotation.Nullable;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class j8 {

    /* renamed from: a  reason: collision with root package name */
    private final f8 f29749a;

    /* renamed from: b  reason: collision with root package name */
    private final h8 f29750b;

    /* renamed from: c  reason: collision with root package name */
    private final h8 f29751c;

    /* renamed from: d  reason: collision with root package name */
    private final Boolean f29752d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ j8(g8 g8Var, i8 i8Var) {
        f8 f8Var;
        f8Var = g8Var.f29666a;
        this.f29749a = f8Var;
        this.f29750b = null;
        this.f29751c = null;
        this.f29752d = null;
    }

    @Nullable
    @g0(zza = 1)
    public final f8 a() {
        return this.f29749a;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof j8) && com.google.android.gms.common.internal.s.b(this.f29749a, ((j8) obj).f29749a) && com.google.android.gms.common.internal.s.b(null, null) && com.google.android.gms.common.internal.s.b(null, null) && com.google.android.gms.common.internal.s.b(null, null);
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.s.c(this.f29749a, null, null, null);
    }
}
