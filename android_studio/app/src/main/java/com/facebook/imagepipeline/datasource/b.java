package com.facebook.imagepipeline.datasource;

import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: BaseBitmapDataSubscriber.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public abstract class b extends com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {
    @Override // com.facebook.datasource.c
    public void f(com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> dataSource) {
        if (dataSource.b()) {
            com.facebook.common.references.a<com.facebook.imagepipeline.image.c> a10 = dataSource.a();
            Bitmap bitmap = null;
            if (a10 != null && (a10.q() instanceof com.facebook.imagepipeline.image.b)) {
                bitmap = ((com.facebook.imagepipeline.image.b) a10.q()).k();
            }
            try {
                g(bitmap);
            } finally {
                com.facebook.common.references.a.k(a10);
            }
        }
    }

    protected abstract void g(@r7.h Bitmap bitmap);
}
