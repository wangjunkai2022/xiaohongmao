package com.facebook.imagepipeline.animated.base;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: AnimatedDrawableBackend.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public interface a {
    int a();

    int b();

    int c();

    void d();

    AnimatedDrawableFrameInfo e(int frameNumber);

    void f(int frameNumber, Canvas canvas);

    a g(@h Rect bounds);

    int getHeight();

    int getWidth();

    boolean h(int frameNumber);

    int i(int timestampMs);

    @h
    com.facebook.common.references.a<Bitmap> j(int frameNumber);

    int k(int frameNumber);

    int l();

    int m(int frameNumber);

    int n();

    int o();

    int p();

    f q();
}
