package com.google.android.exoplayer2.trackselection;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.TrackGroup;
import java.util.List;

/* compiled from: FixedTrackSelection.java */
/* loaded from: classes2.dex */
public final class h extends c {

    /* renamed from: j  reason: collision with root package name */
    private final int f26037j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final Object f26038k;

    public h(TrackGroup trackGroup, int i4) {
        this(trackGroup, i4, 0);
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    public int a() {
        return 0;
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    @Nullable
    public Object i() {
        return this.f26038k;
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    public void q(long j4, long j10, long j11, List<? extends com.google.android.exoplayer2.source.chunk.n> list, com.google.android.exoplayer2.source.chunk.o[] oVarArr) {
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    public int t() {
        return this.f26037j;
    }

    public h(TrackGroup trackGroup, int i4, int i10) {
        this(trackGroup, i4, i10, 0, null);
    }

    public h(TrackGroup trackGroup, int i4, int i10, int i11, @Nullable Object obj) {
        super(trackGroup, new int[]{i4}, i10);
        this.f26037j = i11;
        this.f26038k = obj;
    }
}
