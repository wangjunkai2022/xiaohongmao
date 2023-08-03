package com.google.mlkit.nl.languageid;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.u;
import java.util.concurrent.Executor;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public class b {
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public static final b f35924c = new a().a();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Float f35925a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Executor f35926b;

    /* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
    /* loaded from: classes2.dex */
    public static class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private Float f35927a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Executor f35928b;

        @NonNull
        public b a() {
            return new b(this.f35927a, this.f35928b, null);
        }

        @NonNull
        public a b(float f10) {
            boolean z9 = f10 >= 0.0f && f10 <= 1.0f;
            Float valueOf = Float.valueOf(f10);
            u.c(z9, "Threshold value %f should be between 0 and 1", valueOf);
            this.f35927a = valueOf;
            return this;
        }

        @NonNull
        public a c(@NonNull Executor executor) {
            u.b(executor != null, "Custom executor should not be null");
            this.f35928b = executor;
            return this;
        }
    }

    /* synthetic */ b(Float f10, Executor executor, e eVar) {
        this.f35925a = f10;
        this.f35926b = executor;
    }

    @Nullable
    @u2.a
    public Float a() {
        return this.f35925a;
    }

    @Nullable
    @u2.a
    public Executor b() {
        return this.f35926b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            return s.b(bVar.f35925a, this.f35925a) && s.b(bVar.f35926b, this.f35926b);
        }
        return false;
    }

    public int hashCode() {
        return s.c(this.f35925a, this.f35926b);
    }
}
