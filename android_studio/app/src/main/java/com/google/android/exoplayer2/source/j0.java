package com.google.android.exoplayer2.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import java.util.List;

/* compiled from: MediaSourceFactory.java */
/* loaded from: classes2.dex */
public interface j0 {
    @Deprecated
    j0 a(@Nullable String str);

    @Deprecated
    j0 b(@Nullable List<StreamKey> list);

    z c(com.google.android.exoplayer2.b1 b1Var);

    int[] d();

    j0 e(@Nullable com.google.android.exoplayer2.drm.x xVar);

    @Deprecated
    z f(Uri uri);

    j0 g(@Nullable com.google.android.exoplayer2.upstream.f0 f0Var);

    @Deprecated
    j0 h(@Nullable HttpDataSource.b bVar);

    @Deprecated
    j0 i(@Nullable com.google.android.exoplayer2.drm.u uVar);
}
