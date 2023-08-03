package com.facebook.drawee.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.facebook.common.internal.i;
import com.facebook.drawee.view.a;
import r7.h;
import z0.b;

/* loaded from: classes.dex */
public class DraweeView<DH extends z0.b> extends ImageView {

    /* renamed from: f  reason: collision with root package name */
    private static boolean f11636f = false;

    /* renamed from: a  reason: collision with root package name */
    private final a.C0092a f11637a;

    /* renamed from: b  reason: collision with root package name */
    private float f11638b;

    /* renamed from: c  reason: collision with root package name */
    private b<DH> f11639c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f11640d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f11641e;

    public DraweeView(Context context) {
        super(context);
        this.f11637a = new a.C0092a();
        this.f11638b = 0.0f;
        this.f11640d = false;
        this.f11641e = false;
        e(context);
    }

    private void e(Context context) {
        boolean e4;
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("DraweeView#init");
            }
            if (this.f11640d) {
                if (e4) {
                    return;
                }
                return;
            }
            boolean z9 = true;
            this.f11640d = true;
            this.f11639c = b.d(null, context);
            ColorStateList imageTintList = getImageTintList();
            if (imageTintList == null) {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                    return;
                }
                return;
            }
            setColorFilter(imageTintList.getDefaultColor());
            if (!f11636f || context.getApplicationInfo().targetSdkVersion < 24) {
                z9 = false;
            }
            this.f11641e = z9;
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    private void f() {
        Drawable drawable;
        if (!this.f11641e || (drawable = getDrawable()) == null) {
            return;
        }
        drawable.setVisible(getVisibility() == 0, false);
    }

    public static void setGlobalLegacyVisibilityHandlingEnabled(boolean legacyVisibilityHandlingEnabled) {
        f11636f = legacyVisibilityHandlingEnabled;
    }

    protected void a() {
        this.f11639c.m();
    }

    protected void b() {
        this.f11639c.n();
    }

    public boolean c() {
        return this.f11639c.f() != null;
    }

    public boolean d() {
        return this.f11639c.j();
    }

    protected void g() {
        a();
    }

    public float getAspectRatio() {
        return this.f11638b;
    }

    @h
    public z0.a getController() {
        return this.f11639c.f();
    }

    public DH getHierarchy() {
        return this.f11639c.h();
    }

    @h
    public Drawable getTopLevelDrawable() {
        return this.f11639c.i();
    }

    protected void h() {
        b();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        f();
        g();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        f();
        h();
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        f();
        g();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        a.C0092a c0092a = this.f11637a;
        c0092a.f11644a = widthMeasureSpec;
        c0092a.f11645b = heightMeasureSpec;
        a.b(c0092a, this.f11638b, getLayoutParams(), getPaddingLeft() + getPaddingRight(), getPaddingTop() + getPaddingBottom());
        a.C0092a c0092a2 = this.f11637a;
        super.onMeasure(c0092a2.f11644a, c0092a2.f11645b);
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        f();
        h();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (this.f11639c.o(event)) {
            return true;
        }
        return super.onTouchEvent(event);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View changedView, int visibility) {
        super.onVisibilityChanged(changedView, visibility);
        f();
    }

    public void setAspectRatio(float aspectRatio) {
        if (aspectRatio == this.f11638b) {
            return;
        }
        this.f11638b = aspectRatio;
        requestLayout();
    }

    public void setController(@h z0.a draweeController) {
        this.f11639c.q(draweeController);
        super.setImageDrawable(this.f11639c.i());
    }

    public void setHierarchy(DH hierarchy) {
        this.f11639c.r(hierarchy);
        super.setImageDrawable(this.f11639c.i());
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageBitmap(Bitmap bm) {
        e(getContext());
        this.f11639c.q(null);
        super.setImageBitmap(bm);
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageDrawable(@h Drawable drawable) {
        e(getContext());
        this.f11639c.q(null);
        super.setImageDrawable(drawable);
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageResource(int resId) {
        e(getContext());
        this.f11639c.q(null);
        super.setImageResource(resId);
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageURI(Uri uri) {
        e(getContext());
        this.f11639c.q(null);
        super.setImageURI(uri);
    }

    public void setLegacyVisibilityHandlingEnabled(boolean legacyVisibilityHandlingEnabled) {
        this.f11641e = legacyVisibilityHandlingEnabled;
    }

    @Override // android.view.View
    public String toString() {
        i.b e4 = i.e(this);
        b<DH> bVar = this.f11639c;
        return e4.f("holder", bVar != null ? bVar.toString() : "<no holder set>").toString();
    }

    public DraweeView(Context context, @h AttributeSet attrs) {
        super(context, attrs);
        this.f11637a = new a.C0092a();
        this.f11638b = 0.0f;
        this.f11640d = false;
        this.f11641e = false;
        e(context);
    }

    public DraweeView(Context context, @h AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f11637a = new a.C0092a();
        this.f11638b = 0.0f;
        this.f11640d = false;
        this.f11641e = false;
        e(context);
    }

    @TargetApi(21)
    public DraweeView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.f11637a = new a.C0092a();
        this.f11638b = 0.0f;
        this.f11640d = false;
        this.f11641e = false;
        e(context);
    }
}
