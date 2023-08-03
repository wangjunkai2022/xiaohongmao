package com.google.mlkit.common.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.internal.mlkit_common.jc;
import com.google.android.gms.internal.mlkit_common.kc;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public abstract class f {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f35766a;

    @u2.a
    protected f(@Nullable String str) {
        this.f35766a = str;
    }

    @Nullable
    public final String a() {
        return this.f35766a;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        return s.b(this.f35766a, ((f) obj).f35766a);
    }

    public int hashCode() {
        return s.c(this.f35766a);
    }

    @NonNull
    public String toString() {
        jc b10 = kc.b("RemoteModelSource");
        b10.a("firebaseModelName", this.f35766a);
        return b10.toString();
    }
}
