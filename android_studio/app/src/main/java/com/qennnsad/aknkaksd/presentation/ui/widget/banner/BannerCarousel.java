package com.qennnsad.aknkaksd.presentation.ui.widget.banner;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.viewpager2.widget.ViewPager2;
import com.qennnsad.aknkaksd.analytics.data.events.EventSignature;
import com.qennnsad.aknkaksd.data.bean.BannerAdBean;
import com.qennnsad.aknkaksd.data.bean.UrlTarget;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.util.s1;
import e5.l3;
import io.sentry.Session;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;
import m8.h;

/* compiled from: BannerCarousel.kt */
@Metadata(bv = {}, d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\b\b\u0002\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#J\f\u0010\u0004\u001a\u00020\u0003*\u00020\u0002H\u0002J^\u0010\u0014\u001a\u00020\u00032\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n26\u0010\u0013\u001a2\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u00030\fR\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u001a¨\u0006$"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;", "Landroid/widget/FrameLayout;", "Landroidx/viewpager2/widget/ViewPager2;", "", "d", "", "Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;", "banners", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lx4/a;", "analytics", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "url", "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", TypedValues.Attributes.S_TARGET, "onBannerClick", "c", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b;", "b", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b;", "bannerAdapter", "Ljava/lang/Runnable;", "Ljava/lang/Runnable;", "swipeAction", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", Session.b.f81849j, "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class BannerCarousel extends FrameLayout {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final l3 f54360a;

    /* renamed from: b  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.ui.widget.banner.b f54361b;
    @h

    /* renamed from: c  reason: collision with root package name */
    private Runnable f54362c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BannerCarousel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function1<Integer, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ViewPager2 f54364b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(ViewPager2 viewPager2) {
            super(1);
            this.f54364b = viewPager2;
        }

        public final void a(int i4) {
            BannerCarousel bannerCarousel = BannerCarousel.this;
            ViewPager2 viewPager2 = this.f54364b;
            Intrinsics.checkNotNullExpressionValue(viewPager2, "");
            bannerCarousel.d(viewPager2);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
            a(num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BannerCarousel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", "url", "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", TypedValues.Attributes.S_TARGET, "", "a", "(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function2<String, UrlTarget, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ x4.a f54365a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function2<String, UrlTarget, Unit> f54366b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(x4.a aVar, Function2<? super String, ? super UrlTarget, Unit> function2) {
            super(2);
            this.f54365a = aVar;
            this.f54366b = function2;
        }

        public final void a(@g String url, @g UrlTarget target) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(target, "target");
            this.f54365a.d(EventSignature.APP_AD_CLICK, url);
            this.f54366b.invoke(url, target);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(String str, UrlTarget urlTarget) {
            a(str, urlTarget);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public BannerCarousel(@g Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public BannerCarousel(@g Context context, @h AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ BannerCarousel(Context context, AttributeSet attributeSet, int i4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet, (i10 & 4) != 0 ? 0 : i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(final ViewPager2 viewPager2) {
        viewPager2.removeCallbacks(this.f54362c);
        Runnable runnable = new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.widget.banner.c
            @Override // java.lang.Runnable
            public final void run() {
                BannerCarousel.e(ViewPager2.this, this);
            }
        };
        this.f54362c = runnable;
        viewPager2.postDelayed(runnable, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(ViewPager2 this_scheduleSwipe, BannerCarousel this$0) {
        Intrinsics.checkNotNullParameter(this_scheduleSwipe, "$this_scheduleSwipe");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this_scheduleSwipe.isAttachedToWindow()) {
            int currentItem = this_scheduleSwipe.getCurrentItem();
            com.qennnsad.aknkaksd.presentation.ui.widget.banner.b bVar = this$0.f54361b;
            if (bVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("bannerAdapter");
                bVar = null;
            }
            this_scheduleSwipe.setCurrentItem(currentItem < bVar.getItemCount() + (-1) ? this_scheduleSwipe.getCurrentItem() + 1 : 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [kotlin.Unit] */
    public final void c(@h List<BannerAdBean> list, @g m sourceFactory, @g x4.a analytics, @g Function2<? super String, ? super UrlTarget, Unit> onBannerClick) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(onBannerClick, "onBannerClick");
        com.qennnsad.aknkaksd.presentation.ui.widget.banner.b bVar = null;
        if (list != null && !list.isEmpty()) {
            setVisibility(0);
            com.qennnsad.aknkaksd.presentation.ui.widget.banner.b bVar2 = new com.qennnsad.aknkaksd.presentation.ui.widget.banner.b(sourceFactory, new b(analytics, onBannerClick), true);
            this.f54361b = bVar2;
            ViewPager2 viewPager2 = this.f54360a.f62711b;
            viewPager2.setAdapter(bVar2);
            Intrinsics.checkNotNullExpressionValue(viewPager2, "");
            s1.L(viewPager2, list.size(), this.f54360a.f62712c, new a(viewPager2));
            com.qennnsad.aknkaksd.presentation.ui.widget.banner.b bVar3 = this.f54361b;
            if (bVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("bannerAdapter");
            } else {
                bVar = bVar3;
            }
            bVar.submitList(list);
            bVar = Unit.INSTANCE;
        }
        if (bVar == null) {
            setVisibility(8);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public BannerCarousel(@g Context context, @h AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        Intrinsics.checkNotNullParameter(context, "context");
        l3 d4 = l3.d(LayoutInflater.from(context), this, true);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(LayoutInflater.from(context), this, true)");
        this.f54360a = d4;
    }
}
