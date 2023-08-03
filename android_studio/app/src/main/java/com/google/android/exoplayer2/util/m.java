package com.google.android.exoplayer2.util;

import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;

/* compiled from: ExoFlags.java */
/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private final SparseBooleanArray f27585a;

    /* compiled from: ExoFlags.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final SparseBooleanArray f27586a = new SparseBooleanArray();

        /* renamed from: b  reason: collision with root package name */
        private boolean f27587b;

        public b a(int i4) {
            com.google.android.exoplayer2.util.a.i(!this.f27587b);
            this.f27586a.append(i4, true);
            return this;
        }

        public b b(m mVar) {
            for (int i4 = 0; i4 < mVar.d(); i4++) {
                a(mVar.c(i4));
            }
            return this;
        }

        public b c(int... iArr) {
            for (int i4 : iArr) {
                a(i4);
            }
            return this;
        }

        public b d(int i4, boolean z9) {
            return z9 ? a(i4) : this;
        }

        public m e() {
            com.google.android.exoplayer2.util.a.i(!this.f27587b);
            this.f27587b = true;
            return new m(this.f27586a);
        }
    }

    public boolean a(int i4) {
        return this.f27585a.get(i4);
    }

    public boolean b(int... iArr) {
        for (int i4 : iArr) {
            if (a(i4)) {
                return true;
            }
        }
        return false;
    }

    public int c(int i4) {
        com.google.android.exoplayer2.util.a.c(i4, 0, d());
        return this.f27585a.keyAt(i4);
    }

    public int d() {
        return this.f27585a.size();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof m) {
            return this.f27585a.equals(((m) obj).f27585a);
        }
        return false;
    }

    public int hashCode() {
        return this.f27585a.hashCode();
    }

    private m(SparseBooleanArray sparseBooleanArray) {
        this.f27585a = sparseBooleanArray;
    }
}
