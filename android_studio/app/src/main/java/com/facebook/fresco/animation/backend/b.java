package com.facebook.fresco.animation.backend;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.IntRange;
import com.facebook.fresco.animation.backend.a;
import com.facebook.infer.annotation.Nullsafe;
import com.ksyun.media.player.KSYMediaMeta;
import r7.h;

/* compiled from: AnimationBackendDelegate.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class b<T extends a> implements a {

    /* renamed from: g  reason: collision with root package name */
    private static final int f11664g = -1;
    @h

    /* renamed from: c  reason: collision with root package name */
    private T f11665c;
    @IntRange(from = -1, to = KSYMediaMeta.AV_CH_LAYOUT_7POINT1_WIDE_BACK)

    /* renamed from: d  reason: collision with root package name */
    private int f11666d = -1;
    @h

    /* renamed from: e  reason: collision with root package name */
    private ColorFilter f11667e;
    @h

    /* renamed from: f  reason: collision with root package name */
    private Rect f11668f;

    public b(@h T animationBackend) {
        this.f11665c = animationBackend;
    }

    @SuppressLint({com.google.common.net.b.G})
    private void i(a backend) {
        Rect rect = this.f11668f;
        if (rect != null) {
            backend.e(rect);
        }
        int i4 = this.f11666d;
        if (i4 >= 0 && i4 <= 255) {
            backend.k(i4);
        }
        ColorFilter colorFilter = this.f11667e;
        if (colorFilter != null) {
            backend.g(colorFilter);
        }
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int a() {
        T t9 = this.f11665c;
        if (t9 == null) {
            return 0;
        }
        return t9.a();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public int b() {
        T t9 = this.f11665c;
        if (t9 == null) {
            return 0;
        }
        return t9.b();
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int c() {
        T t9 = this.f11665c;
        if (t9 == null) {
            return 0;
        }
        return t9.c();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void clear() {
        T t9 = this.f11665c;
        if (t9 != null) {
            t9.clear();
        }
    }

    @Override // com.facebook.fresco.animation.backend.a
    public int d() {
        T t9 = this.f11665c;
        if (t9 == null) {
            return -1;
        }
        return t9.d();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void e(Rect bounds) {
        T t9 = this.f11665c;
        if (t9 != null) {
            t9.e(bounds);
        }
        this.f11668f = bounds;
    }

    @Override // com.facebook.fresco.animation.backend.a
    public int f() {
        T t9 = this.f11665c;
        if (t9 == null) {
            return -1;
        }
        return t9.f();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void g(@h ColorFilter colorFilter) {
        T t9 = this.f11665c;
        if (t9 != null) {
            t9.g(colorFilter);
        }
        this.f11667e = colorFilter;
    }

    @Override // com.facebook.fresco.animation.backend.a
    public boolean h(Drawable parent, Canvas canvas, int frameNumber) {
        T t9 = this.f11665c;
        return t9 != null && t9.h(parent, canvas, frameNumber);
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int j(int frameNumber) {
        T t9 = this.f11665c;
        if (t9 == null) {
            return 0;
        }
        return t9.j(frameNumber);
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void k(@IntRange(from = 0, to = 255) int alpha) {
        T t9 = this.f11665c;
        if (t9 != null) {
            t9.k(alpha);
        }
        this.f11666d = alpha;
    }

    @h
    public T l() {
        return this.f11665c;
    }

    public void m(@h T animationBackend) {
        this.f11665c = animationBackend;
        if (animationBackend != null) {
            i(animationBackend);
        }
    }
}
