package com.shizhefei.view.indicator;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.shizhefei.view.indicator.c;
import com.shizhefei.view.indicator.slidebar.ScrollBar;

/* loaded from: classes3.dex */
public class ScrollIndicatorView extends HorizontalScrollView implements com.shizhefei.view.indicator.c {

    /* renamed from: a  reason: collision with root package name */
    private final d f55416a;

    /* renamed from: b  reason: collision with root package name */
    private e f55417b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f55418c;

    /* renamed from: d  reason: collision with root package name */
    private Paint f55419d;

    /* renamed from: e  reason: collision with root package name */
    private Drawable f55420e;

    /* renamed from: f  reason: collision with root package name */
    private int f55421f;

    /* renamed from: g  reason: collision with root package name */
    private int f55422g;

    /* renamed from: h  reason: collision with root package name */
    private Drawable f55423h;

    /* renamed from: i  reason: collision with root package name */
    private c.a f55424i;

    /* renamed from: j  reason: collision with root package name */
    private Runnable f55425j;

    /* renamed from: k  reason: collision with root package name */
    private View f55426k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f55427l;

    /* renamed from: m  reason: collision with root package name */
    private int f55428m;

    /* renamed from: n  reason: collision with root package name */
    private float f55429n;

    /* loaded from: classes3.dex */
    class a implements c.a {
        a() {
        }

        @Override // com.shizhefei.view.indicator.c.a
        public void a() {
            if (ScrollIndicatorView.this.f55425j != null) {
                ScrollIndicatorView scrollIndicatorView = ScrollIndicatorView.this;
                scrollIndicatorView.removeCallbacks(scrollIndicatorView.f55425j);
            }
            ScrollIndicatorView.this.f55429n = 0.0f;
            ScrollIndicatorView scrollIndicatorView2 = ScrollIndicatorView.this;
            scrollIndicatorView2.b(scrollIndicatorView2.f55417b.getCurrentItem(), false);
            if (!ScrollIndicatorView.this.f55418c || ScrollIndicatorView.this.f55417b.getChildCount() <= 0) {
                return;
            }
            ScrollIndicatorView scrollIndicatorView3 = ScrollIndicatorView.this;
            scrollIndicatorView3.f55426k = scrollIndicatorView3.f55417b.getChildAt(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f55431a;

        b(View view) {
            this.f55431a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            ScrollIndicatorView.this.smoothScrollTo(this.f55431a.getLeft() - ((ScrollIndicatorView.this.getWidth() - this.f55431a.getWidth()) / 2), 0);
            ScrollIndicatorView.this.f55425j = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f55433a;

        static {
            int[] iArr = new int[ScrollBar.Gravity.values().length];
            f55433a = iArr;
            try {
                iArr[ScrollBar.Gravity.CENTENT_BACKGROUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f55433a[ScrollBar.Gravity.CENTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f55433a[ScrollBar.Gravity.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f55433a[ScrollBar.Gravity.TOP_FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f55433a[ScrollBar.Gravity.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f55433a[ScrollBar.Gravity.BOTTOM_FLOAT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes3.dex */
    private class d implements c.d {

        /* renamed from: a  reason: collision with root package name */
        private c.d f55434a;

        private d() {
        }

        @Override // com.shizhefei.view.indicator.c.d
        public void a(View view, int i4, int i10) {
            if (ScrollIndicatorView.this.f55422g == 0) {
                ScrollIndicatorView.this.l(i4);
            }
            c.d dVar = this.f55434a;
            if (dVar != null) {
                dVar.a(view, i4, i10);
            }
        }

        public c.d b() {
            return this.f55434a;
        }

        public void c(c.d dVar) {
            this.f55434a = dVar;
        }

        /* synthetic */ d(ScrollIndicatorView scrollIndicatorView, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class e extends FixedIndicatorView {
        private boolean A;

        public e(Context context) {
            super(context);
        }

        private int F(View view, int i4, int i10) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
            view.measure(ViewGroup.getChildMeasureSpec(i4, getPaddingLeft() + getPaddingRight(), -2), ViewGroup.getChildMeasureSpec(i10, getPaddingTop() + getPaddingBottom(), layoutParams.height));
            return view.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
        }

        public boolean E() {
            return this.A;
        }

        public void G(boolean z9) {
            if (this.A != z9) {
                this.A = z9;
                if (!z9) {
                    setSplitMethod(2);
                }
                requestLayout();
                invalidate();
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i4, int i10) {
            ScrollIndicatorView scrollIndicatorView;
            int measuredWidth;
            if (this.A && (measuredWidth = (scrollIndicatorView = (ScrollIndicatorView) getParent()).getMeasuredWidth()) != 0) {
                int childCount = getChildCount();
                int i11 = 0;
                int i12 = 0;
                for (int i13 = 0; i13 < childCount; i13++) {
                    int F = F(getChildAt(i13), i4, i10);
                    if (i12 < F) {
                        i12 = F;
                    }
                    i11 += F;
                }
                if (i11 > measuredWidth) {
                    scrollIndicatorView.setFillViewport(false);
                    setSplitMethod(2);
                } else if (i12 * childCount > measuredWidth) {
                    scrollIndicatorView.setFillViewport(true);
                    setSplitMethod(1);
                } else {
                    scrollIndicatorView.setFillViewport(true);
                    setSplitMethod(0);
                }
            }
            super.onMeasure(i4, i10);
        }
    }

    @TargetApi(11)
    public ScrollIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f55418c = false;
        this.f55419d = null;
        this.f55422g = 0;
        this.f55424i = new a();
        this.f55428m = -1;
        e eVar = new e(context);
        this.f55417b = eVar;
        addView(eVar, new FrameLayout.LayoutParams(-2, -1));
        setHorizontalScrollBarEnabled(false);
        setSplitAuto(true);
        Paint paint = new Paint();
        this.f55419d = paint;
        paint.setAntiAlias(true);
        this.f55419d.setColor(866822826);
        int m9 = m(3.0f);
        this.f55421f = m9;
        this.f55419d.setShadowLayer(m9, 0.0f, 0.0f, ViewCompat.MEASURED_STATE_MASK);
        setLayerType(1, null);
        e eVar2 = this.f55417b;
        d dVar = new d(this, null);
        this.f55416a = dVar;
        eVar2.setOnItemSelectListener(dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int i4) {
        if (i4 < 0 || i4 > this.f55417b.getCount() - 1) {
            return;
        }
        View childAt = this.f55417b.getChildAt(i4);
        Runnable runnable = this.f55425j;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        b bVar = new b(childAt);
        this.f55425j = bVar;
        post(bVar);
    }

    private int m(float f10) {
        return (int) TypedValue.applyDimension(1, f10, getResources().getDisplayMetrics());
    }

    private void n(Canvas canvas) {
        int height;
        ScrollBar scrollBar = this.f55417b.getScrollBar();
        if (scrollBar == null || this.f55417b.getCurrentItem() != 0) {
            return;
        }
        int save = canvas.save();
        int i4 = c.f55433a[scrollBar.getGravity().ordinal()];
        if (i4 != 1 && i4 != 2) {
            height = (i4 == 3 || i4 == 4) ? 0 : getHeight() - scrollBar.a(getHeight());
        } else {
            height = (getHeight() - scrollBar.a(getHeight())) / 2;
        }
        int b10 = scrollBar.b(this.f55426k.getWidth());
        int a10 = scrollBar.a(this.f55426k.getHeight());
        scrollBar.getSlideView().measure(b10, a10);
        scrollBar.getSlideView().layout(0, 0, b10, a10);
        canvas.translate((this.f55426k.getWidth() - b10) / 2, height);
        canvas.clipRect(0, 0, b10, a10);
        scrollBar.getSlideView().draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // com.shizhefei.view.indicator.c
    public View a(int i4) {
        return this.f55417b.a(i4);
    }

    @Override // com.shizhefei.view.indicator.c
    public void b(int i4, boolean z9) {
        int count = this.f55417b.getCount();
        if (count == 0) {
            return;
        }
        if (i4 < 0) {
            i4 = 0;
        } else {
            int i10 = count - 1;
            if (i4 > i10) {
                i4 = i10;
            }
        }
        this.f55428m = -1;
        if (this.f55422g == 0) {
            if (z9) {
                l(i4);
            } else {
                View childAt = this.f55417b.getChildAt(i4);
                scrollTo(childAt.getLeft() - ((getWidth() - childAt.getWidth()) / 2), 0);
                this.f55428m = i4;
            }
        }
        this.f55417b.b(i4, z9);
    }

    @Override // com.shizhefei.view.indicator.c
    public boolean c() {
        return this.f55417b.c();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.f55418c) {
            int scrollX = getScrollX();
            if (this.f55426k == null || scrollX <= 0) {
                return;
            }
            int save = canvas.save();
            canvas.translate(scrollX + getPaddingLeft(), getPaddingTop());
            Drawable drawable = this.f55423h;
            if (drawable != null) {
                drawable.setBounds(0, 0, this.f55426k.getWidth(), this.f55426k.getHeight());
                this.f55423h.draw(canvas);
            }
            ScrollBar scrollBar = this.f55417b.getScrollBar();
            if (scrollBar != null && scrollBar.getGravity() == ScrollBar.Gravity.CENTENT_BACKGROUND) {
                n(canvas);
            }
            this.f55426k.draw(canvas);
            if (scrollBar != null && scrollBar.getGravity() != ScrollBar.Gravity.CENTENT_BACKGROUND) {
                n(canvas);
            }
            canvas.translate(this.f55426k.getWidth(), 0.0f);
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            Drawable drawable2 = this.f55420e;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, this.f55421f, height);
                this.f55420e.draw(canvas);
            } else {
                canvas.clipRect(0, 0, this.f55421f + m(1.0f), height);
                canvas.drawRect(0.0f, 0.0f, m(1.0f), height, this.f55419d);
            }
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f55418c) {
            float x9 = motionEvent.getX();
            float y9 = motionEvent.getY();
            View view = this.f55426k;
            if (view != null && y9 >= view.getTop() && y9 <= this.f55426k.getBottom() && x9 > this.f55426k.getLeft() && x9 < this.f55426k.getRight()) {
                if (motionEvent.getAction() == 0) {
                    this.f55427l = true;
                } else if (motionEvent.getAction() == 1 && this.f55427l) {
                    this.f55426k.performClick();
                    invalidate(new Rect(0, 0, this.f55426k.getMeasuredWidth(), this.f55426k.getMeasuredHeight()));
                    this.f55427l = false;
                }
                return true;
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.shizhefei.view.indicator.c
    public int getCurrentItem() {
        return this.f55417b.getCurrentItem();
    }

    @Override // com.shizhefei.view.indicator.c
    public c.b getIndicatorAdapter() {
        return this.f55417b.getIndicatorAdapter();
    }

    @Override // com.shizhefei.view.indicator.c
    public c.InterfaceC0469c getOnIndicatorItemClickListener() {
        return this.f55417b.getOnIndicatorItemClickListener();
    }

    @Override // com.shizhefei.view.indicator.c
    public c.d getOnItemSelectListener() {
        return this.f55416a.b();
    }

    @Override // com.shizhefei.view.indicator.c
    public c.e getOnTransitionListener() {
        return this.f55417b.getOnTransitionListener();
    }

    @Override // com.shizhefei.view.indicator.c
    public int getPreSelectItem() {
        return this.f55417b.getPreSelectItem();
    }

    public boolean o() {
        return this.f55417b.E();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f55425j;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f55425j;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        View childAt;
        int left;
        super.onLayout(z9, i4, i10, i11, i12);
        int i13 = this.f55428m;
        if (i13 == -1 || (childAt = this.f55417b.getChildAt(i13)) == null || (left = childAt.getLeft() - ((getMeasuredWidth() - childAt.getMeasuredWidth()) / 2)) < 0) {
            return;
        }
        smoothScrollTo(left, 0);
        this.f55428m = -1;
    }

    @Override // com.shizhefei.view.indicator.c
    public void onPageScrollStateChanged(int i4) {
        this.f55422g = i4;
        this.f55417b.onPageScrollStateChanged(i4);
    }

    @Override // com.shizhefei.view.indicator.c
    public void onPageScrolled(int i4, float f10, int i10) {
        this.f55429n = f10;
        View childAt = this.f55417b.getChildAt(i4);
        if (childAt == null) {
            return;
        }
        View childAt2 = this.f55417b.getChildAt(i4 + 1);
        scrollTo((int) ((childAt.getLeft() - ((getWidth() - childAt.getWidth()) / 2)) + (((childAt.getWidth() + (childAt2 == null ? childAt.getWidth() : childAt2.getWidth())) / 2) * f10)), 0);
        this.f55417b.onPageScrolled(i4, f10, i10);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected void onSizeChanged(int i4, int i10, int i11, int i12) {
        super.onSizeChanged(i4, i10, i11, i12);
        if (this.f55417b.getCount() > 0) {
            l(this.f55417b.getCurrentItem());
        }
    }

    public void p(int i4, int i10) {
        q(ContextCompat.getDrawable(getContext(), i4), i10);
    }

    public void q(Drawable drawable, int i4) {
        this.f55420e = drawable;
        this.f55421f = i4;
        ViewCompat.postInvalidateOnAnimation(this);
    }

    @Override // com.shizhefei.view.indicator.c
    public void setAdapter(c.b bVar) {
        if (getIndicatorAdapter() != null) {
            getIndicatorAdapter().g(this.f55424i);
        }
        this.f55417b.setAdapter(bVar);
        bVar.e(this.f55424i);
        this.f55424i.a();
    }

    @Override // com.shizhefei.view.indicator.c
    public void setCurrentItem(int i4) {
        b(i4, true);
    }

    @Override // com.shizhefei.view.indicator.c
    public void setItemClickable(boolean z9) {
        this.f55417b.setItemClickable(z9);
    }

    @Override // com.shizhefei.view.indicator.c
    public void setOnIndicatorItemClickListener(c.InterfaceC0469c interfaceC0469c) {
        this.f55417b.setOnIndicatorItemClickListener(interfaceC0469c);
    }

    @Override // com.shizhefei.view.indicator.c
    public void setOnItemSelectListener(c.d dVar) {
        this.f55416a.c(dVar);
    }

    @Override // com.shizhefei.view.indicator.c
    public void setOnTransitionListener(c.e eVar) {
        this.f55417b.setOnTransitionListener(eVar);
    }

    public void setPinnedTabBg(Drawable drawable) {
        this.f55423h = drawable;
        ViewCompat.postInvalidateOnAnimation(this);
    }

    public void setPinnedTabBgColor(int i4) {
        setPinnedTabBg(new ColorDrawable(i4));
    }

    public void setPinnedTabBgId(int i4) {
        setPinnedTabBg(ContextCompat.getDrawable(getContext(), i4));
    }

    public void setPinnedTabView(boolean z9) {
        this.f55418c = z9;
        if (z9 && this.f55417b.getChildCount() > 0) {
            this.f55426k = this.f55417b.getChildAt(0);
        }
        ViewCompat.postInvalidateOnAnimation(this);
    }

    @Override // com.shizhefei.view.indicator.c
    public void setScrollBar(ScrollBar scrollBar) {
        this.f55417b.setScrollBar(scrollBar);
    }

    public void setSplitAuto(boolean z9) {
        setFillViewport(z9);
        this.f55417b.G(z9);
    }
}
