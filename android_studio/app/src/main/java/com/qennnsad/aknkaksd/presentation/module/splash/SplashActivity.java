package com.qennnsad.aknkaksd.presentation.module.splash;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.splashscreen.SplashScreen;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelLazy;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.BaseBeautyApplication;
import com.qennnsad.aknkaksd.analytics.data.events.EventSignature;
import com.qennnsad.aknkaksd.data.bean.AppUpdateBean;
import com.qennnsad.aknkaksd.data.bean.LaunchAdBean;
import com.qennnsad.aknkaksd.data.repository.dns.DnsResolver;
import com.qennnsad.aknkaksd.presentation.module.auth.AuthActivity;
import com.qennnsad.aknkaksd.presentation.module.splash.SplashActivity;
import com.qennnsad.aknkaksd.presentation.module.splash.SplashViewModel;
import com.qennnsad.aknkaksd.presentation.ui.MainContainerActivity;
import com.qennnsad.aknkaksd.util.c1;
import com.qennnsad.aknkaksd.util.m1;
import com.qennnsad.aknkaksd.util.t;
import com.qennnsad.aknkaksd.util.t0;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import timber.log.Timber;

/* compiled from: SplashActivity.kt */
@Metadata(bv = {}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u0000 82\u00020\u0001:\u00019B\u0007¢\u0006\u0004\b6\u00107J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\u0012\u0010\u000b\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\u0006\u0010\f\u001a\u00020\u0002J\u000e\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u0011\u001a\u00020\u0002R\u001b\u0010\u0017\u001a\u00020\u00128FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010'\u001a\u00020 8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\"\u0010)\u001a\u00020(8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\"\u00100\u001a\u00020/8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105¨\u0006:"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "", "b0", "n0", "Lcom/qennnsad/aknkaksd/data/bean/LaunchAdBean;", "ad", "w0", "s0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "h0", "Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel$Event;", "event", "onEvent", "Y", "v0", "Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel;", "e", "Lkotlin/Lazy;", "g0", "()Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/util/t0;", "g", "Lcom/qennnsad/aknkaksd/util/t0;", "e0", "()Lcom/qennnsad/aknkaksd/util/t0;", "q0", "(Lcom/qennnsad/aknkaksd/util/t0;)V", "networkUtility", "Lcom/qennnsad/aknkaksd/util/m1;", "h", "Lcom/qennnsad/aknkaksd/util/m1;", "f0", "()Lcom/qennnsad/aknkaksd/util/m1;", "r0", "(Lcom/qennnsad/aknkaksd/util/m1;)V", "updateUtil", "Le5/k;", "binding", "Le5/k;", "c0", "()Le5/k;", "o0", "(Le5/k;)V", "Lg5/a;", "localDataManager", "Lg5/a;", "d0", "()Lg5/a;", "p0", "(Lg5/a;)V", "<init>", "()V", ContextChain.TAG_INFRA, "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@SuppressLint({"CustomSplashScreen"})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class SplashActivity extends Hilt_SplashActivity {
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    public static final a f52384i = new a(null);
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    public static final String f52385j = "recovered_after_the_crash";

    /* renamed from: d  reason: collision with root package name */
    public e5.k f52386d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final Lazy f52387e = new ViewModelLazy(Reflection.getOrCreateKotlinClass(SplashViewModel.class), new SplashActivity$special$$inlined$viewModels$default$2(this), new SplashActivity$special$$inlined$viewModels$default$1(this), new SplashActivity$special$$inlined$viewModels$default$3(null, this));
    @u7.a

    /* renamed from: f  reason: collision with root package name */
    public g5.a f52388f;
    @u7.a

    /* renamed from: g  reason: collision with root package name */
    public t0 f52389g;
    @u7.a

    /* renamed from: h  reason: collision with root package name */
    public m1 f52390h;

    /* compiled from: SplashActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$a;", "", "", "EXTRA_RECOVERED_AFTER_CRASH", "Ljava/lang/String;", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: SplashActivity.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[DnsResolver.DnsResolutionResult.values().length];
            iArr[DnsResolver.DnsResolutionResult.Ok.ordinal()] = 1;
            iArr[DnsResolver.DnsResolutionResult.Error.ordinal()] = 2;
            iArr[DnsResolver.DnsResolutionResult.Progress.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[SplashViewModel.Event.values().length];
            iArr2[SplashViewModel.Event.SHOW_APP_RECOVERED.ordinal()] = 1;
            iArr2[SplashViewModel.Event.NAVIGATE_AUTH_ACTIVITY.ordinal()] = 2;
            iArr2[SplashViewModel.Event.NAVIGATE_MAIN_ACTIVITY.ordinal()] = 3;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SplashActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "foundInCache", "", "a", "(Z)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function1<Boolean, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Uri f52395a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SplashActivity f52396b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ LaunchAdBean f52397c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Uri uri, SplashActivity splashActivity, LaunchAdBean launchAdBean) {
            super(1);
            this.f52395a = uri;
            this.f52396b = splashActivity;
            this.f52397c = launchAdBean;
        }

        public final void a(boolean z9) {
            if (!z9) {
                Timber.f93860a.k("LaunchAd is not cached yet, let's download it", new Object[0]);
                Context a10 = BaseBeautyApplication.Companion.a();
                Uri uri = this.f52395a;
                Intrinsics.checkNotNullExpressionValue(uri, "uri");
                com.qennnsad.aknkaksd.util.img.f.c(a10, uri);
                this.f52396b.v0();
                return;
            }
            Timber.f93860a.k("LaunchAd found in cache!", new Object[0]);
            this.f52396b.g0().v().d(EventSignature.APP_SHOW_LAUNCH_AD, this.f52397c.getId());
            ConstraintLayout root = this.f52396b.c0().f62619b.getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "binding.ad.root");
            root.setVisibility(0);
            this.f52396b.w0(this.f52397c);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
            a(bool.booleanValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SplashActivity.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function0<Unit> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SplashActivity.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;", "bean", "", "isForceUpdate", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;Z)V"}, k = 3, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class a extends Lambda implements Function2<AppUpdateBean, Boolean, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SplashActivity f52399a;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: SplashActivity.kt */
            @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
            /* renamed from: com.qennnsad.aknkaksd.presentation.module.splash.SplashActivity$d$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public static final class C0429a extends Lambda implements Function0<Unit> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ SplashActivity f52400a;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0429a(SplashActivity splashActivity) {
                    super(0);
                    this.f52400a = splashActivity;
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                @Override // kotlin.jvm.functions.Function0
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    this.f52400a.g0().y().setValue(Boolean.TRUE);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(SplashActivity splashActivity) {
                super(2);
                this.f52399a = splashActivity;
            }

            public final void a(@m8.g AppUpdateBean bean, boolean z9) {
                Intrinsics.checkNotNullParameter(bean, "bean");
                if (this.f52399a.g0().D()) {
                    this.f52399a.g0().y().setValue(Boolean.TRUE);
                    return;
                }
                SplashActivity splashActivity = this.f52399a;
                com.qennnsad.aknkaksd.util.l.U(splashActivity, bean, z9, new C0429a(splashActivity));
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(AppUpdateBean appUpdateBean, Boolean bool) {
                a(appUpdateBean, bool.booleanValue());
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SplashActivity.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class b extends Lambda implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SplashActivity f52401a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(SplashActivity splashActivity) {
                super(0);
                this.f52401a = splashActivity;
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                this.f52401a.g0().y().setValue(Boolean.TRUE);
            }
        }

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
            SplashActivity.this.f0().c(new a(SplashActivity.this), new b(SplashActivity.this));
        }
    }

    /* compiled from: SplashActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016¨\u0006\u0007"}, d2 = {"com/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$e", "Landroid/os/CountDownTimer;", "", "millisUntilFinished", "", "onTick", "onFinish", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class e extends CountDownTimer {
        e(long j4) {
            super(j4, 1000L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(SplashActivity this$0, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.v0();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(SplashActivity this$0, long j4) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.c0().f62619b.f62965d.setText(this$0.getString(R.string.splash_launchad_countdown, new Object[]{Long.valueOf(j4 / 1000)}));
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            TextView textView = SplashActivity.this.c0().f62619b.f62965d;
            final SplashActivity splashActivity = SplashActivity.this;
            textView.setText("跳过");
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.splash.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SplashActivity.e.c(SplashActivity.this, view);
                }
            });
        }

        @Override // android.os.CountDownTimer
        public void onTick(final long j4) {
            TextView textView = SplashActivity.this.c0().f62619b.f62965d;
            final SplashActivity splashActivity = SplashActivity.this;
            textView.post(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.module.splash.k
                @Override // java.lang.Runnable
                public final void run() {
                    SplashActivity.e.d(SplashActivity.this, j4);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(SplashActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.v0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a0(SplashActivity this$0, LaunchAdBean ad, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(ad, "$ad");
        this$0.g0().v().d(EventSignature.APP_CLICK_LAUNCH_AD, ad.getId());
        com.qennnsad.aknkaksd.util.l.z(this$0, ad.getTargetUrl(), ad.getTarget(), false, false, 12, null);
    }

    private final void b0() {
        WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
        WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(getWindow(), findViewById(R.id.root));
        windowInsetsControllerCompat.hide(WindowInsetsCompat.Type.systemBars());
        windowInsetsControllerCompat.setSystemBarsBehavior(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(SplashActivity this$0, DnsResolver.DnsResolutionResult dnsResolutionResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int i4 = dnsResolutionResult == null ? -1 : b.$EnumSwitchMapping$0[dnsResolutionResult.ordinal()];
        if (i4 == 1) {
            this$0.g0().G();
            this$0.g0().H();
        } else if (i4 != 2) {
            if (i4 != 3) {
                return;
            }
            this$0.c0().f62625h.setText(R.string.status_connecting_to_server);
        } else {
            this$0.c0().f62625h.setText(R.string.status_network_config_dns_not_found);
            if (this$0.e0().n()) {
                com.qennnsad.aknkaksd.util.toast.a.n("Test Server not accessible. Switch to V1/V2 or Prod.", false, 2, null);
                MutableLiveData<Boolean> w9 = this$0.g0().w();
                Boolean bool = Boolean.TRUE;
                w9.setValue(bool);
                this$0.g0().y().setValue(bool);
                return;
            }
            this$0.s0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(SplashActivity this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        if (it.booleanValue()) {
            this$0.n0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k0(SplashActivity this$0, LaunchAdBean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        this$0.Y(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(SplashActivity this$0, t tVar) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (Intrinsics.areEqual(tVar.a(), Boolean.TRUE)) {
            this$0.g0().F();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m0(SplashActivity this$0, t tVar) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SplashViewModel.Event event = (SplashViewModel.Event) tVar.a();
        if (event != null) {
            this$0.onEvent(event);
        }
    }

    private final void n0() {
        f0().l(this, new d());
    }

    private final void s0() {
        Timber.b bVar = Timber.f93860a;
        bVar.k("init error dialog", new Object[0]);
        final AlertDialog show = new AlertDialog.Builder(this, R.style.initsms_dialog_style).setView(R.layout.dialog_checkip_error).setCancelable(false).show();
        View findViewById = show.findViewById(R.id.dialog_checkip_sure);
        if (findViewById != null) {
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.splash.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SplashActivity.t0(AlertDialog.this, this, view);
                }
            });
        }
        View findViewById2 = show.findViewById(R.id.dialog_checkip_kefu);
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.splash.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SplashActivity.u0(SplashActivity.this, view);
                }
            });
        }
        View findViewById3 = show.findViewById(R.id.dialog_checkip_kefu);
        if (findViewById3 != null) {
            Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById<View>(R.id.dialog_checkip_kefu)");
            String contactUs = d0().g().getContactUs();
            findViewById3.setVisibility((contactUs == null || contactUs.length() == 0) ^ true ? 0 : 8);
        }
        bVar.k("show error dialog", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(AlertDialog alertDialog, SplashActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (alertDialog.isShowing()) {
            alertDialog.dismiss();
        }
        c1.f54588a.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0023, code lost:
        if ((r0.length() > 0) == true) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void u0(com.qennnsad.aknkaksd.presentation.module.splash.SplashActivity r9, android.view.View r10) {
        /*
            java.lang.String r10 = "this$0"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r10)
            g5.a r10 = r9.d0()
            com.qennnsad.aknkaksd.data.bean.ConfigDnsBean r10 = r10.g()
            java.lang.String r0 = r10.getContactUs()
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L26
            java.lang.String r3 = "contactUs"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r3)
            int r0 = r0.length()
            if (r0 <= 0) goto L22
            r0 = 1
            goto L23
        L22:
            r0 = 0
        L23:
            if (r0 != r1) goto L26
            goto L27
        L26:
            r1 = 0
        L27:
            if (r1 == 0) goto L3c
            com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewActivity$a r2 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewActivity.f52046l
            java.lang.String r4 = r10.getContactUs()
            java.lang.String r10 = "it.contactUs"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r10)
            r5 = 0
            r6 = 0
            r7 = 6
            r8 = 0
            r3 = r9
            com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewActivity.a.d(r2, r3, r4, r5, r6, r7, r8)
        L3c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.module.splash.SplashActivity.u0(com.qennnsad.aknkaksd.presentation.module.splash.SplashActivity, android.view.View):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w0(LaunchAdBean launchAdBean) {
        new e(launchAdBean.getSkipTime() * 1000).start();
    }

    public final void Y(@m8.g final LaunchAdBean ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        c0();
        c0().f62619b.getRoot().postDelayed(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.module.splash.i
            @Override // java.lang.Runnable
            public final void run() {
                SplashActivity.Z(SplashActivity.this);
            }
        }, ad.getShowTime() * 1000);
        ImageView imageView = c0().f62619b.f62963b;
        Uri parse = Uri.parse(ad.getPicPath());
        com.qennnsad.aknkaksd.util.img.f.a(imageView, parse, new c(parse, this, ad));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.splash.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SplashActivity.a0(SplashActivity.this, ad, view);
            }
        });
    }

    @m8.g
    public final e5.k c0() {
        e5.k kVar = this.f52386d;
        if (kVar != null) {
            return kVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @m8.g
    public final g5.a d0() {
        g5.a aVar = this.f52388f;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("localDataManager");
        return null;
    }

    @m8.g
    public final t0 e0() {
        t0 t0Var = this.f52389g;
        if (t0Var != null) {
            return t0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("networkUtility");
        return null;
    }

    @m8.g
    public final m1 f0() {
        m1 m1Var = this.f52390h;
        if (m1Var != null) {
            return m1Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("updateUtil");
        return null;
    }

    @m8.g
    public final SplashViewModel g0() {
        return (SplashViewModel) this.f52387e.getValue();
    }

    public final void h0() {
        g0().z().observe(this, new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.splash.e
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                SplashActivity.i0(SplashActivity.this, (DnsResolver.DnsResolutionResult) obj);
            }
        });
        g0().x().observe(this, new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.splash.h
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                SplashActivity.j0(SplashActivity.this, (Boolean) obj);
            }
        });
        g0().A().observe(this, new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.splash.d
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                SplashActivity.k0(SplashActivity.this, (LaunchAdBean) obj);
            }
        });
        g0().C().observe(this, new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.splash.g
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                SplashActivity.l0(SplashActivity.this, (t) obj);
            }
        });
        g0().c().observe(this, new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.splash.f
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                SplashActivity.m0(SplashActivity.this, (t) obj);
            }
        });
    }

    public final void o0(@m8.g e5.k kVar) {
        Intrinsics.checkNotNullParameter(kVar, "<set-?>");
        this.f52386d = kVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@m8.h Bundle bundle) {
        SplashScreen.Companion.installSplashScreen(this);
        super.onCreate(bundle);
        e5.k c10 = e5.k.c(getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(c10, "inflate(layoutInflater)");
        o0(c10);
        setContentView(c0().f62626i);
        b0();
        h0();
    }

    public final void onEvent(@m8.g SplashViewModel.Event event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int i4 = b.$EnumSwitchMapping$1[event.ordinal()];
        if (i4 == 1) {
            String string = getString(R.string.app_recovered_after_crash);
            Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.app_recovered_after_crash)");
            com.qennnsad.aknkaksd.util.toast.a.q(this, string, false, 4, null);
        } else if (i4 == 2) {
            g0().c().removeObservers(this);
            AuthActivity.a.d(AuthActivity.f50991k, this, null, false, 3, null);
            finish();
        } else if (i4 != 3) {
        } else {
            g0().c().removeObservers(this);
            MainContainerActivity.f52459m.b(this, false);
            finish();
        }
    }

    public final void p0(@m8.g g5.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f52388f = aVar;
    }

    public final void q0(@m8.g t0 t0Var) {
        Intrinsics.checkNotNullParameter(t0Var, "<set-?>");
        this.f52389g = t0Var;
    }

    public final void r0(@m8.g m1 m1Var) {
        Intrinsics.checkNotNullParameter(m1Var, "<set-?>");
        this.f52390h = m1Var;
    }

    public final void v0() {
        ConstraintLayout root = c0().f62619b.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.ad.root");
        root.setVisibility(8);
        g0().B().setValue(Boolean.TRUE);
    }
}
