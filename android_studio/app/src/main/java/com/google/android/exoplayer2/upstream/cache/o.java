package com.google.android.exoplayer2.upstream.cache;

import android.net.Uri;
import androidx.annotation.Nullable;

/* compiled from: ContentMetadata.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class o {
    public static long a(p pVar) {
        return pVar.b(p.f27176c, -1L);
    }

    @Nullable
    public static Uri b(p pVar) {
        String d4 = pVar.d(p.f27175b, null);
        if (d4 == null) {
            return null;
        }
        return Uri.parse(d4);
    }
}
