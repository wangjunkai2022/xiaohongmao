package com.qennnsad.aknkaksd.presentation.ui.widget.giftView;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import androidx.viewpager.widget.ViewPager;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.gift.Gift;
import com.qennnsad.aknkaksd.g;
import com.qennnsad.aknkaksd.util.o0;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class GiftLayoutView extends RelativeLayout implements AdapterView.OnItemClickListener {
    private static final int C = 2;
    private static final int D = 4;
    private static final int E = 2131231835;
    private static final int F = 2131231834;
    private static final int G = 5;
    private static final int H = 0;
    private float A;
    private int B;

    /* renamed from: a  reason: collision with root package name */
    private Context f54389a;

    /* renamed from: b  reason: collision with root package name */
    private ViewPager f54390b;

    /* renamed from: c  reason: collision with root package name */
    private LinearLayout f54391c;

    /* renamed from: d  reason: collision with root package name */
    private ArrayList<View> f54392d;

    /* renamed from: e  reason: collision with root package name */
    private ArrayList<b> f54393e;

    /* renamed from: f  reason: collision with root package name */
    private List<Gift> f54394f;

    /* renamed from: g  reason: collision with root package name */
    private List<List<Gift>> f54395g;

    /* renamed from: h  reason: collision with root package name */
    private ArrayList<ImageView> f54396h;

    /* renamed from: i  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.ui.widget.giftView.a f54397i;

    /* renamed from: j  reason: collision with root package name */
    private int f54398j;

    /* renamed from: k  reason: collision with root package name */
    private int f54399k;

    /* renamed from: l  reason: collision with root package name */
    private int f54400l;

    /* renamed from: m  reason: collision with root package name */
    private int f54401m;

    /* renamed from: n  reason: collision with root package name */
    private int f54402n;

    /* renamed from: o  reason: collision with root package name */
    private int f54403o;

    /* renamed from: p  reason: collision with root package name */
    private int f54404p;

    /* renamed from: q  reason: collision with root package name */
    private int f54405q;

    /* renamed from: r  reason: collision with root package name */
    private int f54406r;

    /* renamed from: s  reason: collision with root package name */
    private RelativeLayout.LayoutParams f54407s;

    /* renamed from: t  reason: collision with root package name */
    private RelativeLayout.LayoutParams f54408t;

    /* renamed from: u  reason: collision with root package name */
    private int f54409u;

    /* renamed from: v  reason: collision with root package name */
    private int f54410v;

    /* renamed from: w  reason: collision with root package name */
    Gift f54411w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f54412x;

    /* renamed from: y  reason: collision with root package name */
    private int f54413y;

    /* renamed from: z  reason: collision with root package name */
    private float f54414z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ViewPager.OnPageChangeListener {
        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i4) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i4, float f10, int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i4) {
            ((ImageView) GiftLayoutView.this.f54396h.get(GiftLayoutView.this.f54406r)).setImageResource(GiftLayoutView.this.f54402n);
            ((ImageView) GiftLayoutView.this.f54396h.get(i4)).setImageResource(GiftLayoutView.this.f54403o);
            GiftLayoutView.this.f54406r = i4;
        }
    }

    public GiftLayoutView(Context context) {
        super(context);
        this.f54398j = 2;
        this.f54399k = 4;
        this.f54400l = 5;
        this.f54401m = 0;
        this.f54402n = R.drawable.ic_page_indicator;
        this.f54403o = R.drawable.ic_page_indicator_focused;
        this.f54404p = 0;
        this.f54409u = -1;
        this.f54410v = -1;
        this.f54414z = 0.0f;
        this.A = 0.0f;
        this.B = 0;
        this.f54389a = context;
    }

    private List<Gift> a(List<Gift> list) {
        for (int i4 = 0; i4 < list.size(); i4++) {
            int i10 = 0;
            while (i10 < list.size() - 1) {
                int i11 = i10 + 1;
                if (list.get(i10).getPrice() > list.get(i11).getPrice()) {
                    list.set(i10, list.get(i11));
                    list.set(i11, list.get(i10));
                }
                i10 = i11;
            }
        }
        return list;
    }

    private void h(Context context, AttributeSet attributeSet) {
        this.f54389a = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.u.GL);
        this.f54398j = obtainStyledAttributes.getInteger(5, 2);
        this.f54399k = obtainStyledAttributes.getInteger(0, 4);
        this.f54403o = obtainStyledAttributes.getResourceId(4, R.drawable.ic_page_indicator_focused);
        this.f54402n = obtainStyledAttributes.getResourceId(3, R.drawable.ic_page_indicator);
        this.f54400l = (int) obtainStyledAttributes.getDimension(2, 5.0f);
        this.f54401m = (int) obtainStyledAttributes.getDimension(1, 0.0f);
        obtainStyledAttributes.recycle();
    }

    private void i() {
        List<Gift> list = this.f54394f;
        if (list == null || list.size() == 0) {
            return;
        }
        this.f54395g = new ArrayList();
        this.f54405q = this.f54398j * this.f54399k;
        this.f54404p = (int) Math.ceil(this.f54394f.size() / (this.f54405q * 1.0d));
        int i4 = 0;
        int size = this.f54394f.size();
        while (i4 < size) {
            ArrayList arrayList = new ArrayList();
            int i10 = size - i4;
            int i11 = this.f54405q;
            if (i10 > i11) {
                arrayList.addAll(this.f54394f.subList(i4, i11 + i4));
                i4 += this.f54405q;
            } else {
                arrayList.addAll(this.f54394f.subList(i4, size));
                i4 = size;
            }
            this.f54395g.add(arrayList);
        }
    }

    private void j() {
        List<Gift> list = this.f54394f;
        if (list == null || list.size() == 0) {
            return;
        }
        this.f54396h = new ArrayList<>();
        for (int i4 = 0; i4 < this.f54404p; i4++) {
            ImageView imageView = new ImageView(this.f54389a);
            imageView.setImageResource(this.f54402n);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(new ViewGroup.LayoutParams(-2, -2));
            int i10 = this.f54400l;
            layoutParams.setMargins(i10, i10, i10, i10);
            this.f54396h.add(imageView);
            this.f54391c.addView(imageView, layoutParams);
        }
    }

    @SuppressLint({"ResourceType"})
    private void k() {
        this.f54390b = new ViewPager(this.f54389a);
        this.f54391c = new LinearLayout(this.f54389a);
        this.f54407s = new RelativeLayout.LayoutParams(-1, -2);
        this.f54408t = new RelativeLayout.LayoutParams(-1, -2);
        this.f54407s.addRule(2, this.f54391c.getId());
        this.f54408t.addRule(12, -1);
        addView(this.f54391c, this.f54408t);
        addView(this.f54390b, this.f54407s);
        this.f54391c.setOrientation(0);
        this.f54391c.setGravity(17);
        i();
        l();
        j();
        m();
    }

    private void l() {
        this.f54392d = new ArrayList<>();
        this.f54393e = new ArrayList<>();
        if (this.f54395g != null) {
            for (int i4 = 0; i4 < this.f54395g.size(); i4++) {
                GridView gridView = new GridView(this.f54389a);
                b bVar = new b(this.f54389a, this.f54395g.get(i4), this.f54401m, this.f54413y == 1, this.f54412x);
                gridView.setAdapter((ListAdapter) bVar);
                this.f54393e.add(bVar);
                gridView.setOnItemClickListener(this);
                gridView.setNumColumns(this.f54399k);
                gridView.setBackgroundColor(0);
                gridView.setHorizontalSpacing(1);
                gridView.setVerticalSpacing(1);
                gridView.setStretchMode(2);
                gridView.setCacheColorHint(0);
                gridView.setSelector(new ColorDrawable(0));
                gridView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
                gridView.setGravity(17);
                this.f54392d.add(gridView);
            }
        }
    }

    private void m() {
        List<Gift> list = this.f54394f;
        if (list == null || list.size() == 0) {
            return;
        }
        this.f54390b.setAdapter(new c(this.f54392d));
        this.f54406r = 0;
        this.f54390b.setCurrentItem(0);
        this.f54396h.get(this.f54406r).setImageResource(this.f54403o);
        this.f54390b.addOnPageChangeListener(new a());
    }

    public boolean g() {
        return this.f54394f != null;
    }

    @Nullable
    public Gift getSelectedGift() {
        if (this.f54409u == -1) {
            return null;
        }
        return this.f54411w;
    }

    public int getToyStatus() {
        return this.f54413y;
    }

    public void n(List<Gift> list, int i4, boolean z9) {
        this.f54412x = z9;
        if (list != null) {
            this.f54394f = a(list);
            this.f54413y = i4;
            this.f54398j = z9 ? 1 : 2;
            this.f54409u = -1;
            this.f54410v = -1;
            removeAllViews();
            k();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0047, code lost:
        if (r6 >= (r3 * 3)) goto L15;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getAction()
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L4a
            if (r0 == r1) goto L5d
            r3 = 2
            if (r0 == r3) goto Le
            goto L5d
        Le:
            float r0 = r6.getY()
            r3 = 0
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 >= 0) goto L1e
            android.view.ViewParent r0 = r5.getParent()
            r0.requestDisallowInterceptTouchEvent(r2)
        L1e:
            float r0 = r6.getY()
            float r3 = r5.A
            float r0 = r0 - r3
            float r0 = java.lang.Math.abs(r0)
            float r6 = r6.getX()
            float r3 = r5.f54414z
            float r6 = r6 - r3
            float r6 = java.lang.Math.abs(r6)
            int r3 = r5.B
            int r4 = r3 * 3
            float r4 = (float) r4
            int r4 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r4 >= 0) goto L5d
            int r0 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r0 <= 0) goto L42
            goto L5d
        L42:
            int r3 = r3 * 3
            float r0 = (float) r3
            int r6 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r6 < 0) goto L5d
            goto L5e
        L4a:
            android.view.ViewParent r0 = r5.getParent()
            r0.requestDisallowInterceptTouchEvent(r1)
            float r0 = r6.getX()
            r5.f54414z = r0
            float r6 = r6.getY()
            r5.A = r6
        L5d:
            r1 = 0
        L5e:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r0 = "myswipeview---intercept:"
            r6.append(r0)
            r6.append(r1)
            java.lang.String r6 = r6.toString()
            java.lang.String r0 = "viewintercept"
            com.qennnsad.aknkaksd.util.o0.g(r0, r6)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.widget.giftView.GiftLayoutView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i4, long j4) {
        int i10 = this.f54409u;
        if (i10 != -1 && i10 == this.f54406r) {
            if (i4 == this.f54410v) {
                this.f54393e.get(i10).d(-1, this.f54410v);
                this.f54409u = -1;
                this.f54410v = -1;
                this.f54411w = null;
            } else {
                this.f54393e.get(i10).d(i4, this.f54410v);
                int i11 = this.f54406r;
                this.f54409u = i11;
                this.f54410v = i4;
                this.f54411w = this.f54395g.get(i11).get(this.f54410v);
            }
        } else {
            if (i10 != -1) {
                this.f54393e.get(i10).d(-1, this.f54410v);
            }
            this.f54393e.get(this.f54406r).d(i4, -1);
            int i12 = this.f54406r;
            this.f54409u = i12;
            this.f54410v = i4;
            this.f54411w = this.f54395g.get(i12).get(this.f54410v);
        }
        com.qennnsad.aknkaksd.presentation.ui.widget.giftView.a aVar = this.f54397i;
        if (aVar != null) {
            if (this.f54409u != -1) {
                aVar.a(true);
                o0.g("zh", "click item");
                return;
            }
            aVar.a(false);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public void setGiftSelectChangeListener(com.qennnsad.aknkaksd.presentation.ui.widget.giftView.a aVar) {
        this.f54397i = aVar;
    }

    public GiftLayoutView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f54398j = 2;
        this.f54399k = 4;
        this.f54400l = 5;
        this.f54401m = 0;
        this.f54402n = R.drawable.ic_page_indicator;
        this.f54403o = R.drawable.ic_page_indicator_focused;
        this.f54404p = 0;
        this.f54409u = -1;
        this.f54410v = -1;
        this.f54414z = 0.0f;
        this.A = 0.0f;
        this.B = 0;
        h(context, attributeSet);
    }

    public GiftLayoutView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f54398j = 2;
        this.f54399k = 4;
        this.f54400l = 5;
        this.f54401m = 0;
        this.f54402n = R.drawable.ic_page_indicator;
        this.f54403o = R.drawable.ic_page_indicator_focused;
        this.f54404p = 0;
        this.f54409u = -1;
        this.f54410v = -1;
        this.f54414z = 0.0f;
        this.A = 0.0f;
        this.B = 0;
        h(context, attributeSet);
    }
}
