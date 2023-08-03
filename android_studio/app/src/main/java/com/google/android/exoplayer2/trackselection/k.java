package com.google.android.exoplayer2.trackselection;

import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.z;
import com.google.android.exoplayer2.trackselection.g;
import com.google.android.exoplayer2.trackselection.k;
import com.google.android.exoplayer2.trackselection.n;
import java.util.List;
import java.util.Random;

/* compiled from: RandomTrackSelection.java */
/* loaded from: classes2.dex */
public final class k extends c {

    /* renamed from: j  reason: collision with root package name */
    private final Random f26052j;

    /* renamed from: k  reason: collision with root package name */
    private int f26053k;

    public k(TrackGroup trackGroup, int[] iArr, int i4, Random random) {
        super(trackGroup, iArr, i4);
        this.f26052j = random;
        this.f26053k = random.nextInt(this.f26026d);
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    public int a() {
        return this.f26053k;
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    @Nullable
    public Object i() {
        return null;
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    public void q(long j4, long j10, long j11, List<? extends com.google.android.exoplayer2.source.chunk.n> list, com.google.android.exoplayer2.source.chunk.o[] oVarArr) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int i4 = 0;
        for (int i10 = 0; i10 < this.f26026d; i10++) {
            if (!d(i10, elapsedRealtime)) {
                i4++;
            }
        }
        this.f26053k = this.f26052j.nextInt(i4);
        if (i4 != this.f26026d) {
            int i11 = 0;
            for (int i12 = 0; i12 < this.f26026d; i12++) {
                if (!d(i12, elapsedRealtime)) {
                    int i13 = i11 + 1;
                    if (this.f26053k == i11) {
                        this.f26053k = i12;
                        return;
                    }
                    i11 = i13;
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    public int t() {
        return 3;
    }

    /* compiled from: RandomTrackSelection.java */
    /* loaded from: classes2.dex */
    public static final class a implements g.b {

        /* renamed from: a  reason: collision with root package name */
        private final Random f26054a;

        public a() {
            this.f26054a = new Random();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ g c(g.a aVar) {
            return new k(aVar.f26034a, aVar.f26035b, aVar.f26036c, this.f26054a);
        }

        @Override // com.google.android.exoplayer2.trackselection.g.b
        public g[] a(g.a[] aVarArr, com.google.android.exoplayer2.upstream.e eVar, z.a aVar, s2 s2Var) {
            return n.a(aVarArr, new n.a() { // from class: com.google.android.exoplayer2.trackselection.j
                @Override // com.google.android.exoplayer2.trackselection.n.a
                public final g a(g.a aVar2) {
                    g c10;
                    c10 = k.a.this.c(aVar2);
                    return c10;
                }
            });
        }

        public a(int i4) {
            this.f26054a = new Random(i4);
        }
    }
}
