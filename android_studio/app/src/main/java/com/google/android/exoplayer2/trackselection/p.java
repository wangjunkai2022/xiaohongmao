package com.google.android.exoplayer2.trackselection;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h2;
import com.google.android.exoplayer2.util.z0;

/* compiled from: TrackSelectorResult.java */
/* loaded from: classes2.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    public final int f26062a;

    /* renamed from: b  reason: collision with root package name */
    public final h2[] f26063b;

    /* renamed from: c  reason: collision with root package name */
    public final g[] f26064c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final Object f26065d;

    public p(h2[] h2VarArr, g[] gVarArr, @Nullable Object obj) {
        this.f26063b = h2VarArr;
        this.f26064c = (g[]) gVarArr.clone();
        this.f26065d = obj;
        this.f26062a = h2VarArr.length;
    }

    public boolean a(@Nullable p pVar) {
        if (pVar == null || pVar.f26064c.length != this.f26064c.length) {
            return false;
        }
        for (int i4 = 0; i4 < this.f26064c.length; i4++) {
            if (!b(pVar, i4)) {
                return false;
            }
        }
        return true;
    }

    public boolean b(@Nullable p pVar, int i4) {
        return pVar != null && z0.c(this.f26063b[i4], pVar.f26063b[i4]) && z0.c(this.f26064c[i4], pVar.f26064c[i4]);
    }

    public boolean c(int i4) {
        return this.f26063b[i4] != null;
    }
}
