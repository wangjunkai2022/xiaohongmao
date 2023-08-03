package me.relex.circleindicator;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import me.relex.circleindicator.BaseCircleIndicator;

/* loaded from: classes4.dex */
public class CircleIndicator3 extends BaseCircleIndicator {

    /* renamed from: o  reason: collision with root package name */
    private ViewPager2 f88424o;

    /* renamed from: p  reason: collision with root package name */
    private final ViewPager2.OnPageChangeCallback f88425p;

    /* renamed from: q  reason: collision with root package name */
    private final RecyclerView.AdapterDataObserver f88426q;

    /* loaded from: classes4.dex */
    class a extends ViewPager2.OnPageChangeCallback {
        a() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i4) {
            CircleIndicator3 circleIndicator3 = CircleIndicator3.this;
            if (i4 == circleIndicator3.f88411l || circleIndicator3.f88424o.getAdapter() == null || CircleIndicator3.this.f88424o.getAdapter().getItemCount() <= 0) {
                return;
            }
            CircleIndicator3.this.b(i4);
        }
    }

    public CircleIndicator3(Context context) {
        super(context);
        this.f88425p = new a();
        this.f88426q = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        RecyclerView.Adapter adapter = this.f88424o.getAdapter();
        i(adapter == null ? 0 : adapter.getItemCount(), this.f88424o.getCurrentItem());
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

    public RecyclerView.AdapterDataObserver getAdapterDataObserver() {
        return this.f88426q;
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

    public void setViewPager(@Nullable ViewPager2 viewPager2) {
        this.f88424o = viewPager2;
        if (viewPager2 == null || viewPager2.getAdapter() == null) {
            return;
        }
        this.f88411l = -1;
        q();
        this.f88424o.unregisterOnPageChangeCallback(this.f88425p);
        this.f88424o.registerOnPageChangeCallback(this.f88425p);
        this.f88425p.onPageSelected(this.f88424o.getCurrentItem());
    }

    /* loaded from: classes4.dex */
    class b extends RecyclerView.AdapterDataObserver {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            super.onChanged();
            if (CircleIndicator3.this.f88424o == null) {
                return;
            }
            RecyclerView.Adapter adapter = CircleIndicator3.this.f88424o.getAdapter();
            int itemCount = adapter != null ? adapter.getItemCount() : 0;
            if (itemCount == CircleIndicator3.this.getChildCount()) {
                return;
            }
            CircleIndicator3 circleIndicator3 = CircleIndicator3.this;
            if (circleIndicator3.f88411l < itemCount) {
                circleIndicator3.f88411l = circleIndicator3.f88424o.getCurrentItem();
            } else {
                circleIndicator3.f88411l = -1;
            }
            CircleIndicator3.this.q();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i4, int i10) {
            super.onItemRangeChanged(i4, i10);
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i4, int i10) {
            super.onItemRangeInserted(i4, i10);
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i4, int i10, int i11) {
            super.onItemRangeMoved(i4, i10, i11);
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i4, int i10) {
            super.onItemRangeRemoved(i4, i10);
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i4, int i10, @Nullable Object obj) {
            super.onItemRangeChanged(i4, i10, obj);
            onChanged();
        }
    }

    public CircleIndicator3(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f88425p = new a();
        this.f88426q = new b();
    }

    public CircleIndicator3(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f88425p = new a();
        this.f88426q = new b();
    }

    @TargetApi(21)
    public CircleIndicator3(Context context, AttributeSet attributeSet, int i4, int i10) {
        super(context, attributeSet, i4, i10);
        this.f88425p = new a();
        this.f88426q = new b();
    }
}
