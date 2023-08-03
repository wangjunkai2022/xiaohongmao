package com.facebook.imagepipeline.cache;

import android.net.Uri;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: DefaultCacheKeyFactory.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class m implements g {
    @r7.h

    /* renamed from: a  reason: collision with root package name */
    private static m f12134a;

    protected m() {
    }

    public static synchronized m f() {
        m mVar;
        synchronized (m.class) {
            if (f12134a == null) {
                f12134a = new m();
            }
            mVar = f12134a;
        }
        return mVar;
    }

    @Override // com.facebook.imagepipeline.cache.g
    public com.facebook.cache.common.c a(ImageRequest request, @r7.h Object callerContext) {
        return new c(e(request.w()).toString(), request.s(), request.u(), request.i(), null, null, callerContext);
    }

    @Override // com.facebook.imagepipeline.cache.g
    public com.facebook.cache.common.c b(ImageRequest request, Uri sourceUri, @r7.h Object callerContext) {
        return new com.facebook.cache.common.j(e(sourceUri).toString());
    }

    @Override // com.facebook.imagepipeline.cache.g
    public com.facebook.cache.common.c c(ImageRequest request, @r7.h Object callerContext) {
        com.facebook.cache.common.c cVar;
        String str;
        com.facebook.imagepipeline.request.d m9 = request.m();
        if (m9 != null) {
            com.facebook.cache.common.c a10 = m9.a();
            str = m9.getClass().getName();
            cVar = a10;
        } else {
            cVar = null;
            str = null;
        }
        return new c(e(request.w()).toString(), request.s(), request.u(), request.i(), cVar, str, callerContext);
    }

    @Override // com.facebook.imagepipeline.cache.g
    public com.facebook.cache.common.c d(ImageRequest request, @r7.h Object callerContext) {
        return b(request, request.w(), callerContext);
    }

    protected Uri e(Uri sourceUri) {
        return sourceUri;
    }
}
