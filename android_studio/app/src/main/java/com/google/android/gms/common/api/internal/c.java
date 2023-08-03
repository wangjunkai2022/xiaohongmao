package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.d;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class c<O extends a.d> {

    /* renamed from: a  reason: collision with root package name */
    private final int f28649a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.gms.common.api.a<O> f28650b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final O f28651c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String f28652d;

    private c(com.google.android.gms.common.api.a<O> aVar, @Nullable O o9, @Nullable String str) {
        this.f28650b = aVar;
        this.f28651c = o9;
        this.f28652d = str;
        this.f28649a = com.google.android.gms.common.internal.s.c(aVar, o9, str);
    }

    @NonNull
    public static <O extends a.d> c<O> a(@NonNull com.google.android.gms.common.api.a<O> aVar, @Nullable O o9, @Nullable String str) {
        return new c<>(aVar, o9, str);
    }

    @NonNull
    public final String b() {
        return this.f28650b.d();
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            return com.google.android.gms.common.internal.s.b(this.f28650b, cVar.f28650b) && com.google.android.gms.common.internal.s.b(this.f28651c, cVar.f28651c) && com.google.android.gms.common.internal.s.b(this.f28652d, cVar.f28652d);
        }
        return false;
    }

    public final int hashCode() {
        return this.f28649a;
    }
}
