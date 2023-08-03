package com.facebook.imagepipeline.datasource;

import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.List;

/* compiled from: BaseListBitmapDataSubscriber.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public abstract class d extends com.facebook.datasource.c<List<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> {
    @Override // com.facebook.datasource.c
    public void f(com.facebook.datasource.d<List<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> dataSource) {
        if (dataSource.b()) {
            List<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> a10 = dataSource.a();
            if (a10 == null) {
                g(null);
                return;
            }
            try {
                ArrayList arrayList = new ArrayList(a10.size());
                for (com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar : a10) {
                    if (aVar != null && (aVar.q() instanceof com.facebook.imagepipeline.image.b)) {
                        arrayList.add(((com.facebook.imagepipeline.image.b) aVar.q()).k());
                    } else {
                        arrayList.add(null);
                    }
                }
                g(arrayList);
            } finally {
                for (com.facebook.common.references.a<com.facebook.imagepipeline.image.c> next : a10) {
                    com.facebook.common.references.a.k(next);
                }
            }
        }
    }

    protected abstract void g(@r7.h List<Bitmap> bitmapList);
}
