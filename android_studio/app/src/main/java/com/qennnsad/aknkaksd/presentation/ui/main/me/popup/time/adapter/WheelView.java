package com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter;

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
import com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.l;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public class WheelView extends View {

    /* renamed from: x  reason: collision with root package name */
    private static final int f53065x = 0;

    /* renamed from: y  reason: collision with root package name */
    private static final int f53066y = 0;

    /* renamed from: z  reason: collision with root package name */
    private static final int f53067z = 5;

    /* renamed from: a  reason: collision with root package name */
    private int[] f53068a;

    /* renamed from: b  reason: collision with root package name */
    private int f53069b;

    /* renamed from: c  reason: collision with root package name */
    private int f53070c;

    /* renamed from: d  reason: collision with root package name */
    private int f53071d;

    /* renamed from: e  reason: collision with root package name */
    private Drawable f53072e;

    /* renamed from: f  reason: collision with root package name */
    private int f53073f;

    /* renamed from: g  reason: collision with root package name */
    private int f53074g;

    /* renamed from: h  reason: collision with root package name */
    private GradientDrawable f53075h;

    /* renamed from: i  reason: collision with root package name */
    private GradientDrawable f53076i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f53077j;

    /* renamed from: k  reason: collision with root package name */
    private l f53078k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f53079l;

    /* renamed from: m  reason: collision with root package name */
    private int f53080m;

    /* renamed from: n  reason: collision with root package name */
    boolean f53081n;

    /* renamed from: o  reason: collision with root package name */
    private LinearLayout f53082o;

    /* renamed from: p  reason: collision with root package name */
    private int f53083p;

    /* renamed from: q  reason: collision with root package name */
    private m f53084q;

    /* renamed from: r  reason: collision with root package name */
    private k f53085r;

    /* renamed from: s  reason: collision with root package name */
    private List<g> f53086s;

    /* renamed from: t  reason: collision with root package name */
    private List<i> f53087t;

    /* renamed from: u  reason: collision with root package name */
    private List<h> f53088u;

    /* renamed from: v  reason: collision with root package name */
    l.c f53089v;

    /* renamed from: w  reason: collision with root package name */
    private DataSetObserver f53090w;

    /* loaded from: classes3.dex */
    class a implements l.c {
        a() {
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.l.c
        public void onFinished() {
            if (WheelView.this.f53079l) {
                WheelView.this.C();
                WheelView.this.f53079l = false;
            }
            WheelView.this.f53080m = 0;
            WheelView.this.invalidate();
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.l.c
        public void onJustify() {
            if (Math.abs(WheelView.this.f53080m) > 1) {
                WheelView.this.f53078k.l(WheelView.this.f53080m, 0);
            }
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.l.c
        public void onScroll(int i4) {
            WheelView.this.n(i4);
            int height = WheelView.this.getHeight();
            if (WheelView.this.f53080m > height) {
                WheelView.this.f53080m = height;
                WheelView.this.f53078k.p();
                return;
            }
            int i10 = -height;
            if (WheelView.this.f53080m < i10) {
                WheelView.this.f53080m = i10;
                WheelView.this.f53078k.p();
            }
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.l.c
        public void onStarted() {
            WheelView.this.f53079l = true;
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
        this.f53068a = new int[]{17170443, 17170443, 17170443};
        this.f53069b = 0;
        this.f53070c = 5;
        this.f53071d = 0;
        this.f53073f = R.drawable.wheel_bg;
        this.f53074g = R.drawable.wheel_val;
        this.f53077j = true;
        this.f53081n = true;
        this.f53085r = new k(this);
        this.f53086s = new LinkedList();
        this.f53087t = new LinkedList();
        this.f53088u = new LinkedList();
        this.f53089v = new a();
        this.f53090w = new b();
        u(context);
    }

    private boolean E() {
        boolean z9;
        e itemsRange = getItemsRange();
        LinearLayout linearLayout = this.f53082o;
        if (linearLayout != null) {
            int f10 = this.f53085r.f(linearLayout, this.f53083p, itemsRange);
            z9 = this.f53083p != f10;
            this.f53083p = f10;
        } else {
            m();
            z9 = true;
        }
        if (!z9) {
            z9 = (this.f53083p == itemsRange.c() && this.f53082o.getChildCount() == itemsRange.b()) ? false : true;
        }
        if (this.f53083p > itemsRange.c() && this.f53083p <= itemsRange.d()) {
            for (int i4 = this.f53083p - 1; i4 >= itemsRange.c() && j(i4, true); i4--) {
                this.f53083p = i4;
            }
        } else {
            this.f53083p = itemsRange.c();
        }
        int i10 = this.f53083p;
        for (int childCount = this.f53082o.getChildCount(); childCount < itemsRange.b(); childCount++) {
            if (!j(this.f53083p + childCount, false) && this.f53082o.getChildCount() == 0) {
                i10++;
            }
        }
        this.f53083p = i10;
        return z9;
    }

    private void M() {
        if (E()) {
            l(getWidth(), 1073741824);
            z(getWidth(), getHeight());
        }
    }

    private int getItemHeight() {
        int i4 = this.f53071d;
        if (i4 != 0) {
            return i4;
        }
        LinearLayout linearLayout = this.f53082o;
        if (linearLayout != null && linearLayout.getChildAt(0) != null) {
            int height = this.f53082o.getChildAt(0).getHeight();
            this.f53071d = height;
            return height;
        }
        return getHeight() / this.f53070c;
    }

    private e getItemsRange() {
        if (getItemHeight() == 0) {
            return null;
        }
        int i4 = this.f53069b;
        int i10 = 1;
        while (getItemHeight() * i10 < getHeight()) {
            i4--;
            i10 += 2;
        }
        int i11 = this.f53080m;
        if (i11 != 0) {
            if (i11 > 0) {
                i4--;
            }
            int itemHeight = i11 / getItemHeight();
            i4 -= itemHeight;
            i10 = (int) (i10 + 1 + Math.asin(itemHeight));
        }
        return new e(i4, i10);
    }

    private boolean j(int i4, boolean z9) {
        View t9 = t(i4);
        if (t9 != null) {
            if (z9) {
                this.f53082o.addView(t9, 0);
                return true;
            }
            this.f53082o.addView(t9);
            return true;
        }
        return false;
    }

    private void k() {
        LinearLayout linearLayout = this.f53082o;
        if (linearLayout != null) {
            this.f53085r.f(linearLayout, this.f53083p, new e());
        } else {
            m();
        }
        int i4 = this.f53070c / 2;
        for (int i10 = this.f53069b + i4; i10 >= this.f53069b - i4; i10--) {
            if (j(i10, true)) {
                this.f53083p = i10;
            }
        }
    }

    private int l(int i4, int i10) {
        v();
        this.f53082o.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        this.f53082o.measure(View.MeasureSpec.makeMeasureSpec(i4, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        int measuredWidth = this.f53082o.getMeasuredWidth();
        if (i10 != 1073741824) {
            int max = Math.max(measuredWidth + 0, getSuggestedMinimumWidth());
            if (i10 != Integer.MIN_VALUE || i4 >= max) {
                i4 = max;
            }
        }
        this.f53082o.measure(View.MeasureSpec.makeMeasureSpec(i4 + 0, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        return i4;
    }

    private void m() {
        if (this.f53082o == null) {
            LinearLayout linearLayout = new LinearLayout(getContext());
            this.f53082o = linearLayout;
            linearLayout.setOrientation(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(int i4) {
        this.f53080m += i4;
        int itemHeight = getItemHeight();
        int i10 = this.f53080m / itemHeight;
        int i11 = this.f53069b - i10;
        int itemsCount = this.f53084q.getItemsCount();
        int i12 = this.f53080m % itemHeight;
        if (Math.abs(i12) <= itemHeight / 2) {
            i12 = 0;
        }
        if (this.f53081n && itemsCount > 0) {
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
            i10 = this.f53069b;
            i11 = 0;
        } else if (i11 >= itemsCount) {
            i10 = (this.f53069b - itemsCount) + 1;
            i11 = itemsCount - 1;
        } else if (i11 > 0 && i12 > 0) {
            i11--;
            i10++;
        } else if (i11 < itemsCount - 1 && i12 < 0) {
            i11++;
            i10--;
        }
        int i13 = this.f53080m;
        if (i11 != this.f53069b) {
            J(i11, false);
        } else {
            invalidate();
        }
        int i14 = i13 - (i10 * itemHeight);
        this.f53080m = i14;
        if (i14 > getHeight()) {
            this.f53080m = (this.f53080m % getHeight()) + getHeight();
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
        canvas.translate(0.0f, (-(((this.f53069b - this.f53083p) * getItemHeight()) + ((getItemHeight() - getHeight()) / 2))) + this.f53080m);
        this.f53082o.draw(canvas);
        canvas.restore();
    }

    private void q(Canvas canvas) {
        int itemHeight = getItemHeight() * 2;
        this.f53075h.setBounds(0, 0, getWidth(), itemHeight);
        this.f53075h.draw(canvas);
        this.f53076i.setBounds(0, getHeight() - itemHeight, getWidth(), getHeight());
        this.f53076i.draw(canvas);
    }

    private int s(LinearLayout linearLayout) {
        if (linearLayout != null && linearLayout.getChildAt(0) != null) {
            this.f53071d = linearLayout.getChildAt(0).getMeasuredHeight();
        }
        int i4 = this.f53071d;
        return Math.max((this.f53070c * i4) - ((i4 * 0) / 50), getSuggestedMinimumHeight());
    }

    private View t(int i4) {
        m mVar = this.f53084q;
        if (mVar == null || mVar.getItemsCount() == 0) {
            return null;
        }
        int itemsCount = this.f53084q.getItemsCount();
        if (!y(i4)) {
            return this.f53084q.getEmptyItem(this.f53085r.d(), this.f53082o);
        }
        while (i4 < 0) {
            i4 += itemsCount;
        }
        return this.f53084q.getItem(i4 % itemsCount, this.f53085r.e(), this.f53082o);
    }

    private void u(Context context) {
        this.f53078k = new l(getContext(), this.f53089v);
    }

    private void v() {
        if (this.f53072e == null) {
            this.f53072e = getContext().getResources().getDrawable(this.f53074g);
        }
        if (this.f53075h == null) {
            this.f53075h = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, this.f53068a);
        }
        if (this.f53076i == null) {
            this.f53076i = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, this.f53068a);
        }
        setBackgroundResource(this.f53073f);
    }

    private boolean y(int i4) {
        m mVar = this.f53084q;
        return mVar != null && mVar.getItemsCount() > 0 && (this.f53081n || (i4 >= 0 && i4 < this.f53084q.getItemsCount()));
    }

    private void z(int i4, int i10) {
        this.f53082o.layout(0, 0, i4 - 0, i10);
    }

    protected void A(int i4, int i10) {
        for (g gVar : this.f53086s) {
            gVar.a(this, i4, i10);
        }
    }

    protected void B(int i4) {
        for (h hVar : this.f53088u) {
            hVar.a(this, i4);
        }
    }

    protected void C() {
        for (i iVar : this.f53087t) {
            iVar.a(this);
        }
    }

    protected void D() {
        for (i iVar : this.f53087t) {
            iVar.b(this);
        }
    }

    public void F(g gVar) {
        this.f53086s.remove(gVar);
    }

    public void G(h hVar) {
        this.f53088u.remove(hVar);
    }

    public void H(i iVar) {
        this.f53087t.remove(iVar);
    }

    public void I(int i4, int i10) {
        this.f53078k.l((i4 * getItemHeight()) - this.f53080m, i10);
    }

    public void J(int i4, boolean z9) {
        int min;
        m mVar = this.f53084q;
        if (mVar == null || mVar.getItemsCount() == 0) {
            return;
        }
        int itemsCount = this.f53084q.getItemsCount();
        if (i4 < 0 || i4 >= itemsCount) {
            if (!this.f53081n) {
                return;
            }
            while (i4 < 0) {
                i4 += itemsCount;
            }
            i4 %= itemsCount;
        }
        int i10 = this.f53069b;
        if (i4 != i10) {
            if (z9) {
                int i11 = i4 - i10;
                if (this.f53081n && (min = (itemsCount + Math.min(i4, i10)) - Math.max(i4, this.f53069b)) < Math.abs(i11)) {
                    i11 = i11 < 0 ? min : -min;
                }
                I(i11, 0);
                return;
            }
            this.f53080m = 0;
            this.f53069b = i4;
            A(i10, i4);
            invalidate();
        }
    }

    public void K(int i4, int i10, int i11) {
        this.f53068a = new int[]{i4, i10, i11};
    }

    public void L() {
        this.f53078k.p();
    }

    public void g(g gVar) {
        this.f53086s.add(gVar);
    }

    public int getCurrentItem() {
        return this.f53069b;
    }

    public m getViewAdapter() {
        return this.f53084q;
    }

    public int getVisibleItems() {
        return this.f53070c;
    }

    public void h(h hVar) {
        this.f53088u.add(hVar);
    }

    public void i(i iVar) {
        this.f53087t.add(iVar);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        m mVar = this.f53084q;
        if (mVar != null && mVar.getItemsCount() > 0) {
            M();
            p(canvas);
            o(canvas);
        }
        if (this.f53077j) {
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
            int s9 = s(this.f53082o);
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
        } else if (!this.f53079l) {
            int y9 = ((int) motionEvent.getY()) - (getHeight() / 2);
            if (y9 > 0) {
                itemHeight = y9 + (getItemHeight() / 2);
            } else {
                itemHeight = y9 - (getItemHeight() / 2);
            }
            int itemHeight2 = itemHeight / getItemHeight();
            if (itemHeight2 != 0 && y(this.f53069b + itemHeight2)) {
                B(this.f53069b + itemHeight2);
            }
        }
        return this.f53078k.k(motionEvent);
    }

    public boolean r() {
        return this.f53077j;
    }

    public void setCurrentItem(int i4) {
        J(i4, false);
    }

    public void setCyclic(boolean z9) {
        this.f53081n = z9;
        w(false);
    }

    public void setDrawShadows(boolean z9) {
        this.f53077j = z9;
    }

    public void setInterpolator(Interpolator interpolator) {
        this.f53078k.m(interpolator);
    }

    public void setViewAdapter(m mVar) {
        m mVar2 = this.f53084q;
        if (mVar2 != null) {
            mVar2.unregisterDataSetObserver(this.f53090w);
        }
        this.f53084q = mVar;
        if (mVar != null) {
            mVar.registerDataSetObserver(this.f53090w);
        }
        w(true);
    }

    public void setVisibleItems(int i4) {
        this.f53070c = i4;
    }

    public void setWheelBackground(int i4) {
        this.f53073f = i4;
        setBackgroundResource(i4);
    }

    public void setWheelForeground(int i4) {
        this.f53074g = i4;
        this.f53072e = getContext().getResources().getDrawable(this.f53074g);
    }

    public void w(boolean z9) {
        if (z9) {
            this.f53085r.b();
            LinearLayout linearLayout = this.f53082o;
            if (linearLayout != null) {
                linearLayout.removeAllViews();
            }
            this.f53080m = 0;
        } else {
            LinearLayout linearLayout2 = this.f53082o;
            if (linearLayout2 != null) {
                this.f53085r.f(linearLayout2, this.f53083p, new e());
            }
        }
        invalidate();
    }

    public boolean x() {
        return this.f53081n;
    }

    public WheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f53068a = new int[]{17170443, 17170443, 17170443};
        this.f53069b = 0;
        this.f53070c = 5;
        this.f53071d = 0;
        this.f53073f = R.drawable.wheel_bg;
        this.f53074g = R.drawable.wheel_val;
        this.f53077j = true;
        this.f53081n = true;
        this.f53085r = new k(this);
        this.f53086s = new LinkedList();
        this.f53087t = new LinkedList();
        this.f53088u = new LinkedList();
        this.f53089v = new a();
        this.f53090w = new b();
        u(context);
    }

    public WheelView(Context context) {
        super(context);
        this.f53068a = new int[]{17170443, 17170443, 17170443};
        this.f53069b = 0;
        this.f53070c = 5;
        this.f53071d = 0;
        this.f53073f = R.drawable.wheel_bg;
        this.f53074g = R.drawable.wheel_val;
        this.f53077j = true;
        this.f53081n = true;
        this.f53085r = new k(this);
        this.f53086s = new LinkedList();
        this.f53087t = new LinkedList();
        this.f53088u = new LinkedList();
        this.f53089v = new a();
        this.f53090w = new b();
        u(context);
    }
}
