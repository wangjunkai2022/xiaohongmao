package com.google.mlkit.common.model;

import android.annotation.TargetApi;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.gms.common.internal.s;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f35745a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f35746b;

    /* compiled from: com.google.mlkit:common@@18.4.0 */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private boolean f35747a = false;

        /* renamed from: b  reason: collision with root package name */
        private boolean f35748b = false;

        @NonNull
        public b a() {
            return new b(this.f35747a, this.f35748b, null);
        }

        @NonNull
        @RequiresApi(24)
        @TargetApi(24)
        public a b() {
            this.f35747a = true;
            return this;
        }

        @NonNull
        public a c() {
            this.f35748b = true;
            return this;
        }
    }

    /* synthetic */ b(boolean z9, boolean z10, h hVar) {
        this.f35745a = z9;
        this.f35746b = z10;
    }

    public boolean a() {
        return this.f35745a;
    }

    public boolean b() {
        return this.f35746b;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            return this.f35745a == bVar.f35745a && this.f35746b == bVar.f35746b;
        }
        return false;
    }

    public int hashCode() {
        return s.c(Boolean.valueOf(this.f35745a), Boolean.valueOf(this.f35746b));
    }
}
