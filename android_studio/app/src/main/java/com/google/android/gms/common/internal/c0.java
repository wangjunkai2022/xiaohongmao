package com.google.android.gms.common.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.a;
import com.qennnsad.aknkaksd.data.repository.RetrofitApi;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class c0 implements a.d.f {
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public static final c0 f29068b = b().a();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f29069a;

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public static class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private String f29070a;

        private a() {
        }

        /* synthetic */ a(g0 g0Var) {
        }

        @NonNull
        @u2.a
        public c0 a() {
            return new c0(this.f29070a, null);
        }

        @NonNull
        @u2.a
        public a b(@Nullable String str) {
            this.f29070a = str;
            return this;
        }
    }

    /* synthetic */ c0(String str, h0 h0Var) {
        this.f29069a = str;
    }

    @NonNull
    @u2.a
    public static a b() {
        return new a(null);
    }

    @NonNull
    public final Bundle c() {
        Bundle bundle = new Bundle();
        String str = this.f29069a;
        if (str != null) {
            bundle.putString(RetrofitApi.f47692a, str);
        }
        return bundle;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c0) {
            return s.b(this.f29069a, ((c0) obj).f29069a);
        }
        return false;
    }

    public final int hashCode() {
        return s.c(this.f29069a);
    }
}
