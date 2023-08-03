package com.qennnsad.aknkaksd.presentation.ui.main.setting;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.navigation.fragment.FragmentKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.user.SettingsBean;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.presentation.module.auth.AuthActivity;
import com.qennnsad.aknkaksd.presentation.ui.main.setting.v;
import com.qennnsad.aknkaksd.util.s1;
import com.qennnsad.aknkaksd.util.x0;
import e5.u1;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import timber.log.Timber;

/* compiled from: SettingsFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b \u0010!J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u001a\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016J\u001a\u0010\u000f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0003H\u0014R\u001b\u0010\u0017\u001a\u00020\u00128VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006\""}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/u1;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/v;", "", "B0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "E0", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "e", "D0", "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;", "k", "Lkotlin/Lazy;", "A0", "()Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/util/q;", "l", "Lcom/qennnsad/aknkaksd/util/q;", "z0", "()Lcom/qennnsad/aknkaksd/util/q;", "F0", "(Lcom/qennnsad/aknkaksd/util/q;)V", "debugUtil", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class SettingsFragment extends m<u1, v> {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f53173k;
    @u7.a

    /* renamed from: l  reason: collision with root package name */
    public com.qennnsad.aknkaksd.util.q f53174l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SettingsFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function0<Unit> {
        a() {
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
            SettingsFragment.this.c0().navigate(R.id.toBlacklist);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SettingsFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ u1 f53183a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SettingsFragment f53184b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(u1 u1Var, SettingsFragment settingsFragment) {
            super(0);
            this.f53183a = u1Var;
            this.f53184b = settingsFragment;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.f53183a.f63185h.setVisibility(8);
            this.f53183a.f63181d.setVisibility(0);
            try {
                com.facebook.drawee.backends.pipeline.d.b().b();
                com.qennnsad.aknkaksd.util.n.a(this.f53184b.requireContext());
            } catch (Exception e4) {
                Timber.f93860a.x("Error while clearing cache!", e4);
            }
            TextView textView = this.f53183a.f63185h;
            textView.setText(R.string.setting_cache_empty);
            textView.setVisibility(0);
            this.f53183a.f63181d.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SettingsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlin/Pair;", "", "", "it", "", "a", "(Lkotlin/Pair;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function1<Pair<? extends String, ? extends Boolean>, Unit> {
        c() {
            super(1);
        }

        public final void a(@m8.g Pair<String, Boolean> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            SettingsFragment.this.e0().t(it.getFirst(), it.getSecond().booleanValue());
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Pair<? extends String, ? extends Boolean> pair) {
            a(pair);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SettingsFragment.kt */
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
            SettingsFragment.this.c0().navigate(R.id.toModifyPassword);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SettingsFragment.kt */
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
            SettingsFragment.this.e0().s();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SettingsFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class f extends Lambda implements Function0<Unit> {
        f() {
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
            FragmentActivity requireActivity = SettingsFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.qennnsad.aknkaksd.util.l.d0(requireActivity, SettingsFragment.this.b0());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SettingsFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class g extends Lambda implements Function0<Unit> {
        g() {
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
            FragmentKt.findNavController(SettingsFragment.this).navigateUp();
        }
    }

    public SettingsFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new SettingsFragment$special$$inlined$viewModels$default$2(new SettingsFragment$special$$inlined$viewModels$default$1(this)));
        this.f53173k = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(SettingsViewModel.class), new SettingsFragment$special$$inlined$viewModels$default$3(lazy), new SettingsFragment$special$$inlined$viewModels$default$4(null, lazy), new SettingsFragment$special$$inlined$viewModels$default$5(this, lazy));
    }

    private final void B0() {
        String string;
        List<SettingsBean> emptyList;
        u1 u1Var = (u1) m0();
        RelativeLayout settingRlBlackList = u1Var.f63182e;
        Intrinsics.checkNotNullExpressionValue(settingRlBlackList, "settingRlBlackList");
        s1.U(settingRlBlackList, 0L, new a(), 1, null);
        TextView textView = u1Var.f63185h;
        try {
            string = com.qennnsad.aknkaksd.util.n.f(requireContext());
        } catch (Exception unused) {
            string = getString(R.string.setting_cache_empty);
        }
        textView.setText(string);
        RelativeLayout settingRlClearCache = u1Var.f63183f;
        Intrinsics.checkNotNullExpressionValue(settingRlClearCache, "settingRlClearCache");
        s1.U(settingRlClearCache, 0L, new b(u1Var, this), 1, null);
        SwitchCompat switchCompat = u1Var.f63188k;
        UserBean value = d0().A().getValue();
        switchCompat.setChecked(value != null && value.is_subscribe_notify() == 1);
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.setting.w
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                SettingsFragment.C0(SettingsFragment.this, compoundButton, z9);
            }
        });
        RecyclerView recyclerView = u1Var.f63180c;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        t tVar = new t();
        UserBean value2 = d0().A().getValue();
        if (value2 == null || (emptyList = value2.getSettings()) == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        tVar.submitList(emptyList);
        tVar.g(new c());
        recyclerView.setAdapter(tVar);
        RelativeLayout settingRlModifyPasswd = u1Var.f63184g;
        Intrinsics.checkNotNullExpressionValue(settingRlModifyPasswd, "settingRlModifyPasswd");
        s1.U(settingRlModifyPasswd, 0L, new d(), 1, null);
        TextView settingTvLogout = u1Var.f63186i;
        Intrinsics.checkNotNullExpressionValue(settingTvLogout, "settingTvLogout");
        s1.U(settingTvLogout, 0L, new e(), 1, null);
        TextView textView2 = u1Var.f63187j;
        textView2.setText(getString(R.string.setting_version, x0.f(requireContext(), Boolean.valueOf(b0().J()))));
        com.qennnsad.aknkaksd.util.q z02 = z0();
        Intrinsics.checkNotNullExpressionValue(textView2, "this");
        com.qennnsad.aknkaksd.util.q.e(z02, textView2, 0, null, 6, null);
        TextView tvCustomerSupport = u1Var.f63190m;
        Intrinsics.checkNotNullExpressionValue(tvCustomerSupport, "tvCustomerSupport");
        s1.U(tvCustomerSupport, 0L, new f(), 1, null);
        ImageButton imgbtnToolbarBack = u1Var.f63179b;
        Intrinsics.checkNotNullExpressionValue(imgbtnToolbarBack, "imgbtnToolbarBack");
        s1.U(imgbtnToolbarBack, 0L, new g(), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(SettingsFragment this$0, CompoundButton compoundButton, boolean z9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.e0().u(z9);
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: A0 */
    public SettingsViewModel e0() {
        return (SettingsViewModel) this.f53173k.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: D0 */
    public void onEvent(@m8.g v e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
        if (Intrinsics.areEqual(e4, v.a.f53241a)) {
            AuthActivity.a aVar = AuthActivity.f50991k;
            FragmentActivity requireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            UserBean C = b0().C();
            boolean z9 = true;
            AuthActivity.a.d(aVar, requireActivity, null, (C == null || !C.isGuest()) ? false : false, 1, null);
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: E0 */
    public u1 l0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        u1 d4 = u1.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    public final void F0(@m8.g com.qennnsad.aknkaksd.util.q qVar) {
        Intrinsics.checkNotNullParameter(qVar, "<set-?>");
        this.f53174l = qVar;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        B0();
    }

    @m8.g
    public final com.qennnsad.aknkaksd.util.q z0() {
        com.qennnsad.aknkaksd.util.q qVar = this.f53174l;
        if (qVar != null) {
            return qVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("debugUtil");
        return null;
    }
}
