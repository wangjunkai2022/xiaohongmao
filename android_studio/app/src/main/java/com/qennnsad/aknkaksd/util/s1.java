package com.qennnsad.aknkaksd.util;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.TranslateAnimation;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.content.ContextCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.facebook.common.statfs.StatFsHelper;
import com.google.android.gms.common.internal.x;
import com.google.android.material.tabs.TabLayout;
import com.qennnsad.aknkaksd.analytics.data.events.EventSignature;
import com.qennnsad.aknkaksd.data.bean.BannerAdBean;
import com.qennnsad.aknkaksd.data.bean.RankItem;
import com.qennnsad.aknkaksd.data.bean.RankItemKt;
import e5.y2;
import io.sentry.protocol.y;
import java.lang.reflect.Field;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt__StringNumberConversionsKt;

/* compiled from: ViewExt.kt */
@Metadata(bv = {}, d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0007\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u001a\u001b\u0010\u0006\u001a\u00020\u0001*\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u0014\u0010\n\u001a\u00020\u0001*\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00010\b\u001a\u001b\u0010\u000b\u001a\u00020\u0001*\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u000b\u0010\u0007\u001a\u001c\u0010\u000f\u001a\u00020\u0001*\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000e\u001a\u00020\r\u001a#\u0010\u0010\u001a\u00020\u0001*\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u001a\u0010\u0014\u001a\u00020\u0001*\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\b\u001a\u0012\u0010\u0016\u001a\u00020\u0001*\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0004\u001a\u0012\u0010\u0017\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0004\u001a\u0014\u0010\u0019\u001a\u00020\u0001*\u00020\u00122\b\u0010\u0018\u001a\u0004\u0018\u00010\b\u001a\u001b\u0010\u001a\u001a\u00020\u0001*\u00020\u00122\b\u0010\u0018\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u001a\u0010\u001b\u001aE\u0010!\u001a\u00020\u0001*\u00020\u00122\n\b\u0003\u0010\u001c\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u001d\u001a\u00020\r2\b\b\u0002\u0010\u001e\u001a\u00020\r2\b\b\u0002\u0010\u001f\u001a\u00020\r2\b\b\u0002\u0010 \u001a\u00020\r¢\u0006\u0004\b!\u0010\"\u001a\u001e\u0010&\u001a\u00020\u0001*\u00020#2\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010$\u001a\u0012\u0010'\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0004\u001a\u0010\u0010)\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0004H\u0007\u001a$\u0010.\u001a\u00020\u0001*\u00020\u00002\b\b\u0002\u0010+\u001a\u00020*2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00010,H\u0007\u001a\n\u00100\u001a\u00020\u0001*\u00020/\u001a$\u00107\u001a\u00020\u0001*\u00020\u00032\b\u00102\u001a\u0004\u0018\u0001012\u0006\u00104\u001a\u0002032\u0006\u00106\u001a\u000205\u001a$\u0010=\u001a\u00020\u0001*\u0002082\b\u0010:\u001a\u0004\u0018\u0001092\u0006\u00104\u001a\u0002032\u0006\u0010<\u001a\u00020;\u001a6\u0010C\u001a\u00020\u0001*\u00020>2\u0006\u0010?\u001a\u00020\u00042\n\b\u0002\u0010A\u001a\u0004\u0018\u00010@2\u0016\b\u0002\u0010B\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001\u0018\u00010$\u001a \u0010F\u001a\u00020\u0001*\u0004\u0018\u00010\u00002\u0006\u0010D\u001a\u00020\r2\b\b\u0002\u0010E\u001a\u00020\rH\u0007\u001a6\u0010K\u001a\u00020\u0001*\u00020\u00002\b\b\u0002\u0010G\u001a\u00020\u00042\u0006\u0010H\u001a\u00020\u00042\u0006\u0010I\u001a\u00020\u00042\u0010\b\u0002\u0010J\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010,\u001a6\u0010L\u001a\u00020\u0001*\u00020\u00002\b\b\u0002\u0010G\u001a\u00020\u00042\u0006\u0010H\u001a\u00020\u00042\u0006\u0010I\u001a\u00020\u00042\u0010\b\u0002\u0010J\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010,\u001a\n\u0010M\u001a\u00020\u0001*\u00020\u0000\u001a.\u0010Q\u001a\u00020\u0001*\u00020>2\u0006\u0010:\u001a\u00020\u00042\u0006\u0010G\u001a\u00020*2\b\b\u0002\u0010O\u001a\u00020N2\b\b\u0002\u0010P\u001a\u00020\u0004\u001a\n\u0010R\u001a\u00020\u0001*\u00020>\u001a,\u0010V\u001a\u00020\u0001*\u00020\u00002\u0006\u0010T\u001a\u00020S2\u0006\u0010G\u001a\u00020\u00042\u000e\u0010U\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010,H\u0002\"\u001d\u0010[\u001a\n X*\u0004\u0018\u00010W0W*\u00020\u00008F¢\u0006\u0006\u001a\u0004\bY\u0010Z\"(\u0010b\u001a\u00020\\*\u00020\u00002\u0006\u0010]\u001a\u00020\\8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b^\u0010_\"\u0004\b`\u0010a¨\u0006c"}, d2 = {"Landroid/view/View;", "", "l", "Landroid/widget/ImageView;", "", "genderValue", "w", "(Landroid/widget/ImageView;Ljava/lang/Integer;)V", "", "peerageId", "C", "B", "levelId", "", "isMystery", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "z", "(Landroid/widget/ImageView;Ljava/lang/Integer;Z)V", "Landroid/widget/TextView;", "genderNumber", y.b.f83919g, "rank", "D", "F", "familyLevel", "v", "u", "(Landroid/widget/TextView;Ljava/lang/Integer;)V", "resId", com.google.android.exoplayer2.text.ttml.d.f25720l0, "top", com.google.android.exoplayer2.text.ttml.d.f25723n0, "bottom", "n", "(Landroid/widget/TextView;Ljava/lang/Integer;ZZZZ)V", "Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;", "Lkotlin/Function1;", "onRefreshListener", "J", y.b.f83920h, "fanLevel", "h", "", "throttle", "Lkotlin/Function0;", x.a.f29212a, ExifInterface.LATITUDE_SOUTH, "Landroid/webkit/WebView;", "t", "Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;", "banner", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lx4/a;", "analytics", "m", "Le5/y2;", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "item", "Lcom/qennnsad/aknkaksd/util/q0;", "mysteryUtil", "f", "Landroidx/viewpager2/widget/ViewPager2;", "itemsCount", "Lcom/google/android/material/tabs/TabLayout;", "tabs", "onPageSelected", "L", "visible", "gone", "H", "duration", TypedValues.Transition.S_FROM, TypedValues.Transition.S_TO, "onSlideComplete", "Q", "O", "N", "Landroid/animation/TimeInterpolator;", "interpolator", "pagePxWidth", "q", "k", "Landroid/view/animation/Animation;", "anim", "onAnimEnd", "e", "Landroid/view/LayoutInflater;", "kotlin.jvm.PlatformType", ContextChain.TAG_INFRA, "(Landroid/view/View;)Landroid/view/LayoutInflater;", "layoutInflator", "", "value", "j", "(Landroid/view/View;)F", ExifInterface.LONGITUDE_EAST, "(Landroid/view/View;F)V", "scale", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class s1 {

    /* compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\b"}, d2 = {"com/qennnsad/aknkaksd/util/s1$a", "Landroid/view/animation/Animation$AnimationListener;", "Landroid/view/animation/Animation;", "animation", "", "onAnimationEnd", "onAnimationStart", "onAnimationRepeat", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a implements Animation.AnimationListener {

        /* renamed from: a */
        final /* synthetic */ Function0<Unit> f55022a;

        a(Function0<Unit> function0) {
            this.f55022a = function0;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(@m8.h Animation animation) {
            this.f55022a.invoke();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(@m8.h Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(@m8.h Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ViewExt.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function0<Unit> {

        /* renamed from: a */
        final /* synthetic */ BannerAdBean f55023a;

        /* renamed from: b */
        final /* synthetic */ x4.a f55024b;

        /* renamed from: c */
        final /* synthetic */ ImageView f55025c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(BannerAdBean bannerAdBean, x4.a aVar, ImageView imageView) {
            super(0);
            this.f55023a = bannerAdBean;
            this.f55024b = aVar;
            this.f55025c = imageView;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
            BannerAdBean bannerAdBean = this.f55023a;
            x4.a aVar = this.f55024b;
            ImageView imageView = this.f55025c;
            if (bannerAdBean.getTargetUrl() == null) {
                return;
            }
            aVar.d(EventSignature.APP_AD_CLICK, bannerAdBean.getTargetUrl());
            Context context = imageView.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            l.z(context, bannerAdBean.getTargetUrl(), bannerAdBean.getTarget(), false, false, 12, null);
        }
    }

    /* compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\t"}, d2 = {"com/qennnsad/aknkaksd/util/s1$c", "Landroid/animation/Animator$AnimatorListener;", "Landroid/animation/Animator;", "animation", "", "onAnimationStart", "onAnimationEnd", "onAnimationCancel", "onAnimationRepeat", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c implements Animator.AnimatorListener {

        /* renamed from: a */
        final /* synthetic */ ViewPager2 f55026a;

        c(ViewPager2 viewPager2) {
            this.f55026a = viewPager2;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(@m8.h Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@m8.h Animator animator) {
            this.f55026a.endFakeDrag();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(@m8.h Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(@m8.h Animator animator) {
            this.f55026a.beginFakeDrag();
        }
    }

    /* compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/qennnsad/aknkaksd/util/s1$d", "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;", "", "position", "", "onPageSelected", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends ViewPager2.OnPageChangeCallback {

        /* renamed from: a */
        final /* synthetic */ TabLayout f55027a;

        /* renamed from: b */
        final /* synthetic */ int f55028b;

        /* renamed from: c */
        final /* synthetic */ Function1<Integer, Unit> f55029c;

        /* JADX WARN: Multi-variable type inference failed */
        d(TabLayout tabLayout, int i4, Function1<? super Integer, Unit> function1) {
            this.f55027a = tabLayout;
            this.f55028b = i4;
            this.f55029c = function1;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i4) {
            TabLayout.Tab tabAt;
            TabLayout tabLayout = this.f55027a;
            if (tabLayout != null && (tabAt = tabLayout.getTabAt(i4 % this.f55028b)) != null) {
                tabAt.select();
            }
            Function1<Integer, Unit> function1 = this.f55029c;
            if (function1 != null) {
                function1.invoke(Integer.valueOf(i4));
            }
        }
    }

    /* compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J \u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016¨\u0006\t"}, d2 = {"com/qennnsad/aknkaksd/util/s1$e", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "", "dx", "dy", "", "onScrolled", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class e extends RecyclerView.OnScrollListener {

        /* renamed from: a */
        final /* synthetic */ RecyclerView f55030a;

        /* renamed from: b */
        final /* synthetic */ int f55031b;

        e(RecyclerView recyclerView, int i4) {
            this.f55030a = recyclerView;
            this.f55031b = i4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@m8.g RecyclerView recyclerView, int i4, int i10) {
            RecyclerView.LayoutManager layoutManager;
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, i4, i10);
            RecyclerView.LayoutManager layoutManager2 = this.f55030a.getLayoutManager();
            LinearLayoutManager linearLayoutManager = layoutManager2 instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager2 : null;
            int findFirstVisibleItemPosition = linearLayoutManager != null ? linearLayoutManager.findFirstVisibleItemPosition() : 0;
            if (findFirstVisibleItemPosition == 0 || findFirstVisibleItemPosition % this.f55031b != 0 || (layoutManager = recyclerView.getLayoutManager()) == null) {
                return;
            }
            layoutManager.scrollToPosition(0);
        }
    }

    /* compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Landroid/view/View;", "kotlin.jvm.PlatformType", "it", "", "a", "(Landroid/view/View;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class f extends Lambda implements Function1<View, Unit> {

        /* renamed from: a */
        final /* synthetic */ Function0<Unit> f55032a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(Function0<Unit> function0) {
            super(1);
            this.f55032a = function0;
        }

        public final void a(View view) {
            this.f55032a.invoke();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(View view) {
            a(view);
            return Unit.INSTANCE;
        }
    }

    public static final void A(@m8.g ImageView imageView, @m8.h String str, boolean z9) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        z(imageView, str != null ? StringsKt__StringNumberConversionsKt.toIntOrNull(str) : null, z9);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void B(@m8.g android.widget.ImageView r4, @m8.h java.lang.Integer r5) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            kotlin.ranges.IntRange r0 = new kotlin.ranges.IntRange
            r1 = 1
            r2 = 6
            r0.<init>(r1, r2)
            r2 = 0
            if (r5 == 0) goto L1b
            int r3 = r5.intValue()
            boolean r0 = r0.contains(r3)
            if (r0 == 0) goto L1b
            r0 = 1
            goto L1c
        L1b:
            r0 = 0
        L1c:
            if (r0 == 0) goto L30
            if (r5 == 0) goto L25
            int r5 = r5.intValue()
            goto L26
        L25:
            r5 = 0
        L26:
            int r5 = com.qennnsad.aknkaksd.util.z0.h(r5)
            if (r5 == 0) goto L30
            r4.setImageResource(r5)
            goto L31
        L30:
            r1 = 0
        L31:
            if (r1 == 0) goto L34
            goto L36
        L34:
            r2 = 8
        L36:
            r4.setVisibility(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.util.s1.B(android.widget.ImageView, java.lang.Integer):void");
    }

    public static final void C(@m8.g ImageView imageView, @m8.h String str) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        B(imageView, str != null ? StringsKt__StringNumberConversionsKt.toIntOrNull(str) : null);
    }

    public static final void D(@m8.g TextView textView, int i4) {
        CharSequence b10;
        Intrinsics.checkNotNullParameter(textView, "<this>");
        if (i4 == 1) {
            b10 = j1.b("", String.valueOf(i4), new com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.i(String.valueOf(i4), ContextCompat.getColor(textView.getContext(), R.color.ranking_gradient_start_top_1), ContextCompat.getColor(textView.getContext(), R.color.ranking_gradient_end_top_1)));
        } else if (i4 == 2) {
            b10 = j1.b("", String.valueOf(i4), new com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.i(String.valueOf(i4), ContextCompat.getColor(textView.getContext(), R.color.ranking_gradient_start_top_2), ContextCompat.getColor(textView.getContext(), R.color.ranking_gradient_end_top_2)));
        } else if (i4 != 3) {
            b10 = String.valueOf(i4);
        } else {
            b10 = j1.b("", String.valueOf(i4), new com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.i(String.valueOf(i4), ContextCompat.getColor(textView.getContext(), R.color.ranking_gradient_start_top_3), ContextCompat.getColor(textView.getContext(), R.color.ranking_gradient_end_top_3)));
        }
        textView.setText(b10);
    }

    public static final void E(@m8.g View view, float f10) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setScaleX(f10);
        view.setScaleY(f10);
    }

    public static final void F(@m8.g ImageView imageView, int i4) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        int i10 = 0;
        imageView.setVisibility(i4 < 4 ? 0 : 8);
        if (i4 == 1) {
            i10 = R.drawable.bg_rank_top_1;
        } else if (i4 == 2) {
            i10 = R.drawable.bg_rank_top_2;
        } else if (i4 == 3) {
            i10 = R.drawable.bg_rank_top_3;
        }
        imageView.setImageResource(i10);
    }

    @JvmOverloads
    public static final void G(@m8.h View view, boolean z9) {
        I(view, z9, false, 2, null);
    }

    @JvmOverloads
    public static final void H(@m8.h View view, boolean z9, boolean z10) {
        if (view == null) {
            return;
        }
        if (z10) {
            view.setVisibility(z9 ? 0 : 8);
        } else {
            view.setVisibility(z9 ^ true ? 4 : 0);
        }
    }

    public static /* synthetic */ void I(View view, boolean z9, boolean z10, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z10 = true;
        }
        H(view, z9, z10);
    }

    public static final void J(@m8.g SwipeRefreshLayout swipeRefreshLayout, @m8.g final Function1<? super Unit, Unit> onRefreshListener) {
        Intrinsics.checkNotNullParameter(swipeRefreshLayout, "<this>");
        Intrinsics.checkNotNullParameter(onRefreshListener, "onRefreshListener");
        swipeRefreshLayout.setColorSchemeResources(R.color.color_accent, R.color.color_accent_dark, R.color.color_accent_light);
        swipeRefreshLayout.setProgressBackgroundColorSchemeResource(R.color.white);
        swipeRefreshLayout.setProgressViewOffset(true, -25, 155);
        swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.qennnsad.aknkaksd.util.r1
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                s1.K(Function1.this);
            }
        });
    }

    public static final void K(Function1 onRefreshListener) {
        Intrinsics.checkNotNullParameter(onRefreshListener, "$onRefreshListener");
        onRefreshListener.invoke(Unit.INSTANCE);
    }

    public static final void L(@m8.g ViewPager2 viewPager2, int i4, @m8.h TabLayout tabLayout, @m8.h Function1<? super Integer, Unit> function1) {
        Intrinsics.checkNotNullParameter(viewPager2, "<this>");
        if (tabLayout != null) {
            tabLayout.removeAllTabs();
            for (int i10 = 0; i10 < i4; i10++) {
                tabLayout.addTab(tabLayout.newTab());
            }
        }
        viewPager2.registerOnPageChangeCallback(new d(tabLayout, i4, function1));
        View childAt = viewPager2.getChildAt(0);
        RecyclerView recyclerView = childAt instanceof RecyclerView ? (RecyclerView) childAt : null;
        if (recyclerView != null) {
            recyclerView.addOnScrollListener(new e(recyclerView, i4));
        }
    }

    public static /* synthetic */ void M(ViewPager2 viewPager2, int i4, TabLayout tabLayout, Function1 function1, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            tabLayout = null;
        }
        if ((i10 & 4) != 0) {
            function1 = null;
        }
        L(viewPager2, i4, tabLayout, function1);
    }

    public static final void N(@m8.g View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.startAnimation(AnimationUtils.loadAnimation(view.getContext(), R.anim.room_buttom_in));
    }

    public static final void O(@m8.g View view, int i4, int i10, int i11, @m8.h Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        e(view, new TranslateAnimation(0.0f, 0.0f, i10, i11), i4, function0);
    }

    public static /* synthetic */ void P(View view, int i4, int i10, int i11, Function0 function0, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i4 = StatFsHelper.f11024h;
        }
        if ((i12 & 8) != 0) {
            function0 = null;
        }
        O(view, i4, i10, i11, function0);
    }

    public static final void Q(@m8.g View view, int i4, int i10, int i11, @m8.h Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        e(view, new TranslateAnimation(0.0f, 0.0f, i10, i11), i4, function0);
    }

    public static /* synthetic */ void R(View view, int i4, int i10, int i11, Function0 function0, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i4 = StatFsHelper.f11024h;
        }
        if ((i12 & 8) != 0) {
            function0 = null;
        }
        Q(view, i4, i10, i11, function0);
    }

    @JvmOverloads
    public static final void S(@m8.g View view, long j4, @m8.g Function0<Unit> listener) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(listener, "listener");
        final Function1 c10 = u.c(j4, kotlinx.coroutines.t0.b(), new f(listener));
        view.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.util.q1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                s1.V(Function1.this, view2);
            }
        });
    }

    @JvmOverloads
    public static final void T(@m8.g View view, @m8.g Function0<Unit> listener) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(listener, "listener");
        U(view, 0L, listener, 1, null);
    }

    public static /* synthetic */ void U(View view, long j4, Function0 function0, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            j4 = 50;
        }
        S(view, j4, function0);
    }

    public static final void V(Function1 tmp0, View view) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(view);
    }

    private static final void e(View view, Animation animation, int i4, Function0<Unit> function0) {
        view.setVisibility(0);
        animation.setDuration(i4);
        animation.setFillAfter(true);
        if (function0 != null) {
            animation.setAnimationListener(new a(function0));
        }
        view.startAnimation(animation);
    }

    public static final void f(@m8.g final y2 y2Var, @m8.h final RankItem rankItem, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g final q0 mysteryUtil) {
        int i4;
        Intrinsics.checkNotNullParameter(y2Var, "<this>");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(mysteryUtil, "mysteryUtil");
        ConstraintLayout root = y2Var.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "root");
        root.setVisibility(rankItem == null ? 4 : 0);
        if (rankItem == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = y2Var.f63365c.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        Context context = y2Var.getRoot().getContext();
        Intrinsics.checkNotNullExpressionValue(context, "root.context");
        Integer rankPosition = rankItem.getRankPosition();
        marginLayoutParams.bottomMargin = h1.f(context, (rankPosition != null && rankPosition.intValue() == 1) ? 10 : 5);
        com.qennnsad.aknkaksd.util.img.e.g(y2Var.f63365c, sourceFactory.j(rankItem.getAvatar()), true, R.drawable.ic_default_head_small, R.drawable.ic_default_head_small);
        ImageView imageView = y2Var.f63366d;
        ViewGroup.LayoutParams layoutParams2 = imageView.getLayoutParams();
        Context context2 = y2Var.getRoot().getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "root.context");
        Integer rankPosition2 = rankItem.getRankPosition();
        layoutParams2.width = h1.f(context2, (rankPosition2 != null && rankPosition2.intValue() == 1) ? 80 : 70);
        Integer rankPosition3 = rankItem.getRankPosition();
        if (rankPosition3 != null && rankPosition3.intValue() == 1) {
            i4 = R.drawable.bg_top_1;
        } else {
            i4 = (rankPosition3 != null && rankPosition3.intValue() == 2) ? R.drawable.bg_top_2 : R.drawable.bg_top_3;
        }
        imageView.setImageResource(i4);
        TextView textView = y2Var.f63376n;
        Context context3 = y2Var.getRoot().getContext();
        boolean isGameRank = RankItemKt.isGameRank(rankItem);
        int i10 = R.color.white;
        textView.setTextColor(ContextCompat.getColor(context3, isGameRank ? R.color.white : R.color.txt_color));
        textView.setText(rankItem.getNickname());
        ImageView ivSex = y2Var.f63370h;
        Intrinsics.checkNotNullExpressionValue(ivSex, "ivSex");
        w(ivSex, Integer.valueOf(rankItem.getSex()));
        ImageView ivLevel = y2Var.f63368f;
        Intrinsics.checkNotNullExpressionValue(ivLevel, "ivLevel");
        A(ivLevel, rankItem.getLevelId(), rankItem.isMystery());
        ImageView ivPeerage = y2Var.f63369g;
        Intrinsics.checkNotNullExpressionValue(ivPeerage, "ivPeerage");
        C(ivPeerage, rankItem.getPeerageId());
        TextView textView2 = y2Var.f63372j;
        Intrinsics.checkNotNullExpressionValue(textView2, "");
        textView2.setVisibility(true ^ RankItemKt.isPkRank(rankItem) ? 0 : 8);
        Context context4 = y2Var.getRoot().getContext();
        if (!RankItemKt.isGameRank(rankItem)) {
            i10 = R.color.txt_color;
        }
        textView2.setTextColor(ContextCompat.getColor(context4, i10));
        o(textView2, Integer.valueOf(RankItemKt.isGameRank(rankItem) ? R.drawable.ic_game_chips : R.drawable.coin_room_top_2), true, false, false, false, 28, null);
        textView2.setText(String.valueOf(rankItem.getCoin()));
        TextView textView3 = y2Var.f63375m;
        Intrinsics.checkNotNullExpressionValue(textView3, "");
        textView3.setVisibility(RankItemKt.isGameRank(rankItem) ? 0 : 8);
        textView3.setText(rankItem.getGame());
        Group groupPk = y2Var.f63364b;
        Intrinsics.checkNotNullExpressionValue(groupPk, "groupPk");
        groupPk.setVisibility(RankItemKt.isPkRank(rankItem) ? 0 : 8);
        y2Var.f63374l.setText(String.valueOf(rankItem.getWins()));
        y2Var.f63373k.setText(String.valueOf(rankItem.getDefeats()));
        y2Var.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.util.p1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                s1.g(y2.this, rankItem, mysteryUtil, view);
            }
        });
    }

    public static final void g(y2 this_bindPedestalItem, RankItem rankItem, q0 mysteryUtil, View view) {
        Intrinsics.checkNotNullParameter(this_bindPedestalItem, "$this_bindPedestalItem");
        Intrinsics.checkNotNullParameter(mysteryUtil, "$mysteryUtil");
        Context context = this_bindPedestalItem.getRoot().getContext();
        Intrinsics.checkNotNullExpressionValue(context, "root.context");
        l.e0(context, rankItem, mysteryUtil);
    }

    @DrawableRes
    public static final int h(int i4) {
        int i10 = (i4 - 1) / 5;
        int i11 = i10 != 0 ? i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? i10 != 5 ? 0 : R.drawable.bg_fan_level_5 : R.drawable.bg_fan_level_4 : R.drawable.bg_fan_level_3 : R.drawable.bg_fan_level_2 : R.drawable.bg_fan_level_1 : R.drawable.bg_fan_level_0;
        o0.a("ViewExt", "Creating bitmap fanclub label " + i11);
        return i11;
    }

    public static final LayoutInflater i(@m8.g View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return LayoutInflater.from(view.getContext());
    }

    public static final float j(@m8.g View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return view.getScaleX();
    }

    public static final void k(@m8.g ViewPager2 viewPager2) {
        Intrinsics.checkNotNullParameter(viewPager2, "<this>");
        Field declaredField = ViewPager2.class.getDeclaredField("mRecyclerView");
        declaredField.setAccessible(true);
        Object obj = declaredField.get(viewPager2);
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView");
        RecyclerView recyclerView = (RecyclerView) obj;
        Field declaredField2 = RecyclerView.class.getDeclaredField("mTouchSlop");
        declaredField2.setAccessible(true);
        Object obj2 = declaredField2.get(recyclerView);
        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Int");
        declaredField2.set(recyclerView, Integer.valueOf(((Integer) obj2).intValue() / 5));
    }

    public static final void l(@m8.g View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Animation loadAnimation = AnimationUtils.loadAnimation(view.getContext(), R.anim.shake);
        loadAnimation.setFillAfter(true);
        loadAnimation.setRepeatCount(-1);
        loadAnimation.setRepeatMode(2);
        view.startAnimation(loadAnimation);
    }

    public static final void m(@m8.g ImageView imageView, @m8.h BannerAdBean bannerAdBean, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g x4.a analytics) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Unit unit = null;
        if (bannerAdBean != null) {
            imageView.setVisibility(0);
            com.bumptech.glide.request.h J0 = new com.bumptech.glide.request.h().B().J0(new com.bumptech.glide.load.resource.bitmap.c0(25));
            Intrinsics.checkNotNullExpressionValue(J0, "RequestOptions()\n       …sform(RoundedCorners(25))");
            com.bumptech.glide.request.h hVar = J0;
            com.bumptech.glide.k F = com.bumptech.glide.c.F(imageView);
            String imageUrl = bannerAdBean.getImageUrl();
            com.bumptech.glide.j<Drawable> a10 = F.d(imageUrl != null ? sourceFactory.j(imageUrl) : null).a(hVar);
            com.qennnsad.aknkaksd.util.img.e eVar = com.qennnsad.aknkaksd.util.img.e.f54753a;
            Intrinsics.checkNotNull(a10);
            eVar.a(imageView, a10, hVar, R.drawable.placeholder_ad);
            a10.G1(com.bumptech.glide.load.resource.drawable.d.m()).x(R.drawable.placeholder_ad).k1(imageView);
            U(imageView, 0L, new b(bannerAdBean, analytics, imageView), 1, null);
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            imageView.setVisibility(8);
        }
    }

    public static final void n(@m8.g TextView textView, @DrawableRes @m8.h Integer num, boolean z9, boolean z10, boolean z11, boolean z12) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        textView.setCompoundDrawablesWithIntrinsicBounds(p(z9, num), p(z10, num), p(z11, num), p(z12, num));
    }

    public static /* synthetic */ void o(TextView textView, Integer num, boolean z9, boolean z10, boolean z11, boolean z12, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            num = 0;
        }
        n(textView, num, (i4 & 2) != 0 ? false : z9, (i4 & 4) != 0 ? false : z10, (i4 & 8) != 0 ? false : z11, (i4 & 16) == 0 ? z12 : false);
    }

    private static final int p(boolean z9, Integer num) {
        if (!z9 || num == null) {
            return 0;
        }
        return num.intValue();
    }

    public static final void q(@m8.g final ViewPager2 viewPager2, int i4, long j4, @m8.g TimeInterpolator interpolator, int i10) {
        Intrinsics.checkNotNullParameter(viewPager2, "<this>");
        Intrinsics.checkNotNullParameter(interpolator, "interpolator");
        ValueAnimator ofInt = ValueAnimator.ofInt(0, i10 * (i4 - viewPager2.getCurrentItem()));
        final Ref.IntRef intRef = new Ref.IntRef();
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.qennnsad.aknkaksd.util.o1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                s1.s(Ref.IntRef.this, viewPager2, valueAnimator);
            }
        });
        ofInt.addListener(new c(viewPager2));
        ofInt.setInterpolator(interpolator);
        ofInt.setDuration(j4);
        ofInt.start();
    }

    public static /* synthetic */ void r(ViewPager2 viewPager2, int i4, long j4, TimeInterpolator timeInterpolator, int i10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            timeInterpolator = new AccelerateDecelerateInterpolator();
        }
        TimeInterpolator timeInterpolator2 = timeInterpolator;
        if ((i11 & 8) != 0) {
            i10 = viewPager2.getWidth();
        }
        q(viewPager2, i4, j4, timeInterpolator2, i10);
    }

    public static final void s(Ref.IntRef previousValue, ViewPager2 this_setCurrentItem, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(previousValue, "$previousValue");
        Intrinsics.checkNotNullParameter(this_setCurrentItem, "$this_setCurrentItem");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        int intValue = ((Integer) animatedValue).intValue();
        this_setCurrentItem.fakeDragBy(-(intValue - previousValue.element));
        previousValue.element = intValue;
    }

    public static final void t(@m8.g WebView webView) {
        Intrinsics.checkNotNullParameter(webView, "<this>");
        WebSettings settings = webView.getSettings();
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setAllowFileAccess(true);
        settings.setCacheMode(-1);
        settings.setDomStorageEnabled(true);
        settings.setAllowContentAccess(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setJavaScriptEnabled(true);
        settings.setMixedContentMode(0);
    }

    public static final void u(@m8.g TextView textView, @m8.h Integer num) {
        StringBuilder sb;
        int color;
        int color2;
        int i4;
        Intrinsics.checkNotNullParameter(textView, "<this>");
        if (num != null && new IntRange(1, 50).contains(num.intValue())) {
            textView.setVisibility(0);
            Intrinsics.checkNotNull(num);
            if (num.intValue() < 10) {
                sb = new StringBuilder();
                sb.append("V0");
            } else {
                sb = new StringBuilder();
                sb.append('V');
            }
            sb.append(num);
            String sb2 = sb.toString();
            int intValue = num.intValue();
            if (1 <= intValue && intValue < 11) {
                color = ContextCompat.getColor(textView.getContext(), R.color.family_text_start_1);
                color2 = ContextCompat.getColor(textView.getContext(), R.color.family_text_end_1);
                i4 = R.drawable.ic_family_01_10;
            } else {
                if (11 <= intValue && intValue < 21) {
                    color = ContextCompat.getColor(textView.getContext(), R.color.family_text_start_2);
                    color2 = ContextCompat.getColor(textView.getContext(), R.color.family_text_end_2);
                    i4 = R.drawable.ic_family_11_20;
                } else {
                    if (21 <= intValue && intValue < 31) {
                        color = ContextCompat.getColor(textView.getContext(), R.color.family_text_start_3);
                        color2 = ContextCompat.getColor(textView.getContext(), R.color.family_text_end_3);
                        i4 = R.drawable.ic_family_21_30;
                    } else {
                        if (31 <= intValue && intValue < 41) {
                            color = ContextCompat.getColor(textView.getContext(), R.color.family_text_start_4);
                            color2 = ContextCompat.getColor(textView.getContext(), R.color.family_text_end_4);
                            i4 = R.drawable.ic_family_31_40;
                        } else {
                            if (!(41 <= intValue && intValue < 51)) {
                                return;
                            }
                            color = ContextCompat.getColor(textView.getContext(), R.color.family_text_start_5);
                            color2 = ContextCompat.getColor(textView.getContext(), R.color.family_text_end_5);
                            i4 = R.drawable.ic_family_41_50;
                        }
                    }
                }
            }
            o(textView, Integer.valueOf(i4), true, false, false, false, 28, null);
            textView.setText(j1.b("", sb2, new com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.i(sb2, color, color2)));
            return;
        }
        textView.setVisibility(8);
    }

    public static final void v(@m8.g TextView textView, @m8.h String str) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        u(textView, str != null ? StringsKt__StringNumberConversionsKt.toIntOrNull(str) : null);
    }

    public static final void w(@m8.g ImageView imageView, @m8.h Integer num) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        boolean z9 = true;
        if (num != null && num.intValue() == 0) {
            imageView.setImageResource(R.drawable.ic_male);
        } else if (num != null && num.intValue() == 1) {
            imageView.setImageResource(R.drawable.ic_female);
        } else {
            z9 = false;
        }
        imageView.setVisibility(z9 ? 0 : 8);
    }

    public static final void x(@m8.g TextView textView, int i4, @m8.g String genderNumber) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Intrinsics.checkNotNullParameter(genderNumber, "genderNumber");
        textView.setText(genderNumber);
        if (i4 == 0) {
            textView.setVisibility(0);
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(R.drawable.ic_male_frameless, 0, 0, 0);
            textView.setBackgroundResource(R.drawable.shape_male_frameless);
        } else if (i4 != 1) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(R.drawable.ic_female_frameless, 0, 0, 0);
            textView.setBackgroundResource(R.drawable.shape_female_frameless);
        }
    }

    public static final void y(@m8.g ImageView imageView, int i4) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        boolean z9 = true;
        if (i4 == 1) {
            imageView.setImageResource(R.drawable.last_week_rank_1);
        } else if (i4 == 2) {
            imageView.setImageResource(R.drawable.last_week_rank_2);
        } else if (i4 == 3) {
            imageView.setImageResource(R.drawable.last_week_rank_3);
        } else if (i4 >= 4) {
            imageView.setImageResource(R.drawable.last_week_rank_4);
        } else {
            z9 = false;
        }
        imageView.setVisibility(z9 ? 0 : 8);
    }

    public static final void z(@m8.g ImageView imageView, @m8.h Integer num, boolean z9) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        imageView.setVisibility(!z9 && num != null ? 0 : 8);
        if (z9) {
            return;
        }
        imageView.setImageBitmap(z0.e(imageView.getContext(), num != null ? num.intValue() : 0));
    }
}
