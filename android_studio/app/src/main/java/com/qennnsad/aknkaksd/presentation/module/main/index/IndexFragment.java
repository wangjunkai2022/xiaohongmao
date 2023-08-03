package com.qennnsad.aknkaksd.presentation.module.main.index;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.Observer;
import androidx.viewpager2.widget.ViewPager2;
import com.didi.live.spring.R;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.qennnsad.aknkaksd.analytics.data.events.EventSignature;
import com.qennnsad.aknkaksd.presentation.module.main.index.IndexFragment;
import com.qennnsad.aknkaksd.presentation.module.main.index.IndexViewModel;
import com.qennnsad.aknkaksd.presentation.ui.main.MainFragment;
import com.qennnsad.aknkaksd.presentation.ui.main.a;
import com.qennnsad.aknkaksd.util.s1;
import e5.c2;
import e5.t0;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;

/* compiled from: IndexFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b(\u0010)J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u0016\u0010\n\u001a\u00020\u00042\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\u001a\u0010\u000f\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J\u001a\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016J\u000e\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0003H\u0014R\u001b\u0010\u001f\u001a\u00020\u001a8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\"\u0010'\u001a\u00020 8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&¨\u0006*"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/t0;", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel$Event;", "", "G0", "L0", "", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/a;", "list", "R0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "P0", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "Lcom/google/android/material/tabs/TabLayout$Tab;", "tab", "O0", "e", "N0", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel;", "k", "Lkotlin/Lazy;", "F0", "()Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/b;", "l", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/b;", "E0", "()Lcom/qennnsad/aknkaksd/presentation/module/main/index/b;", "Q0", "(Lcom/qennnsad/aknkaksd/presentation/module/main/index/b;)V", "adapter", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class IndexFragment extends com.qennnsad.aknkaksd.presentation.module.main.index.f<t0, IndexViewModel.Event> {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f51659k = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(IndexViewModel.class), new IndexFragment$special$$inlined$activityViewModels$default$1(this), new IndexFragment$special$$inlined$activityViewModels$default$2(null, this), new IndexFragment$special$$inlined$activityViewModels$default$3(this));

    /* renamed from: l  reason: collision with root package name */
    public com.qennnsad.aknkaksd.presentation.module.main.index.b f51660l;

    /* compiled from: IndexFragment.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IndexViewModel.Event.values().length];
            iArr[IndexViewModel.Event.NAVIGATE_HOT.ordinal()] = 1;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IndexFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function0<Unit> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            IndexFragment.this.c0().navigate(R.id.toSearchUser);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IndexFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function0<Unit> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            FragmentActivity requireActivity = IndexFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.qennnsad.aknkaksd.util.l.u(requireActivity, IndexFragment.this.b0());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IndexFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function0<Unit> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            Fragment parentFragment = IndexFragment.this.getParentFragment();
            Fragment parentFragment2 = parentFragment != null ? parentFragment.getParentFragment() : null;
            MainFragment mainFragment = parentFragment2 instanceof MainFragment ? (MainFragment) parentFragment2 : null;
            if (mainFragment != null) {
                mainFragment.Z0(a.e.f52782c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IndexFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function0<Unit> {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            IndexFragment.this.e0().w().setValue(Boolean.valueOf(!Intrinsics.areEqual(IndexFragment.this.e0().w().getValue(), Boolean.TRUE)));
        }
    }

    /* compiled from: IndexFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment$f", "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;", "", "position", "", "onPageSelected", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class f extends ViewPager2.OnPageChangeCallback {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ t0 f51670b;

        f(t0 t0Var) {
            this.f51670b = t0Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(IndexFragment this$0, t0 this_with) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this_with, "$this_with");
            FragmentActivity requireActivity = this$0.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.qennnsad.aknkaksd.util.l.u(requireActivity, this$0.b0());
            this_with.f63139j.setCurrentItem(this$0.e0().v());
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i4) {
            super.onPageSelected(i4);
            List<com.qennnsad.aknkaksd.presentation.module.main.index.a> value = IndexFragment.this.e0().s().getValue();
            com.qennnsad.aknkaksd.presentation.module.main.index.a aVar = value != null ? value.get(i4) : null;
            if (Intrinsics.areEqual(aVar, com.qennnsad.aknkaksd.presentation.module.main.index.d.f51683c)) {
                View requireView = IndexFragment.this.requireView();
                final IndexFragment indexFragment = IndexFragment.this;
                final t0 t0Var = this.f51670b;
                requireView.postDelayed(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.module.main.index.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        IndexFragment.f.b(IndexFragment.this, t0Var);
                    }
                }, 500L);
            } else {
                IndexFragment.this.e0().x(i4);
            }
            if (aVar != null) {
                IndexFragment indexFragment2 = IndexFragment.this;
                indexFragment2.Z().d(EventSignature.APP_MAIN_PAGE_CATEGORY_CHANGED, indexFragment2.getString(aVar.b()));
            }
        }
    }

    /* compiled from: IndexFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\b"}, d2 = {"com/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment$g", "Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;", "Lcom/google/android/material/tabs/TabLayout$Tab;", "tab", "", "onTabSelected", "onTabUnselected", "onTabReselected", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class g implements TabLayout.OnTabSelectedListener {
        g() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(@m8.g TabLayout.Tab tab) {
            Intrinsics.checkNotNullParameter(tab, "tab");
            IndexFragment.this.O0(tab);
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(@m8.g TabLayout.Tab tab) {
            Intrinsics.checkNotNullParameter(tab, "tab");
            IndexFragment.this.O0(tab);
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(@m8.g TabLayout.Tab tab) {
            Intrinsics.checkNotNullParameter(tab, "tab");
            IndexFragment.this.O0(tab);
        }
    }

    private final void G0() {
        e0().s().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.main.index.l
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                IndexFragment.H0(IndexFragment.this, (List) obj);
            }
        });
        d0().D().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.main.index.j
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                IndexFragment.I0(IndexFragment.this, (Boolean) obj);
            }
        });
        d0().C().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.main.index.k
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                IndexFragment.J0(IndexFragment.this, (Integer) obj);
            }
        });
        e0().w().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.main.index.i
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                IndexFragment.K0(IndexFragment.this, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H0(IndexFragment this$0, List it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        this$0.R0(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I0(IndexFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.e0().t().setValue(it);
        t0 t0Var = (t0) this$0.m0();
        FrameLayout mianIndexGameCenter = t0Var.f63141l;
        Intrinsics.checkNotNullExpressionValue(mianIndexGameCenter, "mianIndexGameCenter");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        mianIndexGameCenter.setVisibility(it.booleanValue() ? 0 : 8);
        ImageView icHomeCasino = t0Var.f63131b;
        Intrinsics.checkNotNullExpressionValue(icHomeCasino, "icHomeCasino");
        icHomeCasino.setVisibility(it.booleanValue() ? 0 : 8);
        it.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J0(IndexFragment this$0, Integer it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ImageView imageView = ((t0) this$0.m0()).f63134e;
        Intrinsics.checkNotNullExpressionValue(imageView, "requireBinding().mainIndexGameCenterVoucher");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        imageView.setVisibility(it.intValue() > 0 ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K0(IndexFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ImageView imageView = ((t0) this$0.m0()).f63137h;
        Intrinsics.checkNotNullExpressionValue(imageView, "requireBinding().mainIndexPkOn");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        imageView.setVisibility(it.booleanValue() ? 0 : 8);
    }

    private final void L0() {
        t0 t0Var = (t0) m0();
        Q0(new com.qennnsad.aknkaksd.presentation.module.main.index.b(this));
        t0Var.f63139j.setAdapter(E0());
        TextView mainIndexImgbtnSearch = t0Var.f63136g;
        Intrinsics.checkNotNullExpressionValue(mainIndexImgbtnSearch, "mainIndexImgbtnSearch");
        s1.U(mainIndexImgbtnSearch, 0L, new b(), 1, null);
        ImageView icHomeCasino = t0Var.f63131b;
        Intrinsics.checkNotNullExpressionValue(icHomeCasino, "icHomeCasino");
        s1.U(icHomeCasino, 0L, new c(), 1, null);
        t0Var.f63141l.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.main.index.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                IndexFragment.M0(IndexFragment.this, view);
            }
        });
        ImageView icHomeCup = t0Var.f63132c;
        Intrinsics.checkNotNullExpressionValue(icHomeCup, "icHomeCup");
        s1.U(icHomeCup, 0L, new d(), 1, null);
        FrameLayout mianIndexPk = t0Var.f63142m;
        Intrinsics.checkNotNullExpressionValue(mianIndexPk, "mianIndexPk");
        mianIndexPk.setVisibility(b0().H() ? 0 : 8);
        FrameLayout mianIndexPk2 = t0Var.f63142m;
        Intrinsics.checkNotNullExpressionValue(mianIndexPk2, "mianIndexPk");
        s1.U(mianIndexPk2, 0L, new e(), 1, null);
        ViewPager2 viewPager2 = t0Var.f63139j;
        List<com.qennnsad.aknkaksd.presentation.module.main.index.a> value = e0().s().getValue();
        viewPager2.setOffscreenPageLimit(value != null ? value.size() - 1 : 5);
        t0Var.f63139j.registerOnPageChangeCallback(new f(t0Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M0(IndexFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        com.qennnsad.aknkaksd.util.l.u(requireActivity, this$0.b0());
    }

    private final void R0(List<? extends com.qennnsad.aknkaksd.presentation.module.main.index.a> list) {
        t0 t0Var = (t0) m0();
        E0().submitList(list);
        t0Var.f63138i.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new g());
        new TabLayoutMediator(t0Var.f63138i, t0Var.f63139j, new TabLayoutMediator.TabConfigurationStrategy() { // from class: com.qennnsad.aknkaksd.presentation.module.main.index.m
            @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
            public final void onConfigureTab(TabLayout.Tab tab, int i4) {
                IndexFragment.S0(IndexFragment.this, tab, i4);
            }
        }).attach();
        t0Var.f63139j.setCurrentItem(e0().v(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S0(IndexFragment this$0, TabLayout.Tab tab, int i4) {
        TextView textView;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(tab, "tab");
        tab.setCustomView(c2.d(this$0.getLayoutInflater(), ((t0) this$0.m0()).f63138i, false).getRoot());
        View customView = tab.getCustomView();
        if (customView == null || (textView = (TextView) customView.findViewById(R.id.index_table_item_tv)) == null) {
            return;
        }
        textView.setText(this$0.E0().d().get(i4).b());
    }

    @m8.g
    public final com.qennnsad.aknkaksd.presentation.module.main.index.b E0() {
        com.qennnsad.aknkaksd.presentation.module.main.index.b bVar = this.f51660l;
        if (bVar != null) {
            return bVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adapter");
        return null;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: F0 */
    public IndexViewModel e0() {
        return (IndexViewModel) this.f51659k.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: N0 */
    public void onEvent(@m8.g IndexViewModel.Event e4) {
        List<com.qennnsad.aknkaksd.presentation.module.main.index.a> value;
        ViewPager2 viewPager2;
        Intrinsics.checkNotNullParameter(e4, "e");
        if (a.$EnumSwitchMapping$0[e4.ordinal()] != 1 || (value = e0().s().getValue()) == null) {
            return;
        }
        int i4 = 0;
        Iterator<com.qennnsad.aknkaksd.presentation.module.main.index.a> it = value.iterator();
        while (true) {
            if (!it.hasNext()) {
                i4 = -1;
                break;
            } else if (it.next() instanceof com.qennnsad.aknkaksd.presentation.module.main.index.g) {
                break;
            } else {
                i4++;
            }
        }
        t0 t0Var = (t0) a0();
        if (t0Var == null || (viewPager2 = t0Var.f63139j) == null) {
            return;
        }
        viewPager2.setCurrentItem(i4);
    }

    public final void O0(@m8.g TabLayout.Tab tab) {
        View findViewById;
        Intrinsics.checkNotNullParameter(tab, "tab");
        View customView = tab.getCustomView();
        TextView textView = customView != null ? (TextView) customView.findViewById(R.id.index_table_item_tv) : null;
        View customView2 = tab.getCustomView();
        ImageView imageView = customView2 != null ? (ImageView) customView2.findViewById(R.id.index_table_item_img) : null;
        if (tab.isSelected()) {
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            if (textView != null) {
                textView.setTextColor(ContextCompat.getColor(requireContext(), R.color.black));
            }
            if (textView != null) {
                textView.setTextSize(20.0f);
            }
            View customView3 = tab.getCustomView();
            findViewById = customView3 != null ? customView3.findViewById(R.id.index_indicator) : null;
            if (findViewById == null) {
                return;
            }
            findViewById.setVisibility(4);
            return;
        }
        if (textView != null) {
            textView.setTextColor(requireActivity().getResources().getColor(R.color.black));
        }
        if (textView != null) {
            textView.setTextSize(15.0f);
        }
        if (textView != null) {
            textView.setTypeface(null, 0);
        }
        View view = getView();
        findViewById = view != null ? view.findViewById(R.id.index_indicator) : null;
        if (findViewById == null) {
            return;
        }
        findViewById.setVisibility(4);
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: P0 */
    public t0 l0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        t0 d4 = t0.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    public final void Q0(@m8.g com.qennnsad.aknkaksd.presentation.module.main.index.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<set-?>");
        this.f51660l = bVar;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        L0();
        G0();
    }
}
