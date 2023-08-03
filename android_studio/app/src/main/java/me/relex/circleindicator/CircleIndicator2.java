package me.relex.circleindicator;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;
import me.relex.circleindicator.BaseCircleIndicator;

/* loaded from: classes4.dex */
public class CircleIndicator2 extends BaseCircleIndicator {

    /* renamed from: o  reason: collision with root package name */
    private RecyclerView f88418o;

    /* renamed from: p  reason: collision with root package name */
    private SnapHelper f88419p;

    /* renamed from: q  reason: collision with root package name */
    private final RecyclerView.OnScrollListener f88420q;

    /* renamed from: r  reason: collision with root package name */
    private final RecyclerView.AdapterDataObserver f88421r;

    /* loaded from: classes4.dex */
    class a extends RecyclerView.OnScrollListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i4, int i10) {
            super.onScrolled(recyclerView, i4, i10);
            int s9 = CircleIndicator2.this.s(recyclerView.getLayoutManager());
            if (s9 == -1) {
                return;
            }
            CircleIndicator2.this.b(s9);
        }
    }

    public CircleIndicator2(Context context) {
        super(context);
        this.f88420q = new a();
        this.f88421r = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        RecyclerView.Adapter adapter = this.f88418o.getAdapter();
        i(adapter == null ? 0 : adapter.getItemCount(), s(this.f88418o.getLayoutManager()));
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
        return this.f88421r;
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

    public void q(@NonNull RecyclerView recyclerView, @NonNull SnapHelper snapHelper) {
        this.f88418o = recyclerView;
        this.f88419p = snapHelper;
        this.f88411l = -1;
        r();
        recyclerView.removeOnScrollListener(this.f88420q);
        recyclerView.addOnScrollListener(this.f88420q);
    }

    public int s(@Nullable RecyclerView.LayoutManager layoutManager) {
        View findSnapView;
        if (layoutManager == null || (findSnapView = this.f88419p.findSnapView(layoutManager)) == null) {
            return -1;
        }
        return layoutManager.getPosition(findSnapView);
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void setIndicatorCreatedListener(@Nullable BaseCircleIndicator.a aVar) {
        super.setIndicatorCreatedListener(aVar);
    }

    /* loaded from: classes4.dex */
    class b extends RecyclerView.AdapterDataObserver {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            super.onChanged();
            if (CircleIndicator2.this.f88418o == null) {
                return;
            }
            RecyclerView.Adapter adapter = CircleIndicator2.this.f88418o.getAdapter();
            int itemCount = adapter != null ? adapter.getItemCount() : 0;
            if (itemCount == CircleIndicator2.this.getChildCount()) {
                return;
            }
            CircleIndicator2 circleIndicator2 = CircleIndicator2.this;
            if (circleIndicator2.f88411l < itemCount) {
                circleIndicator2.f88411l = circleIndicator2.s(circleIndicator2.f88418o.getLayoutManager());
            } else {
                circleIndicator2.f88411l = -1;
            }
            CircleIndicator2.this.r();
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

    public CircleIndicator2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f88420q = new a();
        this.f88421r = new b();
    }

    public CircleIndicator2(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f88420q = new a();
        this.f88421r = new b();
    }

    @TargetApi(21)
    public CircleIndicator2(Context context, AttributeSet attributeSet, int i4, int i10) {
        super(context, attributeSet, i4, i10);
        this.f88420q = new a();
        this.f88421r = new b();
    }
}
