package com.google.android.gms.common.api.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class x1 {

    /* renamed from: a  reason: collision with root package name */
    private final c<?> f28928a;

    /* renamed from: b  reason: collision with root package name */
    private final Feature f28929b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ x1(c cVar, Feature feature, w1 w1Var) {
        this.f28928a = cVar;
        this.f28929b = feature;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj != null && (obj instanceof x1)) {
            x1 x1Var = (x1) obj;
            if (com.google.android.gms.common.internal.s.b(this.f28928a, x1Var.f28928a) && com.google.android.gms.common.internal.s.b(this.f28929b, x1Var.f28929b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.s.c(this.f28928a, this.f28929b);
    }

    public final String toString() {
        return com.google.android.gms.common.internal.s.d(this).a("key", this.f28928a).a("feature", this.f28929b).toString();
    }
}
