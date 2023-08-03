package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;

/* compiled from: AuxEffectInfo.java */
/* loaded from: classes2.dex */
public final class y {

    /* renamed from: c  reason: collision with root package name */
    public static final int f21415c = 0;

    /* renamed from: a  reason: collision with root package name */
    public final int f21416a;

    /* renamed from: b  reason: collision with root package name */
    public final float f21417b;

    public y(int i4, float f10) {
        this.f21416a = i4;
        this.f21417b = f10;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || y.class != obj.getClass()) {
            return false;
        }
        y yVar = (y) obj;
        return this.f21416a == yVar.f21416a && Float.compare(yVar.f21417b, this.f21417b) == 0;
    }

    public int hashCode() {
        return ((527 + this.f21416a) * 31) + Float.floatToIntBits(this.f21417b);
    }
}
