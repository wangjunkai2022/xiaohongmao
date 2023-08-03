package com.bumptech.glide.request.target;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* compiled from: FixedSizeDrawable.java */
/* loaded from: classes.dex */
public class i extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    private final Matrix f9623a;

    /* renamed from: b  reason: collision with root package name */
    private final RectF f9624b;

    /* renamed from: c  reason: collision with root package name */
    private final RectF f9625c;

    /* renamed from: d  reason: collision with root package name */
    private Drawable f9626d;

    /* renamed from: e  reason: collision with root package name */
    private a f9627e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f9628f;

    /* compiled from: FixedSizeDrawable.java */
    /* loaded from: classes.dex */
    static final class a extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        private final Drawable.ConstantState f9629a;

        /* renamed from: b  reason: collision with root package name */
        final int f9630b;

        /* renamed from: c  reason: collision with root package name */
        final int f9631c;

        a(a aVar) {
            this(aVar.f9629a, aVar.f9630b, aVar.f9631c);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new i(this, this.f9629a.newDrawable());
        }

        a(Drawable.ConstantState constantState, int i4, int i10) {
            this.f9629a = constantState;
            this.f9630b = i4;
            this.f9631c = i10;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new i(this, this.f9629a.newDrawable(resources));
        }
    }

    public i(Drawable drawable, int i4, int i10) {
        this(new a(drawable.getConstantState(), i4, i10), drawable);
    }

    private void a() {
        this.f9623a.setRectToRect(this.f9624b, this.f9625c, Matrix.ScaleToFit.CENTER);
    }

    @Override // android.graphics.drawable.Drawable
    public void clearColorFilter() {
        this.f9626d.clearColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        canvas.save();
        canvas.concat(this.f9623a);
        this.f9626d.draw(canvas);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(19)
    public int getAlpha() {
        return this.f9626d.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.Callback getCallback() {
        return this.f9626d.getCallback();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.f9626d.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f9627e;
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable getCurrent() {
        return this.f9626d.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f9627e.f9631c;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f9627e.f9630b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f9626d.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f9626d.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f9626d.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        return this.f9626d.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        super.invalidateSelf();
        this.f9626d.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.f9628f && super.mutate() == this) {
            this.f9626d = this.f9626d.mutate();
            this.f9627e = new a(this.f9627e);
            this.f9628f = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(@NonNull Runnable runnable, long j4) {
        super.scheduleSelf(runnable, j4);
        this.f9626d.scheduleSelf(runnable, j4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i4) {
        this.f9626d.setAlpha(i4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i4, int i10, int i11, int i12) {
        super.setBounds(i4, i10, i11, i12);
        this.f9625c.set(i4, i10, i11, i12);
        a();
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i4) {
        this.f9626d.setChangingConfigurations(i4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(int i4, @NonNull PorterDuff.Mode mode) {
        this.f9626d.setColorFilter(i4, mode);
    }

    @Override // android.graphics.drawable.Drawable
    @Deprecated
    public void setDither(boolean z9) {
        this.f9626d.setDither(z9);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z9) {
        this.f9626d.setFilterBitmap(z9);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z9, boolean z10) {
        return this.f9626d.setVisible(z9, z10);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(@NonNull Runnable runnable) {
        super.unscheduleSelf(runnable);
        this.f9626d.unscheduleSelf(runnable);
    }

    i(a aVar, Drawable drawable) {
        this.f9627e = (a) com.bumptech.glide.util.m.d(aVar);
        this.f9626d = (Drawable) com.bumptech.glide.util.m.d(drawable);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        this.f9623a = new Matrix();
        this.f9624b = new RectF(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        this.f9625c = new RectF();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f9626d.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(@NonNull Rect rect) {
        super.setBounds(rect);
        this.f9625c.set(rect);
        a();
    }
}
