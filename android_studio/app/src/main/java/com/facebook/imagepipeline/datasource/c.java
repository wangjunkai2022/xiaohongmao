package com.facebook.imagepipeline.datasource;

import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: BaseBitmapReferenceDataSubscriber.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public abstract class c extends com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {
    @Override // com.facebook.datasource.c
    public void f(@r7.g com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> dataSource) {
        if (dataSource.b()) {
            com.facebook.common.references.a<com.facebook.imagepipeline.image.c> a10 = dataSource.a();
            com.facebook.common.references.a<Bitmap> aVar = null;
            if (a10 != null && (a10.q() instanceof com.facebook.imagepipeline.image.d)) {
                aVar = ((com.facebook.imagepipeline.image.d) a10.q()).p();
            }
            try {
                g(aVar);
            } finally {
                com.facebook.common.references.a.k(aVar);
                com.facebook.common.references.a.k(a10);
            }
        }
    }

    protected abstract void g(@r7.h com.facebook.common.references.a<Bitmap> bitmapReference);
}
