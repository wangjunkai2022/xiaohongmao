package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;

/* compiled from: OrientedDrawable.java */
/* loaded from: classes.dex */
public class k extends h {
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    final Matrix f11484e;

    /* renamed from: f  reason: collision with root package name */
    private int f11485f;

    /* renamed from: g  reason: collision with root package name */
    private int f11486g;

    /* renamed from: h  reason: collision with root package name */
    private final Matrix f11487h;

    /* renamed from: i  reason: collision with root package name */
    private final RectF f11488i;

    public k(Drawable drawable, int rotationAngle) {
        this(drawable, rotationAngle, 0);
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int i4;
        if (this.f11485f <= 0 && ((i4 = this.f11486g) == 0 || i4 == 1)) {
            super.draw(canvas);
            return;
        }
        int save = canvas.save();
        canvas.concat(this.f11484e);
        super.draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // com.facebook.drawee.drawable.h, com.facebook.drawee.drawable.u
    public void f(Matrix transform) {
        v(transform);
        if (this.f11484e.isIdentity()) {
            return;
        }
        transform.preConcat(this.f11484e);
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        int i4 = this.f11486g;
        if (i4 != 5 && i4 != 7 && this.f11485f % com.facebook.imagepipeline.common.e.f12205e == 0) {
            return super.getIntrinsicHeight();
        }
        return super.getIntrinsicWidth();
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        int i4 = this.f11486g;
        if (i4 != 5 && i4 != 7 && this.f11485f % com.facebook.imagepipeline.common.e.f12205e == 0) {
            return super.getIntrinsicWidth();
        }
        return super.getIntrinsicHeight();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect bounds) {
        int i4;
        Drawable current = getCurrent();
        int i10 = this.f11485f;
        if (i10 <= 0 && ((i4 = this.f11486g) == 0 || i4 == 1)) {
            current.setBounds(bounds);
            return;
        }
        int i11 = this.f11486g;
        if (i11 == 2) {
            this.f11484e.setScale(-1.0f, 1.0f);
        } else if (i11 == 7) {
            this.f11484e.setRotate(270.0f, bounds.centerX(), bounds.centerY());
            this.f11484e.postScale(-1.0f, 1.0f);
        } else if (i11 == 4) {
            this.f11484e.setScale(1.0f, -1.0f);
        } else if (i11 != 5) {
            this.f11484e.setRotate(i10, bounds.centerX(), bounds.centerY());
        } else {
            this.f11484e.setRotate(270.0f, bounds.centerX(), bounds.centerY());
            this.f11484e.postScale(1.0f, -1.0f);
        }
        this.f11487h.reset();
        this.f11484e.invert(this.f11487h);
        this.f11488i.set(bounds);
        this.f11487h.mapRect(this.f11488i);
        RectF rectF = this.f11488i;
        current.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    public k(Drawable drawable, int rotationAngle, int exifOrientation) {
        super(drawable);
        this.f11487h = new Matrix();
        this.f11488i = new RectF();
        this.f11484e = new Matrix();
        this.f11485f = rotationAngle - (rotationAngle % 90);
        exifOrientation = (exifOrientation < 0 || exifOrientation > 8) ? 0 : 0;
        this.f11486g = exifOrientation;
    }
}
