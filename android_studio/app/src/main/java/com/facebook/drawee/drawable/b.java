package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;

/* compiled from: AutoRotateDrawable.java */
/* loaded from: classes.dex */
public class b extends h implements Runnable, c {

    /* renamed from: i  reason: collision with root package name */
    private static final int f11443i = 360;

    /* renamed from: j  reason: collision with root package name */
    private static final int f11444j = 20;

    /* renamed from: e  reason: collision with root package name */
    private int f11445e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f11446f;
    @VisibleForTesting

    /* renamed from: g  reason: collision with root package name */
    float f11447g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f11448h;

    public b(Drawable drawable, int interval) {
        this(drawable, interval, true);
    }

    private int A() {
        return (int) ((20.0f / this.f11445e) * 360.0f);
    }

    private void C() {
        if (this.f11448h) {
            return;
        }
        this.f11448h = true;
        scheduleSelf(this, SystemClock.uptimeMillis() + 20);
    }

    public void B() {
        this.f11447g = 0.0f;
        this.f11448h = false;
        unscheduleSelf(this);
        invalidateSelf();
    }

    public void D(boolean clockwise) {
        this.f11446f = clockwise;
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int save = canvas.save();
        Rect bounds = getBounds();
        int i4 = bounds.right;
        int i10 = bounds.left;
        int i11 = i4 - i10;
        int i12 = bounds.bottom;
        int i13 = bounds.top;
        int i14 = i12 - i13;
        float f10 = this.f11447g;
        if (!this.f11446f) {
            f10 = 360.0f - f10;
        }
        canvas.rotate(f10, i10 + (i11 / 2), i13 + (i14 / 2));
        super.draw(canvas);
        canvas.restoreToCount(save);
        C();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f11448h = false;
        this.f11447g += A();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.c
    /* renamed from: z */
    public b e() {
        return new b(f.a(s()), this.f11445e, this.f11446f);
    }

    public b(Drawable drawable, int interval, boolean clockwise) {
        super((Drawable) com.facebook.common.internal.j.i(drawable));
        this.f11447g = 0.0f;
        this.f11448h = false;
        this.f11445e = interval;
        this.f11446f = clockwise;
    }
}
