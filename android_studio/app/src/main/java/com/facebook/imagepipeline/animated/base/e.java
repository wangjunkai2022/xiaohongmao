package com.facebook.imagepipeline.animated.base;

import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: AnimatedImageFrame.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public interface e {
    void a(int width, int height, Bitmap bitmap);

    int b();

    int c();

    int d();

    void dispose();

    int getHeight();

    int getWidth();
}
