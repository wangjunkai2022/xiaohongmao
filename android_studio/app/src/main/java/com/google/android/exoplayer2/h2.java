package com.google.android.exoplayer2;

import androidx.annotation.Nullable;

/* compiled from: RendererConfiguration.java */
/* loaded from: classes2.dex */
public final class h2 {

    /* renamed from: b  reason: collision with root package name */
    public static final h2 f23643b = new h2(false);

    /* renamed from: a  reason: collision with root package name */
    public final boolean f23644a;

    public h2(boolean z9) {
        this.f23644a = z9;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && h2.class == obj.getClass() && this.f23644a == ((h2) obj).f23644a;
    }

    public int hashCode() {
        return !this.f23644a ? 1 : 0;
    }
}
