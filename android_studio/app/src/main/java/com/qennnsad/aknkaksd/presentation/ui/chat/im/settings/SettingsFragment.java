package com.qennnsad.aknkaksd.presentation.ui.chat.im.settings;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.Observer;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.shared.entities.auth.UserInfo;
import com.im.freechat.ui.settings.SettingsViewModel;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;

/* compiled from: SettingsFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b'\u0010(J\b\u0010\u0003\u001a\u00020\u0002H\u0002J&\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016J\u001a\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016R\u001b\u0010\u0013\u001a\u00020\u000e8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\u00198\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001d\u0010\u001bR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010$\u001a\u00020\u001f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b#\u0010!R\u0016\u0010&\u001a\u00020\u001f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b%\u0010!¨\u0006)"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;", "Landroidx/fragment/app/Fragment;", "", "j0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsViewModelProvider;", "f", "Lkotlin/Lazy;", "h0", "()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsViewModelProvider;", "provider", "Lcom/im/freechat/ui/settings/SettingsViewModel;", "g", "i0", "()Lcom/im/freechat/ui/settings/SettingsViewModel;", "viewModel", "Landroid/widget/TextView;", "h", "Landroid/widget/TextView;", "tvDataUsage", ContextChain.TAG_INFRA, "tvClearAll", "Landroid/widget/CheckedTextView;", "j", "Landroid/widget/CheckedTextView;", "checkBoxShowLastOnline", "k", "checkBoxNotifications", "l", "checkBoxSounds", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class SettingsFragment extends com.qennnsad.aknkaksd.presentation.ui.chat.im.settings.b {
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final Lazy f52704f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final Lazy f52705g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f52706h;

    /* renamed from: i  reason: collision with root package name */
    private TextView f52707i;

    /* renamed from: j  reason: collision with root package name */
    private CheckedTextView f52708j;

    /* renamed from: k  reason: collision with root package name */
    private CheckedTextView f52709k;

    /* renamed from: l  reason: collision with root package name */
    private CheckedTextView f52710l;

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
            SettingsFragment.this.i0().t();
        }
    }

    /* compiled from: SettingsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/im/freechat/ui/settings/SettingsViewModel;", "a", "()Lcom/im/freechat/ui/settings/SettingsViewModel;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class b extends Lambda implements Function0<SettingsViewModel> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final SettingsViewModel invoke() {
            return SettingsFragment.this.h0().b();
        }
    }

    public SettingsFragment() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new SettingsFragment$special$$inlined$viewModels$default$2(new SettingsFragment$special$$inlined$viewModels$default$1(this)));
        this.f52704f = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(SettingsViewModelProvider.class), new SettingsFragment$special$$inlined$viewModels$default$3(lazy), new SettingsFragment$special$$inlined$viewModels$default$4(null, lazy), new SettingsFragment$special$$inlined$viewModels$default$5(this, lazy));
        lazy2 = LazyKt__LazyJVMKt.lazy(new b());
        this.f52705g = lazy2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SettingsViewModel i0() {
        return (SettingsViewModel) this.f52705g.getValue();
    }

    private final void j0() {
        TextView textView = this.f52706h;
        CheckedTextView checkedTextView = null;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvDataUsage");
            textView = null;
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.settings.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.k0(SettingsFragment.this, view);
            }
        });
        TextView textView2 = this.f52707i;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvClearAll");
            textView2 = null;
        }
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.settings.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.l0(SettingsFragment.this, view);
            }
        });
        CheckedTextView checkedTextView2 = this.f52709k;
        if (checkedTextView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("checkBoxNotifications");
            checkedTextView2 = null;
        }
        checkedTextView2.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.settings.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.m0(SettingsFragment.this, view);
            }
        });
        CheckedTextView checkedTextView3 = this.f52710l;
        if (checkedTextView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("checkBoxSounds");
            checkedTextView3 = null;
        }
        checkedTextView3.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.settings.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.n0(SettingsFragment.this, view);
            }
        });
        CheckedTextView checkedTextView4 = this.f52708j;
        if (checkedTextView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("checkBoxShowLastOnline");
        } else {
            checkedTextView = checkedTextView4;
        }
        checkedTextView.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.settings.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.o0(SettingsFragment.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k0(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.startActivity(new Intent(this$0.requireContext(), DataUsageActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        com.im.freechat.extend.f.g(requireActivity, R.string.settings_clear_all, R.string.settings_clear_all_confirm, new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m0(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SettingsViewModel i02 = this$0.i0();
        CheckedTextView checkedTextView = this$0.f52709k;
        if (checkedTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("checkBoxNotifications");
            checkedTextView = null;
        }
        i02.B(!checkedTextView.isChecked());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n0(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SettingsViewModel i02 = this$0.i0();
        CheckedTextView checkedTextView = this$0.f52710l;
        if (checkedTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("checkBoxSounds");
            checkedTextView = null;
        }
        i02.D(!checkedTextView.isChecked());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o0(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SettingsViewModel i02 = this$0.i0();
        CheckedTextView checkedTextView = this$0.f52708j;
        if (checkedTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("checkBoxShowLastOnline");
            checkedTextView = null;
        }
        i02.C(!checkedTextView.isChecked());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0(SettingsFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        CheckedTextView checkedTextView = this$0.f52709k;
        if (checkedTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("checkBoxNotifications");
            checkedTextView = null;
        }
        Intrinsics.checkNotNullExpressionValue(it, "it");
        checkedTextView.setChecked(it.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(SettingsFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        CheckedTextView checkedTextView = this$0.f52710l;
        if (checkedTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("checkBoxSounds");
            checkedTextView = null;
        }
        Intrinsics.checkNotNullExpressionValue(it, "it");
        checkedTextView.setChecked(it.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(SettingsFragment this$0, UserInfo userInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        CheckedTextView checkedTextView = this$0.f52708j;
        if (checkedTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("checkBoxShowLastOnline");
            checkedTextView = null;
        }
        boolean z9 = false;
        if (userInfo != null && userInfo.getLastOnline() == 1) {
            z9 = true;
        }
        checkedTextView.setChecked(!z9);
    }

    @m8.g
    public final SettingsViewModelProvider h0() {
        return (SettingsViewModelProvider) this.f52704f.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    @m8.h
    public View onCreateView(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View inflate = inflater.inflate(R.layout.fragment_settings, viewGroup, false);
        View findViewById = inflate.findViewById(R.id.cb_show_last_online);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(R.id.cb_show_last_online)");
        this.f52708j = (CheckedTextView) findViewById;
        View findViewById2 = inflate.findViewById(R.id.cb_notifications);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(R.id.cb_notifications)");
        this.f52709k = (CheckedTextView) findViewById2;
        View findViewById3 = inflate.findViewById(R.id.cb_sounds);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(R.id.cb_sounds)");
        this.f52710l = (CheckedTextView) findViewById3;
        View findViewById4 = inflate.findViewById(R.id.tv_data_usage);
        Intrinsics.checkNotNullExpressionValue(findViewById4, "findViewById(R.id.tv_data_usage)");
        this.f52706h = (TextView) findViewById4;
        View findViewById5 = inflate.findViewById(R.id.tv_clear_all);
        Intrinsics.checkNotNullExpressionValue(findViewById5, "findViewById(R.id.tv_clear_all)");
        this.f52707i = (TextView) findViewById5;
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        j0();
        i0().y();
        i0().v().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.settings.j
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                SettingsFragment.p0(SettingsFragment.this, (Boolean) obj);
            }
        });
        i0().w().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.settings.i
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                SettingsFragment.q0(SettingsFragment.this, (Boolean) obj);
            }
        });
        i0().x().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.settings.h
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                SettingsFragment.r0(SettingsFragment.this, (UserInfo) obj);
            }
        });
    }
}
