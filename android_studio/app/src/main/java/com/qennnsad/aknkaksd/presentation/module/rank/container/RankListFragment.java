package com.qennnsad.aknkaksd.presentation.module.rank.container;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.qennnsad.aknkaksd.presentation.module.rank.container.RankListViewModel;
import com.qennnsad.aknkaksd.util.h1;
import e5.q1;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* compiled from: RankListFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001bB\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u001a\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016J\u001a\u0010\u000f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0003H\u0014R\u001b\u0010\u0017\u001a\u00020\u00128VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001c"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/q1;", "Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel$Event;", "", "z0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "C0", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "e", "B0", "Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;", "k", "Lkotlin/Lazy;", "y0", "()Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;", "viewModel", "<init>", "()V", "l", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class RankListFragment extends com.qennnsad.aknkaksd.presentation.module.rank.container.a<q1, RankListViewModel.Event> {
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    public static final a f52239l = new a(null);
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f52240k;

    /* compiled from: RankListFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¨\u0006\b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment$a;", "", "", "rootPosition", "Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;", "a", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @m8.g
        public final RankListFragment a(int i4) {
            RankListFragment rankListFragment = new RankListFragment();
            rankListFragment.setArguments(BundleKt.bundleOf(TuplesKt.to(d.f52262a, Integer.valueOf(i4))));
            return rankListFragment;
        }
    }

    public RankListFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new RankListFragment$special$$inlined$viewModels$default$2(new RankListFragment$special$$inlined$viewModels$default$1(this)));
        this.f52240k = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(RankListViewModel.class), new RankListFragment$special$$inlined$viewModels$default$3(lazy), new RankListFragment$special$$inlined$viewModels$default$4(null, lazy), new RankListFragment$special$$inlined$viewModels$default$5(this, lazy));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(RankListFragment this$0, TabLayout.Tab tab, int i4) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(tab, "tab");
        tab.setText(this$0.e0().w()[i4].intValue());
    }

    private final void z0() {
        q1 q1Var = (q1) m0();
        q1Var.f62952c.setBackgroundResource(e0().t());
        ImageView bgGameRank = q1Var.f62951b;
        Intrinsics.checkNotNullExpressionValue(bgGameRank, "bgGameRank");
        bgGameRank.setVisibility(e0().v() == e0().s() ? 0 : 8);
        ImageView ivGameRankDecor = q1Var.f62954e;
        Intrinsics.checkNotNullExpressionValue(ivGameRankDecor, "ivGameRankDecor");
        ivGameRankDecor.setVisibility(e0().v() == e0().s() ? 0 : 8);
        q1Var.f62956g.setAdapter(new b(this, e0().v(), e0().w().length));
        q1Var.f62956g.setUserInputEnabled(false);
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        int f10 = h1.f(requireContext, 16);
        new TabLayoutMediator(q1Var.f62955f, q1Var.f62956g, new TabLayoutMediator.TabConfigurationStrategy() { // from class: com.qennnsad.aknkaksd.presentation.module.rank.container.c
            @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
            public final void onConfigureTab(TabLayout.Tab tab, int i4) {
                RankListFragment.A0(RankListFragment.this, tab, i4);
            }
        }).attach();
        int tabCount = q1Var.f62955f.getTabCount();
        for (int i4 = 0; i4 < tabCount; i4++) {
            View childAt = q1Var.f62955f.getChildAt(0);
            Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt2 = ((ViewGroup) childAt).getChildAt(i4);
            ViewGroup.LayoutParams layoutParams = childAt2.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ((ViewGroup.MarginLayoutParams) layoutParams).setMargins(f10, 0, f10, 0);
            childAt2.requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: B0 */
    public void onEvent(@m8.g RankListViewModel.Event e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: C0 */
    public q1 l0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        q1 d4 = q1.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        z0();
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: y0 */
    public RankListViewModel e0() {
        return (RankListViewModel) this.f52240k.getValue();
    }
}
