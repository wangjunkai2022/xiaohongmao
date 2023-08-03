package com.shizhefei.view.indicator;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.MotionEvent;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import com.shizhefei.view.indicator.c;
import com.shizhefei.view.indicator.d;
import com.shizhefei.view.viewpager.SViewPager;
import java.lang.reflect.Field;
import kotlinx.coroutines.internal.a0;

/* compiled from: BannerComponent.java */
/* loaded from: classes3.dex */
public class a extends com.shizhefei.view.indicator.d {

    /* renamed from: f  reason: collision with root package name */
    private final Handler f55436f;

    /* renamed from: g  reason: collision with root package name */
    private long f55437g;

    /* renamed from: h  reason: collision with root package name */
    private com.shizhefei.view.viewpager.a f55438h;

    /* renamed from: i  reason: collision with root package name */
    private d.f f55439i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f55440j;

    /* renamed from: k  reason: collision with root package name */
    private View.OnTouchListener f55441k;

    /* compiled from: BannerComponent.java */
    /* renamed from: com.shizhefei.view.indicator.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0468a implements c.d {
        C0468a() {
        }

        @Override // com.shizhefei.view.indicator.c.d
        public void a(View view, int i4, int i10) {
            a aVar = a.this;
            ViewPager viewPager = aVar.f55456b;
            if (viewPager instanceof SViewPager) {
                aVar.n(i4, ((SViewPager) viewPager).a());
            } else {
                aVar.n(i4, true);
            }
        }
    }

    /* compiled from: BannerComponent.java */
    /* loaded from: classes3.dex */
    class b implements ViewPager.OnPageChangeListener {
        b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i4) {
            a.this.f55455a.onPageScrollStateChanged(i4);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i4, float f10, int i10) {
            a aVar = a.this;
            aVar.f55455a.onPageScrolled(aVar.f55439i.d(i4), f10, i10);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i4) {
            a aVar = a.this;
            aVar.f55455a.b(aVar.f55439i.d(i4), true);
            a aVar2 = a.this;
            d.g gVar = aVar2.f55458d;
            if (gVar != null) {
                gVar.a(aVar2.f55455a.getPreSelectItem(), a.this.f55439i.d(i4));
            }
        }
    }

    /* compiled from: BannerComponent.java */
    /* loaded from: classes3.dex */
    class c implements View.OnTouchListener {
        c() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action != 0) {
                if ((action == 1 || action == 3) && a.this.f55440j) {
                    a.this.f55436f.removeCallbacksAndMessages(null);
                    a.this.f55436f.sendEmptyMessageDelayed(1, a.this.f55437g);
                    return false;
                }
                return false;
            }
            a.this.f55436f.removeCallbacksAndMessages(null);
            return false;
        }
    }

    /* compiled from: BannerComponent.java */
    /* loaded from: classes3.dex */
    private class d extends Handler {
        public d(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            a.this.f55456b.setCurrentItem(a.this.f55456b.getCurrentItem() + 1, true);
            if (a.this.f55440j) {
                a.this.f55436f.sendEmptyMessageDelayed(1, a.this.f55437g);
            }
        }
    }

    public a(com.shizhefei.view.indicator.c cVar, ViewPager viewPager, boolean z9) {
        super(cVar, viewPager, z9);
        this.f55437g = 3000L;
        this.f55441k = new c();
        this.f55436f = new d(Looper.getMainLooper());
        viewPager.setOnTouchListener(this.f55441k);
        A();
    }

    private void A() {
        try {
            Field declaredField = ViewPager.class.getDeclaredField("mScroller");
            declaredField.setAccessible(true);
            com.shizhefei.view.viewpager.a aVar = new com.shizhefei.view.viewpager.a(this.f55456b.getContext());
            this.f55438h = aVar;
            declaredField.set(this.f55456b, aVar);
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
        } catch (IllegalArgumentException e10) {
            e10.printStackTrace();
        } catch (NoSuchFieldException e11) {
            e11.printStackTrace();
        }
    }

    public void B(long j4) {
        this.f55437g = j4;
    }

    public void C(int i4) {
        com.shizhefei.view.viewpager.a aVar = this.f55438h;
        if (aVar != null) {
            aVar.b(i4);
        }
    }

    public void D() {
        this.f55440j = true;
        this.f55436f.removeCallbacksAndMessages(null);
        this.f55436f.sendEmptyMessageDelayed(1, this.f55437g);
    }

    public void E() {
        this.f55440j = false;
        this.f55436f.removeCallbacksAndMessages(null);
    }

    @Override // com.shizhefei.view.indicator.d
    protected void i() {
        this.f55455a.setOnItemSelectListener(new C0468a());
    }

    @Override // com.shizhefei.view.indicator.d
    protected void j() {
        this.f55456b.addOnPageChangeListener(new b());
    }

    @Override // com.shizhefei.view.indicator.d
    public void l(d.InterfaceC0470d interfaceC0470d) {
        if (interfaceC0470d instanceof d.f) {
            d.f fVar = (d.f) interfaceC0470d;
            this.f55439i = fVar;
            fVar.e(true);
            super.l(interfaceC0470d);
            int c10 = this.f55439i.c();
            int i4 = a0.f86219j;
            if (c10 > 0) {
                i4 = a0.f86219j - (a0.f86219j % c10);
            }
            this.f55456b.setCurrentItem(i4, false);
            return;
        }
        throw new RuntimeException("请设置继承于IndicatorViewPagerAdapter或者IndicatorViewPagerAdapter的adapter");
    }

    @Override // com.shizhefei.view.indicator.d
    public void n(int i4, boolean z9) {
        int i10;
        int c10 = this.f55439i.c();
        if (c10 > 0) {
            int currentItem = this.f55456b.getCurrentItem();
            int d4 = this.f55439i.d(currentItem);
            if (i4 > d4) {
                i10 = (i4 - d4) % c10;
            } else {
                i10 = -((d4 - i4) % c10);
            }
            if (Math.abs(i10) > this.f55456b.getOffscreenPageLimit() && this.f55456b.getOffscreenPageLimit() != c10) {
                this.f55456b.setOffscreenPageLimit(c10);
            }
            this.f55456b.setCurrentItem(currentItem + i10, z9);
            this.f55455a.b(i4, z9);
        }
    }
}
