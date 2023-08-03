package com.qennnsad.aknkaksd.presentation.module.main.rank;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.didi.live.spring.R;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.qennnsad.aknkaksd.presentation.module.main.rank.MainRankViewModel;
import e5.v0;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import m8.h;

/* compiled from: MainRankFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b \u0010!J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u001a\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016J\u001a\u0010\u000f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0003H\u0014R\u001b\u0010\u0017\u001a\u00020\u00128VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006\""}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/v0;", "Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel$Event;", "", "A0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "D0", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "e", "C0", "Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;", "k", "Lkotlin/Lazy;", "z0", "()Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;", "l", "Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;", "y0", "()Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;", "E0", "(Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;)V", "adapter", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class MainRankFragment extends com.qennnsad.aknkaksd.presentation.module.main.rank.a<v0, MainRankViewModel.Event> {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f51926k = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(MainRankViewModel.class), new MainRankFragment$special$$inlined$activityViewModels$default$1(this), new MainRankFragment$special$$inlined$activityViewModels$default$2(null, this), new MainRankFragment$special$$inlined$activityViewModels$default$3(this));

    /* renamed from: l  reason: collision with root package name */
    public b f51927l;

    /* compiled from: MainRankFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"com/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment$a", "Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;", "Lcom/google/android/material/tabs/TabLayout$Tab;", "tab", "", "onTabSelected", "onTabUnselected", "onTabReselected", "", "a", "I", "gamePosition", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a implements TabLayout.OnTabSelectedListener {

        /* renamed from: a  reason: collision with root package name */
        private final int f51932a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ TabLayout f51934c;

        a(TabLayout tabLayout) {
            this.f51934c = tabLayout;
            this.f51932a = MainRankFragment.this.e0().s();
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(@h TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(@h TabLayout.Tab tab) {
            TabLayout tabLayout = this.f51934c;
            Context requireContext = MainRankFragment.this.requireContext();
            boolean z9 = false;
            if (tab != null && tab.getPosition() == this.f51932a) {
                z9 = true;
            }
            tabLayout.setTabTextColors(ContextCompat.getColor(requireContext, z9 ? R.color.ranking_tab_unselected_game_rank : R.color.ranking_tab_unselected), ContextCompat.getColor(MainRankFragment.this.requireContext(), R.color.color_accent));
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(@h TabLayout.Tab tab) {
        }
    }

    private final void A0() {
        final String[] t9 = e0().t();
        E0(new b(this, t9.length));
        v0 v0Var = (v0) m0();
        v0Var.f63212c.setAdapter(y0());
        new TabLayoutMediator(v0Var.f63211b, v0Var.f63212c, new TabLayoutMediator.TabConfigurationStrategy() { // from class: com.qennnsad.aknkaksd.presentation.module.main.rank.c
            @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
            public final void onConfigureTab(TabLayout.Tab tab, int i4) {
                MainRankFragment.B0(t9, tab, i4);
            }
        }).attach();
        TabLayout tabLayout = v0Var.f63211b;
        tabLayout.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new a(tabLayout));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(String[] titles, TabLayout.Tab tab, int i4) {
        Intrinsics.checkNotNullParameter(titles, "$titles");
        Intrinsics.checkNotNullParameter(tab, "tab");
        tab.setText(titles[i4]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: C0 */
    public void onEvent(@m8.g MainRankViewModel.Event e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: D0 */
    public v0 l0(@m8.g LayoutInflater inflater, @h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        v0 d4 = v0.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    public final void E0(@m8.g b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<set-?>");
        this.f51927l = bVar;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        A0();
    }

    @m8.g
    public final b y0() {
        b bVar = this.f51927l;
        if (bVar != null) {
            return bVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adapter");
        return null;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: z0 */
    public MainRankViewModel e0() {
        return (MainRankViewModel) this.f51926k.getValue();
    }
}
