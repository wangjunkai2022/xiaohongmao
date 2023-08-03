package com.qennnsad.aknkaksd.presentation.module.auth;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioGroup;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.repository.dns.DnsResolver;
import com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel;
import com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType;
import com.qennnsad.aknkaksd.presentation.ui.widget.OneKeyClearEditText;
import com.qennnsad.aknkaksd.util.c1;
import com.qennnsad.aknkaksd.util.t0;
import e5.r3;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: TestConfigDialog.kt */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\"\u0010#J\f\u0010\u0004\u001a\u00020\u0003*\u00020\u0002H\u0002J&\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016R\u001b\u0010\u0012\u001a\u00020\r8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006$"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;", "Landroidx/fragment/app/DialogFragment;", "Le5/r3;", "Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;", "d0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;", "f", "Lkotlin/Lazy;", "e0", "()Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/util/t0;", "g", "Lcom/qennnsad/aknkaksd/util/t0;", "c0", "()Lcom/qennnsad/aknkaksd/util/t0;", "j0", "(Lcom/qennnsad/aknkaksd/util/t0;)V", "networkUtility", "Lg5/a;", "localDataManager", "Lg5/a;", "b0", "()Lg5/a;", "i0", "(Lg5/a;)V", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class TestConfigDialog extends g {
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final Lazy f51001f = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(LoginViewModel.class), new TestConfigDialog$special$$inlined$activityViewModels$default$1(this), new TestConfigDialog$special$$inlined$activityViewModels$default$2(null, this), new TestConfigDialog$special$$inlined$activityViewModels$default$3(this));
    @u7.a

    /* renamed from: g  reason: collision with root package name */
    public t0 f51002g;
    @u7.a

    /* renamed from: h  reason: collision with root package name */
    public g5.a f51003h;

    /* compiled from: TestConfigDialog.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[DnsResolver.ForcedServerType.values().length];
            iArr[DnsResolver.ForcedServerType.NONE.ordinal()] = 1;
            iArr[DnsResolver.ForcedServerType.TEST.ordinal()] = 2;
            iArr[DnsResolver.ForcedServerType.IN_CHINA.ordinal()] = 3;
            iArr[DnsResolver.ForcedServerType.OUT_OF_CHINA.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[CaptchaType.values().length];
            iArr2[CaptchaType.Re.ordinal()] = 1;
            iArr2[CaptchaType.H.ordinal()] = 2;
            iArr2[CaptchaType.Graph.ordinal()] = 3;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TestConfigDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;", m.c.f86932f, "", "a", "(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function1<DnsResolver.ForcedDnsResolutionHost, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<DnsResolver.ForcedDnsResolutionHost> f51008a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Ref.ObjectRef<DnsResolver.ForcedDnsResolutionHost> objectRef) {
            super(1);
            this.f51008a = objectRef;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(@m8.g DnsResolver.ForcedDnsResolutionHost host) {
            Intrinsics.checkNotNullParameter(host, "host");
            this.f51008a.element = host;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(DnsResolver.ForcedDnsResolutionHost forcedDnsResolutionHost) {
            a(forcedDnsResolutionHost);
            return Unit.INSTANCE;
        }
    }

    private final CaptchaType d0(r3 r3Var) {
        int checkedRadioButtonId = r3Var.f63011d.getCheckedRadioButtonId();
        if (checkedRadioButtonId != R.id.graphCaptcha) {
            if (checkedRadioButtonId != R.id.hCaptcha) {
                if (checkedRadioButtonId != R.id.reCaptcha) {
                    return CaptchaType.None;
                }
                return CaptchaType.Re;
            }
            return CaptchaType.H;
        }
        return CaptchaType.Graph;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f0(TestConfigDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g0(r3 this_apply, TestConfigDialog this$0, Ref.ObjectRef forcedDnsResolutionHost, RadioGroup radioGroup, int i4) {
        OneKeyClearEditText oneKeyClearEditText;
        int i10;
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(forcedDnsResolutionHost, "$forcedDnsResolutionHost");
        if (i4 == R.id.cb_test_server) {
            oneKeyClearEditText = this_apply.f63016i;
            i10 = 0;
        } else {
            oneKeyClearEditText = this_apply.f63016i;
            i10 = 8;
        }
        oneKeyClearEditText.setVisibility(i10);
        if (i4 == R.id.cb_china_server && this_apply.f63019l.getVisibility() == 0) {
            t0 c02 = this$0.c0();
            Context requireContext = this$0.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            c02.v(requireContext, new b(forcedDnsResolutionHost));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(r3 this_apply, TestConfigDialog this$0, Ref.ObjectRef forcedDnsResolutionHost, View view) {
        DnsResolver.ForcedServerType forcedServerType;
        CharSequence trim;
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(forcedDnsResolutionHost, "$forcedDnsResolutionHost");
        int checkedRadioButtonId = this_apply.f63022o.getCheckedRadioButtonId();
        if (checkedRadioButtonId == R.id.cb_china_server) {
            forcedServerType = DnsResolver.ForcedServerType.IN_CHINA;
        } else if (checkedRadioButtonId == R.id.cb_out_of_china_server) {
            forcedServerType = DnsResolver.ForcedServerType.OUT_OF_CHINA;
        } else if (checkedRadioButtonId != R.id.cb_test_server) {
            forcedServerType = DnsResolver.ForcedServerType.NONE;
        } else {
            forcedServerType = DnsResolver.ForcedServerType.TEST;
        }
        trim = StringsKt__StringsKt.trim((CharSequence) String.valueOf(this_apply.f63016i.getText()));
        this$0.e0().P(forcedServerType, (DnsResolver.ForcedDnsResolutionHost) forcedDnsResolutionHost.element, trim.toString(), this$0.d0(this_apply));
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        c1.d(requireActivity);
    }

    @m8.g
    public final g5.a b0() {
        g5.a aVar = this.f51003h;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("localDataManager");
        return null;
    }

    @m8.g
    public final t0 c0() {
        t0 t0Var = this.f51002g;
        if (t0Var != null) {
            return t0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("networkUtility");
        return null;
    }

    @m8.g
    public final LoginViewModel e0() {
        return (LoginViewModel) this.f51001f.getValue();
    }

    public final void i0(@m8.g g5.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f51003h = aVar;
    }

    public final void j0(@m8.g t0 t0Var) {
        Intrinsics.checkNotNullParameter(t0Var, "<set-?>");
        this.f51002g = t0Var;
    }

    /* JADX WARN: Type inference failed for: r8v4, types: [T, com.qennnsad.aknkaksd.data.repository.dns.DnsResolver$ForcedDnsResolutionHost] */
    @Override // androidx.fragment.app.Fragment
    @m8.h
    public View onCreateView(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        final r3 d4 = r3.d(getLayoutInflater(), viewGroup, false);
        d4.f63009b.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestConfigDialog.f0(TestConfigDialog.this, view);
            }
        });
        d4.f63016i.setText(b0().B());
        OneKeyClearEditText etTestServerDomain = d4.f63016i;
        Intrinsics.checkNotNullExpressionValue(etTestServerDomain, "etTestServerDomain");
        etTestServerDomain.setVisibility(8);
        int i4 = a.$EnumSwitchMapping$0[b0().i().ordinal()];
        if (i4 == 1) {
            d4.f63022o.check(R.id.cb_force_none);
        } else if (i4 == 2) {
            d4.f63022o.check(R.id.cb_test_server);
            d4.f63016i.setVisibility(0);
        } else if (i4 == 3) {
            d4.f63022o.check(R.id.cb_china_server);
        } else if (i4 == 4) {
            d4.f63022o.check(R.id.cb_out_of_china_server);
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = DnsResolver.ForcedDnsResolutionHost.PROD;
        d4.f63022o.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.k
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i10) {
                TestConfigDialog.g0(r3.this, this, objectRef, radioGroup, i10);
            }
        });
        RadioGroup radioGroup = d4.f63011d;
        int i10 = a.$EnumSwitchMapping$1[b0().A().ordinal()];
        radioGroup.check(i10 != 1 ? i10 != 2 ? i10 != 3 ? R.id.none : R.id.graphCaptcha : R.id.hCaptcha : R.id.reCaptcha);
        d4.f63010c.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestConfigDialog.h0(r3.this, this, objectRef, view);
            }
        });
        return d4.getRoot();
    }
}
