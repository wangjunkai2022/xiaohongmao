package com.futuremind.recyclerviewfastscroll;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.TextViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.futuremind.recyclerviewfastscroll.a;
import com.hbb20.i;

/* loaded from: classes2.dex */
public class FastScroller extends LinearLayout {

    /* renamed from: o  reason: collision with root package name */
    private static final int f16091o = -1;

    /* renamed from: a  reason: collision with root package name */
    private final com.futuremind.recyclerviewfastscroll.a f16092a;

    /* renamed from: b  reason: collision with root package name */
    private RecyclerView f16093b;

    /* renamed from: c  reason: collision with root package name */
    private View f16094c;

    /* renamed from: d  reason: collision with root package name */
    private View f16095d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f16096e;

    /* renamed from: f  reason: collision with root package name */
    private int f16097f;

    /* renamed from: g  reason: collision with root package name */
    private int f16098g;

    /* renamed from: h  reason: collision with root package name */
    private int f16099h;

    /* renamed from: i  reason: collision with root package name */
    private int f16100i;

    /* renamed from: j  reason: collision with root package name */
    private int f16101j;

    /* renamed from: k  reason: collision with root package name */
    private int f16102k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f16103l;

    /* renamed from: m  reason: collision with root package name */
    private com.futuremind.recyclerviewfastscroll.viewprovider.c f16104m;

    /* renamed from: n  reason: collision with root package name */
    private com.futuremind.recyclerviewfastscroll.b f16105n;

    /* loaded from: classes2.dex */
    class a implements ViewGroup.OnHierarchyChangeListener {
        a() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View parent, View child) {
            FastScroller.this.k();
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View parent, View child) {
            FastScroller.this.k();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements View.OnTouchListener {
        b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v9, MotionEvent event) {
            FastScroller.this.requestDisallowInterceptTouchEvent(true);
            if (event.getAction() != 0 && event.getAction() != 2) {
                if (event.getAction() == 1) {
                    FastScroller.this.f16103l = false;
                    if (FastScroller.this.f16105n != null) {
                        FastScroller.this.f16104m.g();
                    }
                    return true;
                }
                return false;
            }
            if (FastScroller.this.f16105n != null && event.getAction() == 0) {
                FastScroller.this.f16104m.f();
            }
            FastScroller.this.f16103l = true;
            float i4 = FastScroller.this.i(event);
            FastScroller.this.setScrollerPosition(i4);
            FastScroller.this.setRecyclerViewPosition(i4);
            return true;
        }
    }

    public FastScroller(Context context) {
        this(context, null);
    }

    private void h() {
        int i4 = this.f16099h;
        if (i4 != -1) {
            n(this.f16096e, i4);
        }
        int i10 = this.f16098g;
        if (i10 != -1) {
            n(this.f16095d, i10);
        }
        int i11 = this.f16100i;
        if (i11 != -1) {
            TextViewCompat.setTextAppearance(this.f16096e, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float i(MotionEvent event) {
        float rawX;
        int width;
        int width2;
        if (m()) {
            rawX = event.getRawY() - c.c(this.f16095d);
            width = getHeight();
            width2 = this.f16095d.getHeight();
        } else {
            rawX = event.getRawX() - c.b(this.f16095d);
            width = getWidth();
            width2 = this.f16095d.getWidth();
        }
        return rawX / (width - width2);
    }

    private void j() {
        this.f16095d.setOnTouchListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        if (this.f16093b.getAdapter() != null && this.f16093b.getAdapter().getItemCount() != 0 && this.f16093b.getChildAt(0) != null && !l() && this.f16102k == 0) {
            super.setVisibility(0);
        } else {
            super.setVisibility(4);
        }
    }

    private boolean l() {
        return m() ? this.f16093b.getChildAt(0).getHeight() * this.f16093b.getAdapter().getItemCount() <= this.f16093b.getHeight() : this.f16093b.getChildAt(0).getWidth() * this.f16093b.getAdapter().getItemCount() <= this.f16093b.getWidth();
    }

    private void n(View view, int color) {
        Drawable wrap = DrawableCompat.wrap(view.getBackground());
        if (wrap == null) {
            return;
        }
        DrawableCompat.setTint(wrap.mutate(), color);
        c.d(view, wrap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRecyclerViewPosition(float relativePos) {
        TextView textView;
        RecyclerView recyclerView = this.f16093b;
        if (recyclerView == null) {
            return;
        }
        int itemCount = recyclerView.getAdapter().getItemCount();
        int a10 = (int) c.a(0.0f, itemCount - 1, (int) (relativePos * itemCount));
        this.f16093b.scrollToPosition(a10);
        com.futuremind.recyclerviewfastscroll.b bVar = this.f16105n;
        if (bVar == null || (textView = this.f16096e) == null) {
            return;
        }
        textView.setText(bVar.b(a10));
    }

    public void g(a.InterfaceC0125a listener) {
        this.f16092a.a(listener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.futuremind.recyclerviewfastscroll.viewprovider.c getViewProvider() {
        return this.f16104m;
    }

    public boolean m() {
        return this.f16101j == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean o() {
        return (this.f16095d == null || this.f16103l || this.f16093b.getChildCount() <= 0) ? false : true;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l10, int t9, int r9, int b10) {
        super.onLayout(changed, l10, t9, r9, b10);
        j();
        this.f16097f = this.f16104m.b();
        h();
        if (isInEditMode()) {
            return;
        }
        this.f16092a.c(this.f16093b);
    }

    public void setBubbleColor(int color) {
        this.f16099h = color;
        invalidate();
    }

    public void setBubbleTextAppearance(int textAppearanceResourceId) {
        this.f16100i = textAppearanceResourceId;
        invalidate();
    }

    public void setHandleColor(int color) {
        this.f16098g = color;
        invalidate();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int orientation) {
        this.f16101j = orientation;
        super.setOrientation(orientation == 0 ? 1 : 0);
    }

    public void setRecyclerView(RecyclerView recyclerView) {
        this.f16093b = recyclerView;
        if (recyclerView.getAdapter() instanceof com.futuremind.recyclerviewfastscroll.b) {
            this.f16105n = (com.futuremind.recyclerviewfastscroll.b) recyclerView.getAdapter();
        }
        recyclerView.addOnScrollListener(this.f16092a);
        k();
        recyclerView.setOnHierarchyChangeListener(new a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setScrollerPosition(float relativePos) {
        if (m()) {
            this.f16094c.setY(c.a(0.0f, getHeight() - this.f16094c.getHeight(), ((getHeight() - this.f16095d.getHeight()) * relativePos) + this.f16097f));
            this.f16095d.setY(c.a(0.0f, getHeight() - this.f16095d.getHeight(), relativePos * (getHeight() - this.f16095d.getHeight())));
            return;
        }
        this.f16094c.setX(c.a(0.0f, getWidth() - this.f16094c.getWidth(), ((getWidth() - this.f16095d.getWidth()) * relativePos) + this.f16097f));
        this.f16095d.setX(c.a(0.0f, getWidth() - this.f16095d.getWidth(), relativePos * (getWidth() - this.f16095d.getWidth())));
    }

    public void setViewProvider(com.futuremind.recyclerviewfastscroll.viewprovider.c viewProvider) {
        removeAllViews();
        this.f16104m = viewProvider;
        viewProvider.o(this);
        this.f16094c = viewProvider.l(this);
        this.f16095d = viewProvider.n(this);
        this.f16096e = viewProvider.k();
        addView(this.f16094c);
        addView(this.f16095d);
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
        this.f16102k = visibility;
        k();
    }

    public FastScroller(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public FastScroller(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f16092a = new com.futuremind.recyclerviewfastscroll.a(this);
        setClipChildren(false);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, i.o.N9, i.c.K2, 0);
        try {
            this.f16099h = obtainStyledAttributes.getColor(i.o.O9, -1);
            this.f16098g = obtainStyledAttributes.getColor(i.o.Q9, -1);
            this.f16100i = obtainStyledAttributes.getResourceId(i.o.P9, -1);
            obtainStyledAttributes.recycle();
            this.f16102k = getVisibility();
            setViewProvider(new com.futuremind.recyclerviewfastscroll.viewprovider.b());
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }
}
