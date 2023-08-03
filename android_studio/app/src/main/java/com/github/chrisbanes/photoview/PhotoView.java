package com.github.chrisbanes.photoview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;

/* loaded from: classes2.dex */
public class PhotoView extends AppCompatImageView {

    /* renamed from: a  reason: collision with root package name */
    private l f19232a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView.ScaleType f19233b;

    public PhotoView(Context context) {
        this(context, null);
    }

    private void c() {
        this.f19232a = new l(this);
        super.setScaleType(ImageView.ScaleType.MATRIX);
        ImageView.ScaleType scaleType = this.f19233b;
        if (scaleType != null) {
            setScaleType(scaleType);
            this.f19233b = null;
        }
    }

    public void a(Matrix matrix) {
        this.f19232a.D(matrix);
    }

    public void b(Matrix matrix) {
        this.f19232a.P(matrix);
    }

    public boolean d() {
        return this.f19232a.S();
    }

    public boolean e(Matrix matrix) {
        return this.f19232a.W(matrix);
    }

    public void f(float f10, float f11, float f12, boolean z9) {
        this.f19232a.o0(f10, f11, f12, z9);
    }

    public void g(float f10, boolean z9) {
        this.f19232a.p0(f10, z9);
    }

    public l getAttacher() {
        return this.f19232a;
    }

    public RectF getDisplayRect() {
        return this.f19232a.E();
    }

    @Override // android.widget.ImageView
    public Matrix getImageMatrix() {
        return this.f19232a.H();
    }

    public float getMaximumScale() {
        return this.f19232a.K();
    }

    public float getMediumScale() {
        return this.f19232a.L();
    }

    public float getMinimumScale() {
        return this.f19232a.M();
    }

    public float getScale() {
        return this.f19232a.N();
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.f19232a.O();
    }

    public void h(float f10, float f11, float f12) {
        this.f19232a.q0(f10, f11, f12);
    }

    public boolean i(Matrix matrix) {
        return this.f19232a.W(matrix);
    }

    public void setAllowParentInterceptOnEdge(boolean z9) {
        this.f19232a.U(z9);
    }

    @Override // android.widget.ImageView
    protected boolean setFrame(int i4, int i10, int i11, int i12) {
        boolean frame = super.setFrame(i4, i10, i11, i12);
        if (frame) {
            this.f19232a.v0();
        }
        return frame;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        l lVar = this.f19232a;
        if (lVar != null) {
            lVar.v0();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i4) {
        super.setImageResource(i4);
        l lVar = this.f19232a;
        if (lVar != null) {
            lVar.v0();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        l lVar = this.f19232a;
        if (lVar != null) {
            lVar.v0();
        }
    }

    public void setMaximumScale(float f10) {
        this.f19232a.Y(f10);
    }

    public void setMediumScale(float f10) {
        this.f19232a.Z(f10);
    }

    public void setMinimumScale(float f10) {
        this.f19232a.a0(f10);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f19232a.b0(onClickListener);
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f19232a.c0(onDoubleTapListener);
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f19232a.d0(onLongClickListener);
    }

    public void setOnMatrixChangeListener(e eVar) {
        this.f19232a.e0(eVar);
    }

    public void setOnOutsidePhotoTapListener(f fVar) {
        this.f19232a.f0(fVar);
    }

    public void setOnPhotoTapListener(g gVar) {
        this.f19232a.g0(gVar);
    }

    public void setOnScaleChangeListener(h hVar) {
        this.f19232a.h0(hVar);
    }

    public void setOnSingleFlingListener(i iVar) {
        this.f19232a.i0(iVar);
    }

    public void setOnViewDragListener(j jVar) {
        this.f19232a.j0(jVar);
    }

    public void setOnViewTapListener(k kVar) {
        this.f19232a.k0(kVar);
    }

    public void setRotationBy(float f10) {
        this.f19232a.l0(f10);
    }

    public void setRotationTo(float f10) {
        this.f19232a.m0(f10);
    }

    public void setScale(float f10) {
        this.f19232a.n0(f10);
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        l lVar = this.f19232a;
        if (lVar == null) {
            this.f19233b = scaleType;
        } else {
            lVar.r0(scaleType);
        }
    }

    public void setZoomTransitionDuration(int i4) {
        this.f19232a.t0(i4);
    }

    public void setZoomable(boolean z9) {
        this.f19232a.u0(z9);
    }

    public PhotoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PhotoView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        c();
    }
}
