package com.google.android.exoplayer2.trackselection;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.g2;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.z;

/* compiled from: TrackSelector.java */
/* loaded from: classes2.dex */
public abstract class o {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private a f26060a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private com.google.android.exoplayer2.upstream.e f26061b;

    /* compiled from: TrackSelector.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final com.google.android.exoplayer2.upstream.e a() {
        return (com.google.android.exoplayer2.upstream.e) com.google.android.exoplayer2.util.a.g(this.f26061b);
    }

    public final void b(a aVar, com.google.android.exoplayer2.upstream.e eVar) {
        this.f26060a = aVar;
        this.f26061b = eVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c() {
        a aVar = this.f26060a;
        if (aVar != null) {
            aVar.a();
        }
    }

    public abstract void d(@Nullable Object obj);

    public abstract p e(g2[] g2VarArr, TrackGroupArray trackGroupArray, z.a aVar, s2 s2Var) throws ExoPlaybackException;
}
