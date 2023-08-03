package com.facebook.imagepipeline.cache;

import android.net.Uri;
import com.facebook.imagepipeline.request.ImageRequest;

/* compiled from: CacheKeyFactory.java */
/* loaded from: classes.dex */
public interface g {
    com.facebook.cache.common.c a(ImageRequest request, @r7.h Object callerContext);

    com.facebook.cache.common.c b(ImageRequest request, Uri sourceUri, @r7.h Object callerContext);

    com.facebook.cache.common.c c(ImageRequest request, @r7.h Object callerContext);

    com.facebook.cache.common.c d(ImageRequest request, @r7.h Object callerContext);
}
