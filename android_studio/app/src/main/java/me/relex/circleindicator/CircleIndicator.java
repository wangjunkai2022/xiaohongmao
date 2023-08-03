package me.relex.circleindicator;

import android.annotation.TargetApi;
import android.content.Context;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import java.util.Objects;
import me.relex.circleindicator.BaseCircleIndicator;

/* loaded from: classes4.dex */
public class CircleIndicator extends BaseCircleIndicator {

    /* renamed from: o  reason: collision with root package name */
    private ViewPager f88413o;

    /* renamed from: p  reason: collision with root package name */
    private final ViewPager.OnPageChangeListener f88414p;

    /* renamed from: q  reason: collision with root package name */
    private final DataSetObserver f88415q;

    /* loaded from: classes4.dex */
    class a implements ViewPager.OnPageChangeListener {
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
            if (CircleIndicator.this.f88413o.getAdapter() == null || CircleIndicator.this.f88413o.getAdapter().getCount() <= 0) {
                return;
            }
            CircleIndicator.this.b(i4);
        }
    }

    /* loaded from: classes4.dex */
    class b extends DataSetObserver {
        b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            if (CircleIndicator.this.f88413o == null) {
                return;
            }
            PagerAdapter adapter = CircleIndicator.this.f88413o.getAdapter();
            int count = adapter != null ? adapter.getCount() : 0;
            if (count == CircleIndicator.this.getChildCount()) {
                return;
            }
            CircleIndicator circleIndicator = CircleIndicator.this;
            if (circleIndicator.f88411l < count) {
                circleIndicator.f88411l = circleIndicator.f88413o.getCurrentItem();
            } else {
                circleIndicator.f88411l = -1;
            }
            CircleIndicator.this.q();
        }
    }

    public CircleIndicator(Context context) {
        super(context);
        this.f88414p = new a();
        this.f88415q = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        PagerAdapter adapter = this.f88413o.getAdapter();
        i(adapter == null ? 0 : adapter.getCount(), this.f88413o.getCurrentItem());
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void b(int i4) {
        super.b(i4);
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void e(@DrawableRes int i4) {
        super.e(i4);
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void f(@DrawableRes int i4, @DrawableRes int i10) {
        super.f(i4, i10);
    }

    public DataSetObserver getDataSetObserver() {
        return this.f88415q;
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void i(int i4, int i10) {
        super.i(i4, i10);
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void l(me.relex.circleindicator.b bVar) {
        super.l(bVar);
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void m(@ColorInt int i4) {
        super.m(i4);
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void n(@ColorInt int i4, @ColorInt int i10) {
        super.n(i4, i10);
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void setIndicatorCreatedListener(@Nullable BaseCircleIndicator.a aVar) {
        super.setIndicatorCreatedListener(aVar);
    }

    @Deprecated
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        ViewPager viewPager = this.f88413o;
        Objects.requireNonNull(viewPager, "can not find Viewpager , setViewPager first");
        viewPager.removeOnPageChangeListener(onPageChangeListener);
        this.f88413o.addOnPageChangeListener(onPageChangeListener);
    }

    public void setViewPager(@Nullable ViewPager viewPager) {
        this.f88413o = viewPager;
        if (viewPager == null || viewPager.getAdapter() == null) {
            return;
        }
        this.f88411l = -1;
        q();
        this.f88413o.removeOnPageChangeListener(this.f88414p);
        this.f88413o.addOnPageChangeListener(this.f88414p);
        this.f88414p.onPageSelected(this.f88413o.getCurrentItem());
    }

    public CircleIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f88414p = new a();
        this.f88415q = new b();
    }

    public CircleIndicator(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f88414p = new a();
        this.f88415q = new b();
    }

    @TargetApi(21)
    public CircleIndicator(Context context, AttributeSet attributeSet, int i4, int i10) {
        super(context, attributeSet, i4, i10);
        this.f88414p = new a();
        this.f88415q = new b();
    }
}
