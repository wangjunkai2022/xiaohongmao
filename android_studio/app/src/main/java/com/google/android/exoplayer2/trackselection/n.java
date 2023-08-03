package com.google.android.exoplayer2.trackselection;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.g;
import com.google.android.exoplayer2.util.a0;

/* compiled from: TrackSelectionUtil.java */
/* loaded from: classes2.dex */
public final class n {

    /* compiled from: TrackSelectionUtil.java */
    /* loaded from: classes2.dex */
    public interface a {
        g a(g.a aVar);
    }

    private n() {
    }

    public static g[] a(g.a[] aVarArr, a aVar) {
        g[] gVarArr = new g[aVarArr.length];
        boolean z9 = false;
        for (int i4 = 0; i4 < aVarArr.length; i4++) {
            g.a aVar2 = aVarArr[i4];
            if (aVar2 != null) {
                int[] iArr = aVar2.f26035b;
                if (iArr.length > 1 && !z9) {
                    gVarArr[i4] = aVar.a(aVar2);
                    z9 = true;
                } else {
                    gVarArr[i4] = new h(aVar2.f26034a, iArr[0], aVar2.f26036c);
                }
            }
        }
        return gVarArr;
    }

    public static boolean b(m mVar, int i4) {
        for (int i10 = 0; i10 < mVar.f26057a; i10++) {
            l a10 = mVar.a(i10);
            if (a10 != null) {
                for (int i11 = 0; i11 < a10.length(); i11++) {
                    if (a0.l(a10.f(i11).sampleMimeType) == i4) {
                        return true;
                    }
                }
                continue;
            }
        }
        return false;
    }

    public static DefaultTrackSelector.Parameters c(DefaultTrackSelector.Parameters parameters, int i4, TrackGroupArray trackGroupArray, boolean z9, @Nullable DefaultTrackSelector.SelectionOverride selectionOverride) {
        DefaultTrackSelector.d Z = parameters.buildUpon().o(i4).Z(i4, z9);
        if (selectionOverride != null) {
            Z.b0(i4, trackGroupArray, selectionOverride);
        }
        return Z.a();
    }
}
