package com.google.android.gms.auth.api.signin.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import y2.d0;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class a {
    @d0

    /* renamed from: b  reason: collision with root package name */
    static int f28472b = 31;

    /* renamed from: a  reason: collision with root package name */
    private int f28473a = 1;

    @NonNull
    @u2.a
    public a a(@Nullable Object obj) {
        this.f28473a = (f28472b * this.f28473a) + (obj == null ? 0 : obj.hashCode());
        return this;
    }

    @u2.a
    public int b() {
        return this.f28473a;
    }

    @NonNull
    public final a c(boolean z9) {
        this.f28473a = (f28472b * this.f28473a) + (z9 ? 1 : 0);
        return this;
    }
}
