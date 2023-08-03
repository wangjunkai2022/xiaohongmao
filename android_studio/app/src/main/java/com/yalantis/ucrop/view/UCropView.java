package com.yalantis.ucrop.view;

import a6.c;
import a6.d;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.yalantis.ucrop.c;

/* loaded from: classes3.dex */
public class UCropView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private GestureCropImageView f61221a;

    /* renamed from: b  reason: collision with root package name */
    private final OverlayView f61222b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements c {
        a() {
        }

        @Override // a6.c
        public void a(float f10) {
            UCropView.this.f61222b.setTargetAspectRatio(f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements d {
        b() {
        }

        @Override // a6.d
        public void a(RectF rectF) {
            UCropView.this.f61221a.setCropRect(rectF);
        }
    }

    public UCropView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void d() {
        this.f61221a.setCropBoundsChangeListener(new a());
        this.f61222b.setOverlayViewChangeListener(new b());
    }

    public void c() {
        removeView(this.f61221a);
        this.f61221a = new GestureCropImageView(getContext());
        d();
        this.f61221a.setCropRect(getOverlayView().getCropViewRect());
        addView(this.f61221a, 0);
    }

    @NonNull
    public GestureCropImageView getCropImageView() {
        return this.f61221a;
    }

    @NonNull
    public OverlayView getOverlayView() {
        return this.f61222b;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public UCropView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        LayoutInflater.from(context).inflate(c.k.T, (ViewGroup) this, true);
        this.f61221a = (GestureCropImageView) findViewById(c.h.F0);
        OverlayView overlayView = (OverlayView) findViewById(c.h.H2);
        this.f61222b = overlayView;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.o.B8);
        overlayView.h(obtainStyledAttributes);
        this.f61221a.z(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        d();
    }
}
