package com.facebook.cache.common;

import android.net.Uri;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: CacheKey.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public interface c {
    String a();

    boolean b(Uri uri);

    boolean c();

    boolean equals(Object o9);

    int hashCode();

    String toString();
}
