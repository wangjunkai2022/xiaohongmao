package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;

/* compiled from: LruPoolStrategy.java */
/* loaded from: classes.dex */
interface l {
    String a(Bitmap bitmap);

    String b(int i4, int i10, Bitmap.Config config);

    int c(Bitmap bitmap);

    void d(Bitmap bitmap);

    @Nullable
    Bitmap e(int i4, int i10, Bitmap.Config config);

    @Nullable
    Bitmap removeLast();
}
