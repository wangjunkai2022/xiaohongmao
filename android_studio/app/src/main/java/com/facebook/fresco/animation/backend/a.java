package com.facebook.fresco.animation.backend;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.IntRange;
import r7.h;

/* compiled from: AnimationBackend.java */
/* loaded from: classes.dex */
public interface a extends d {

    /* renamed from: a  reason: collision with root package name */
    public static final int f11663a = -1;

    int b();

    void clear();

    int d();

    void e(Rect bounds);

    int f();

    void g(@h ColorFilter colorFilter);

    boolean h(Drawable parent, Canvas canvas, int frameNumber);

    void k(@IntRange(from = 0, to = 255) int alpha);
}
