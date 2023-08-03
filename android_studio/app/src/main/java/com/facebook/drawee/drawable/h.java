package com.facebook.drawee.drawable;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: ForwardingDrawable.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class h extends Drawable implements Drawable.Callback, u, t, d {

    /* renamed from: d  reason: collision with root package name */
    private static final Matrix f11473d = new Matrix();
    @r7.h

    /* renamed from: a  reason: collision with root package name */
    private Drawable f11474a;

    /* renamed from: b  reason: collision with root package name */
    private final e f11475b = new e();
    @r7.h

    /* renamed from: c  reason: collision with root package name */
    protected u f11476c;

    public h(@r7.h Drawable drawable) {
        this.f11474a = drawable;
        f.e(drawable, this, this);
    }

    @Override // com.facebook.drawee.drawable.d
    @r7.h
    public Drawable b(@r7.h Drawable newDrawable) {
        return x(newDrawable);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f11474a;
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    @Override // com.facebook.drawee.drawable.u
    public void f(Matrix transform) {
        v(transform);
    }

    @Override // android.graphics.drawable.Drawable
    @r7.h
    public Drawable.ConstantState getConstantState() {
        Drawable drawable = this.f11474a;
        if (drawable == null) {
            return super.getConstantState();
        }
        return drawable.getConstantState();
    }

    @Override // android.graphics.drawable.Drawable
    @r7.h
    public Drawable getCurrent() {
        return this.f11474a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f11474a;
        if (drawable == null) {
            return super.getIntrinsicHeight();
        }
        return drawable.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f11474a;
        if (drawable == null) {
            return super.getIntrinsicWidth();
        }
        return drawable.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f11474a;
        if (drawable == null) {
            return 0;
        }
        return drawable.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect padding) {
        Drawable drawable = this.f11474a;
        if (drawable == null) {
            return super.getPadding(padding);
        }
        return drawable.getPadding(padding);
    }

    @Override // com.facebook.drawee.drawable.t
    public void i(u transformCallback) {
        this.f11476c = transformCallback;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable who) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f11474a;
        if (drawable == null) {
            return false;
        }
        return drawable.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f11474a;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect bounds) {
        Drawable drawable = this.f11474a;
        if (drawable != null) {
            drawable.setBounds(bounds);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int level) {
        Drawable drawable = this.f11474a;
        if (drawable == null) {
            return super.onLevelChange(level);
        }
        return drawable.setLevel(level);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] state) {
        Drawable drawable = this.f11474a;
        if (drawable == null) {
            return super.onStateChange(state);
        }
        return drawable.setState(state);
    }

    @Override // com.facebook.drawee.drawable.u
    public void q(RectF bounds) {
        u uVar = this.f11476c;
        if (uVar != null) {
            uVar.q(bounds);
        } else {
            bounds.set(getBounds());
        }
    }

    @Override // com.facebook.drawee.drawable.d
    @r7.h
    public Drawable s() {
        return getCurrent();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable who, Runnable what, long when) {
        scheduleSelf(what, when);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        this.f11475b.b(alpha);
        Drawable drawable = this.f11474a;
        if (drawable != null) {
            drawable.setAlpha(alpha);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@r7.h ColorFilter colorFilter) {
        this.f11475b.c(colorFilter);
        Drawable drawable = this.f11474a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean dither) {
        this.f11475b.d(dither);
        Drawable drawable = this.f11474a;
        if (drawable != null) {
            drawable.setDither(dither);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean filterBitmap) {
        this.f11475b.e(filterBitmap);
        Drawable drawable = this.f11474a;
        if (drawable != null) {
            drawable.setFilterBitmap(filterBitmap);
        }
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void setHotspot(float x9, float y9) {
        Drawable drawable = this.f11474a;
        if (drawable != null) {
            drawable.setHotspot(x9, y9);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean visible, boolean restart) {
        boolean visible2 = super.setVisible(visible, restart);
        Drawable drawable = this.f11474a;
        return drawable == null ? visible2 : drawable.setVisible(visible, restart);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable who, Runnable what) {
        unscheduleSelf(what);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void v(Matrix transform) {
        u uVar = this.f11476c;
        if (uVar != null) {
            uVar.f(transform);
        } else {
            transform.reset();
        }
    }

    public void w(RectF outBounds) {
        Matrix matrix = f11473d;
        v(matrix);
        outBounds.set(getBounds());
        matrix.mapRect(outBounds);
    }

    @r7.h
    public Drawable x(@r7.h Drawable newDelegate) {
        Drawable y9 = y(newDelegate);
        invalidateSelf();
        return y9;
    }

    @r7.h
    protected Drawable y(@r7.h Drawable newDelegate) {
        Drawable drawable = this.f11474a;
        f.e(drawable, null, null);
        f.e(newDelegate, null, null);
        f.f(newDelegate, this.f11475b);
        f.b(newDelegate, this);
        f.e(newDelegate, this, this);
        this.f11474a = newDelegate;
        return drawable;
    }
}
