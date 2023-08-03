package com.facebook.drawee.drawable;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* compiled from: ArrayDrawable.java */
/* loaded from: classes.dex */
public class a extends Drawable implements Drawable.Callback, u, t {
    @r7.h

    /* renamed from: a  reason: collision with root package name */
    private u f11433a;

    /* renamed from: c  reason: collision with root package name */
    private final Drawable[] f11435c;

    /* renamed from: d  reason: collision with root package name */
    private final d[] f11436d;

    /* renamed from: b  reason: collision with root package name */
    private final e f11434b = new e();

    /* renamed from: e  reason: collision with root package name */
    private final Rect f11437e = new Rect();

    /* renamed from: f  reason: collision with root package name */
    private boolean f11438f = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f11439g = false;

    /* renamed from: h  reason: collision with root package name */
    private boolean f11440h = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArrayDrawable.java */
    /* renamed from: com.facebook.drawee.drawable.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0090a implements d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f11441a;

        C0090a(final int val$index) {
            this.f11441a = val$index;
        }

        @Override // com.facebook.drawee.drawable.d
        public Drawable b(Drawable newDrawable) {
            return a.this.e(this.f11441a, newDrawable);
        }

        @Override // com.facebook.drawee.drawable.d
        public Drawable s() {
            return a.this.b(this.f11441a);
        }
    }

    public a(Drawable[] layers) {
        int i4 = 0;
        com.facebook.common.internal.j.i(layers);
        this.f11435c = layers;
        while (true) {
            Drawable[] drawableArr = this.f11435c;
            if (i4 < drawableArr.length) {
                f.e(drawableArr[i4], this, this);
                i4++;
            } else {
                this.f11436d = new d[drawableArr.length];
                return;
            }
        }
    }

    private d a(final int index) {
        return new C0090a(index);
    }

    @r7.h
    public Drawable b(int index) {
        com.facebook.common.internal.j.d(Boolean.valueOf(index >= 0));
        com.facebook.common.internal.j.d(Boolean.valueOf(index < this.f11435c.length));
        return this.f11435c[index];
    }

    public d c(int index) {
        com.facebook.common.internal.j.d(Boolean.valueOf(index >= 0));
        com.facebook.common.internal.j.d(Boolean.valueOf(index < this.f11436d.length));
        d[] dVarArr = this.f11436d;
        if (dVarArr[index] == null) {
            dVarArr[index] = a(index);
        }
        return this.f11436d[index];
    }

    public int d() {
        return this.f11435c.length;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int i4 = 0;
        while (true) {
            Drawable[] drawableArr = this.f11435c;
            if (i4 >= drawableArr.length) {
                return;
            }
            Drawable drawable = drawableArr[i4];
            if (drawable != null) {
                drawable.draw(canvas);
            }
            i4++;
        }
    }

    @r7.h
    public Drawable e(int index, @r7.h Drawable drawable) {
        com.facebook.common.internal.j.d(Boolean.valueOf(index >= 0));
        com.facebook.common.internal.j.d(Boolean.valueOf(index < this.f11435c.length));
        Drawable drawable2 = this.f11435c[index];
        if (drawable != drawable2) {
            if (drawable != null && this.f11440h) {
                drawable.mutate();
            }
            f.e(this.f11435c[index], null, null);
            f.e(drawable, null, null);
            f.f(drawable, this.f11434b);
            f.b(drawable, this);
            f.e(drawable, this, this);
            this.f11439g = false;
            this.f11435c[index] = drawable;
            invalidateSelf();
        }
        return drawable2;
    }

    @Override // com.facebook.drawee.drawable.u
    public void f(Matrix transform) {
        u uVar = this.f11433a;
        if (uVar != null) {
            uVar.f(transform);
        } else {
            transform.reset();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        int i4 = 0;
        int i10 = -1;
        while (true) {
            Drawable[] drawableArr = this.f11435c;
            if (i4 >= drawableArr.length) {
                break;
            }
            Drawable drawable = drawableArr[i4];
            if (drawable != null) {
                i10 = Math.max(i10, drawable.getIntrinsicHeight());
            }
            i4++;
        }
        if (i10 > 0) {
            return i10;
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        int i4 = 0;
        int i10 = -1;
        while (true) {
            Drawable[] drawableArr = this.f11435c;
            if (i4 >= drawableArr.length) {
                break;
            }
            Drawable drawable = drawableArr[i4];
            if (drawable != null) {
                i10 = Math.max(i10, drawable.getIntrinsicWidth());
            }
            i4++;
        }
        if (i10 > 0) {
            return i10;
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (this.f11435c.length == 0) {
            return -2;
        }
        int i4 = -1;
        int i10 = 1;
        while (true) {
            Drawable[] drawableArr = this.f11435c;
            if (i10 >= drawableArr.length) {
                return i4;
            }
            Drawable drawable = drawableArr[i10];
            if (drawable != null) {
                i4 = Drawable.resolveOpacity(i4, drawable.getOpacity());
            }
            i10++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect padding) {
        int i4 = 0;
        padding.left = 0;
        padding.top = 0;
        padding.right = 0;
        padding.bottom = 0;
        Rect rect = this.f11437e;
        while (true) {
            Drawable[] drawableArr = this.f11435c;
            if (i4 >= drawableArr.length) {
                return true;
            }
            Drawable drawable = drawableArr[i4];
            if (drawable != null) {
                drawable.getPadding(rect);
                padding.left = Math.max(padding.left, rect.left);
                padding.top = Math.max(padding.top, rect.top);
                padding.right = Math.max(padding.right, rect.right);
                padding.bottom = Math.max(padding.bottom, rect.bottom);
            }
            i4++;
        }
    }

    @Override // com.facebook.drawee.drawable.t
    public void i(u transformCallback) {
        this.f11433a = transformCallback;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable who) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (!this.f11439g) {
            this.f11438f = false;
            int i4 = 0;
            while (true) {
                Drawable[] drawableArr = this.f11435c;
                boolean z9 = true;
                if (i4 >= drawableArr.length) {
                    break;
                }
                Drawable drawable = drawableArr[i4];
                boolean z10 = this.f11438f;
                if (drawable == null || !drawable.isStateful()) {
                    z9 = false;
                }
                this.f11438f = z10 | z9;
                i4++;
            }
            this.f11439g = true;
        }
        return this.f11438f;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        int i4 = 0;
        while (true) {
            Drawable[] drawableArr = this.f11435c;
            if (i4 < drawableArr.length) {
                Drawable drawable = drawableArr[i4];
                if (drawable != null) {
                    drawable.mutate();
                }
                i4++;
            } else {
                this.f11440h = true;
                return this;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        int i4 = 0;
        while (true) {
            Drawable[] drawableArr = this.f11435c;
            if (i4 >= drawableArr.length) {
                return;
            }
            Drawable drawable = drawableArr[i4];
            if (drawable != null) {
                drawable.setBounds(bounds);
            }
            i4++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int level) {
        int i4 = 0;
        boolean z9 = false;
        while (true) {
            Drawable[] drawableArr = this.f11435c;
            if (i4 >= drawableArr.length) {
                return z9;
            }
            Drawable drawable = drawableArr[i4];
            if (drawable != null && drawable.setLevel(level)) {
                z9 = true;
            }
            i4++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] state) {
        int i4 = 0;
        boolean z9 = false;
        while (true) {
            Drawable[] drawableArr = this.f11435c;
            if (i4 >= drawableArr.length) {
                return z9;
            }
            Drawable drawable = drawableArr[i4];
            if (drawable != null && drawable.setState(state)) {
                z9 = true;
            }
            i4++;
        }
    }

    @Override // com.facebook.drawee.drawable.u
    public void q(RectF bounds) {
        u uVar = this.f11433a;
        if (uVar != null) {
            uVar.q(bounds);
        } else {
            bounds.set(getBounds());
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable who, Runnable what, long when) {
        scheduleSelf(what, when);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        this.f11434b.b(alpha);
        int i4 = 0;
        while (true) {
            Drawable[] drawableArr = this.f11435c;
            if (i4 >= drawableArr.length) {
                return;
            }
            Drawable drawable = drawableArr[i4];
            if (drawable != null) {
                drawable.setAlpha(alpha);
            }
            i4++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f11434b.c(colorFilter);
        int i4 = 0;
        while (true) {
            Drawable[] drawableArr = this.f11435c;
            if (i4 >= drawableArr.length) {
                return;
            }
            Drawable drawable = drawableArr[i4];
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
            i4++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean dither) {
        this.f11434b.d(dither);
        int i4 = 0;
        while (true) {
            Drawable[] drawableArr = this.f11435c;
            if (i4 >= drawableArr.length) {
                return;
            }
            Drawable drawable = drawableArr[i4];
            if (drawable != null) {
                drawable.setDither(dither);
            }
            i4++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean filterBitmap) {
        this.f11434b.e(filterBitmap);
        int i4 = 0;
        while (true) {
            Drawable[] drawableArr = this.f11435c;
            if (i4 >= drawableArr.length) {
                return;
            }
            Drawable drawable = drawableArr[i4];
            if (drawable != null) {
                drawable.setFilterBitmap(filterBitmap);
            }
            i4++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void setHotspot(float x9, float y9) {
        int i4 = 0;
        while (true) {
            Drawable[] drawableArr = this.f11435c;
            if (i4 >= drawableArr.length) {
                return;
            }
            Drawable drawable = drawableArr[i4];
            if (drawable != null) {
                drawable.setHotspot(x9, y9);
            }
            i4++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean visible, boolean restart) {
        boolean visible2 = super.setVisible(visible, restart);
        int i4 = 0;
        while (true) {
            Drawable[] drawableArr = this.f11435c;
            if (i4 >= drawableArr.length) {
                return visible2;
            }
            Drawable drawable = drawableArr[i4];
            if (drawable != null) {
                drawable.setVisible(visible, restart);
            }
            i4++;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable who, Runnable what) {
        unscheduleSelf(what);
    }
}
