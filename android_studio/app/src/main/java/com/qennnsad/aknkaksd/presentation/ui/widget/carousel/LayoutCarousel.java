package com.qennnsad.aknkaksd.presentation.ui.widget.carousel;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.v1;
import com.qennnsad.aknkaksd.util.s1;
import e5.m3;
import io.sentry.Session;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;
import m8.h;

/* compiled from: LayoutCarousel.kt */
@Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u0012\b\b\u0002\u0010\u001d\u001a\u00020\t¢\u0006\u0004\b\u001e\u0010\u001fJ\u0018\u0010\u0006\u001a\u00020\u0005*\u00020\u00022\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0002J0\u0010\u000b\u001a\u00020\u0005*\u00020\u00022\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00032\u0016\b\u0002\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0005\u0018\u00010\bH\u0002J\u0012\u0010\f\u001a\u00020\u00052\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003J\u0006\u0010\r\u001a\u00020\u0005R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006 "}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;", "Landroid/widget/FrameLayout;", "Landroidx/viewpager2/widget/ViewPager2;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "carouselAdapter", "", "h", "adapter", "Lkotlin/Function1;", "", "onPageSelected", "j", "e", "g", "Ljava/lang/Runnable;", "b", "Ljava/lang/Runnable;", "swipeAction", "getFreezeItem", "()I", "freezeItem", "", "f", "()Z", "isAutoSwipeFreeze", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", Session.b.f81849j, "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class LayoutCarousel extends FrameLayout {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final m3 f54377a;
    @h

    /* renamed from: b  reason: collision with root package name */
    private Runnable f54378b;

    /* compiled from: LayoutCarousel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function1<Integer, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ViewPager2 f54380b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ RecyclerView.Adapter<?> f54381c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(ViewPager2 viewPager2, RecyclerView.Adapter<?> adapter) {
            super(1);
            this.f54380b = viewPager2;
            this.f54381c = adapter;
        }

        public final void a(int i4) {
            LayoutCarousel layoutCarousel = LayoutCarousel.this;
            ViewPager2 viewPager2 = this.f54380b;
            Intrinsics.checkNotNullExpressionValue(viewPager2, "");
            layoutCarousel.h(viewPager2, this.f54381c);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
            a(num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: LayoutCarousel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel$b", "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;", "", "position", "", "onPageSelected", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends ViewPager2.OnPageChangeCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function1<Integer, Unit> f54382a;

        /* JADX WARN: Multi-variable type inference failed */
        b(Function1<? super Integer, Unit> function1) {
            this.f54382a = function1;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i4) {
            Function1<Integer, Unit> function1 = this.f54382a;
            if (function1 != null) {
                function1.invoke(Integer.valueOf(i4));
            }
        }
    }

    /* compiled from: LayoutCarousel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J \u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016¨\u0006\t"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel$c", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "", "dx", "dy", "", "onScrolled", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends RecyclerView.OnScrollListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecyclerView f54383a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ RecyclerView.Adapter<?> f54384b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ LayoutCarousel f54385c;

        c(RecyclerView recyclerView, RecyclerView.Adapter<?> adapter, LayoutCarousel layoutCarousel) {
            this.f54383a = recyclerView;
            this.f54384b = adapter;
            this.f54385c = layoutCarousel;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@g RecyclerView recyclerView, int i4, int i10) {
            RecyclerView.LayoutManager layoutManager;
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, i4, i10);
            RecyclerView.LayoutManager layoutManager2 = this.f54383a.getLayoutManager();
            LinearLayoutManager linearLayoutManager = layoutManager2 instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager2 : null;
            int findFirstVisibleItemPosition = linearLayoutManager != null ? linearLayoutManager.findFirstVisibleItemPosition() : 0;
            if (findFirstVisibleItemPosition == 0 || findFirstVisibleItemPosition % this.f54384b.getItemCount() != 0 || (layoutManager = recyclerView.getLayoutManager()) == null) {
                return;
            }
            layoutManager.scrollToPosition(this.f54385c.f() ? this.f54385c.getFreezeItem() : 0);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LayoutCarousel(@g Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LayoutCarousel(@g Context context, @h AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ LayoutCarousel(Context context, AttributeSet attributeSet, int i4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet, (i10 & 4) != 0 ? 0 : i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean f() {
        return getFreezeItem() >= 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getFreezeItem() {
        RecyclerView.Adapter adapter = this.f54377a.f62745b.getAdapter();
        Intrinsics.checkNotNull(adapter, "null cannot be cast to non-null type com.qennnsad.aknkaksd.presentation.ui.room.player.player.SidePanelButtonAdapter");
        return ((v1) adapter).f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(final ViewPager2 viewPager2, final RecyclerView.Adapter<?> adapter) {
        viewPager2.removeCallbacks(this.f54378b);
        Runnable runnable = new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.widget.carousel.a
            @Override // java.lang.Runnable
            public final void run() {
                LayoutCarousel.i(ViewPager2.this, this, adapter);
            }
        };
        this.f54378b = runnable;
        viewPager2.postDelayed(runnable, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(ViewPager2 this_scheduleSwipe, LayoutCarousel this$0, RecyclerView.Adapter carouselAdapter) {
        int i4;
        int currentItem;
        Intrinsics.checkNotNullParameter(this_scheduleSwipe, "$this_scheduleSwipe");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(carouselAdapter, "$carouselAdapter");
        if (this_scheduleSwipe.isAttachedToWindow()) {
            if (this$0.f()) {
                currentItem = this$0.getFreezeItem();
            } else if (this_scheduleSwipe.getCurrentItem() >= carouselAdapter.getItemCount() - 1) {
                i4 = 0;
                s1.r(this_scheduleSwipe, i4, Math.abs(i4 - this_scheduleSwipe.getCurrentItem()) * 150, null, 0, 12, null);
            } else {
                currentItem = this_scheduleSwipe.getCurrentItem() + 1;
            }
            i4 = currentItem;
            s1.r(this_scheduleSwipe, i4, Math.abs(i4 - this_scheduleSwipe.getCurrentItem()) * 150, null, 0, 12, null);
        }
    }

    private final void j(ViewPager2 viewPager2, RecyclerView.Adapter<?> adapter, Function1<? super Integer, Unit> function1) {
        viewPager2.getParent().requestDisallowInterceptTouchEvent(true);
        viewPager2.registerOnPageChangeCallback(new b(function1));
        View childAt = viewPager2.getChildAt(0);
        RecyclerView recyclerView = childAt instanceof RecyclerView ? (RecyclerView) childAt : null;
        if (recyclerView != null) {
            recyclerView.addOnScrollListener(new c(recyclerView, adapter, this));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void k(LayoutCarousel layoutCarousel, ViewPager2 viewPager2, RecyclerView.Adapter adapter, Function1 function1, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            function1 = null;
        }
        layoutCarousel.j(viewPager2, adapter, function1);
    }

    public final void e(@g RecyclerView.Adapter<?> carouselAdapter) {
        Intrinsics.checkNotNullParameter(carouselAdapter, "carouselAdapter");
        setVisibility(0);
        ViewPager2 viewPager2 = this.f54377a.f62745b;
        viewPager2.setAdapter(carouselAdapter);
        Intrinsics.checkNotNullExpressionValue(viewPager2, "");
        j(viewPager2, carouselAdapter, new a(viewPager2, carouselAdapter));
        s1.k(viewPager2);
    }

    public final void g() {
        ViewPager2 viewPager2 = this.f54377a.f62745b;
        viewPager2.removeCallbacks(this.f54378b);
        if (viewPager2.getCurrentItem() > 0 && !viewPager2.isFakeDragging()) {
            if (f()) {
                viewPager2.setCurrentItem(getFreezeItem());
            } else {
                viewPager2.setCurrentItem(0);
            }
        }
        RecyclerView.Adapter it = viewPager2.getAdapter();
        if (it != null) {
            Intrinsics.checkNotNullExpressionValue(viewPager2, "");
            Intrinsics.checkNotNullExpressionValue(it, "it");
            h(viewPager2, it);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LayoutCarousel(@g Context context, @h AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        Intrinsics.checkNotNullParameter(context, "context");
        m3 d4 = m3.d(LayoutInflater.from(context), this, true);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(LayoutInflater.from(context), this, true)");
        this.f54377a = d4;
    }
}
