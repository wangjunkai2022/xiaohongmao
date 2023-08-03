package com.google.android.exoplayer2.extractor;

import androidx.annotation.Nullable;

/* compiled from: SeekPoint.java */
/* loaded from: classes2.dex */
public final class c0 {

    /* renamed from: c  reason: collision with root package name */
    public static final c0 f22123c = new c0(0, 0);

    /* renamed from: a  reason: collision with root package name */
    public final long f22124a;

    /* renamed from: b  reason: collision with root package name */
    public final long f22125b;

    public c0(long j4, long j10) {
        this.f22124a = j4;
        this.f22125b = j10;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c0.class != obj.getClass()) {
            return false;
        }
        c0 c0Var = (c0) obj;
        return this.f22124a == c0Var.f22124a && this.f22125b == c0Var.f22125b;
    }

    public int hashCode() {
        return (((int) this.f22124a) * 31) + ((int) this.f22125b);
    }

    public String toString() {
        long j4 = this.f22124a;
        long j10 = this.f22125b;
        StringBuilder sb = new StringBuilder(60);
        sb.append("[timeUs=");
        sb.append(j4);
        sb.append(", position=");
        sb.append(j10);
        sb.append("]");
        return sb.toString();
    }
}
