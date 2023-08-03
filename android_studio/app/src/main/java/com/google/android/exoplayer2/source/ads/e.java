package com.google.android.exoplayer2.source.ads;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.ads.AdsMediaSource;
import com.google.android.exoplayer2.upstream.o;
import com.google.android.exoplayer2.v1;
import java.io.IOException;

/* compiled from: AdsLoader.java */
/* loaded from: classes2.dex */
public interface e {

    /* compiled from: AdsLoader.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(c cVar);

        void b();

        void c();

        void d(AdsMediaSource.AdLoadException adLoadException, o oVar);
    }

    void a(AdsMediaSource adsMediaSource, int i4, int i10);

    void b(@Nullable v1 v1Var);

    void c(AdsMediaSource adsMediaSource, o oVar, Object obj, com.google.android.exoplayer2.ui.c cVar, a aVar);

    void d(AdsMediaSource adsMediaSource, int i4, int i10, IOException iOException);

    void e(AdsMediaSource adsMediaSource, a aVar);

    void f(int... iArr);

    void release();
}
