package com.qennnsad.aknkaksd.presentation.module.splash;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandle;
import com.google.android.exoplayer2.extractor.ts.h0;
import com.im.freechat.sdk.SDKManager;
import com.qennnsad.aknkaksd.analytics.data.events.EventSignature;
import com.qennnsad.aknkaksd.data.bean.AppUpdateBean;
import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.data.bean.GuestConfig;
import com.qennnsad.aknkaksd.data.bean.LaunchAdBean;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.data.repository.dns.DnsResolver;
import com.qennnsad.aknkaksd.domain.base.RequestException;
import com.qennnsad.aknkaksd.domain.usecase.auth.d;
import com.qennnsad.aknkaksd.domain.usecase.auth.v;
import com.qennnsad.aknkaksd.util.JwtUtil;
import io.sentry.protocol.t;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;
import timber.log.Timber;

/* compiled from: SplashViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001NBQ\b\u0007\u0012\u0006\u0010I\u001a\u00020H\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u0012\u0006\u0010K\u001a\u00020J\u0012\u0006\u0010\u001f\u001a\u00020\u001c\u0012\u0006\u0010#\u001a\u00020 \u0012\u0006\u0010D\u001a\u00020C¢\u0006\u0004\bL\u0010MJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0003J\u0006\u0010\n\u001a\u00020\u0005J\u0006\u0010\u000b\u001a\u00020\u0007R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u001d\u0010*\u001a\b\u0012\u0004\u0012\u00020%0$8\u0006¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u001d\u0010.\u001a\b\u0012\u0004\u0012\u00020+0$8\u0006¢\u0006\f\n\u0004\b,\u0010'\u001a\u0004\b-\u0010)R%\u00102\u001a\u0010\u0012\f\u0012\n /*\u0004\u0018\u00010\u00050\u00050$8\u0006¢\u0006\f\n\u0004\b0\u0010'\u001a\u0004\b1\u0010)R%\u00105\u001a\u0010\u0012\f\u0012\n /*\u0004\u0018\u00010\u00050\u00050$8\u0006¢\u0006\f\n\u0004\b3\u0010'\u001a\u0004\b4\u0010)R%\u00108\u001a\u0010\u0012\f\u0012\n /*\u0004\u0018\u00010\u00050\u00050$8\u0006¢\u0006\f\n\u0004\b6\u0010'\u001a\u0004\b7\u0010)R%\u0010;\u001a\u0010\u0012\f\u0012\n /*\u0004\u0018\u00010\u00050\u00050$8\u0006¢\u0006\f\n\u0004\b9\u0010'\u001a\u0004\b:\u0010)R#\u0010B\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050=0<8\u0006¢\u0006\f\n\u0004\b>\u0010?\u001a\u0004\b@\u0010AR\u0017\u0010D\u001a\u00020C8\u0006¢\u0006\f\n\u0004\bD\u0010E\u001a\u0004\bF\u0010G¨\u0006O"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel$Event;", "Lkotlinx/coroutines/j2;", "I", "", ExifInterface.LONGITUDE_EAST, "", "G", "H", "D", "F", "Lcom/qennnsad/aknkaksd/domain/usecase/app/o;", "e", "Lcom/qennnsad/aknkaksd/domain/usecase/app/o;", "requestLaunchAdUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/app/l;", "f", "Lcom/qennnsad/aknkaksd/domain/usecase/app/l;", "requestAppVersionUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/app/g;", "g", "Lcom/qennnsad/aknkaksd/domain/usecase/app/g;", "requestAppConfigUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;", "h", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;", "loginGuestUseCase", "Lcom/qennnsad/aknkaksd/util/JwtUtil;", "j", "Lcom/qennnsad/aknkaksd/util/JwtUtil;", "jwtUtil", "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;", "k", "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;", "dnsResolver", "Landroidx/lifecycle/MutableLiveData;", "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;", "m", "Landroidx/lifecycle/MutableLiveData;", "z", "()Landroidx/lifecycle/MutableLiveData;", "dnsResolverState", "Lcom/qennnsad/aknkaksd/data/bean/LaunchAdBean;", "n", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "launchAd", "kotlin.jvm.PlatformType", "o", y.b.f83919g, "appVersionLoaded", "p", "B", "launchAdCompleted", "q", "w", "appConfigReady", "r", y.b.f83920h, "appVersionReady", "Landroidx/lifecycle/LiveData;", "Lcom/qennnsad/aknkaksd/util/t;", "s", "Landroidx/lifecycle/LiveData;", "C", "()Landroidx/lifecycle/LiveData;", "nextActivityReady", "Lx4/a;", "analytics", "Lx4/a;", "v", "()Lx4/a;", "Landroidx/lifecycle/SavedStateHandle;", t.b.f83859d, "Lg5/a;", "localDataManager", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/app/o;Lcom/qennnsad/aknkaksd/domain/usecase/app/l;Lcom/qennnsad/aknkaksd/domain/usecase/app/g;Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;Lg5/a;Lcom/qennnsad/aknkaksd/util/JwtUtil;Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;Lx4/a;)V", "Event", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class SplashViewModel extends com.qennnsad.aknkaksd.presentation.common.l<Event> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.app.o f52403e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.app.l f52404f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.app.g f52405g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final v f52406h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final g5.a f52407i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final JwtUtil f52408j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final DnsResolver f52409k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final x4.a f52410l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final MutableLiveData<DnsResolver.DnsResolutionResult> f52411m;
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final MutableLiveData<LaunchAdBean> f52412n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private final MutableLiveData<Boolean> f52413o;
    @m8.g

    /* renamed from: p  reason: collision with root package name */
    private final MutableLiveData<Boolean> f52414p;
    @m8.g

    /* renamed from: q  reason: collision with root package name */
    private final MutableLiveData<Boolean> f52415q;
    @m8.g

    /* renamed from: r  reason: collision with root package name */
    private final MutableLiveData<Boolean> f52416r;
    @m8.g

    /* renamed from: s  reason: collision with root package name */
    private final LiveData<com.qennnsad.aknkaksd.util.t<Boolean>> f52417s;

    /* compiled from: SplashViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel$Event;", "", "(Ljava/lang/String;I)V", "SHOW_APP_RECOVERED", "NAVIGATE_AUTH_ACTIVITY", "NAVIGATE_MAIN_ACTIVITY", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Event {
        SHOW_APP_RECOVERED,
        NAVIGATE_AUTH_ACTIVITY,
        NAVIGATE_MAIN_ACTIVITY
    }

    /* compiled from: SplashViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0010\u0001\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u00042\b\u0010\u0001\u001a\u0004\u0018\u00010\u00002\b\u0010\u0002\u001a\u0004\u0018\u00010\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0005"}, d2 = {"", "a", "b", "c", "Lcom/qennnsad/aknkaksd/util/t;", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/qennnsad/aknkaksd/util/t;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function3<Boolean, Boolean, Boolean, com.qennnsad.aknkaksd.util.t<? extends Boolean>> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f52419a = new a();

        a() {
            super(3);
        }

        @Override // kotlin.jvm.functions.Function3
        @m8.h
        /* renamed from: a */
        public final com.qennnsad.aknkaksd.util.t<Boolean> invoke(@m8.h Boolean bool, @m8.h Boolean bool2, @m8.h Boolean bool3) {
            Boolean bool4 = Boolean.TRUE;
            return new com.qennnsad.aknkaksd.util.t<>(Boolean.valueOf(Intrinsics.areEqual(bool, bool4) && Intrinsics.areEqual(bool2, bool4) && Intrinsics.areEqual(bool3, bool4)));
        }
    }

    /* compiled from: SplashViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.splash.SplashViewModel$proceedWithNextScreen$1", f = "SplashViewModel.kt", i = {}, l = {125}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52420a;

        b(Continuation<? super b> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f52420a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.sdk.c h4 = SDKManager.h();
                this.f52420a = 1;
                if (h4.n(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SplashViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.splash.SplashViewModel$proceedWithNextScreen$2", f = "SplashViewModel.kt", i = {}, l = {h0.G}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52421a;

        c(Continuation<? super c> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new c(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((c) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object b10;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f52421a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                v vVar = SplashViewModel.this.f52406h;
                d.a aVar = new d.a(null, 1, null);
                this.f52421a = 1;
                b10 = vVar.b(aVar, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            SplashViewModel splashViewModel = SplashViewModel.this;
            if (Result.m77isSuccessimpl(b10)) {
                Unit unit = (Unit) b10;
                Timber.f93860a.k("Guest login success. Proceed to main", new Object[0]);
                splashViewModel.l(Event.NAVIGATE_MAIN_ACTIVITY);
            }
            SplashViewModel splashViewModel2 = SplashViewModel.this;
            Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(b10);
            if (m73exceptionOrNullimpl != null) {
                Timber.f93860a.k("Guest login failed. Proceed to auth", new Object[0]);
                splashViewModel2.g(m73exceptionOrNullimpl);
                splashViewModel2.l(Event.NAVIGATE_AUTH_ACTIVITY);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SplashViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class d extends Lambda implements Function1<ConfigBean, Unit> {
        d() {
            super(1);
        }

        public final void a(@m8.g ConfigBean it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Timber.b bVar = Timber.f93860a;
            bVar.k("AppConfig --success:" + it, new Object[0]);
            SplashViewModel.this.w().setValue(Boolean.TRUE);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(ConfigBean configBean) {
            a(configBean);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SplashViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.splash.SplashViewModel$requestAppVersion$1", f = "SplashViewModel.kt", i = {}, l = {82}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class e extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52424a;

        e(Continuation<? super e> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new e(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((e) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object b10;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f52424a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.app.l lVar = SplashViewModel.this.f52404f;
                Unit unit = Unit.INSTANCE;
                this.f52424a = 1;
                b10 = lVar.b(unit, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            SplashViewModel splashViewModel = SplashViewModel.this;
            if (Result.m77isSuccessimpl(b10)) {
                Timber.b bVar = Timber.f93860a;
                bVar.k("AppVersion --success: " + ((AppUpdateBean) b10), new Object[0]);
                splashViewModel.x().setValue(Boxing.boxBoolean(true));
            }
            SplashViewModel splashViewModel2 = SplashViewModel.this;
            Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(b10);
            if (m73exceptionOrNullimpl != null) {
                if (m73exceptionOrNullimpl instanceof RequestException) {
                    com.qennnsad.aknkaksd.analytics.error.b a10 = com.qennnsad.aknkaksd.analytics.error.b.f47679a.a();
                    StringBuilder sb = new StringBuilder();
                    sb.append("Get version information exception: ");
                    RequestException requestException = (RequestException) m73exceptionOrNullimpl;
                    sb.append(requestException.getResponse());
                    a10.b(new Exception(sb.toString()));
                    Timber.b bVar2 = Timber.f93860a;
                    bVar2.x("AppVersion--onDataFailure: " + requestException.getResponse(), new Object[0]);
                } else {
                    Timber.b bVar3 = Timber.f93860a;
                    bVar3.x("AppVersion --error: " + m73exceptionOrNullimpl.getMessage(), new Object[0]);
                    com.qennnsad.aknkaksd.analytics.error.b.f47679a.a().b(m73exceptionOrNullimpl);
                }
                splashViewModel2.x().setValue(Boxing.boxBoolean(true));
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SplashViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.splash.SplashViewModel$requestLaunchAd$1", f = "SplashViewModel.kt", i = {}, l = {65}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class f extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52426a;

        f(Continuation<? super f> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new f(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((f) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object b10;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f52426a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.app.o oVar = SplashViewModel.this.f52403e;
                Unit unit = Unit.INSTANCE;
                this.f52426a = 1;
                b10 = oVar.b(unit, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            SplashViewModel splashViewModel = SplashViewModel.this;
            if (Result.m77isSuccessimpl(b10)) {
                LaunchAdBean launchAdBean = (LaunchAdBean) b10;
                Timber.b bVar = Timber.f93860a;
                bVar.k("Launch Ad --success:" + launchAdBean, new Object[0]);
                splashViewModel.A().setValue(launchAdBean);
            }
            SplashViewModel splashViewModel2 = SplashViewModel.this;
            Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(b10);
            if (m73exceptionOrNullimpl != null) {
                Timber.b bVar2 = Timber.f93860a;
                bVar2.x("Launch Ad --failed:" + m73exceptionOrNullimpl.getStackTrace(), new Object[0]);
                splashViewModel2.B().setValue(Boxing.boxBoolean(true));
            }
            return Unit.INSTANCE;
        }
    }

    @u7.a
    public SplashViewModel(@m8.g SavedStateHandle state, @m8.g com.qennnsad.aknkaksd.domain.usecase.app.o requestLaunchAdUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.app.l requestAppVersionUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.app.g requestAppConfigUseCase, @m8.g v loginGuestUseCase, @m8.g g5.a localDataManager, @m8.g JwtUtil jwtUtil, @m8.g DnsResolver dnsResolver, @m8.g x4.a analytics) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(requestLaunchAdUseCase, "requestLaunchAdUseCase");
        Intrinsics.checkNotNullParameter(requestAppVersionUseCase, "requestAppVersionUseCase");
        Intrinsics.checkNotNullParameter(requestAppConfigUseCase, "requestAppConfigUseCase");
        Intrinsics.checkNotNullParameter(loginGuestUseCase, "loginGuestUseCase");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(jwtUtil, "jwtUtil");
        Intrinsics.checkNotNullParameter(dnsResolver, "dnsResolver");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        this.f52403e = requestLaunchAdUseCase;
        this.f52404f = requestAppVersionUseCase;
        this.f52405g = requestAppConfigUseCase;
        this.f52406h = loginGuestUseCase;
        this.f52407i = localDataManager;
        this.f52408j = jwtUtil;
        this.f52409k = dnsResolver;
        this.f52410l = analytics;
        MutableLiveData<DnsResolver.DnsResolutionResult> mutableLiveData = new MutableLiveData<>();
        dnsResolver.y(mutableLiveData);
        this.f52411m = mutableLiveData;
        this.f52412n = new MutableLiveData<>();
        Boolean bool = Boolean.FALSE;
        this.f52413o = new MutableLiveData<>(bool);
        MutableLiveData<Boolean> mutableLiveData2 = new MutableLiveData<>(bool);
        this.f52414p = mutableLiveData2;
        MutableLiveData<Boolean> mutableLiveData3 = new MutableLiveData<>(bool);
        this.f52415q = mutableLiveData3;
        MutableLiveData<Boolean> mutableLiveData4 = new MutableLiveData<>(bool);
        this.f52416r = mutableLiveData4;
        this.f52417s = o4.m.m(mutableLiveData2, mutableLiveData3, mutableLiveData4, a.f52419a);
        Object obj = state.get(SplashActivity.f52385j);
        Boolean bool2 = Boolean.TRUE;
        if (Intrinsics.areEqual(obj, bool2)) {
            l(Event.SHOW_APP_RECOVERED);
            mutableLiveData2.setValue(bool2);
        } else {
            I();
        }
        dnsResolver.q();
    }

    private final boolean E() {
        GuestConfig guest;
        Integer status;
        boolean z9 = true;
        if (!this.f52407i.y0()) {
            ConfigBean e4 = this.f52407i.e();
            if (!((e4 == null || (guest = e4.getGuest()) == null || (status = guest.getStatus()) == null || status.intValue() != 1) ? false : true)) {
                z9 = false;
            }
        }
        Timber.b bVar = Timber.f93860a;
        bVar.k("Guest login allowed: " + z9, new Object[0]);
        return z9;
    }

    private final j2 I() {
        return j(new f(null));
    }

    @m8.g
    public final MutableLiveData<LaunchAdBean> A() {
        return this.f52412n;
    }

    @m8.g
    public final MutableLiveData<Boolean> B() {
        return this.f52414p;
    }

    @m8.g
    public final LiveData<com.qennnsad.aknkaksd.util.t<Boolean>> C() {
        return this.f52417s;
    }

    public final boolean D() {
        UserBean C = this.f52407i.C();
        if (C != null) {
            Timber.b bVar = Timber.f93860a;
            bVar.k("Logged User Bean: " + C, new Object[0]);
            boolean isTicketValid$default = JwtUtil.isTicketValid$default(this.f52408j, this.f52407i.o(), true, false, 4, null);
            bVar.k("isAutoLoginAllowed: " + isTicketValid$default, new Object[0]);
            if (isTicketValid$default) {
                com.qennnsad.aknkaksd.analytics.error.b.f47679a.a().a(C.getId());
                this.f52410l.j(C.getId(), C.getNickname());
                this.f52410l.d(C.isGuest() ? EventSignature.APP_GUEST_LOGIN : EventSignature.APP_LOGIN, new String[0]);
            }
            return isTicketValid$default;
        }
        Timber.f93860a.k("isAutoLoginAllowed: false. No logged user", new Object[0]);
        return false;
    }

    public final void F() {
        j(new b(null));
        if (D()) {
            l(Event.NAVIGATE_MAIN_ACTIVITY);
        } else if (E()) {
            j(new c(null));
        } else {
            l(Event.NAVIGATE_AUTH_ACTIVITY);
        }
    }

    public final void G() {
        h(this.f52405g, null, Unit.INSTANCE, new d());
    }

    @m8.g
    public final j2 H() {
        return j(new e(null));
    }

    @m8.g
    public final x4.a v() {
        return this.f52410l;
    }

    @m8.g
    public final MutableLiveData<Boolean> w() {
        return this.f52415q;
    }

    @m8.g
    public final MutableLiveData<Boolean> x() {
        return this.f52413o;
    }

    @m8.g
    public final MutableLiveData<Boolean> y() {
        return this.f52416r;
    }

    @m8.g
    public final MutableLiveData<DnsResolver.DnsResolutionResult> z() {
        return this.f52411m;
    }
}
