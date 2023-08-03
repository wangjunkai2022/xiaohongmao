package me.relex.circleindicator;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import me.relex.circleindicator.c;

/* loaded from: classes4.dex */
class BaseCircleIndicator extends LinearLayout {

    /* renamed from: n  reason: collision with root package name */
    private static final int f88399n = 5;

    /* renamed from: a  reason: collision with root package name */
    protected int f88400a;

    /* renamed from: b  reason: collision with root package name */
    protected int f88401b;

    /* renamed from: c  reason: collision with root package name */
    protected int f88402c;

    /* renamed from: d  reason: collision with root package name */
    protected int f88403d;

    /* renamed from: e  reason: collision with root package name */
    protected int f88404e;

    /* renamed from: f  reason: collision with root package name */
    protected ColorStateList f88405f;

    /* renamed from: g  reason: collision with root package name */
    protected ColorStateList f88406g;

    /* renamed from: h  reason: collision with root package name */
    protected Animator f88407h;

    /* renamed from: i  reason: collision with root package name */
    protected Animator f88408i;

    /* renamed from: j  reason: collision with root package name */
    protected Animator f88409j;

    /* renamed from: k  reason: collision with root package name */
    protected Animator f88410k;

    /* renamed from: l  reason: collision with root package name */
    protected int f88411l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private a f88412m;

    /* loaded from: classes4.dex */
    public interface a {
        void a(View view, int i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4.dex */
    public static class b implements Interpolator {
        protected b() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            return Math.abs(1.0f - f10);
        }
    }

    public BaseCircleIndicator(Context context) {
        super(context);
        this.f88400a = -1;
        this.f88401b = -1;
        this.f88402c = -1;
        this.f88411l = -1;
        k(context, null);
    }

    private void c(View view, @DrawableRes int i4, @Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            Drawable wrap = DrawableCompat.wrap(ContextCompat.getDrawable(getContext(), i4).mutate());
            DrawableCompat.setTintList(wrap, colorStateList);
            ViewCompat.setBackground(view, wrap);
            return;
        }
        view.setBackgroundResource(i4);
    }

    private me.relex.circleindicator.b j(Context context, AttributeSet attributeSet) {
        me.relex.circleindicator.b bVar = new me.relex.circleindicator.b();
        if (attributeSet == null) {
            return bVar;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.o.d4);
        bVar.f88432a = obtainStyledAttributes.getDimensionPixelSize(c.o.f89770m4, -1);
        bVar.f88433b = obtainStyledAttributes.getDimensionPixelSize(c.o.j4, -1);
        bVar.f88434c = obtainStyledAttributes.getDimensionPixelSize(c.o.f89748k4, -1);
        bVar.f88435d = obtainStyledAttributes.getResourceId(c.o.e4, c.b.f88482o);
        bVar.f88436e = obtainStyledAttributes.getResourceId(c.o.f89697f4, 0);
        int resourceId = obtainStyledAttributes.getResourceId(c.o.g4, c.g.f89097v1);
        bVar.f88437f = resourceId;
        bVar.f88438g = obtainStyledAttributes.getResourceId(c.o.h4, resourceId);
        bVar.f88439h = obtainStyledAttributes.getInt(c.o.f89759l4, -1);
        bVar.f88440i = obtainStyledAttributes.getInt(c.o.i4, -1);
        obtainStyledAttributes.recycle();
        return bVar;
    }

    private void k(Context context, AttributeSet attributeSet) {
        l(j(context, attributeSet));
        if (isInEditMode()) {
            i(3, 1);
        }
    }

    protected void a(int i4) {
        View view = new View(getContext());
        LinearLayout.LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
        generateDefaultLayoutParams.width = this.f88401b;
        generateDefaultLayoutParams.height = this.f88402c;
        if (i4 == 0) {
            int i10 = this.f88400a;
            generateDefaultLayoutParams.leftMargin = i10;
            generateDefaultLayoutParams.rightMargin = i10;
        } else {
            int i11 = this.f88400a;
            generateDefaultLayoutParams.topMargin = i11;
            generateDefaultLayoutParams.bottomMargin = i11;
        }
        addView(view, generateDefaultLayoutParams);
    }

    public void b(int i4) {
        View childAt;
        if (this.f88411l == i4) {
            return;
        }
        if (this.f88408i.isRunning()) {
            this.f88408i.end();
            this.f88408i.cancel();
        }
        if (this.f88407h.isRunning()) {
            this.f88407h.end();
            this.f88407h.cancel();
        }
        int i10 = this.f88411l;
        if (i10 >= 0 && (childAt = getChildAt(i10)) != null) {
            c(childAt, this.f88404e, this.f88406g);
            this.f88408i.setTarget(childAt);
            this.f88408i.start();
        }
        View childAt2 = getChildAt(i4);
        if (childAt2 != null) {
            c(childAt2, this.f88403d, this.f88405f);
            this.f88407h.setTarget(childAt2);
            this.f88407h.start();
        }
        this.f88411l = i4;
    }

    protected void d() {
        int childCount = getChildCount();
        if (childCount <= 0) {
            return;
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (i4 == this.f88411l) {
                c(childAt, this.f88403d, this.f88405f);
            } else {
                c(childAt, this.f88404e, this.f88406g);
            }
        }
    }

    public void e(@DrawableRes int i4) {
        f(i4, i4);
    }

    public void f(@DrawableRes int i4, @DrawableRes int i10) {
        this.f88403d = i4;
        this.f88404e = i10;
        d();
    }

    protected Animator g(me.relex.circleindicator.b bVar) {
        if (bVar.f88436e == 0) {
            Animator loadAnimator = AnimatorInflater.loadAnimator(getContext(), bVar.f88435d);
            loadAnimator.setInterpolator(new b());
            return loadAnimator;
        }
        return AnimatorInflater.loadAnimator(getContext(), bVar.f88436e);
    }

    protected Animator h(me.relex.circleindicator.b bVar) {
        return AnimatorInflater.loadAnimator(getContext(), bVar.f88435d);
    }

    public void i(int i4, int i10) {
        if (this.f88409j.isRunning()) {
            this.f88409j.end();
            this.f88409j.cancel();
        }
        if (this.f88410k.isRunning()) {
            this.f88410k.end();
            this.f88410k.cancel();
        }
        int childCount = getChildCount();
        if (i4 < childCount) {
            removeViews(i4, childCount - i4);
        } else if (i4 > childCount) {
            int i11 = i4 - childCount;
            int orientation = getOrientation();
            for (int i12 = 0; i12 < i11; i12++) {
                a(orientation);
            }
        }
        for (int i13 = 0; i13 < i4; i13++) {
            View childAt = getChildAt(i13);
            if (i10 == i13) {
                c(childAt, this.f88403d, this.f88405f);
                this.f88409j.setTarget(childAt);
                this.f88409j.start();
                this.f88409j.end();
            } else {
                c(childAt, this.f88404e, this.f88406g);
                this.f88410k.setTarget(childAt);
                this.f88410k.start();
                this.f88410k.end();
            }
            a aVar = this.f88412m;
            if (aVar != null) {
                aVar.a(childAt, i13);
            }
        }
        this.f88411l = i10;
    }

    public void l(me.relex.circleindicator.b bVar) {
        int applyDimension = (int) (TypedValue.applyDimension(1, 5.0f, getResources().getDisplayMetrics()) + 0.5f);
        int i4 = bVar.f88432a;
        if (i4 < 0) {
            i4 = applyDimension;
        }
        this.f88401b = i4;
        int i10 = bVar.f88433b;
        if (i10 < 0) {
            i10 = applyDimension;
        }
        this.f88402c = i10;
        int i11 = bVar.f88434c;
        if (i11 >= 0) {
            applyDimension = i11;
        }
        this.f88400a = applyDimension;
        this.f88407h = h(bVar);
        Animator h4 = h(bVar);
        this.f88409j = h4;
        h4.setDuration(0L);
        this.f88408i = g(bVar);
        Animator g4 = g(bVar);
        this.f88410k = g4;
        g4.setDuration(0L);
        int i12 = bVar.f88437f;
        this.f88403d = i12 == 0 ? c.g.f89097v1 : i12;
        int i13 = bVar.f88438g;
        if (i13 != 0) {
            i12 = i13;
        }
        this.f88404e = i12;
        setOrientation(bVar.f88439h != 1 ? 0 : 1);
        int i14 = bVar.f88440i;
        if (i14 < 0) {
            i14 = 17;
        }
        setGravity(i14);
    }

    public void m(@ColorInt int i4) {
        n(i4, i4);
    }

    public void n(@ColorInt int i4, @ColorInt int i10) {
        this.f88405f = ColorStateList.valueOf(i4);
        this.f88406g = ColorStateList.valueOf(i10);
        d();
    }

    public void setIndicatorCreatedListener(@Nullable a aVar) {
        this.f88412m = aVar;
    }

    public BaseCircleIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f88400a = -1;
        this.f88401b = -1;
        this.f88402c = -1;
        this.f88411l = -1;
        k(context, attributeSet);
    }

    public BaseCircleIndicator(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f88400a = -1;
        this.f88401b = -1;
        this.f88402c = -1;
        this.f88411l = -1;
        k(context, attributeSet);
    }

    @TargetApi(21)
    public BaseCircleIndicator(Context context, AttributeSet attributeSet, int i4, int i10) {
        super(context, attributeSet, i4, i10);
        this.f88400a = -1;
        this.f88401b = -1;
        this.f88402c = -1;
        this.f88411l = -1;
        k(context, attributeSet);
    }
}
