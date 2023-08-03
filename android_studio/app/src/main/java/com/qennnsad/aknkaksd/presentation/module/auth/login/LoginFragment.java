package com.qennnsad.aknkaksd.presentation.module.auth.login;

import android.content.Context;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.navigation.NavController;
import androidx.navigation.NavDirections;
import androidx.navigation.fragment.FragmentKt;
import com.didi.live.spring.R;
import com.google.android.exoplayer2.upstream.w;
import com.hbb20.CountryCodePicker;
import com.qennnsad.aknkaksd.BaseBeautyApplication;
import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.data.bean.GuestConfig;
import com.qennnsad.aknkaksd.presentation.module.auth.TestConfigDialog;
import com.qennnsad.aknkaksd.presentation.module.auth.captcha.CaptchaReason;
import com.qennnsad.aknkaksd.presentation.module.auth.h;
import com.qennnsad.aknkaksd.presentation.module.auth.login.LoginFragment;
import com.qennnsad.aknkaksd.presentation.module.auth.login.b;
import com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewActivity;
import com.qennnsad.aknkaksd.presentation.ui.MainContainerActivity;
import com.qennnsad.aknkaksd.presentation.ui.widget.OneKeyClearEditText;
import com.qennnsad.aknkaksd.util.t0;
import e5.j1;
import io.sentry.clientreport.e;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: LoginFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\bO\u0010PJ\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0005H\u0002J\b\u0010\t\u001a\u00020\u0005H\u0002J\b\u0010\n\u001a\u00020\u0005H\u0002J\u0018\u0010\u000f\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\b\u0010\u0010\u001a\u00020\u0005H\u0002J\b\u0010\u0011\u001a\u00020\u0005H\u0002J\u001a\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016J\u001a\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016J\u0010\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u0003H\u0014J\u0012\u0010\u001f\u001a\u00020\u00052\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\rJ\u0018\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\"\u001a\u00020\u0005H\u0016R\u001b\u0010(\u001a\u00020#8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\"\u00100\u001a\u00020)8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R$\u00108\u001a\u0004\u0018\u0001018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R$\u0010@\u001a\u0004\u0018\u0001098\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\u001b\u0010D\u001a\u00020A8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010%\u001a\u0004\bB\u0010CR\u0014\u0010G\u001a\u00020\r8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bE\u0010FR\u0014\u0010I\u001a\u00020\r8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bH\u0010FR\u001c\u0010L\u001a\n J*\u0004\u0018\u00010\r0\r8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bK\u0010FR\u0014\u0010N\u001a\u00020\r8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bM\u0010F¨\u0006Q"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/j1;", "Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b;", "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;", "", "T0", "U0", "f1", "j1", "R0", "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;", e.b.f83079a, "", "image", "n1", "o1", "h1", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "i1", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "e", "g1", "captchaToken", "d1", "token", "B", "o", "Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;", "k", "Lkotlin/Lazy;", "Q0", "()Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/util/t0;", "l", "Lcom/qennnsad/aknkaksd/util/t0;", "L0", "()Lcom/qennnsad/aknkaksd/util/t0;", "l1", "(Lcom/qennnsad/aknkaksd/util/t0;)V", "networkUtility", "Landroid/os/CountDownTimer;", "m", "Landroid/os/CountDownTimer;", "P0", "()Landroid/os/CountDownTimer;", "m1", "(Landroid/os/CountDownTimer;)V", "smsTimer", "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;", "n", "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;", "J0", "()Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;", "k1", "(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;)V", "graphCaptchaDialog", "", "K0", "()Z", "keepSession", "N0", "()Ljava/lang/String;", "phone", "M0", "password", "kotlin.jvm.PlatformType", "I0", "countryCode", "O0", "smsCode", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class LoginFragment extends com.qennnsad.aknkaksd.presentation.module.auth.login.a<j1, com.qennnsad.aknkaksd.presentation.module.auth.login.b> implements com.qennnsad.aknkaksd.presentation.module.auth.captcha.a {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f51111k;
    @u7.a

    /* renamed from: l  reason: collision with root package name */
    public t0 f51112l;
    @m8.h

    /* renamed from: m  reason: collision with root package name */
    private CountDownTimer f51113m;
    @m8.h

    /* renamed from: n  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.module.auth.captcha.d f51114n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private final Lazy f51115o;

    /* compiled from: LoginFragment.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CaptchaReason.values().length];
            iArr[CaptchaReason.LOGIN.ordinal()] = 1;
            iArr[CaptchaReason.SMS.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* compiled from: TextView.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J*\u0010\f\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\bH\u0016J*\u0010\u000e\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0016¨\u0006\u000f¸\u0006\u0000"}, d2 = {"androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1", "Landroid/text/TextWatcher;", "Landroid/text/Editable;", "s", "", "afterTextChanged", "", "text", "", com.google.android.exoplayer2.text.ttml.d.f25725o0, "count", com.google.android.exoplayer2.text.ttml.d.f25712d0, "beforeTextChanged", com.google.android.exoplayer2.text.ttml.d.f25711c0, "onTextChanged", "core-ktx_release"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b implements TextWatcher {
        public b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@m8.h Editable editable) {
            LoginFragment.this.j1();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(@m8.h CharSequence charSequence, int i4, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(@m8.h CharSequence charSequence, int i4, int i10, int i11) {
        }
    }

    /* compiled from: LoginFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Boolean;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class c extends Lambda implements Function0<Boolean> {
        c() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final Boolean invoke() {
            Bundle extras = LoginFragment.this.requireActivity().getIntent().getExtras();
            boolean z9 = true;
            return Boolean.valueOf((extras == null || !extras.getBoolean(com.qennnsad.aknkaksd.presentation.module.auth.a.f51011c)) ? false : false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoginFragment.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function1<String, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.qennnsad.aknkaksd.presentation.module.auth.login.b f51126b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(com.qennnsad.aknkaksd.presentation.module.auth.login.b bVar) {
            super(1);
            this.f51126b = bVar;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            LoginFragment.this.B(it, ((b.d) this.f51126b).d());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoginFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", "<anonymous parameter 0>", "", "<anonymous parameter 1>", "", "a", "(ILjava/lang/String;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function2<Integer, String, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final e f51127a = new e();

        e() {
            super(2);
        }

        public final void a(int i4, @m8.h String str) {
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str) {
            a(num.intValue(), str);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoginFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class f extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CaptchaReason f51129b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(CaptchaReason captchaReason) {
            super(0);
            this.f51129b = captchaReason;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            LoginFragment.this.e0().N(this.f51129b);
        }
    }

    /* compiled from: LoginFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016¨\u0006\u0007"}, d2 = {"com/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$g", "Landroid/os/CountDownTimer;", "", "millisUntilFinished", "", "onTick", "onFinish", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class g extends CountDownTimer {
        g() {
            super(w.f27407d, 1000L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(LoginFragment this$0) {
            Button button;
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            j1 G0 = LoginFragment.G0(this$0);
            if (G0 == null || (button = G0.f62577d) == null) {
                return;
            }
            button.setText(R.string.login_captcha_get);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(LoginFragment this$0, long j4) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            j1 G0 = LoginFragment.G0(this$0);
            Button button = G0 != null ? G0.f62577d : null;
            if (button == null) {
                return;
            }
            button.setText(this$0.getString(R.string.login_captcha_countdown, Long.valueOf(j4 / 1000)));
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            Button button;
            j1 G0 = LoginFragment.G0(LoginFragment.this);
            if (G0 != null && (button = G0.f62577d) != null) {
                final LoginFragment loginFragment = LoginFragment.this;
                button.post(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.login.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        LoginFragment.g.c(LoginFragment.this);
                    }
                });
            }
            LoginFragment.this.m1(null);
        }

        @Override // android.os.CountDownTimer
        public void onTick(final long j4) {
            Button button;
            j1 G0 = LoginFragment.G0(LoginFragment.this);
            if (G0 == null || (button = G0.f62577d) == null) {
                return;
            }
            final LoginFragment loginFragment = LoginFragment.this;
            button.post(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.login.m
                @Override // java.lang.Runnable
                public final void run() {
                    LoginFragment.g.d(LoginFragment.this, j4);
                }
            });
        }
    }

    public LoginFragment() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new LoginFragment$special$$inlined$viewModels$default$2(new LoginFragment$special$$inlined$viewModels$default$1(this)));
        this.f51111k = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(LoginViewModel.class), new LoginFragment$special$$inlined$viewModels$default$3(lazy), new LoginFragment$special$$inlined$viewModels$default$4(null, lazy), new LoginFragment$special$$inlined$viewModels$default$5(this, lazy));
        lazy2 = LazyKt__LazyJVMKt.lazy(new c());
        this.f51115o = lazy2;
    }

    public static final /* synthetic */ j1 G0(LoginFragment loginFragment) {
        return (j1) loginFragment.a0();
    }

    private final String I0() {
        return ((j1) m0()).f62578e.getSelectedCountryCodeWithPlus();
    }

    private final boolean K0() {
        return ((Boolean) this.f51115o.getValue()).booleanValue();
    }

    private final String M0() {
        CharSequence trim;
        trim = StringsKt__StringsKt.trim((CharSequence) String.valueOf(((j1) m0()).f62580g.getText()));
        return trim.toString();
    }

    private final String N0() {
        CharSequence trim;
        String replace$default;
        trim = StringsKt__StringsKt.trim((CharSequence) String.valueOf(((j1) m0()).f62582i.getText()));
        replace$default = StringsKt__StringsJVMKt.replace$default(trim.toString(), " ", "", false, 4, (Object) null);
        return replace$default;
    }

    private final String O0() {
        CharSequence trim;
        trim = StringsKt__StringsKt.trim((CharSequence) String.valueOf(((j1) m0()).f62581h.getText()));
        return trim.toString();
    }

    private final void R0() {
        ImageButton imageButton = ((j1) m0()).f62576c;
        Intrinsics.checkNotNullExpressionValue(imageButton, "requireBinding().btnConfigShow");
        imageButton.setVisibility(8);
        ((j1) m0()).f62576c.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.login.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginFragment.S0(LoginFragment.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S0(LoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        new TestConfigDialog().show(this$0.getChildFragmentManager(), "config");
    }

    private final void T0() {
        if (K0()) {
            return;
        }
        BaseBeautyApplication.Companion.b().clearXMagicCache();
        e0().B();
    }

    private final void U0() {
        GuestConfig guest;
        Integer status;
        j1 j1Var = (j1) m0();
        j1Var.f62578e.setDefaultCountryUsingNameCode(com.qennnsad.aknkaksd.presentation.module.auth.a.f51009a);
        j1Var.f62578e.O();
        OneKeyClearEditText oneKeyClearEditText = j1Var.f62582i;
        Intrinsics.checkNotNullExpressionValue(oneKeyClearEditText, "");
        oneKeyClearEditText.addTextChangedListener(new b());
        h.a F = e0().F();
        if (F != null) {
            j1Var.f62582i.setText(F.e());
            j1Var.f62580g.setText(F.f());
        }
        j1Var.f62578e.setOnCountryChangeListener(new CountryCodePicker.h() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.login.k
            @Override // com.hbb20.CountryCodePicker.h
            public final void a() {
                LoginFragment.X0(LoginFragment.this);
            }
        });
        j1Var.f62586m.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.login.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginFragment.Y0(LoginFragment.this, view);
            }
        });
        TextView guestLogin = j1Var.f62583j;
        Intrinsics.checkNotNullExpressionValue(guestLogin, "guestLogin");
        ConfigBean e4 = b0().e();
        boolean z9 = true;
        guestLogin.setVisibility((e4 == null || (guest = e4.getGuest()) == null || (status = guest.getStatus()) == null || status.intValue() != 1) ? false : false ? 0 : 8);
        j1Var.f62583j.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.login.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginFragment.Z0(LoginFragment.this, view);
            }
        });
        ImageButton imageButton = j1Var.f62575b;
        Intrinsics.checkNotNullExpressionValue(imageButton, "");
        imageButton.setVisibility(K0() ? 0 : 8);
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.login.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginFragment.a1(LoginFragment.this, view);
            }
        });
        j1Var.f62588o.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.login.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginFragment.b1(LoginFragment.this, view);
            }
        });
        j1Var.f62589p.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.login.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginFragment.c1(LoginFragment.this, view);
            }
        });
        j1Var.f62579f.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.login.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginFragment.V0(LoginFragment.this, view);
            }
        });
        j1Var.f62577d.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.login.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginFragment.W0(LoginFragment.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V0(LoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SimpleWebViewActivity.a aVar = SimpleWebViewActivity.f52046l;
        Context requireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        String contactUs = this$0.b0().g().getContactUs();
        Intrinsics.checkNotNullExpressionValue(contactUs, "localDataManager.getDns().contactUs");
        SimpleWebViewActivity.a.d(aVar, requireContext, contactUs, false, false, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W0(LoginFragment this$0, View view) {
        boolean isBlank;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.f51113m == null) {
            isBlank = StringsKt__StringsJVMKt.isBlank(this$0.N0());
            if (!isBlank) {
                LoginViewModel e02 = this$0.e0();
                String N0 = this$0.N0();
                String countryCode = this$0.I0();
                Intrinsics.checkNotNullExpressionValue(countryCode, "countryCode");
                e02.M(N0, countryCode);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X0(LoginFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.j1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y0(LoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LoginViewModel e02 = this$0.e0();
        String N0 = this$0.N0();
        String countryCode = this$0.I0();
        Intrinsics.checkNotNullExpressionValue(countryCode, "countryCode");
        e02.L(N0, countryCode, this$0.M0(), this$0.O0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z0(LoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!this$0.K0()) {
            this$0.e0().K();
        } else {
            this$0.requireActivity().finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a1(LoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.requireActivity().finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b1(LoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NavController findNavController = FragmentKt.findNavController(this$0);
        NavDirections b10 = n.b();
        Intrinsics.checkNotNullExpressionValue(b10, "actionLoginFragmentToSignUpFragment()");
        findNavController.navigate(b10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c1(LoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f1();
    }

    public static /* synthetic */ void e1(LoginFragment loginFragment, String str, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = null;
        }
        loginFragment.d1(str);
    }

    private final void f1() {
        NavController findNavController = FragmentKt.findNavController(this);
        NavDirections a10 = n.a();
        Intrinsics.checkNotNullExpressionValue(a10, "actionLoginFragmentToFindPassFragment()");
        findNavController.navigate(a10);
    }

    private final void h1() {
        CountDownTimer countDownTimer = this.f51113m;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.f51113m;
        if (countDownTimer2 != null) {
            countDownTimer2.onFinish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j1() {
        e0().O();
        LinearLayout linearLayout = ((j1) m0()).f62585l;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "requireBinding().llSmsInput");
        linearLayout.setVisibility(8);
        CountDownTimer countDownTimer = this.f51113m;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.f51113m;
        if (countDownTimer2 != null) {
            countDownTimer2.onFinish();
        }
    }

    private final void n1(CaptchaReason captchaReason, String str) {
        com.qennnsad.aknkaksd.presentation.module.auth.captcha.d dVar = this.f51114n;
        boolean z9 = true;
        if ((dVar == null || !dVar.isVisible()) ? false : false) {
            com.qennnsad.aknkaksd.presentation.module.auth.captcha.d dVar2 = this.f51114n;
            if (dVar2 != null) {
                dVar2.a0(str);
                return;
            }
            return;
        }
        com.qennnsad.aknkaksd.presentation.module.auth.captcha.d dVar3 = this.f51114n;
        if (dVar3 != null) {
            dVar3.dismiss();
        }
        com.qennnsad.aknkaksd.presentation.module.auth.captcha.d dVar4 = new com.qennnsad.aknkaksd.presentation.module.auth.captcha.d(captchaReason, str, new f(captchaReason), this);
        this.f51114n = dVar4;
        Intrinsics.checkNotNull(dVar4);
        dVar4.show(getChildFragmentManager(), "graph");
    }

    private final void o1() {
        this.f51113m = new g().start();
    }

    @Override // com.qennnsad.aknkaksd.presentation.module.auth.captcha.a
    public void B(@m8.g String token, @m8.g CaptchaReason reason) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(reason, "reason");
        int i4 = a.$EnumSwitchMapping$0[reason.ordinal()];
        if (i4 == 1) {
            d1(token);
        } else if (i4 != 2) {
        } else {
            LoginViewModel e02 = e0();
            String N0 = N0();
            String countryCode = I0();
            Intrinsics.checkNotNullExpressionValue(countryCode, "countryCode");
            e02.Q(N0, countryCode, token);
        }
    }

    @m8.h
    public final com.qennnsad.aknkaksd.presentation.module.auth.captcha.d J0() {
        return this.f51114n;
    }

    @m8.g
    public final t0 L0() {
        t0 t0Var = this.f51112l;
        if (t0Var != null) {
            return t0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("networkUtility");
        return null;
    }

    @m8.h
    public final CountDownTimer P0() {
        return this.f51113m;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: Q0 */
    public LoginViewModel e0() {
        return (LoginViewModel) this.f51111k.getValue();
    }

    public final void d1(@m8.h String str) {
        LoginViewModel e02 = e0();
        String N0 = N0();
        String countryCode = I0();
        Intrinsics.checkNotNullExpressionValue(countryCode, "countryCode");
        e02.J(str, N0, countryCode, M0(), O0());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: g1 */
    public void onEvent(@m8.g com.qennnsad.aknkaksd.presentation.module.auth.login.b e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
        if (Intrinsics.areEqual(e4, b.a.f51176a)) {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                MainContainerActivity.f52459m.b(activity, false);
            }
        } else if (e4 instanceof b.c) {
            b.c cVar = (b.c) e4;
            n1(cVar.e(), cVar.f());
        } else if (e4 instanceof b.d) {
            FragmentActivity requireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.qennnsad.aknkaksd.presentation.module.auth.captcha.g.c(requireActivity, new d(e4), e.f51127a);
        } else if (e4 instanceof b.e) {
            new com.qennnsad.aknkaksd.presentation.module.auth.captcha.j(((b.e) e4).d(), this).show(getChildFragmentManager(), "recaptcha");
        } else if (Intrinsics.areEqual(e4, b.f.f51182a)) {
            e0().o(R.string.sms_verification_required);
            LinearLayout linearLayout = ((j1) m0()).f62585l;
            Intrinsics.checkNotNullExpressionValue(linearLayout, "requireBinding().llSmsInput");
            linearLayout.setVisibility(0);
            o1();
        } else if (Intrinsics.areEqual(e4, b.g.f51183a)) {
            o1();
        } else if (Intrinsics.areEqual(e4, b.C0414b.f51177a)) {
            h1();
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: i1 */
    public j1 l0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        j1 d4 = j1.d(getLayoutInflater(), viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(layoutInflater, container, false)");
        return d4;
    }

    public final void k1(@m8.h com.qennnsad.aknkaksd.presentation.module.auth.captcha.d dVar) {
        this.f51114n = dVar;
    }

    public final void l1(@m8.g t0 t0Var) {
        Intrinsics.checkNotNullParameter(t0Var, "<set-?>");
        this.f51112l = t0Var;
    }

    public final void m1(@m8.h CountDownTimer countDownTimer) {
        this.f51113m = countDownTimer;
    }

    @Override // com.qennnsad.aknkaksd.presentation.module.auth.captcha.a
    public void o() {
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        R0();
        U0();
        T0();
    }
}
