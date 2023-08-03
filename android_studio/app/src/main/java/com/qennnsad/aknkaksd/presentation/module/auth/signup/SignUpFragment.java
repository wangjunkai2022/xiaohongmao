package com.qennnsad.aknkaksd.presentation.module.auth.signup;

import android.content.Context;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.navigation.NavController;
import androidx.navigation.fragment.FragmentKt;
import com.didi.live.spring.R;
import com.google.android.exoplayer2.upstream.w;
import com.google.android.material.textfield.TextInputLayout;
import com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment;
import com.qennnsad.aknkaksd.presentation.module.auth.GuestLinkPhoneNumberActivity;
import com.qennnsad.aknkaksd.presentation.module.auth.captcha.CaptchaReason;
import com.qennnsad.aknkaksd.presentation.module.auth.signup.SignUpFragment;
import com.qennnsad.aknkaksd.presentation.module.auth.signup.h;
import com.qennnsad.aknkaksd.presentation.module.auth.signup.p;
import com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewActivity;
import com.qennnsad.aknkaksd.presentation.ui.widget.OneKeyClearEditText;
import e5.w1;
import io.sentry.clientreport.e;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
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

/* compiled from: SignUpFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b>\u0010?J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0005H\u0002J\b\u0010\t\u001a\u00020\u0005H\u0002J\u0010\u0010\f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\r\u001a\u00020\u0005H\u0002J\b\u0010\u000e\u001a\u00020\u0005H\u0002J\u001a\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\u001a\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016J\u0010\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0003H\u0014J\u0018\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016J\b\u0010\u001f\u001a\u00020\u0005H\u0016R\u001b\u0010%\u001a\u00020 8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R$\u0010-\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R$\u00105\u001a\u0004\u0018\u00010.8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u0014\u00108\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b6\u00107R\u001c\u0010;\u001a\n 9*\u0004\u0018\u00010\n0\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b:\u00107R\u0014\u0010=\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b<\u00107¨\u0006@"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/w1;", "Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/h;", "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;", "", "H0", "F0", "T0", "S0", "", "image", "R0", "U0", "N0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "O0", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "e", "M0", "token", "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;", e.b.f83079a, "B", "o", "Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;", "f", "Lkotlin/Lazy;", "E0", "()Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;", "g", "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;", "A0", "()Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;", "P0", "(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;)V", "graphCaptchaDialog", "Landroid/os/CountDownTimer;", "h", "Landroid/os/CountDownTimer;", "D0", "()Landroid/os/CountDownTimer;", "Q0", "(Landroid/os/CountDownTimer;)V", "smsTimer", "B0", "()Ljava/lang/String;", "phone", "kotlin.jvm.PlatformType", "z0", "countryCode", "C0", "smsCode", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class SignUpFragment extends BaseMvvmFragment<w1, h> implements com.qennnsad.aknkaksd.presentation.module.auth.captcha.a {
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final Lazy f51219f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.module.auth.captcha.d f51220g;
    @m8.h

    /* renamed from: h  reason: collision with root package name */
    private CountDownTimer f51221h;

    /* compiled from: SignUpFragment.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CaptchaReason.values().length];
            iArr[CaptchaReason.REGISTER.ordinal()] = 1;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SignUpFragment.kt */
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
            SignUpFragment.this.e0().J();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SignUpFragment.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function1<String, Unit> {
        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            SignUpFragment.this.B(it, CaptchaReason.REGISTER);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SignUpFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", "<anonymous parameter 0>", "", "<anonymous parameter 1>", "", "a", "(ILjava/lang/String;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function2<Integer, String, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final d f51231a = new d();

        d() {
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

    /* compiled from: SignUpFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016¨\u0006\u0007"}, d2 = {"com/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$e", "Landroid/os/CountDownTimer;", "", "millisUntilFinished", "", "onTick", "onFinish", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class e extends CountDownTimer {
        e() {
            super(w.f27407d, 1000L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(SignUpFragment this$0) {
            Button button;
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            w1 y02 = SignUpFragment.y0(this$0);
            if (y02 == null || (button = y02.f63269i) == null) {
                return;
            }
            button.setText(R.string.login_captcha_get);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(SignUpFragment this$0, long j4) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            w1 y02 = SignUpFragment.y0(this$0);
            Button button = y02 != null ? y02.f63269i : null;
            if (button == null) {
                return;
            }
            button.setText(this$0.getString(R.string.login_captcha_countdown, Long.valueOf(j4 / 1000)));
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            Button button;
            w1 y02 = SignUpFragment.y0(SignUpFragment.this);
            if (y02 != null && (button = y02.f63269i) != null) {
                final SignUpFragment signUpFragment = SignUpFragment.this;
                button.post(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.signup.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        SignUpFragment.e.c(SignUpFragment.this);
                    }
                });
            }
            SignUpFragment.this.Q0(null);
        }

        @Override // android.os.CountDownTimer
        public void onTick(final long j4) {
            Button button;
            w1 y02 = SignUpFragment.y0(SignUpFragment.this);
            if (y02 == null || (button = y02.f63269i) == null) {
                return;
            }
            final SignUpFragment signUpFragment = SignUpFragment.this;
            button.post(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.signup.o
                @Override // java.lang.Runnable
                public final void run() {
                    SignUpFragment.e.d(SignUpFragment.this, j4);
                }
            });
        }
    }

    public SignUpFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new SignUpFragment$special$$inlined$hiltNavGraphViewModels$1(this, R.id.signUpNavigation));
        this.f51219f = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(SignUpViewModel.class), new SignUpFragment$special$$inlined$hiltNavGraphViewModels$2(lazy, null), new SignUpFragment$special$$inlined$hiltNavGraphViewModels$3(this, lazy, null));
    }

    private final String B0() {
        CharSequence trim;
        String replace$default;
        trim = StringsKt__StringsKt.trim((CharSequence) String.valueOf(m0().f63272l.getText()));
        replace$default = StringsKt__StringsJVMKt.replace$default(trim.toString(), " ", "", false, 4, (Object) null);
        return replace$default;
    }

    private final String C0() {
        CharSequence trim;
        trim = StringsKt__StringsKt.trim((CharSequence) String.valueOf(m0().f63271k.getText()));
        return trim.toString();
    }

    private final void F0() {
        AppCompatActivity a10 = com.qennnsad.aknkaksd.util.extentions.a.a(this);
        if (a10 != null) {
            a10.setSupportActionBar(m0().f63276p);
        }
        m0().f63264d.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.signup.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SignUpFragment.G0(SignUpFragment.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G0(SignUpFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentKt.findNavController(this$0).navigateUp();
    }

    private final void H0() {
        final w1 m02 = m0();
        m02.f63262b.setDefaultCountryUsingNameCode(com.qennnsad.aknkaksd.presentation.module.auth.a.f51009a);
        m02.f63262b.O();
        m02.f63269i.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.signup.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SignUpFragment.I0(SignUpFragment.this, view);
            }
        });
        m02.f63270j.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.signup.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SignUpFragment.J0(SignUpFragment.this, view);
            }
        });
        m02.f63272l.setOneKeyClearOnFocusChangeListener(new OneKeyClearEditText.c() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.signup.m
            @Override // com.qennnsad.aknkaksd.presentation.ui.widget.OneKeyClearEditText.c
            public final void onFocusChange(View view, boolean z9) {
                SignUpFragment.K0(w1.this, this, view, z9);
            }
        });
        m02.f63263c.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.signup.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SignUpFragment.L0(SignUpFragment.this, view);
            }
        });
        if (e0().E()) {
            m02.f63275o.setText(R.string.guest_link_page_title);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I0(SignUpFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.f51221h == null) {
            SignUpViewModel e02 = this$0.e0();
            String countryCode = this$0.z0();
            Intrinsics.checkNotNullExpressionValue(countryCode, "countryCode");
            e02.H(countryCode, this$0.B0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J0(SignUpFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SignUpViewModel e02 = this$0.e0();
        String countryCode = this$0.z0();
        Intrinsics.checkNotNullExpressionValue(countryCode, "countryCode");
        e02.F(countryCode, this$0.B0(), this$0.C0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K0(w1 this_with, SignUpFragment this$0, View view, boolean z9) {
        String str;
        boolean isBlank;
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "view");
        TextInputLayout textInputLayout = this_with.f63273m;
        if (!z9) {
            isBlank = StringsKt__StringsJVMKt.isBlank(this$0.B0());
            if (isBlank) {
                str = this$0.getString(R.string.phone_login_nullnumber);
                textInputLayout.setError(str);
            }
        }
        str = null;
        textInputLayout.setError(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L0(SignUpFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SimpleWebViewActivity.a aVar = SimpleWebViewActivity.f52046l;
        Context requireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        SimpleWebViewActivity.a.d(aVar, requireContext, this$0.e0().z(), false, false, 6, null);
    }

    private final void N0() {
        CountDownTimer countDownTimer = this.f51221h;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.f51221h;
        if (countDownTimer2 != null) {
            countDownTimer2.onFinish();
        }
    }

    private final void R0(String str) {
        com.qennnsad.aknkaksd.presentation.module.auth.captcha.d dVar = this.f51220g;
        boolean z9 = true;
        if ((dVar == null || !dVar.isVisible()) ? false : false) {
            com.qennnsad.aknkaksd.presentation.module.auth.captcha.d dVar2 = this.f51220g;
            if (dVar2 != null) {
                dVar2.a0(str);
                return;
            }
            return;
        }
        com.qennnsad.aknkaksd.presentation.module.auth.captcha.d dVar3 = this.f51220g;
        if (dVar3 != null) {
            dVar3.dismiss();
        }
        com.qennnsad.aknkaksd.presentation.module.auth.captcha.d dVar4 = new com.qennnsad.aknkaksd.presentation.module.auth.captcha.d(CaptchaReason.REGISTER, str, new b(), this);
        this.f51220g = dVar4;
        Intrinsics.checkNotNull(dVar4);
        dVar4.show(getChildFragmentManager(), "graph");
    }

    private final void S0() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        com.qennnsad.aknkaksd.presentation.module.auth.captcha.g.c(requireActivity, new c(), d.f51231a);
    }

    private final void T0() {
        new com.qennnsad.aknkaksd.presentation.module.auth.captcha.j(CaptchaReason.REGISTER, this).show(getChildFragmentManager(), "recaptcha");
    }

    private final void U0() {
        this.f51221h = new e().start();
    }

    public static final /* synthetic */ w1 y0(SignUpFragment signUpFragment) {
        return signUpFragment.a0();
    }

    private final String z0() {
        return m0().f63262b.getSelectedCountryCodeWithPlus();
    }

    @m8.h
    public final com.qennnsad.aknkaksd.presentation.module.auth.captcha.d A0() {
        return this.f51220g;
    }

    @Override // com.qennnsad.aknkaksd.presentation.module.auth.captcha.a
    public void B(@m8.g String token, @m8.g CaptchaReason reason) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(reason, "reason");
        if (a.$EnumSwitchMapping$0[reason.ordinal()] == 1) {
            SignUpViewModel e02 = e0();
            String countryCode = z0();
            Intrinsics.checkNotNullExpressionValue(countryCode, "countryCode");
            e02.L(countryCode, B0(), token);
        }
    }

    @m8.h
    public final CountDownTimer D0() {
        return this.f51221h;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: E0 */
    public SignUpViewModel e0() {
        return (SignUpViewModel) this.f51219f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: M0 */
    public void onEvent(@m8.g h e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
        if (Intrinsics.areEqual(e4, h.a.f51268a)) {
            FragmentKt.findNavController(this).navigateUp();
        } else if (Intrinsics.areEqual(e4, h.d.f51271a)) {
            N0();
        } else if (e4 instanceof h.e) {
            R0(((h.e) e4).a());
        } else if (Intrinsics.areEqual(e4, h.f.f51273a)) {
            S0();
        } else if (Intrinsics.areEqual(e4, h.g.f51274a)) {
            T0();
        } else if (Intrinsics.areEqual(e4, h.C0415h.f51275a)) {
            U0();
        } else if (Intrinsics.areEqual(e4, h.b.f51269a)) {
            NavController findNavController = FragmentKt.findNavController(this);
            p.b a10 = p.a();
            a10.b(requireActivity() instanceof GuestLinkPhoneNumberActivity);
            Intrinsics.checkNotNullExpressionValue(a10, "actionSignUpFragmentToFi…ctivity\n                }");
            findNavController.navigate(a10);
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: O0 */
    public w1 l0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        w1 d4 = w1.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    public final void P0(@m8.h com.qennnsad.aknkaksd.presentation.module.auth.captcha.d dVar) {
        this.f51220g = dVar;
    }

    public final void Q0(@m8.h CountDownTimer countDownTimer) {
        this.f51221h = countDownTimer;
    }

    @Override // com.qennnsad.aknkaksd.presentation.module.auth.captcha.a
    public void o() {
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        e0().K();
        F0();
        H0();
    }
}
