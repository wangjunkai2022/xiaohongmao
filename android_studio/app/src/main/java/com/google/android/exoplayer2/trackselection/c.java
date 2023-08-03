package com.google.android.exoplayer2.trackselection;

import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.util.z0;
import java.util.Arrays;
import java.util.List;

/* compiled from: BaseTrackSelection.java */
/* loaded from: classes2.dex */
public abstract class c implements g {

    /* renamed from: c  reason: collision with root package name */
    protected final TrackGroup f26025c;

    /* renamed from: d  reason: collision with root package name */
    protected final int f26026d;

    /* renamed from: e  reason: collision with root package name */
    protected final int[] f26027e;

    /* renamed from: f  reason: collision with root package name */
    private final int f26028f;

    /* renamed from: g  reason: collision with root package name */
    private final Format[] f26029g;

    /* renamed from: h  reason: collision with root package name */
    private final long[] f26030h;

    /* renamed from: i  reason: collision with root package name */
    private int f26031i;

    public c(TrackGroup trackGroup, int... iArr) {
        this(trackGroup, iArr, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int w(Format format, Format format2) {
        return format2.bitrate - format.bitrate;
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    public boolean b(int i4, long j4) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        boolean d4 = d(i4, elapsedRealtime);
        int i10 = 0;
        while (i10 < this.f26026d && !d4) {
            d4 = (i10 == i4 || d(i10, elapsedRealtime)) ? false : true;
            i10++;
        }
        if (d4) {
            long[] jArr = this.f26030h;
            jArr[i4] = Math.max(jArr[i4], z0.b(elapsedRealtime, j4, Long.MAX_VALUE));
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    public void c() {
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    public boolean d(int i4, long j4) {
        return this.f26030h[i4] > j4;
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    public /* synthetic */ boolean e(long j4, com.google.android.exoplayer2.source.chunk.f fVar, List list) {
        return f.d(this, j4, fVar, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f26025c == cVar.f26025c && Arrays.equals(this.f26027e, cVar.f26027e);
    }

    @Override // com.google.android.exoplayer2.trackselection.l
    public final Format f(int i4) {
        return this.f26029g[i4];
    }

    @Override // com.google.android.exoplayer2.trackselection.l
    public final int g(int i4) {
        return this.f26027e[i4];
    }

    @Override // com.google.android.exoplayer2.trackselection.l
    public final int getType() {
        return this.f26028f;
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    public void h(float f10) {
    }

    public int hashCode() {
        if (this.f26031i == 0) {
            this.f26031i = (System.identityHashCode(this.f26025c) * 31) + Arrays.hashCode(this.f26027e);
        }
        return this.f26031i;
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    public /* synthetic */ void j() {
        f.a(this);
    }

    @Override // com.google.android.exoplayer2.trackselection.l
    public final int k(int i4) {
        for (int i10 = 0; i10 < this.f26026d; i10++) {
            if (this.f26027e[i10] == i4) {
                return i10;
            }
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.trackselection.l
    public final TrackGroup l() {
        return this.f26025c;
    }

    @Override // com.google.android.exoplayer2.trackselection.l
    public final int length() {
        return this.f26027e.length;
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    public /* synthetic */ void m(boolean z9) {
        f.b(this, z9);
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    public void n() {
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    public int o(long j4, List<? extends com.google.android.exoplayer2.source.chunk.n> list) {
        return list.size();
    }

    @Override // com.google.android.exoplayer2.trackselection.l
    public final int p(Format format) {
        for (int i4 = 0; i4 < this.f26026d; i4++) {
            if (this.f26029g[i4] == format) {
                return i4;
            }
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    public final int r() {
        return this.f26027e[a()];
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    public final Format s() {
        return this.f26029g[a()];
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    public /* synthetic */ void u() {
        f.c(this);
    }

    public c(TrackGroup trackGroup, int[] iArr, int i4) {
        int i10 = 0;
        com.google.android.exoplayer2.util.a.i(iArr.length > 0);
        this.f26028f = i4;
        this.f26025c = (TrackGroup) com.google.android.exoplayer2.util.a.g(trackGroup);
        int length = iArr.length;
        this.f26026d = length;
        this.f26029g = new Format[length];
        for (int i11 = 0; i11 < iArr.length; i11++) {
            this.f26029g[i11] = trackGroup.getFormat(iArr[i11]);
        }
        Arrays.sort(this.f26029g, b.f26024a);
        this.f26027e = new int[this.f26026d];
        while (true) {
            int i12 = this.f26026d;
            if (i10 < i12) {
                this.f26027e[i10] = trackGroup.indexOf(this.f26029g[i10]);
                i10++;
            } else {
                this.f26030h = new long[i12];
                return;
            }
        }
    }
}
