package com.shizhefei.view.indicator;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.Scroller;
import androidx.core.view.ViewCompat;
import com.shizhefei.view.indicator.c;
import com.shizhefei.view.indicator.slidebar.ScrollBar;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public class FixedIndicatorView extends LinearLayout implements com.shizhefei.view.indicator.c {

    /* renamed from: x  reason: collision with root package name */
    public static final int f55358x = 0;

    /* renamed from: y  reason: collision with root package name */
    public static final int f55359y = 1;

    /* renamed from: z  reason: collision with root package name */
    public static final int f55360z = 2;

    /* renamed from: a  reason: collision with root package name */
    private c.b f55361a;

    /* renamed from: b  reason: collision with root package name */
    private c.d f55362b;

    /* renamed from: c  reason: collision with root package name */
    private c.InterfaceC0469c f55363c;

    /* renamed from: d  reason: collision with root package name */
    private int f55364d;

    /* renamed from: e  reason: collision with root package name */
    private int f55365e;

    /* renamed from: f  reason: collision with root package name */
    private int f55366f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f55367g;

    /* renamed from: h  reason: collision with root package name */
    private int f55368h;

    /* renamed from: i  reason: collision with root package name */
    private List<ViewGroup> f55369i;

    /* renamed from: j  reason: collision with root package name */
    private c.a f55370j;

    /* renamed from: k  reason: collision with root package name */
    private View.OnClickListener f55371k;

    /* renamed from: l  reason: collision with root package name */
    private ScrollBar f55372l;

    /* renamed from: m  reason: collision with root package name */
    private d f55373m;

    /* renamed from: n  reason: collision with root package name */
    private Bitmap f55374n;

    /* renamed from: o  reason: collision with root package name */
    private Matrix f55375o;

    /* renamed from: p  reason: collision with root package name */
    private Canvas f55376p;

    /* renamed from: q  reason: collision with root package name */
    private int[] f55377q;

    /* renamed from: r  reason: collision with root package name */
    private int f55378r;

    /* renamed from: s  reason: collision with root package name */
    private int f55379s;

    /* renamed from: t  reason: collision with root package name */
    private float f55380t;

    /* renamed from: u  reason: collision with root package name */
    private c.e f55381u;

    /* renamed from: v  reason: collision with root package name */
    private View f55382v;

    /* renamed from: w  reason: collision with root package name */
    private LinearLayout.LayoutParams f55383w;

    /* loaded from: classes3.dex */
    class a implements c.a {
        a() {
        }

        @Override // com.shizhefei.view.indicator.c.a
        public void a() {
            View b10;
            if (!FixedIndicatorView.this.f55373m.c()) {
                FixedIndicatorView.this.f55373m.e();
            }
            int tabCountInLayout = FixedIndicatorView.this.getTabCountInLayout();
            int a10 = FixedIndicatorView.this.f55361a.a();
            FixedIndicatorView.this.f55369i.clear();
            for (int i4 = 0; i4 < tabCountInLayout && i4 < a10; i4++) {
                FixedIndicatorView.this.f55369i.add((ViewGroup) FixedIndicatorView.this.u(i4));
            }
            FixedIndicatorView.this.removeAllViews();
            int size = FixedIndicatorView.this.f55369i.size();
            int i10 = 0;
            while (i10 < a10) {
                LinearLayout linearLayout = new LinearLayout(FixedIndicatorView.this.getContext());
                if (i10 < size) {
                    View childAt = ((ViewGroup) FixedIndicatorView.this.f55369i.get(i10)).getChildAt(0);
                    ((ViewGroup) FixedIndicatorView.this.f55369i.get(i10)).removeView(childAt);
                    b10 = FixedIndicatorView.this.f55361a.b(i10, childAt, linearLayout);
                } else {
                    b10 = FixedIndicatorView.this.f55361a.b(i10, null, linearLayout);
                }
                if (FixedIndicatorView.this.f55381u != null) {
                    FixedIndicatorView.this.f55381u.a(b10, i10, i10 == FixedIndicatorView.this.f55364d ? 1.0f : 0.0f);
                }
                linearLayout.addView(b10);
                linearLayout.setOnClickListener(FixedIndicatorView.this.f55371k);
                linearLayout.setTag(Integer.valueOf(i10));
                FixedIndicatorView.this.addView(linearLayout, new LinearLayout.LayoutParams(-2, -1));
                i10++;
            }
            if (FixedIndicatorView.this.f55382v != null) {
                FixedIndicatorView fixedIndicatorView = FixedIndicatorView.this;
                fixedIndicatorView.C(fixedIndicatorView.f55382v, FixedIndicatorView.this.f55383w);
            }
            FixedIndicatorView.this.f55368h = -1;
            FixedIndicatorView fixedIndicatorView2 = FixedIndicatorView.this;
            fixedIndicatorView2.b(fixedIndicatorView2.f55364d, false);
            FixedIndicatorView.this.y();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (FixedIndicatorView.this.f55367g) {
                int intValue = ((Integer) view.getTag()).intValue();
                ViewGroup viewGroup = (ViewGroup) view;
                View childAt = viewGroup.getChildAt(0);
                if (FixedIndicatorView.this.f55363c == null || !FixedIndicatorView.this.f55363c.a(childAt, intValue)) {
                    FixedIndicatorView.this.setCurrentItem(intValue);
                    if (FixedIndicatorView.this.f55362b != null) {
                        FixedIndicatorView.this.f55362b.a(viewGroup.getChildAt(0), intValue, FixedIndicatorView.this.f55368h);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f55386a;

        static {
            int[] iArr = new int[ScrollBar.Gravity.values().length];
            f55386a = iArr;
            try {
                iArr[ScrollBar.Gravity.BOTTOM_FLOAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f55386a[ScrollBar.Gravity.TOP_FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f55386a[ScrollBar.Gravity.CENTENT_BACKGROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f55386a[ScrollBar.Gravity.CENTENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f55386a[ScrollBar.Gravity.TOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f55386a[ScrollBar.Gravity.BOTTOM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private int f55387a = 20;

        /* renamed from: b  reason: collision with root package name */
        private Scroller f55388b;

        /* renamed from: c  reason: collision with root package name */
        private final Interpolator f55389c;

        /* loaded from: classes3.dex */
        class a implements Interpolator {
            a() {
            }

            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f10) {
                float f11 = f10 - 1.0f;
                return (f11 * f11 * f11 * f11 * f11) + 1.0f;
            }
        }

        public d() {
            a aVar = new a();
            this.f55389c = aVar;
            this.f55388b = new Scroller(FixedIndicatorView.this.getContext(), aVar);
        }

        public boolean a() {
            return this.f55388b.computeScrollOffset();
        }

        public int b() {
            return this.f55388b.getCurrX();
        }

        public boolean c() {
            return this.f55388b.isFinished();
        }

        public void d(int i4, int i10, int i11) {
            this.f55388b.startScroll(i4, 0, i10 - i4, 0, i11);
            ViewCompat.postInvalidateOnAnimation(FixedIndicatorView.this);
            FixedIndicatorView.this.post(this);
        }

        public void e() {
            if (this.f55388b.isFinished()) {
                this.f55388b.abortAnimation();
            }
            FixedIndicatorView.this.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewCompat.postInvalidateOnAnimation(FixedIndicatorView.this);
            if (this.f55388b.isFinished()) {
                return;
            }
            FixedIndicatorView.this.postDelayed(this, this.f55387a);
        }
    }

    public FixedIndicatorView(Context context) {
        super(context);
        this.f55364d = -1;
        this.f55365e = 0;
        this.f55366f = 0;
        this.f55367g = true;
        this.f55368h = -1;
        this.f55369i = new LinkedList();
        this.f55370j = new a();
        this.f55371k = new b();
        this.f55375o = new Matrix();
        this.f55376p = new Canvas();
        this.f55377q = new int[]{-1, -1};
        w();
    }

    private void D(int i4) {
        c.b bVar = this.f55361a;
        if (bVar == null) {
            return;
        }
        int a10 = bVar.a();
        int i10 = 0;
        while (i10 < a10) {
            View v9 = v(i10);
            if (v9 != null) {
                v9.setSelected(i4 == i10);
            }
            i10++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTabCountInLayout() {
        if (this.f55382v != null) {
            return getChildCount() - 1;
        }
        return getChildCount();
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0124  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void t(android.graphics.Canvas r15) {
        /*
            Method dump skipped, instructions count: 426
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.shizhefei.view.indicator.FixedIndicatorView.t(android.graphics.Canvas):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View u(int i4) {
        if (this.f55382v != null && i4 >= (getChildCount() - 1) / 2) {
            i4++;
        }
        return getChildAt(i4);
    }

    private View v(int i4) {
        ViewGroup viewGroup = (ViewGroup) u(i4);
        if (viewGroup == null) {
            return null;
        }
        return viewGroup.getChildAt(0);
    }

    private void w() {
        this.f55373m = new d();
    }

    private int x(int i4, float f10, boolean z9) {
        View u9;
        ScrollBar scrollBar = this.f55372l;
        if (scrollBar == null || this.f55361a == null) {
            return 0;
        }
        View slideView = scrollBar.getSlideView();
        if (slideView.isLayoutRequested() || z9) {
            View u10 = u(i4);
            int i10 = i4 + 1;
            if (i10 < this.f55361a.a()) {
                u9 = u(i10);
            } else {
                u9 = u(0);
            }
            if (u10 != null) {
                int width = (int) ((u10.getWidth() * (1.0f - f10)) + (u9 == null ? 0.0f : u9.getWidth() * f10));
                int b10 = this.f55372l.b(width);
                int a10 = this.f55372l.a(getHeight());
                slideView.measure(b10, a10);
                slideView.layout(0, 0, b10, a10);
                return width;
            }
        }
        return this.f55372l.getSlideView().getWidth();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        int tabCountInLayout = getTabCountInLayout();
        int i4 = this.f55365e;
        int i10 = 0;
        if (i4 == 0) {
            for (int i11 = 0; i11 < tabCountInLayout; i11++) {
                View u9 = u(i11);
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) u9.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
                u9.setLayoutParams(layoutParams);
            }
        } else if (i4 == 1) {
            while (i10 < tabCountInLayout) {
                View u10 = u(i10);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) u10.getLayoutParams();
                layoutParams2.width = -2;
                layoutParams2.weight = 1.0f;
                u10.setLayoutParams(layoutParams2);
                i10++;
            }
        } else if (i4 == 2) {
            while (i10 < tabCountInLayout) {
                View u11 = u(i10);
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) u11.getLayoutParams();
                layoutParams3.width = -2;
                layoutParams3.weight = 0.0f;
                u11.setLayoutParams(layoutParams3);
                i10++;
            }
        }
    }

    private void z(int i4, float f10, int i10) {
        int[] iArr;
        View a10;
        if (i4 < 0 || i4 > getCount() - 1) {
            return;
        }
        ScrollBar scrollBar = this.f55372l;
        if (scrollBar != null) {
            scrollBar.onPageScrolled(i4, f10, i10);
        }
        if (this.f55381u != null) {
            for (int i11 : this.f55377q) {
                if (i11 != i4 && i11 != i4 + 1 && (a10 = a(i11)) != null) {
                    this.f55381u.a(a10, i11, 0.0f);
                }
            }
            int[] iArr2 = this.f55377q;
            iArr2[0] = i4;
            int i12 = i4 + 1;
            iArr2[1] = i12;
            View a11 = a(this.f55368h);
            if (a11 != null) {
                this.f55381u.a(a11, this.f55368h, 0.0f);
            }
            View a12 = a(i4);
            if (a12 != null) {
                this.f55381u.a(a12, i4, 1.0f - f10);
            }
            View a13 = a(i12);
            if (a13 != null) {
                this.f55381u.a(a13, i12, f10);
            }
        }
    }

    public void A() {
        View view = this.f55382v;
        if (view != null) {
            removeView(view);
            this.f55382v = null;
        }
        this.f55383w = null;
    }

    public void B(View view, int i4, int i10) {
        this.f55382v = view;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i4, i10);
        layoutParams.gravity = 16;
        C(view, layoutParams);
    }

    public void C(View view, ViewGroup.LayoutParams layoutParams) {
        LinearLayout.LayoutParams generateLayoutParams;
        A();
        if (layoutParams == null) {
            generateLayoutParams = new LinearLayout.LayoutParams(-2, -1);
        } else {
            generateLayoutParams = generateLayoutParams(layoutParams);
        }
        this.f55383w = generateLayoutParams;
        this.f55382v = view;
        addView(view, getChildCount() / 2, generateLayoutParams);
    }

    @Override // com.shizhefei.view.indicator.c
    public View a(int i4) {
        c.b bVar = this.f55361a;
        if (bVar != null && i4 >= 0 && i4 <= bVar.a() - 1) {
            return v(i4);
        }
        return null;
    }

    @Override // com.shizhefei.view.indicator.c
    public void b(int i4, boolean z9) {
        int i10;
        int left;
        int left2;
        int count = getCount();
        if (count == 0) {
            return;
        }
        if (i4 < 0) {
            i4 = 0;
        } else {
            int i11 = count - 1;
            if (i4 > i11) {
                i4 = i11;
            }
        }
        int i12 = this.f55364d;
        if (i12 != i4) {
            this.f55368h = i12;
            this.f55364d = i4;
            if (!this.f55373m.c()) {
                this.f55373m.e();
            }
            if (this.f55366f == 0) {
                D(i4);
                if (z9 && getMeasuredWidth() != 0 && u(i4).getMeasuredWidth() != 0 && (i10 = this.f55368h) >= 0 && i10 < getTabCountInLayout()) {
                    this.f55373m.d(u(this.f55368h).getLeft(), u(i4).getLeft(), Math.min((int) (((Math.abs(left2 - left) / u(i4).getMeasuredWidth()) + 1.0f) * 100.0f), 600));
                    return;
                }
                z(i4, 0.0f, 0);
            } else if (this.f55381u == null) {
                D(i4);
            }
        }
    }

    @Override // com.shizhefei.view.indicator.c
    public boolean c() {
        return this.f55367g;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        ScrollBar scrollBar = this.f55372l;
        if (scrollBar != null && scrollBar.getGravity() == ScrollBar.Gravity.CENTENT_BACKGROUND) {
            t(canvas);
        }
        super.dispatchDraw(canvas);
        ScrollBar scrollBar2 = this.f55372l;
        if (scrollBar2 == null || scrollBar2.getGravity() == ScrollBar.Gravity.CENTENT_BACKGROUND) {
            return;
        }
        t(canvas);
    }

    public View getCenterView() {
        return this.f55382v;
    }

    public int getCount() {
        c.b bVar = this.f55361a;
        if (bVar == null) {
            return 0;
        }
        return bVar.a();
    }

    @Override // com.shizhefei.view.indicator.c
    public int getCurrentItem() {
        return this.f55364d;
    }

    @Override // com.shizhefei.view.indicator.c
    public c.b getIndicatorAdapter() {
        return this.f55361a;
    }

    @Override // com.shizhefei.view.indicator.c
    public c.InterfaceC0469c getOnIndicatorItemClickListener() {
        return this.f55363c;
    }

    @Override // com.shizhefei.view.indicator.c
    public c.d getOnItemSelectListener() {
        return this.f55362b;
    }

    @Override // com.shizhefei.view.indicator.c
    public c.e getOnTransitionListener() {
        return this.f55381u;
    }

    @Override // com.shizhefei.view.indicator.c
    public int getPreSelectItem() {
        return this.f55368h;
    }

    public ScrollBar getScrollBar() {
        return this.f55372l;
    }

    public int getSplitMethod() {
        return this.f55365e;
    }

    @Override // android.view.ViewGroup
    protected void measureChildren(int i4, int i10) {
        super.measureChildren(i4, i10);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f55373m.e();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            this.f55382v = childAt;
            this.f55383w = (LinearLayout.LayoutParams) childAt.getLayoutParams();
        }
    }

    @Override // com.shizhefei.view.indicator.c
    public void onPageScrollStateChanged(int i4) {
        this.f55366f = i4;
        if (i4 == 0) {
            D(this.f55364d);
        }
    }

    @Override // com.shizhefei.view.indicator.c
    public void onPageScrolled(int i4, float f10, int i10) {
        this.f55378r = i4;
        this.f55380t = f10;
        this.f55379s = i10;
        if (this.f55372l != null) {
            ViewCompat.postInvalidateOnAnimation(this);
        } else {
            z(i4, f10, i10);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i4, int i10, int i11, int i12) {
        super.onSizeChanged(i4, i10, i11, i12);
        x(this.f55364d, 1.0f, true);
    }

    @Override // com.shizhefei.view.indicator.c
    public void setAdapter(c.b bVar) {
        c.b bVar2 = this.f55361a;
        if (bVar2 != null) {
            bVar2.g(this.f55370j);
        }
        this.f55361a = bVar;
        bVar.e(this.f55370j);
        bVar.d();
    }

    public void setCenterView(View view) {
        C(view, view.getLayoutParams());
    }

    @Override // com.shizhefei.view.indicator.c
    public void setCurrentItem(int i4) {
        b(i4, true);
    }

    @Override // com.shizhefei.view.indicator.c
    public void setItemClickable(boolean z9) {
        this.f55367g = z9;
    }

    @Override // com.shizhefei.view.indicator.c
    public void setOnIndicatorItemClickListener(c.InterfaceC0469c interfaceC0469c) {
        this.f55363c = interfaceC0469c;
    }

    @Override // com.shizhefei.view.indicator.c
    public void setOnItemSelectListener(c.d dVar) {
        this.f55362b = dVar;
    }

    @Override // com.shizhefei.view.indicator.c
    public void setOnTransitionListener(c.e eVar) {
        this.f55381u = eVar;
        D(this.f55364d);
        if (this.f55361a != null) {
            int i4 = 0;
            while (i4 < this.f55361a.a()) {
                View a10 = a(i4);
                if (a10 != null) {
                    eVar.a(a10, i4, this.f55364d == i4 ? 1.0f : 0.0f);
                }
                i4++;
            }
        }
    }

    @Override // com.shizhefei.view.indicator.c
    public void setScrollBar(ScrollBar scrollBar) {
        int paddingBottom = getPaddingBottom();
        int paddingTop = getPaddingTop();
        ScrollBar scrollBar2 = this.f55372l;
        if (scrollBar2 != null) {
            int i4 = c.f55386a[scrollBar2.getGravity().ordinal()];
            if (i4 == 1) {
                paddingBottom -= scrollBar.a(getHeight());
            } else if (i4 == 2) {
                paddingTop -= scrollBar.a(getHeight());
            }
        }
        this.f55372l = scrollBar;
        int i10 = c.f55386a[scrollBar.getGravity().ordinal()];
        if (i10 == 1) {
            paddingBottom += scrollBar.a(getHeight());
        } else if (i10 == 2) {
            paddingTop += scrollBar.a(getHeight());
        }
        setPadding(getPaddingLeft(), paddingTop, getPaddingRight(), paddingBottom);
    }

    public void setSplitMethod(int i4) {
        this.f55365e = i4;
        y();
    }

    @SuppressLint({"NewApi"})
    public FixedIndicatorView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f55364d = -1;
        this.f55365e = 0;
        this.f55366f = 0;
        this.f55367g = true;
        this.f55368h = -1;
        this.f55369i = new LinkedList();
        this.f55370j = new a();
        this.f55371k = new b();
        this.f55375o = new Matrix();
        this.f55376p = new Canvas();
        this.f55377q = new int[]{-1, -1};
        w();
    }

    public FixedIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f55364d = -1;
        this.f55365e = 0;
        this.f55366f = 0;
        this.f55367g = true;
        this.f55368h = -1;
        this.f55369i = new LinkedList();
        this.f55370j = new a();
        this.f55371k = new b();
        this.f55375o = new Matrix();
        this.f55376p = new Canvas();
        this.f55377q = new int[]{-1, -1};
        w();
    }
}
