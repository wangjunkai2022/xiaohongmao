package com.shizhefei.view.indicator;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.shizhefei.view.indicator.c;
import com.shizhefei.view.indicator.slidebar.ScrollBar;
import com.shizhefei.view.viewpager.SViewPager;

/* compiled from: IndicatorViewPager.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    protected com.shizhefei.view.indicator.c f55455a;

    /* renamed from: b  reason: collision with root package name */
    protected ViewPager f55456b;

    /* renamed from: c  reason: collision with root package name */
    private InterfaceC0470d f55457c;

    /* renamed from: d  reason: collision with root package name */
    protected g f55458d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f55459e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IndicatorViewPager.java */
    /* loaded from: classes3.dex */
    public class a implements c.d {
        a() {
        }

        @Override // com.shizhefei.view.indicator.c.d
        public void a(View view, int i4, int i10) {
            d dVar = d.this;
            ViewPager viewPager = dVar.f55456b;
            if (viewPager instanceof SViewPager) {
                viewPager.setCurrentItem(i4, ((SViewPager) viewPager).a());
            } else {
                viewPager.setCurrentItem(i4, dVar.f55459e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IndicatorViewPager.java */
    /* loaded from: classes3.dex */
    public class b implements ViewPager.OnPageChangeListener {
        b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i4) {
            d.this.f55455a.onPageScrollStateChanged(i4);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i4, float f10, int i10) {
            d.this.f55455a.onPageScrolled(i4, f10, i10);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i4) {
            d.this.f55455a.b(i4, true);
            d dVar = d.this;
            g gVar = dVar.f55458d;
            if (gVar != null) {
                gVar.a(dVar.f55455a.getPreSelectItem(), i4);
            }
        }
    }

    /* compiled from: IndicatorViewPager.java */
    /* loaded from: classes3.dex */
    public static abstract class c extends f {

        /* renamed from: a  reason: collision with root package name */
        private com.shizhefei.view.indicator.b f55462a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f55463b;

        /* renamed from: c  reason: collision with root package name */
        private c.b f55464c = new b();

        /* compiled from: IndicatorViewPager.java */
        /* loaded from: classes3.dex */
        class a extends com.shizhefei.view.indicator.b {
            a(FragmentManager fragmentManager) {
                super(fragmentManager);
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public int getCount() {
                if (c.this.c() == 0) {
                    return 0;
                }
                if (c.this.f55463b) {
                    return 2147483547;
                }
                return c.this.c();
            }

            @Override // com.shizhefei.view.indicator.b
            public Fragment getItem(int i4) {
                c cVar = c.this;
                return cVar.i(cVar.d(i4));
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public int getItemPosition(Object obj) {
                return c.this.j(obj);
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public float getPageWidth(int i4) {
                c cVar = c.this;
                return cVar.k(cVar.d(i4));
            }
        }

        /* compiled from: IndicatorViewPager.java */
        /* loaded from: classes3.dex */
        class b extends c.b {
            b() {
            }

            @Override // com.shizhefei.view.indicator.c.b
            public int a() {
                return c.this.c();
            }

            @Override // com.shizhefei.view.indicator.c.b
            public View b(int i4, View view, ViewGroup viewGroup) {
                return c.this.l(i4, view, viewGroup);
            }
        }

        public c(FragmentManager fragmentManager) {
            this.f55462a = new a(fragmentManager);
        }

        @Override // com.shizhefei.view.indicator.d.InterfaceC0470d
        public PagerAdapter a() {
            return this.f55462a;
        }

        @Override // com.shizhefei.view.indicator.d.InterfaceC0470d
        public void b() {
            this.f55464c.d();
            this.f55462a.notifyDataSetChanged();
        }

        @Override // com.shizhefei.view.indicator.d.f
        public abstract int c();

        @Override // com.shizhefei.view.indicator.d.f
        int d(int i4) {
            return i4 % c();
        }

        @Override // com.shizhefei.view.indicator.d.f
        void e(boolean z9) {
            this.f55463b = z9;
            this.f55464c.f(z9);
        }

        public Fragment g() {
            return this.f55462a.a();
        }

        @Override // com.shizhefei.view.indicator.d.InterfaceC0470d
        public c.b getIndicatorAdapter() {
            return this.f55464c;
        }

        public Fragment h(int i4) {
            return this.f55462a.b(i4);
        }

        public abstract Fragment i(int i4);

        public int j(Object obj) {
            return -1;
        }

        public float k(int i4) {
            return 1.0f;
        }

        public abstract View l(int i4, View view, ViewGroup viewGroup);
    }

    /* compiled from: IndicatorViewPager.java */
    /* renamed from: com.shizhefei.view.indicator.d$d  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0470d {
        PagerAdapter a();

        void b();

        c.b getIndicatorAdapter();
    }

    /* compiled from: IndicatorViewPager.java */
    /* loaded from: classes3.dex */
    public static abstract class e extends f {

        /* renamed from: a  reason: collision with root package name */
        private boolean f55467a;

        /* renamed from: b  reason: collision with root package name */
        private com.shizhefei.view.viewpager.c f55468b = new a();

        /* renamed from: c  reason: collision with root package name */
        private c.b f55469c = new b();

        /* compiled from: IndicatorViewPager.java */
        /* loaded from: classes3.dex */
        class a extends com.shizhefei.view.viewpager.c {
            a() {
            }

            @Override // com.shizhefei.view.viewpager.c
            public int a(int i4) {
                e eVar = e.this;
                return eVar.i(eVar.d(i4));
            }

            @Override // com.shizhefei.view.viewpager.c
            public View b(int i4, View view, ViewGroup viewGroup) {
                e eVar = e.this;
                return eVar.k(eVar.d(i4), view, viewGroup);
            }

            @Override // com.shizhefei.view.viewpager.c
            public int c() {
                return e.this.j();
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public int getCount() {
                if (e.this.c() == 0) {
                    return 0;
                }
                if (e.this.f55467a) {
                    return 2147483547;
                }
                return e.this.c();
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public int getItemPosition(Object obj) {
                return e.this.g(obj);
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public float getPageWidth(int i4) {
                e eVar = e.this;
                return eVar.h(eVar.d(i4));
            }
        }

        /* compiled from: IndicatorViewPager.java */
        /* loaded from: classes3.dex */
        class b extends c.b {
            b() {
            }

            @Override // com.shizhefei.view.indicator.c.b
            public int a() {
                return e.this.c();
            }

            @Override // com.shizhefei.view.indicator.c.b
            public View b(int i4, View view, ViewGroup viewGroup) {
                return e.this.l(i4, view, viewGroup);
            }
        }

        @Override // com.shizhefei.view.indicator.d.InterfaceC0470d
        public PagerAdapter a() {
            return this.f55468b;
        }

        @Override // com.shizhefei.view.indicator.d.InterfaceC0470d
        public void b() {
            this.f55469c.d();
            this.f55468b.notifyDataSetChanged();
        }

        @Override // com.shizhefei.view.indicator.d.f
        public abstract int c();

        @Override // com.shizhefei.view.indicator.d.f
        int d(int i4) {
            if (c() == 0) {
                return 0;
            }
            return i4 % c();
        }

        @Override // com.shizhefei.view.indicator.d.f
        void e(boolean z9) {
            this.f55467a = z9;
            this.f55469c.f(z9);
        }

        public int g(Object obj) {
            return -1;
        }

        @Override // com.shizhefei.view.indicator.d.InterfaceC0470d
        public c.b getIndicatorAdapter() {
            return this.f55469c;
        }

        public float h(int i4) {
            return 1.0f;
        }

        public int i(int i4) {
            return 0;
        }

        public int j() {
            return 1;
        }

        public abstract View k(int i4, View view, ViewGroup viewGroup);

        public abstract View l(int i4, View view, ViewGroup viewGroup);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IndicatorViewPager.java */
    /* loaded from: classes3.dex */
    public static abstract class f implements InterfaceC0470d {
        f() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract int c();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract int d(int i4);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void e(boolean z9);
    }

    /* compiled from: IndicatorViewPager.java */
    /* loaded from: classes3.dex */
    public interface g {
        void a(int i4, int i10);
    }

    public d(com.shizhefei.view.indicator.c cVar, ViewPager viewPager) {
        this(cVar, viewPager, true);
    }

    public InterfaceC0470d b() {
        return this.f55457c;
    }

    public int c() {
        return this.f55455a.getCurrentItem();
    }

    public com.shizhefei.view.indicator.c d() {
        return this.f55455a;
    }

    public c.InterfaceC0469c e() {
        return this.f55455a.getOnIndicatorItemClickListener();
    }

    public g f() {
        return this.f55458d;
    }

    public int g() {
        return this.f55455a.getPreSelectItem();
    }

    public ViewPager h() {
        return this.f55456b;
    }

    protected void i() {
        this.f55455a.setOnItemSelectListener(new a());
    }

    protected void j() {
        this.f55456b.addOnPageChangeListener(new b());
    }

    public void k() {
        InterfaceC0470d interfaceC0470d = this.f55457c;
        if (interfaceC0470d != null) {
            interfaceC0470d.b();
        }
    }

    public void l(InterfaceC0470d interfaceC0470d) {
        this.f55457c = interfaceC0470d;
        this.f55456b.setAdapter(interfaceC0470d.a());
        this.f55455a.setAdapter(interfaceC0470d.getIndicatorAdapter());
    }

    public void m(boolean z9) {
        this.f55459e = z9;
    }

    public void n(int i4, boolean z9) {
        this.f55456b.setCurrentItem(i4, z9);
        this.f55455a.b(i4, z9);
    }

    public void o(c.e eVar) {
        this.f55455a.setOnTransitionListener(eVar);
    }

    public void p(ScrollBar scrollBar) {
        this.f55455a.setScrollBar(scrollBar);
    }

    public void q(c.InterfaceC0469c interfaceC0469c) {
        this.f55455a.setOnIndicatorItemClickListener(interfaceC0469c);
    }

    public void r(g gVar) {
        this.f55458d = gVar;
    }

    public void s(int i4) {
        this.f55456b.setPageMargin(i4);
    }

    public void t(int i4) {
        this.f55456b.setPageMarginDrawable(i4);
    }

    public void u(Drawable drawable) {
        this.f55456b.setPageMarginDrawable(drawable);
    }

    public void v(int i4) {
        this.f55456b.setOffscreenPageLimit(i4);
    }

    public d(com.shizhefei.view.indicator.c cVar, ViewPager viewPager, boolean z9) {
        this.f55459e = true;
        this.f55455a = cVar;
        this.f55456b = viewPager;
        cVar.setItemClickable(z9);
        i();
        j();
    }
}
