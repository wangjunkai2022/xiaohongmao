package com.google.android.exoplayer2.trackselection;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.f2;
import com.google.android.exoplayer2.g2;
import com.google.android.exoplayer2.h2;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.z;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.z0;
import java.util.Arrays;

/* compiled from: MappingTrackSelector.java */
/* loaded from: classes2.dex */
public abstract class i extends o {
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private a f26039c;

    /* compiled from: MappingTrackSelector.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: h  reason: collision with root package name */
        public static final int f26040h = 0;

        /* renamed from: i  reason: collision with root package name */
        public static final int f26041i = 1;

        /* renamed from: j  reason: collision with root package name */
        public static final int f26042j = 2;

        /* renamed from: k  reason: collision with root package name */
        public static final int f26043k = 3;

        /* renamed from: a  reason: collision with root package name */
        private final int f26044a;

        /* renamed from: b  reason: collision with root package name */
        private final String[] f26045b;

        /* renamed from: c  reason: collision with root package name */
        private final int[] f26046c;

        /* renamed from: d  reason: collision with root package name */
        private final TrackGroupArray[] f26047d;

        /* renamed from: e  reason: collision with root package name */
        private final int[] f26048e;

        /* renamed from: f  reason: collision with root package name */
        private final int[][][] f26049f;

        /* renamed from: g  reason: collision with root package name */
        private final TrackGroupArray f26050g;

        a(String[] strArr, int[] iArr, TrackGroupArray[] trackGroupArrayArr, int[] iArr2, int[][][] iArr3, TrackGroupArray trackGroupArray) {
            this.f26045b = strArr;
            this.f26046c = iArr;
            this.f26047d = trackGroupArrayArr;
            this.f26049f = iArr3;
            this.f26048e = iArr2;
            this.f26050g = trackGroupArray;
            this.f26044a = iArr.length;
        }

        public int a(int i4, int i10, boolean z9) {
            int i11 = this.f26047d[i4].get(i10).length;
            int[] iArr = new int[i11];
            int i12 = 0;
            for (int i13 = 0; i13 < i11; i13++) {
                int h4 = h(i4, i10, i13);
                if (h4 == 4 || (z9 && h4 == 3)) {
                    iArr[i12] = i13;
                    i12++;
                }
            }
            return b(i4, i10, Arrays.copyOf(iArr, i12));
        }

        public int b(int i4, int i10, int[] iArr) {
            int i11 = 0;
            String str = null;
            boolean z9 = false;
            int i12 = 0;
            int i13 = 16;
            while (i11 < iArr.length) {
                String str2 = this.f26047d[i4].get(i10).getFormat(iArr[i11]).sampleMimeType;
                int i14 = i12 + 1;
                if (i12 == 0) {
                    str = str2;
                } else {
                    z9 |= !z0.c(str, str2);
                }
                i13 = Math.min(i13, f2.c(this.f26049f[i4][i10][i11]));
                i11++;
                i12 = i14;
            }
            return z9 ? Math.min(i13, this.f26048e[i4]) : i13;
        }

        public int c() {
            return this.f26044a;
        }

        public String d(int i4) {
            return this.f26045b[i4];
        }

        public int e(int i4) {
            int[][] iArr;
            int i10 = 0;
            for (int[] iArr2 : this.f26049f[i4]) {
                for (int i11 : iArr2) {
                    int d4 = f2.d(i11);
                    int i12 = 2;
                    if (d4 == 0 || d4 == 1 || d4 == 2) {
                        i12 = 1;
                    } else if (d4 != 3) {
                        if (d4 == 4) {
                            return 3;
                        }
                        throw new IllegalStateException();
                    }
                    i10 = Math.max(i10, i12);
                }
            }
            return i10;
        }

        public int f(int i4) {
            return this.f26046c[i4];
        }

        public TrackGroupArray g(int i4) {
            return this.f26047d[i4];
        }

        public int h(int i4, int i10, int i11) {
            return f2.d(this.f26049f[i4][i10][i11]);
        }

        public int i(int i4) {
            int i10 = 0;
            for (int i11 = 0; i11 < this.f26044a; i11++) {
                if (this.f26046c[i11] == i4) {
                    i10 = Math.max(i10, e(i11));
                }
            }
            return i10;
        }

        public TrackGroupArray j() {
            return this.f26050g;
        }
    }

    private static int f(g2[] g2VarArr, TrackGroup trackGroup, int[] iArr, boolean z9) throws ExoPlaybackException {
        int length = g2VarArr.length;
        int i4 = 0;
        boolean z10 = true;
        for (int i10 = 0; i10 < g2VarArr.length; i10++) {
            g2 g2Var = g2VarArr[i10];
            int i11 = 0;
            for (int i12 = 0; i12 < trackGroup.length; i12++) {
                i11 = Math.max(i11, f2.d(g2Var.a(trackGroup.getFormat(i12))));
            }
            boolean z11 = iArr[i10] == 0;
            if (i11 > i4 || (i11 == i4 && z9 && !z10 && z11)) {
                length = i10;
                z10 = z11;
                i4 = i11;
            }
        }
        return length;
    }

    private static int[] h(g2 g2Var, TrackGroup trackGroup) throws ExoPlaybackException {
        int[] iArr = new int[trackGroup.length];
        for (int i4 = 0; i4 < trackGroup.length; i4++) {
            iArr[i4] = g2Var.a(trackGroup.getFormat(i4));
        }
        return iArr;
    }

    private static int[] i(g2[] g2VarArr) throws ExoPlaybackException {
        int length = g2VarArr.length;
        int[] iArr = new int[length];
        for (int i4 = 0; i4 < length; i4++) {
            iArr[i4] = g2VarArr[i4].r();
        }
        return iArr;
    }

    @Override // com.google.android.exoplayer2.trackselection.o
    public final void d(@Nullable Object obj) {
        this.f26039c = (a) obj;
    }

    @Override // com.google.android.exoplayer2.trackselection.o
    public final p e(g2[] g2VarArr, TrackGroupArray trackGroupArray, z.a aVar, s2 s2Var) throws ExoPlaybackException {
        int[] h4;
        int[] iArr = new int[g2VarArr.length + 1];
        int length = g2VarArr.length + 1;
        TrackGroup[][] trackGroupArr = new TrackGroup[length];
        int[][][] iArr2 = new int[g2VarArr.length + 1][];
        for (int i4 = 0; i4 < length; i4++) {
            int i10 = trackGroupArray.length;
            trackGroupArr[i4] = new TrackGroup[i10];
            iArr2[i4] = new int[i10];
        }
        int[] i11 = i(g2VarArr);
        for (int i12 = 0; i12 < trackGroupArray.length; i12++) {
            TrackGroup trackGroup = trackGroupArray.get(i12);
            int f10 = f(g2VarArr, trackGroup, iArr, a0.l(trackGroup.getFormat(0).sampleMimeType) == 5);
            if (f10 == g2VarArr.length) {
                h4 = new int[trackGroup.length];
            } else {
                h4 = h(g2VarArr[f10], trackGroup);
            }
            int i13 = iArr[f10];
            trackGroupArr[f10][i13] = trackGroup;
            iArr2[f10][i13] = h4;
            iArr[f10] = iArr[f10] + 1;
        }
        TrackGroupArray[] trackGroupArrayArr = new TrackGroupArray[g2VarArr.length];
        String[] strArr = new String[g2VarArr.length];
        int[] iArr3 = new int[g2VarArr.length];
        for (int i14 = 0; i14 < g2VarArr.length; i14++) {
            int i15 = iArr[i14];
            trackGroupArrayArr[i14] = new TrackGroupArray((TrackGroup[]) z0.T0(trackGroupArr[i14], i15));
            iArr2[i14] = (int[][]) z0.T0(iArr2[i14], i15);
            strArr[i14] = g2VarArr[i14].getName();
            iArr3[i14] = g2VarArr[i14].getTrackType();
        }
        a aVar2 = new a(strArr, iArr3, trackGroupArrayArr, i11, iArr2, new TrackGroupArray((TrackGroup[]) z0.T0(trackGroupArr[g2VarArr.length], iArr[g2VarArr.length])));
        Pair<h2[], g[]> j4 = j(aVar2, iArr2, i11, aVar, s2Var);
        return new p((h2[]) j4.first, (g[]) j4.second, aVar2);
    }

    @Nullable
    public final a g() {
        return this.f26039c;
    }

    protected abstract Pair<h2[], g[]> j(a aVar, int[][][] iArr, int[] iArr2, z.a aVar2, s2 s2Var) throws ExoPlaybackException;
}
