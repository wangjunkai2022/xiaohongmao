package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class e implements q {

    /* renamed from: a  reason: collision with root package name */
    private final Status f28538a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f28539b;

    @u2.a
    @com.google.android.gms.common.internal.y
    public e(@NonNull Status status, boolean z9) {
        this.f28538a = (Status) com.google.android.gms.common.internal.u.l(status, "Status must not be null");
        this.f28539b = z9;
    }

    @u2.a
    public boolean a() {
        return this.f28539b;
    }

    @u2.a
    public final boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            return this.f28538a.equals(eVar.f28538a) && this.f28539b == eVar.f28539b;
        }
        return false;
    }

    @Override // com.google.android.gms.common.api.q
    @NonNull
    @u2.a
    public Status getStatus() {
        return this.f28538a;
    }

    @u2.a
    public final int hashCode() {
        return ((this.f28538a.hashCode() + 527) * 31) + (this.f28539b ? 1 : 0);
    }
}
