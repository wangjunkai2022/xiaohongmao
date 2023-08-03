package com.shizhefei.view.indicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.shizhefei.view.indicator.c;
import com.shizhefei.view.indicator.slidebar.ScrollBar;

/* loaded from: classes3.dex */
public class RecyclerIndicatorView extends RecyclerView implements com.shizhefei.view.indicator.c {

    /* renamed from: a  reason: collision with root package name */
    private c.b f55392a;

    /* renamed from: b  reason: collision with root package name */
    private c f55393b;

    /* renamed from: c  reason: collision with root package name */
    private LinearLayoutManager f55394c;

    /* renamed from: d  reason: collision with root package name */
    private float f55395d;

    /* renamed from: e  reason: collision with root package name */
    private int f55396e;

    /* renamed from: f  reason: collision with root package name */
    private int f55397f;

    /* renamed from: g  reason: collision with root package name */
    private c.InterfaceC0469c f55398g;

    /* renamed from: h  reason: collision with root package name */
    private c.d f55399h;

    /* renamed from: i  reason: collision with root package name */
    private ScrollBar f55400i;

    /* renamed from: j  reason: collision with root package name */
    private c.e f55401j;

    /* renamed from: k  reason: collision with root package name */
    private int[] f55402k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f55403l;

    /* renamed from: m  reason: collision with root package name */
    private int f55404m;

    /* renamed from: n  reason: collision with root package name */
    private int f55405n;

    /* renamed from: o  reason: collision with root package name */
    private int f55406o;

    /* renamed from: p  reason: collision with root package name */
    private int f55407p;

    /* loaded from: classes3.dex */
    class a extends LinearSmoothScroller {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f55408a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context context, int i4) {
            super(context);
            this.f55408a = i4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
        public PointF computeScrollVectorForPosition(int i4) {
            PointF computeScrollVectorForPosition = RecyclerIndicatorView.this.f55394c.computeScrollVectorForPosition(i4);
            computeScrollVectorForPosition.x += this.f55408a;
            return computeScrollVectorForPosition;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f55410a;

        static {
            int[] iArr = new int[ScrollBar.Gravity.values().length];
            f55410a = iArr;
            try {
                iArr[ScrollBar.Gravity.CENTENT_BACKGROUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f55410a[ScrollBar.Gravity.CENTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f55410a[ScrollBar.Gravity.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f55410a[ScrollBar.Gravity.TOP_FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f55410a[ScrollBar.Gravity.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f55410a[ScrollBar.Gravity.BOTTOM_FLOAT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class c extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

        /* renamed from: a  reason: collision with root package name */
        private c.b f55411a;

        /* renamed from: b  reason: collision with root package name */
        private View.OnClickListener f55412b = new b();

        /* loaded from: classes3.dex */
        class a extends RecyclerView.ViewHolder {
            a(View view) {
                super(view);
            }
        }

        /* loaded from: classes3.dex */
        class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RecyclerIndicatorView.this.f55403l) {
                    int intValue = ((Integer) view.getTag()).intValue();
                    if (RecyclerIndicatorView.this.f55398g == null || !RecyclerIndicatorView.this.f55398g.a(RecyclerIndicatorView.this.a(intValue), intValue)) {
                        RecyclerIndicatorView.this.b(intValue, true);
                    }
                }
            }
        }

        public c(c.b bVar) {
            this.f55411a = bVar;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            c.b bVar = this.f55411a;
            if (bVar == null) {
                return 0;
            }
            return bVar.a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i4) {
            return 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i4) {
            LinearLayout linearLayout = (LinearLayout) viewHolder.itemView;
            View childAt = linearLayout.getChildAt(0);
            linearLayout.removeAllViews();
            linearLayout.addView(this.f55411a.b(i4, childAt, linearLayout));
            linearLayout.setTag(Integer.valueOf(i4));
            linearLayout.setOnClickListener(this.f55412b);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i4) {
            LinearLayout linearLayout = new LinearLayout(viewGroup.getContext());
            linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-2, -1));
            return new a(linearLayout);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            super.onViewAttachedToWindow(viewHolder);
            int layoutPosition = viewHolder.getLayoutPosition();
            View childAt = ((LinearLayout) viewHolder.itemView).getChildAt(0);
            childAt.setSelected(RecyclerIndicatorView.this.f55406o == layoutPosition);
            if (RecyclerIndicatorView.this.f55401j != null) {
                if (RecyclerIndicatorView.this.f55406o == layoutPosition) {
                    RecyclerIndicatorView.this.f55401j.a(childAt, layoutPosition, 1.0f);
                } else {
                    RecyclerIndicatorView.this.f55401j.a(childAt, layoutPosition, 0.0f);
                }
            }
        }
    }

    public RecyclerIndicatorView(Context context) {
        super(context);
        this.f55397f = -1;
        this.f55402k = new int[]{-1, -1};
        this.f55403l = true;
        j();
    }

    private void i(Canvas canvas) {
        int height;
        int k10;
        float measuredWidth;
        c cVar = this.f55393b;
        if (cVar == null || this.f55400i == null || cVar.getItemCount() == 0) {
            return;
        }
        int i4 = b.f55410a[this.f55400i.getGravity().ordinal()];
        if (i4 != 1 && i4 != 2) {
            height = (i4 == 3 || i4 == 4) ? 0 : getHeight() - this.f55400i.a(getHeight());
        } else {
            height = (getHeight() - this.f55400i.a(getHeight())) / 2;
        }
        if (this.f55404m == 0) {
            View findViewByPosition = this.f55394c.findViewByPosition(this.f55406o);
            k10 = k(this.f55406o, 0.0f, true);
            if (findViewByPosition == null) {
                return;
            }
            measuredWidth = findViewByPosition.getLeft();
        } else {
            View findViewByPosition2 = this.f55394c.findViewByPosition(this.f55405n);
            k10 = k(this.f55405n, this.f55395d, true);
            if (findViewByPosition2 == null) {
                return;
            }
            measuredWidth = (findViewByPosition2.getMeasuredWidth() * this.f55395d) + findViewByPosition2.getLeft();
        }
        int width = this.f55400i.getSlideView().getWidth();
        int save = canvas.save();
        canvas.translate(measuredWidth + ((k10 - width) / 2), height);
        canvas.clipRect(0, 0, width, this.f55400i.getSlideView().getHeight());
        this.f55400i.getSlideView().draw(canvas);
        canvas.restoreToCount(save);
    }

    private void j() {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext(), 0, false);
        this.f55394c = linearLayoutManager;
        setLayoutManager(linearLayoutManager);
    }

    private int k(int i4, float f10, boolean z9) {
        ScrollBar scrollBar = this.f55400i;
        if (scrollBar == null) {
            return 0;
        }
        View slideView = scrollBar.getSlideView();
        if (slideView.isLayoutRequested() || z9) {
            View findViewByPosition = this.f55394c.findViewByPosition(i4);
            View findViewByPosition2 = this.f55394c.findViewByPosition(i4 + 1);
            if (findViewByPosition != null) {
                int width = (int) ((findViewByPosition.getWidth() * (1.0f - f10)) + (findViewByPosition2 == null ? 0.0f : findViewByPosition2.getWidth() * f10));
                int b10 = this.f55400i.b(width);
                int a10 = this.f55400i.a(getHeight());
                slideView.measure(b10, a10);
                slideView.layout(0, 0, b10, a10);
                return width;
            }
        }
        return this.f55400i.getSlideView().getWidth();
    }

    private void m(int i4, int i10) {
        a aVar = new a(getContext(), i10);
        aVar.setTargetPosition(i4);
        this.f55394c.startSmoothScroll(aVar);
    }

    private void n(int i4) {
        View a10 = a(this.f55407p);
        if (a10 != null) {
            a10.setSelected(false);
        }
        View a11 = a(i4);
        if (a11 != null) {
            a11.setSelected(true);
        }
    }

    private void o(int i4) {
        if (this.f55401j == null) {
            return;
        }
        View a10 = a(this.f55407p);
        if (a10 != null) {
            this.f55401j.a(a10, this.f55407p, 0.0f);
        }
        View a11 = a(i4);
        if (a11 != null) {
            this.f55401j.a(a11, i4, 1.0f);
        }
    }

    @Override // com.shizhefei.view.indicator.c
    public View a(int i4) {
        LinearLayout linearLayout = (LinearLayout) this.f55394c.findViewByPosition(i4);
        return linearLayout != null ? linearLayout.getChildAt(0) : linearLayout;
    }

    @Override // com.shizhefei.view.indicator.c
    public void b(int i4, boolean z9) {
        this.f55407p = this.f55406o;
        this.f55406o = i4;
        if (this.f55404m == 0) {
            l(i4, 0.0f);
            n(i4);
            this.f55397f = i4;
        } else if (this.f55399h == null) {
            n(i4);
        }
        c.d dVar = this.f55399h;
        if (dVar != null) {
            dVar.a(a(i4), this.f55406o, this.f55407p);
        }
    }

    @Override // com.shizhefei.view.indicator.c
    public boolean c() {
        return this.f55403l;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        ScrollBar scrollBar = this.f55400i;
        if (scrollBar != null && scrollBar.getGravity() == ScrollBar.Gravity.CENTENT_BACKGROUND) {
            i(canvas);
        }
        super.dispatchDraw(canvas);
        ScrollBar scrollBar2 = this.f55400i;
        if (scrollBar2 == null || scrollBar2.getGravity() == ScrollBar.Gravity.CENTENT_BACKGROUND) {
            return;
        }
        i(canvas);
    }

    @Override // com.shizhefei.view.indicator.c
    public int getCurrentItem() {
        return this.f55406o;
    }

    @Override // com.shizhefei.view.indicator.c
    public c.b getIndicatorAdapter() {
        return this.f55392a;
    }

    @Override // com.shizhefei.view.indicator.c
    public c.InterfaceC0469c getOnIndicatorItemClickListener() {
        return this.f55398g;
    }

    @Override // com.shizhefei.view.indicator.c
    public c.d getOnItemSelectListener() {
        return this.f55399h;
    }

    @Override // com.shizhefei.view.indicator.c
    public c.e getOnTransitionListener() {
        return null;
    }

    @Override // com.shizhefei.view.indicator.c
    public int getPreSelectItem() {
        return this.f55407p;
    }

    protected void l(int i4, float f10) {
        int i10;
        int[] iArr;
        View findViewByPosition = this.f55394c.findViewByPosition(i4);
        int i11 = i4 + 1;
        View findViewByPosition2 = this.f55394c.findViewByPosition(i11);
        if (findViewByPosition != null) {
            float measuredWidth = getMeasuredWidth() / 2.0f;
            float measuredWidth2 = measuredWidth - (findViewByPosition.getMeasuredWidth() / 2.0f);
            if (findViewByPosition2 != null) {
                measuredWidth2 -= ((findViewByPosition.getMeasuredWidth() - (measuredWidth - (findViewByPosition2.getMeasuredWidth() / 2.0f))) + measuredWidth2) * f10;
            }
            i10 = (int) measuredWidth2;
        } else {
            i10 = 0;
        }
        if (this.f55401j != null) {
            for (int i12 : this.f55402k) {
                View a10 = a(i12);
                if (i12 != i4 && i12 != i11 && a10 != null) {
                    this.f55401j.a(a10, i12, 0.0f);
                }
            }
            View a11 = a(this.f55407p);
            if (a11 != null) {
                this.f55401j.a(a11, this.f55407p, 0.0f);
            }
            this.f55394c.scrollToPositionWithOffset(i4, i10);
            View a12 = a(i4);
            if (a12 != null) {
                this.f55401j.a(a12, i4, 1.0f - f10);
                this.f55402k[0] = i4;
            }
            View a13 = a(i11);
            if (a13 != null) {
                this.f55401j.a(a13, i11, f10);
                this.f55402k[1] = i11;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        super.onLayout(z9, i4, i10, i11, i12);
        int i13 = this.f55397f;
        if (i13 != -1) {
            this.f55394c.findViewByPosition(i13);
            l(this.f55397f, 0.0f);
            this.f55397f = -1;
        }
    }

    @Override // com.shizhefei.view.indicator.c
    public void onPageScrollStateChanged(int i4) {
        this.f55404m = i4;
    }

    @Override // com.shizhefei.view.indicator.c
    public void onPageScrolled(int i4, float f10, int i10) {
        this.f55396e = i10;
        this.f55405n = i4;
        this.f55395d = f10;
        ScrollBar scrollBar = this.f55400i;
        if (scrollBar != null) {
            scrollBar.onPageScrolled(i4, f10, i10);
        }
        l(i4, f10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onSizeChanged(int i4, int i10, int i11, int i12) {
        super.onSizeChanged(i4, i10, i11, i12);
        c.b bVar = this.f55392a;
        if (bVar == null || bVar.a() <= 0) {
            return;
        }
        l(this.f55406o, 0.0f);
    }

    @Override // com.shizhefei.view.indicator.c
    public void setAdapter(c.b bVar) {
        this.f55392a = bVar;
        c cVar = new c(bVar);
        this.f55393b = cVar;
        setAdapter(cVar);
    }

    @Override // com.shizhefei.view.indicator.c
    public void setCurrentItem(int i4) {
        b(i4, true);
    }

    @Override // com.shizhefei.view.indicator.c
    public void setItemClickable(boolean z9) {
        this.f55403l = z9;
    }

    @Override // com.shizhefei.view.indicator.c
    public void setOnIndicatorItemClickListener(c.InterfaceC0469c interfaceC0469c) {
        this.f55398g = interfaceC0469c;
    }

    @Override // com.shizhefei.view.indicator.c
    public void setOnItemSelectListener(c.d dVar) {
        this.f55399h = dVar;
    }

    @Override // com.shizhefei.view.indicator.c
    public void setOnTransitionListener(c.e eVar) {
        this.f55401j = eVar;
        n(this.f55406o);
        o(this.f55406o);
    }

    @Override // com.shizhefei.view.indicator.c
    public void setScrollBar(ScrollBar scrollBar) {
        this.f55400i = scrollBar;
    }

    public RecyclerIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f55397f = -1;
        this.f55402k = new int[]{-1, -1};
        this.f55403l = true;
        j();
    }

    public RecyclerIndicatorView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f55397f = -1;
        this.f55402k = new int[]{-1, -1};
        this.f55403l = true;
        j();
    }
}
