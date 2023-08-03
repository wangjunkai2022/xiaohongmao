package com.qennnsad.aknkaksd.presentation.module.auth.findpass;

import android.content.Context;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.navigation.fragment.FragmentKt;
import com.didi.live.spring.R;
import com.google.android.exoplayer2.upstream.w;
import com.hbb20.CountryCodePicker;
import com.qennnsad.aknkaksd.presentation.module.auth.captcha.CaptchaReason;
import com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordFragment;
import com.qennnsad.aknkaksd.presentation.module.auth.findpass.b;
import com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewActivity;
import com.qennnsad.aknkaksd.presentation.ui.widget.OneKeyClearEditText;
import e5.s1;
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

/* compiled from: RestorePasswordFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0014\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\bA\u0010BJ\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0005H\u0002J\b\u0010\t\u001a\u00020\u0005H\u0002J\b\u0010\n\u001a\u00020\u0005H\u0002J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u000e\u001a\u00020\u0005H\u0002J\u001a\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\u001a\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016J\u0006\u0010\u0019\u001a\u00020\u0005J\u0010\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0003H\u0014J\u0018\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J\b\u0010 \u001a\u00020\u0005H\u0016R\u001b\u0010&\u001a\u00020!8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R$\u0010.\u001a\u0004\u0018\u00010'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R$\u00106\u001a\u0004\u0018\u00010/8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u0014\u00109\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b7\u00108R\u0014\u0010;\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b:\u00108R\u0014\u0010=\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b<\u00108R\u001c\u0010@\u001a\n >*\u0004\u0018\u00010\u000b0\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b?\u00108¨\u0006C"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/s1;", "Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b;", "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;", "", "K0", "M0", "a1", "Z0", "Y0", "", "image", "X0", "S0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "T0", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "U0", "e", "R0", "token", "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;", e.b.f83079a, "B", "o", "Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;", "k", "Lkotlin/Lazy;", "J0", "()Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;", "l", "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;", "E0", "()Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;", "V0", "(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;)V", "graphCaptchaDialog", "Landroid/os/CountDownTimer;", "m", "Landroid/os/CountDownTimer;", "I0", "()Landroid/os/CountDownTimer;", "W0", "(Landroid/os/CountDownTimer;)V", "smsTimer", "G0", "()Ljava/lang/String;", "phone", "H0", "smsCode", "F0", "newPassword", "kotlin.jvm.PlatformType", "D0", "countryCode", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class RestorePasswordFragment extends com.qennnsad.aknkaksd.presentation.module.auth.findpass.a<s1, com.qennnsad.aknkaksd.presentation.module.auth.findpass.b> implements com.qennnsad.aknkaksd.presentation.module.auth.captcha.a {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f51038k;
    @m8.h

    /* renamed from: l  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.module.auth.captcha.d f51039l;
    @m8.h

    /* renamed from: m  reason: collision with root package name */
    private CountDownTimer f51040m;

    /* compiled from: RestorePasswordFragment.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CaptchaReason.values().length];
            iArr[CaptchaReason.FIND_PASSWORD.ordinal()] = 1;
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
            RestorePasswordFragment.this.U0();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(@m8.h CharSequence charSequence, int i4, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(@m8.h CharSequence charSequence, int i4, int i10, int i11) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RestorePasswordFragment.kt */
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
            RestorePasswordFragment.this.e0().A();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RestorePasswordFragment.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function1<String, Unit> {
        d() {
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
            RestorePasswordFragment.this.B(it, CaptchaReason.FIND_PASSWORD);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RestorePasswordFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", "<anonymous parameter 0>", "", "<anonymous parameter 1>", "", "a", "(ILjava/lang/String;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function2<Integer, String, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final e f51051a = new e();

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

    /* compiled from: RestorePasswordFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016¨\u0006\u0007"}, d2 = {"com/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$f", "Landroid/os/CountDownTimer;", "", "millisUntilFinished", "", "onTick", "onFinish", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class f extends CountDownTimer {
        f() {
            super(w.f27407d, 1000L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(RestorePasswordFragment this$0) {
            Button button;
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            s1 C0 = RestorePasswordFragment.C0(this$0);
            if (C0 == null || (button = C0.f63073k) == null) {
                return;
            }
            button.setText(R.string.login_captcha_get);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(RestorePasswordFragment this$0, long j4) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            s1 C0 = RestorePasswordFragment.C0(this$0);
            Button button = C0 != null ? C0.f63073k : null;
            if (button == null) {
                return;
            }
            button.setText(this$0.getString(R.string.login_captcha_countdown, Long.valueOf(j4 / 1000)));
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            Button button;
            s1 C0 = RestorePasswordFragment.C0(RestorePasswordFragment.this);
            if (C0 != null && (button = C0.f63073k) != null) {
                final RestorePasswordFragment restorePasswordFragment = RestorePasswordFragment.this;
                button.post(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.findpass.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        RestorePasswordFragment.f.c(RestorePasswordFragment.this);
                    }
                });
            }
            RestorePasswordFragment.this.W0(null);
        }

        @Override // android.os.CountDownTimer
        public void onTick(final long j4) {
            Button button;
            s1 C0 = RestorePasswordFragment.C0(RestorePasswordFragment.this);
            if (C0 == null || (button = C0.f63073k) == null) {
                return;
            }
            final RestorePasswordFragment restorePasswordFragment = RestorePasswordFragment.this;
            button.post(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.findpass.i
                @Override // java.lang.Runnable
                public final void run() {
                    RestorePasswordFragment.f.d(RestorePasswordFragment.this, j4);
                }
            });
        }
    }

    public RestorePasswordFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new RestorePasswordFragment$special$$inlined$viewModels$default$2(new RestorePasswordFragment$special$$inlined$viewModels$default$1(this)));
        this.f51038k = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(RestorePasswordViewModel.class), new RestorePasswordFragment$special$$inlined$viewModels$default$3(lazy), new RestorePasswordFragment$special$$inlined$viewModels$default$4(null, lazy), new RestorePasswordFragment$special$$inlined$viewModels$default$5(this, lazy));
    }

    public static final /* synthetic */ s1 C0(RestorePasswordFragment restorePasswordFragment) {
        return (s1) restorePasswordFragment.a0();
    }

    private final String D0() {
        return ((s1) m0()).f63064b.getSelectedCountryCodeWithPlus();
    }

    private final String F0() {
        CharSequence trim;
        trim = StringsKt__StringsKt.trim((CharSequence) String.valueOf(((s1) m0()).f63066d.getText()));
        return trim.toString();
    }

    private final String G0() {
        CharSequence trim;
        String replace$default;
        trim = StringsKt__StringsKt.trim((CharSequence) String.valueOf(((s1) m0()).f63071i.getText()));
        replace$default = StringsKt__StringsJVMKt.replace$default(trim.toString(), " ", "", false, 4, (Object) null);
        return replace$default;
    }

    private final String H0() {
        CharSequence trim;
        trim = StringsKt__StringsKt.trim((CharSequence) String.valueOf(((s1) m0()).f63067e.getText()));
        return trim.toString();
    }

    private final void K0() {
        AppCompatActivity a10 = com.qennnsad.aknkaksd.util.extentions.a.a(this);
        if (a10 != null) {
            a10.setSupportActionBar(((s1) m0()).f63076n);
        }
        ((s1) m0()).f63076n.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.findpass.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RestorePasswordFragment.L0(RestorePasswordFragment.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L0(RestorePasswordFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentKt.findNavController(this$0).navigateUp();
    }

    private final void M0() {
        s1 s1Var = (s1) m0();
        s1Var.f63064b.setDefaultCountryUsingNameCode(com.qennnsad.aknkaksd.presentation.module.auth.a.f51009a);
        s1Var.f63064b.O();
        s1Var.f63071i.requestFocus();
        s1Var.f63073k.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.findpass.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RestorePasswordFragment.N0(RestorePasswordFragment.this, view);
            }
        });
        s1Var.f63072j.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.findpass.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RestorePasswordFragment.O0(RestorePasswordFragment.this, view);
            }
        });
        OneKeyClearEditText phoneNumber = s1Var.f63071i;
        Intrinsics.checkNotNullExpressionValue(phoneNumber, "phoneNumber");
        phoneNumber.addTextChangedListener(new b());
        s1Var.f63064b.setOnCountryChangeListener(new CountryCodePicker.h() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.findpass.g
            @Override // com.hbb20.CountryCodePicker.h
            public final void a() {
                RestorePasswordFragment.P0(RestorePasswordFragment.this);
            }
        });
        s1Var.f63065c.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.findpass.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RestorePasswordFragment.Q0(RestorePasswordFragment.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N0(RestorePasswordFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.f51040m == null) {
            RestorePasswordViewModel e02 = this$0.e0();
            String countryCode = this$0.D0();
            Intrinsics.checkNotNullExpressionValue(countryCode, "countryCode");
            e02.z(countryCode, this$0.G0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O0(RestorePasswordFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RestorePasswordViewModel e02 = this$0.e0();
        String countryCode = this$0.D0();
        Intrinsics.checkNotNullExpressionValue(countryCode, "countryCode");
        e02.E(countryCode, this$0.G0(), this$0.F0(), this$0.H0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P0(RestorePasswordFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.U0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q0(RestorePasswordFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SimpleWebViewActivity.a aVar = SimpleWebViewActivity.f52046l;
        Context requireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        SimpleWebViewActivity.a.d(aVar, requireContext, this$0.e0().x(), false, false, 6, null);
    }

    private final void S0() {
        CountDownTimer countDownTimer = this.f51040m;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.f51040m;
        if (countDownTimer2 != null) {
            countDownTimer2.onFinish();
        }
    }

    private final void X0(String str) {
        com.qennnsad.aknkaksd.presentation.module.auth.captcha.d dVar = this.f51039l;
        boolean z9 = true;
        if ((dVar == null || !dVar.isVisible()) ? false : false) {
            com.qennnsad.aknkaksd.presentation.module.auth.captcha.d dVar2 = this.f51039l;
            if (dVar2 != null) {
                dVar2.a0(str);
                return;
            }
            return;
        }
        com.qennnsad.aknkaksd.presentation.module.auth.captcha.d dVar3 = this.f51039l;
        if (dVar3 != null) {
            dVar3.dismiss();
        }
        com.qennnsad.aknkaksd.presentation.module.auth.captcha.d dVar4 = new com.qennnsad.aknkaksd.presentation.module.auth.captcha.d(CaptchaReason.FIND_PASSWORD, str, new c(), this);
        this.f51039l = dVar4;
        Intrinsics.checkNotNull(dVar4);
        dVar4.show(getChildFragmentManager(), "graph");
    }

    private final void Y0() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        com.qennnsad.aknkaksd.presentation.module.auth.captcha.g.c(requireActivity, new d(), e.f51051a);
    }

    private final void Z0() {
        new com.qennnsad.aknkaksd.presentation.module.auth.captcha.j(CaptchaReason.FIND_PASSWORD, this).show(getChildFragmentManager(), "recaptcha");
    }

    private final void a1() {
        this.f51040m = new f().start();
    }

    @Override // com.qennnsad.aknkaksd.presentation.module.auth.captcha.a
    public void B(@m8.g String token, @m8.g CaptchaReason reason) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(reason, "reason");
        if (a.$EnumSwitchMapping$0[reason.ordinal()] == 1) {
            RestorePasswordViewModel e02 = e0();
            String countryCode = D0();
            Intrinsics.checkNotNullExpressionValue(countryCode, "countryCode");
            e02.C(countryCode, G0(), token);
        }
    }

    @m8.h
    public final com.qennnsad.aknkaksd.presentation.module.auth.captcha.d E0() {
        return this.f51039l;
    }

    @m8.h
    public final CountDownTimer I0() {
        return this.f51040m;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: J0 */
    public RestorePasswordViewModel e0() {
        return (RestorePasswordViewModel) this.f51038k.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: R0 */
    public void onEvent(@m8.g com.qennnsad.aknkaksd.presentation.module.auth.findpass.b e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
        if (Intrinsics.areEqual(e4, b.a.f51077a)) {
            FragmentKt.findNavController(this).navigateUp();
        } else if (Intrinsics.areEqual(e4, b.C0413b.f51078a)) {
            S0();
        } else if (e4 instanceof b.c) {
            X0(((b.c) e4).a());
        } else if (Intrinsics.areEqual(e4, b.d.f51080a)) {
            Y0();
        } else if (Intrinsics.areEqual(e4, b.e.f51081a)) {
            Z0();
        } else if (Intrinsics.areEqual(e4, b.f.f51082a)) {
            a1();
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: T0 */
    public s1 l0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        s1 d4 = s1.d(getLayoutInflater(), viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(layoutInflater, container, false)");
        return d4;
    }

    public final void U0() {
        e0().B();
        CountDownTimer countDownTimer = this.f51040m;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.f51040m;
        if (countDownTimer2 != null) {
            countDownTimer2.onFinish();
        }
    }

    public final void V0(@m8.h com.qennnsad.aknkaksd.presentation.module.auth.captcha.d dVar) {
        this.f51039l = dVar;
    }

    public final void W0(@m8.h CountDownTimer countDownTimer) {
        this.f51040m = countDownTimer;
    }

    @Override // com.qennnsad.aknkaksd.presentation.module.auth.captcha.a
    public void o() {
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        M0();
        K0();
    }
}
