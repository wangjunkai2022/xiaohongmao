package com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.g;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public class WheelView extends View {

    /* renamed from: x  reason: collision with root package name */
    private static final int f52997x = 0;

    /* renamed from: y  reason: collision with root package name */
    private static final int f52998y = 10;

    /* renamed from: z  reason: collision with root package name */
    private static final int f52999z = 5;

    /* renamed from: a  reason: collision with root package name */
    private int[] f53000a;

    /* renamed from: b  reason: collision with root package name */
    private int f53001b;

    /* renamed from: c  reason: collision with root package name */
    private int f53002c;

    /* renamed from: d  reason: collision with root package name */
    private int f53003d;

    /* renamed from: e  reason: collision with root package name */
    private Drawable f53004e;

    /* renamed from: f  reason: collision with root package name */
    private int f53005f;

    /* renamed from: g  reason: collision with root package name */
    private int f53006g;

    /* renamed from: h  reason: collision with root package name */
    private GradientDrawable f53007h;

    /* renamed from: i  reason: collision with root package name */
    private GradientDrawable f53008i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f53009j;

    /* renamed from: k  reason: collision with root package name */
    private g f53010k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f53011l;

    /* renamed from: m  reason: collision with root package name */
    private int f53012m;

    /* renamed from: n  reason: collision with root package name */
    boolean f53013n;

    /* renamed from: o  reason: collision with root package name */
    private LinearLayout f53014o;

    /* renamed from: p  reason: collision with root package name */
    private int f53015p;

    /* renamed from: q  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.adapters.f f53016q;

    /* renamed from: r  reason: collision with root package name */
    private f f53017r;

    /* renamed from: s  reason: collision with root package name */
    private List<com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.b> f53018s;

    /* renamed from: t  reason: collision with root package name */
    private List<d> f53019t;

    /* renamed from: u  reason: collision with root package name */
    private List<c> f53020u;

    /* renamed from: v  reason: collision with root package name */
    g.c f53021v;

    /* renamed from: w  reason: collision with root package name */
    private DataSetObserver f53022w;

    /* loaded from: classes3.dex */
    class a implements g.c {
        a() {
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.g.c
        public void onFinished() {
            if (WheelView.this.f53011l) {
                WheelView.this.C();
                WheelView.this.f53011l = false;
            }
            WheelView.this.f53012m = 0;
            WheelView.this.invalidate();
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.g.c
        public void onJustify() {
            if (Math.abs(WheelView.this.f53012m) > 1) {
                WheelView.this.f53010k.l(WheelView.this.f53012m, 0);
            }
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.g.c
        public void onScroll(int i4) {
            WheelView.this.n(i4);
            int height = WheelView.this.getHeight();
            if (WheelView.this.f53012m > height) {
                WheelView.this.f53012m = height;
                WheelView.this.f53010k.p();
                return;
            }
            int i10 = -height;
            if (WheelView.this.f53012m < i10) {
                WheelView.this.f53012m = i10;
                WheelView.this.f53010k.p();
            }
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.g.c
        public void onStarted() {
            WheelView.this.f53011l = true;
            WheelView.this.D();
        }
    }

    /* loaded from: classes3.dex */
    class b extends DataSetObserver {
        b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            WheelView.this.w(false);
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            WheelView.this.w(true);
        }
    }

    public WheelView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f53000a = new int[]{-269882903, -806753815, 1072294377};
        this.f53001b = 0;
        this.f53002c = 5;
        this.f53003d = 0;
        this.f53005f = R.drawable.wheel_bg;
        this.f53006g = R.drawable.wheel_val;
        this.f53009j = true;
        this.f53013n = false;
        this.f53017r = new f(this);
        this.f53018s = new LinkedList();
        this.f53019t = new LinkedList();
        this.f53020u = new LinkedList();
        this.f53021v = new a();
        this.f53022w = new b();
        u(context);
    }

    private boolean E() {
        boolean z9;
        com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.a itemsRange = getItemsRange();
        LinearLayout linearLayout = this.f53014o;
        if (linearLayout != null) {
            int f10 = this.f53017r.f(linearLayout, this.f53015p, itemsRange);
            z9 = this.f53015p != f10;
            this.f53015p = f10;
        } else {
            m();
            z9 = true;
        }
        if (!z9) {
            z9 = (this.f53015p == itemsRange.c() && this.f53014o.getChildCount() == itemsRange.b()) ? false : true;
        }
        if (this.f53015p > itemsRange.c() && this.f53015p <= itemsRange.d()) {
            for (int i4 = this.f53015p - 1; i4 >= itemsRange.c() && j(i4, true); i4--) {
                this.f53015p = i4;
            }
        } else {
            this.f53015p = itemsRange.c();
        }
        int i10 = this.f53015p;
        for (int childCount = this.f53014o.getChildCount(); childCount < itemsRange.b(); childCount++) {
            if (!j(this.f53015p + childCount, false) && this.f53014o.getChildCount() == 0) {
                i10++;
            }
        }
        this.f53015p = i10;
        return z9;
    }

    private void M() {
        if (E()) {
            l(getWidth(), 1073741824);
            z(getWidth(), getHeight());
        }
    }

    private int getItemHeight() {
        int i4 = this.f53003d;
        if (i4 != 0) {
            return i4;
        }
        LinearLayout linearLayout = this.f53014o;
        if (linearLayout != null && linearLayout.getChildAt(0) != null) {
            int height = this.f53014o.getChildAt(0).getHeight();
            this.f53003d = height;
            return height;
        }
        return getHeight() / this.f53002c;
    }

    private com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.a getItemsRange() {
        if (getItemHeight() == 0) {
            return null;
        }
        int i4 = this.f53001b;
        int i10 = 1;
        while (getItemHeight() * i10 < getHeight()) {
            i4--;
            i10 += 2;
        }
        int i11 = this.f53012m;
        if (i11 != 0) {
            if (i11 > 0) {
                i4--;
            }
            int itemHeight = i11 / getItemHeight();
            i4 -= itemHeight;
            i10 = (int) (i10 + 1 + Math.asin(itemHeight));
        }
        return new com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.a(i4, i10);
    }

    private boolean j(int i4, boolean z9) {
        View t9 = t(i4);
        if (t9 != null) {
            if (z9) {
                this.f53014o.addView(t9, 0);
                return true;
            }
            this.f53014o.addView(t9);
            return true;
        }
        return false;
    }

    private void k() {
        LinearLayout linearLayout = this.f53014o;
        if (linearLayout != null) {
            this.f53017r.f(linearLayout, this.f53015p, new com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.a());
        } else {
            m();
        }
        int i4 = this.f53002c / 2;
        for (int i10 = this.f53001b + i4; i10 >= this.f53001b - i4; i10--) {
            if (j(i10, true)) {
                this.f53015p = i10;
            }
        }
    }

    private int l(int i4, int i10) {
        v();
        this.f53014o.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        this.f53014o.measure(View.MeasureSpec.makeMeasureSpec(i4, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        int measuredWidth = this.f53014o.getMeasuredWidth();
        if (i10 != 1073741824) {
            int max = Math.max(measuredWidth + 20, getSuggestedMinimumWidth());
            if (i10 != Integer.MIN_VALUE || i4 >= max) {
                i4 = max;
            }
        }
        this.f53014o.measure(View.MeasureSpec.makeMeasureSpec(i4 - 20, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        return i4;
    }

    private void m() {
        if (this.f53014o == null) {
            LinearLayout linearLayout = new LinearLayout(getContext());
            this.f53014o = linearLayout;
            linearLayout.setOrientation(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(int i4) {
        this.f53012m += i4;
        int itemHeight = getItemHeight();
        int i10 = this.f53012m / itemHeight;
        int i11 = this.f53001b - i10;
        int itemsCount = this.f53016q.getItemsCount();
        int i12 = this.f53012m % itemHeight;
        if (Math.abs(i12) <= itemHeight / 2) {
            i12 = 0;
        }
        if (this.f53013n && itemsCount > 0) {
            if (i12 > 0) {
                i11--;
                i10++;
            } else if (i12 < 0) {
                i11++;
                i10--;
            }
            while (i11 < 0) {
                i11 += itemsCount;
            }
            i11 %= itemsCount;
        } else if (i11 < 0) {
            i10 = this.f53001b;
            i11 = 0;
        } else if (i11 >= itemsCount) {
            i10 = (this.f53001b - itemsCount) + 1;
            i11 = itemsCount - 1;
        } else if (i11 > 0 && i12 > 0) {
            i11--;
            i10++;
        } else if (i11 < itemsCount - 1 && i12 < 0) {
            i11++;
            i10--;
        }
        int i13 = this.f53012m;
        if (i11 != this.f53001b) {
            J(i11, false);
        } else {
            invalidate();
        }
        int i14 = i13 - (i10 * itemHeight);
        this.f53012m = i14;
        if (i14 > getHeight()) {
            this.f53012m = (this.f53012m % getHeight()) + getHeight();
        }
    }

    private void o(Canvas canvas) {
        int height = getHeight() / 2;
        int itemHeight = (int) ((getItemHeight() / 2) * 1.2d);
        Paint paint = new Paint();
        paint.setColor(getResources().getColor(R.color.province_line_border));
        paint.setStrokeWidth(3.0f);
        float f10 = height - itemHeight;
        canvas.drawLine(0.0f, f10, getWidth(), f10, paint);
        float f11 = height + itemHeight;
        canvas.drawLine(0.0f, f11, getWidth(), f11, paint);
    }

    private void p(Canvas canvas) {
        canvas.save();
        canvas.translate(10.0f, (-(((this.f53001b - this.f53015p) * getItemHeight()) + ((getItemHeight() - getHeight()) / 2))) + this.f53012m);
        this.f53014o.draw(canvas);
        canvas.restore();
    }

    private void q(Canvas canvas) {
        int itemHeight = getItemHeight() * 3;
        this.f53007h.setBounds(0, 0, getWidth(), itemHeight);
        this.f53007h.draw(canvas);
        this.f53008i.setBounds(0, getHeight() - itemHeight, getWidth(), getHeight());
        this.f53008i.draw(canvas);
    }

    private int s(LinearLayout linearLayout) {
        if (linearLayout != null && linearLayout.getChildAt(0) != null) {
            this.f53003d = linearLayout.getChildAt(0).getMeasuredHeight();
        }
        int i4 = this.f53003d;
        return Math.max((this.f53002c * i4) - ((i4 * 0) / 50), getSuggestedMinimumHeight());
    }

    private View t(int i4) {
        com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.adapters.f fVar = this.f53016q;
        if (fVar == null || fVar.getItemsCount() == 0) {
            return null;
        }
        int itemsCount = this.f53016q.getItemsCount();
        if (!y(i4)) {
            return this.f53016q.getEmptyItem(this.f53017r.d(), this.f53014o);
        }
        while (i4 < 0) {
            i4 += itemsCount;
        }
        return this.f53016q.getItem(i4 % itemsCount, this.f53017r.e(), this.f53014o);
    }

    private void u(Context context) {
        this.f53010k = new g(getContext(), this.f53021v);
    }

    private void v() {
        if (this.f53004e == null) {
            this.f53004e = getContext().getResources().getDrawable(this.f53006g);
        }
        if (this.f53007h == null) {
            this.f53007h = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, this.f53000a);
        }
        if (this.f53008i == null) {
            this.f53008i = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, this.f53000a);
        }
        setBackgroundResource(this.f53005f);
    }

    private boolean y(int i4) {
        com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.adapters.f fVar = this.f53016q;
        return fVar != null && fVar.getItemsCount() > 0 && (this.f53013n || (i4 >= 0 && i4 < this.f53016q.getItemsCount()));
    }

    private void z(int i4, int i10) {
        this.f53014o.layout(0, 0, i4 - 20, i10);
    }

    protected void A(int i4, int i10) {
        for (com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.b bVar : this.f53018s) {
            bVar.a(this, i4, i10);
        }
    }

    protected void B(int i4) {
        for (c cVar : this.f53020u) {
            cVar.a(this, i4);
        }
    }

    protected void C() {
        for (d dVar : this.f53019t) {
            dVar.b(this);
        }
    }

    protected void D() {
        for (d dVar : this.f53019t) {
            dVar.a(this);
        }
    }

    public void F(com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.b bVar) {
        this.f53018s.remove(bVar);
    }

    public void G(c cVar) {
        this.f53020u.remove(cVar);
    }

    public void H(d dVar) {
        this.f53019t.remove(dVar);
    }

    public void I(int i4, int i10) {
        this.f53010k.l((i4 * getItemHeight()) - this.f53012m, i10);
    }

    public void J(int i4, boolean z9) {
        int min;
        com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.adapters.f fVar = this.f53016q;
        if (fVar == null || fVar.getItemsCount() == 0) {
            return;
        }
        int itemsCount = this.f53016q.getItemsCount();
        if (i4 < 0 || i4 >= itemsCount) {
            if (!this.f53013n) {
                return;
            }
            while (i4 < 0) {
                i4 += itemsCount;
            }
            i4 %= itemsCount;
        }
        int i10 = this.f53001b;
        if (i4 != i10) {
            if (z9) {
                int i11 = i4 - i10;
                if (this.f53013n && (min = (itemsCount + Math.min(i4, i10)) - Math.max(i4, this.f53001b)) < Math.abs(i11)) {
                    i11 = i11 < 0 ? min : -min;
                }
                I(i11, 0);
                return;
            }
            this.f53012m = 0;
            this.f53001b = i4;
            A(i10, i4);
            invalidate();
        }
    }

    public void K(int i4, int i10, int i11) {
        this.f53000a = new int[]{i4, i10, i11};
    }

    public void L() {
        this.f53010k.p();
    }

    public void g(com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.b bVar) {
        this.f53018s.add(bVar);
    }

    public int getCurrentItem() {
        return this.f53001b;
    }

    public com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.adapters.f getViewAdapter() {
        return this.f53016q;
    }

    public int getVisibleItems() {
        return this.f53002c;
    }

    public void h(c cVar) {
        this.f53020u.add(cVar);
    }

    public void i(d dVar) {
        this.f53019t.add(dVar);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.adapters.f fVar = this.f53016q;
        if (fVar != null && fVar.getItemsCount() > 0) {
            M();
            p(canvas);
            o(canvas);
        }
        if (this.f53009j) {
            q(canvas);
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        z(i11 - i4, i12 - i10);
    }

    @Override // android.view.View
    protected void onMeasure(int i4, int i10) {
        int mode = View.MeasureSpec.getMode(i4);
        int mode2 = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i4);
        int size2 = View.MeasureSpec.getSize(i10);
        k();
        int l10 = l(size, mode);
        if (mode2 != 1073741824) {
            int s9 = s(this.f53014o);
            size2 = mode2 == Integer.MIN_VALUE ? Math.min(s9, size2) : s9;
        }
        setMeasuredDimension(l10, size2);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int itemHeight;
        if (!isEnabled() || getViewAdapter() == null) {
            return true;
        }
        int action = motionEvent.getAction();
        if (action != 1) {
            if (action == 2 && getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
        } else if (!this.f53011l) {
            int y9 = ((int) motionEvent.getY()) - (getHeight() / 2);
            if (y9 > 0) {
                itemHeight = y9 + (getItemHeight() / 2);
            } else {
                itemHeight = y9 - (getItemHeight() / 2);
            }
            int itemHeight2 = itemHeight / getItemHeight();
            if (itemHeight2 != 0 && y(this.f53001b + itemHeight2)) {
                B(this.f53001b + itemHeight2);
            }
        }
        return this.f53010k.k(motionEvent);
    }

    public boolean r() {
        return this.f53009j;
    }

    public void setCurrentItem(int i4) {
        J(i4, false);
    }

    public void setCyclic(boolean z9) {
        this.f53013n = z9;
        w(false);
    }

    public void setDrawShadows(boolean z9) {
        this.f53009j = z9;
    }

    public void setInterpolator(Interpolator interpolator) {
        this.f53010k.m(interpolator);
    }

    public void setViewAdapter(com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.adapters.f fVar) {
        com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.adapters.f fVar2 = this.f53016q;
        if (fVar2 != null) {
            fVar2.unregisterDataSetObserver(this.f53022w);
        }
        this.f53016q = fVar;
        if (fVar != null) {
            fVar.registerDataSetObserver(this.f53022w);
        }
        w(true);
    }

    public void setVisibleItems(int i4) {
        this.f53002c = i4;
    }

    public void setWheelBackground(int i4) {
        this.f53005f = i4;
        setBackgroundResource(i4);
    }

    public void setWheelForeground(int i4) {
        this.f53006g = i4;
        this.f53004e = getContext().getResources().getDrawable(this.f53006g);
    }

    public void w(boolean z9) {
        if (z9) {
            this.f53017r.b();
            LinearLayout linearLayout = this.f53014o;
            if (linearLayout != null) {
                linearLayout.removeAllViews();
            }
            this.f53012m = 0;
        } else {
            LinearLayout linearLayout2 = this.f53014o;
            if (linearLayout2 != null) {
                this.f53017r.f(linearLayout2, this.f53015p, new com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.a());
            }
        }
        invalidate();
    }

    public boolean x() {
        return this.f53013n;
    }

    public WheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f53000a = new int[]{-269882903, -806753815, 1072294377};
        this.f53001b = 0;
        this.f53002c = 5;
        this.f53003d = 0;
        this.f53005f = R.drawable.wheel_bg;
        this.f53006g = R.drawable.wheel_val;
        this.f53009j = true;
        this.f53013n = false;
        this.f53017r = new f(this);
        this.f53018s = new LinkedList();
        this.f53019t = new LinkedList();
        this.f53020u = new LinkedList();
        this.f53021v = new a();
        this.f53022w = new b();
        u(context);
    }

    public WheelView(Context context) {
        super(context);
        this.f53000a = new int[]{-269882903, -806753815, 1072294377};
        this.f53001b = 0;
        this.f53002c = 5;
        this.f53003d = 0;
        this.f53005f = R.drawable.wheel_bg;
        this.f53006g = R.drawable.wheel_val;
        this.f53009j = true;
        this.f53013n = false;
        this.f53017r = new f(this);
        this.f53018s = new LinkedList();
        this.f53019t = new LinkedList();
        this.f53020u = new LinkedList();
        this.f53021v = new a();
        this.f53022w = new b();
        u(context);
    }
}
