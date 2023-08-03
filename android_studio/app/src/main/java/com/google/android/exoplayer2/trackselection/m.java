package com.google.android.exoplayer2.trackselection;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* compiled from: TrackSelectionArray.java */
/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public final int f26057a;

    /* renamed from: b  reason: collision with root package name */
    private final l[] f26058b;

    /* renamed from: c  reason: collision with root package name */
    private int f26059c;

    public m(l... lVarArr) {
        this.f26058b = lVarArr;
        this.f26057a = lVarArr.length;
    }

    @Nullable
    public l a(int i4) {
        return this.f26058b[i4];
    }

    public l[] b() {
        return (l[]) this.f26058b.clone();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f26058b, ((m) obj).f26058b);
    }

    public int hashCode() {
        if (this.f26059c == 0) {
            this.f26059c = 527 + Arrays.hashCode(this.f26058b);
        }
        return this.f26059c;
    }
}
