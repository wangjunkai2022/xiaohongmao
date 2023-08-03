package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import com.facebook.drawee.drawable.s;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: ScaleTypeDrawable.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class r extends h {
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    s.c f11541e;
    @r7.h
    @VisibleForTesting

    /* renamed from: f  reason: collision with root package name */
    Object f11542f;
    @r7.h
    @VisibleForTesting

    /* renamed from: g  reason: collision with root package name */
    PointF f11543g;
    @VisibleForTesting

    /* renamed from: h  reason: collision with root package name */
    int f11544h;
    @VisibleForTesting

    /* renamed from: i  reason: collision with root package name */
    int f11545i;
    @r7.h
    @VisibleForTesting

    /* renamed from: j  reason: collision with root package name */
    Matrix f11546j;

    /* renamed from: k  reason: collision with root package name */
    private Matrix f11547k;

    public r(@r7.h Drawable drawable, s.c scaleType) {
        super(drawable);
        this.f11543g = null;
        this.f11544h = 0;
        this.f11545i = 0;
        this.f11547k = new Matrix();
        this.f11541e = scaleType;
    }

    private void A() {
        boolean z9;
        s.c cVar = this.f11541e;
        boolean z10 = true;
        if (cVar instanceof s.o) {
            Object state = ((s.o) cVar).getState();
            z9 = state == null || !state.equals(this.f11542f);
            this.f11542f = state;
        } else {
            z9 = false;
        }
        Drawable current = getCurrent();
        if (current == null) {
            return;
        }
        if (this.f11544h == current.getIntrinsicWidth() && this.f11545i == current.getIntrinsicHeight()) {
            z10 = false;
        }
        if (z10 || z9) {
            z();
        }
    }

    @r7.h
    public PointF B() {
        return this.f11543g;
    }

    public s.c C() {
        return this.f11541e;
    }

    public void D(@r7.h PointF focusPoint) {
        if (com.facebook.common.internal.i.a(this.f11543g, focusPoint)) {
            return;
        }
        if (focusPoint == null) {
            this.f11543g = null;
        } else {
            if (this.f11543g == null) {
                this.f11543g = new PointF();
            }
            this.f11543g.set(focusPoint);
        }
        z();
        invalidateSelf();
    }

    public void E(s.c scaleType) {
        if (com.facebook.common.internal.i.a(this.f11541e, scaleType)) {
            return;
        }
        this.f11541e = scaleType;
        this.f11542f = null;
        z();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        A();
        if (this.f11546j != null) {
            int save = canvas.save();
            canvas.clipRect(getBounds());
            canvas.concat(this.f11546j);
            super.draw(canvas);
            canvas.restoreToCount(save);
            return;
        }
        super.draw(canvas);
    }

    @Override // com.facebook.drawee.drawable.h, com.facebook.drawee.drawable.u
    public void f(Matrix transform) {
        v(transform);
        A();
        Matrix matrix = this.f11546j;
        if (matrix != null) {
            transform.preConcat(matrix);
        }
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        z();
    }

    @Override // com.facebook.drawee.drawable.h
    @r7.h
    public Drawable x(@r7.h Drawable newDelegate) {
        Drawable x9 = super.x(newDelegate);
        z();
        return x9;
    }

    @VisibleForTesting
    void z() {
        Drawable current = getCurrent();
        if (current == null) {
            this.f11545i = 0;
            this.f11544h = 0;
            this.f11546j = null;
            return;
        }
        Rect bounds = getBounds();
        int width = bounds.width();
        int height = bounds.height();
        int intrinsicWidth = current.getIntrinsicWidth();
        this.f11544h = intrinsicWidth;
        int intrinsicHeight = current.getIntrinsicHeight();
        this.f11545i = intrinsicHeight;
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            current.setBounds(bounds);
            this.f11546j = null;
        } else if (intrinsicWidth == width && intrinsicHeight == height) {
            current.setBounds(bounds);
            this.f11546j = null;
        } else if (this.f11541e == s.c.f11558a) {
            current.setBounds(bounds);
            this.f11546j = null;
        } else {
            current.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            s.c cVar = this.f11541e;
            Matrix matrix = this.f11547k;
            PointF pointF = this.f11543g;
            cVar.a(matrix, bounds, intrinsicWidth, intrinsicHeight, pointF != null ? pointF.x : 0.5f, pointF != null ? pointF.y : 0.5f);
            this.f11546j = this.f11547k;
        }
    }

    public r(@r7.h Drawable drawable, s.c scaleType, @r7.h PointF focusPoint) {
        super(drawable);
        this.f11543g = null;
        this.f11544h = 0;
        this.f11545i = 0;
        this.f11547k = new Matrix();
        this.f11541e = scaleType;
        this.f11543g = focusPoint;
    }
}
