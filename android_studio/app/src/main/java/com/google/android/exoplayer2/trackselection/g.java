package com.google.android.exoplayer2.trackselection;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.z;
import java.util.List;

/* compiled from: ExoTrackSelection.java */
/* loaded from: classes2.dex */
public interface g extends l {

    /* compiled from: ExoTrackSelection.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final TrackGroup f26034a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f26035b;

        /* renamed from: c  reason: collision with root package name */
        public final int f26036c;

        public a(TrackGroup trackGroup, int... iArr) {
            this(trackGroup, iArr, 0);
        }

        public a(TrackGroup trackGroup, int[] iArr, int i4) {
            this.f26034a = trackGroup;
            this.f26035b = iArr;
            this.f26036c = i4;
        }
    }

    /* compiled from: ExoTrackSelection.java */
    /* loaded from: classes2.dex */
    public interface b {
        g[] a(a[] aVarArr, com.google.android.exoplayer2.upstream.e eVar, z.a aVar, s2 s2Var);
    }

    int a();

    boolean b(int i4, long j4);

    void c();

    boolean d(int i4, long j4);

    boolean e(long j4, com.google.android.exoplayer2.source.chunk.f fVar, List<? extends com.google.android.exoplayer2.source.chunk.n> list);

    void h(float f10);

    @Nullable
    Object i();

    void j();

    void m(boolean z9);

    void n();

    int o(long j4, List<? extends com.google.android.exoplayer2.source.chunk.n> list);

    void q(long j4, long j10, long j11, List<? extends com.google.android.exoplayer2.source.chunk.n> list, com.google.android.exoplayer2.source.chunk.o[] oVarArr);

    int r();

    Format s();

    int t();

    void u();
}
