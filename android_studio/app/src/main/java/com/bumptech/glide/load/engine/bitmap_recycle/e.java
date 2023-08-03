package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;

/* compiled from: BitmapPool.java */
/* loaded from: classes.dex */
public interface e {
    void a(int i4);

    void b();

    void c(float f10);

    void d(Bitmap bitmap);

    @NonNull
    Bitmap e(int i4, int i10, Bitmap.Config config);

    @NonNull
    Bitmap f(int i4, int i10, Bitmap.Config config);

    long getMaxSize();
}
