package com.facebook.imagepipeline.animated.base;

import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: AnimatedImage.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public interface d {

    /* renamed from: a  reason: collision with root package name */
    public static final int f11835a = 0;

    int a();

    int b();

    int c();

    void dispose();

    AnimatedDrawableFrameInfo e(int frameNumber);

    boolean f();

    int getDuration();

    int getHeight();

    int getWidth();

    @h
    Bitmap.Config h();

    e i(int frameNumber);

    int[] j();
}
