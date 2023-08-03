package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ui.q;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes2.dex */
public final class AspectRatioFrameLayout extends FrameLayout {

    /* renamed from: e  reason: collision with root package name */
    public static final int f26078e = 0;

    /* renamed from: f  reason: collision with root package name */
    public static final int f26079f = 1;

    /* renamed from: g  reason: collision with root package name */
    public static final int f26080g = 2;

    /* renamed from: h  reason: collision with root package name */
    public static final int f26081h = 3;

    /* renamed from: i  reason: collision with root package name */
    public static final int f26082i = 4;

    /* renamed from: j  reason: collision with root package name */
    private static final float f26083j = 0.01f;

    /* renamed from: a  reason: collision with root package name */
    private final c f26084a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private b f26085b;

    /* renamed from: c  reason: collision with root package name */
    private float f26086c;

    /* renamed from: d  reason: collision with root package name */
    private int f26087d;

    /* loaded from: classes2.dex */
    public interface b {
        void a(float f10, float f11, boolean z9);
    }

    /* loaded from: classes2.dex */
    private final class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private float f26088a;

        /* renamed from: b  reason: collision with root package name */
        private float f26089b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f26090c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f26091d;

        private c() {
        }

        public void a(float f10, float f11, boolean z9) {
            this.f26088a = f10;
            this.f26089b = f11;
            this.f26090c = z9;
            if (this.f26091d) {
                return;
            }
            this.f26091d = true;
            AspectRatioFrameLayout.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f26091d = false;
            if (AspectRatioFrameLayout.this.f26085b == null) {
                return;
            }
            AspectRatioFrameLayout.this.f26085b.a(this.f26088a, this.f26089b, this.f26090c);
        }
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface d {
    }

    public AspectRatioFrameLayout(Context context) {
        this(context, null);
    }

    public int getResizeMode() {
        return this.f26087d;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i4, int i10) {
        float f10;
        float f11;
        super.onMeasure(i4, i10);
        if (this.f26086c <= 0.0f) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f12 = measuredWidth;
        float f13 = measuredHeight;
        float f14 = f12 / f13;
        float f15 = (this.f26086c / f14) - 1.0f;
        if (Math.abs(f15) <= 0.01f) {
            this.f26084a.a(this.f26086c, f14, false);
            return;
        }
        int i11 = this.f26087d;
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 == 2) {
                    f10 = this.f26086c;
                } else if (i11 == 4) {
                    if (f15 > 0.0f) {
                        f10 = this.f26086c;
                    } else {
                        f11 = this.f26086c;
                    }
                }
                measuredWidth = (int) (f13 * f10);
            } else {
                f11 = this.f26086c;
            }
            measuredHeight = (int) (f12 / f11);
        } else if (f15 > 0.0f) {
            f11 = this.f26086c;
            measuredHeight = (int) (f12 / f11);
        } else {
            f10 = this.f26086c;
            measuredWidth = (int) (f13 * f10);
        }
        this.f26084a.a(this.f26086c, f14, true);
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
    }

    public void setAspectRatio(float f10) {
        if (this.f26086c != f10) {
            this.f26086c = f10;
            requestLayout();
        }
    }

    public void setAspectRatioListener(@Nullable b bVar) {
        this.f26085b = bVar;
    }

    public void setResizeMode(int i4) {
        if (this.f26087d != i4) {
            this.f26087d = i4;
            requestLayout();
        }
    }

    public AspectRatioFrameLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26087d = 0;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, q.m.f26779a, 0, 0);
            try {
                this.f26087d = obtainStyledAttributes.getInt(q.m.f26783b, 0);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f26084a = new c();
    }
}
