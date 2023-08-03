package com.qennnsad.aknkaksd.presentation.module.auth.login;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.MutableLiveData;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.sdk.SDKManager;
import com.qennnsad.aknkaksd.BaseBeautyApplication;
import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.data.repository.dns.DnsResolver;
import com.qennnsad.aknkaksd.domain.base.RequestException;
import com.qennnsad.aknkaksd.domain.usecase.auth.d;
import com.qennnsad.aknkaksd.domain.usecase.auth.h0;
import com.qennnsad.aknkaksd.domain.usecase.auth.v;
import com.qennnsad.aknkaksd.domain.usecase.auth.x;
import com.qennnsad.aknkaksd.presentation.module.auth.captcha.CaptchaReason;
import com.qennnsad.aknkaksd.presentation.module.auth.h;
import com.qennnsad.aknkaksd.presentation.module.auth.login.b;
import com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType;
import io.sentry.h4;
import io.sentry.protocol.w;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.s0;

/* compiled from: LoginViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BA\b\u0007\u0012\u0006\u0010\\\u001a\u00020[\u0012\u0006\u0010)\u001a\u00020&\u0012\u0006\u0010-\u001a\u00020*\u0012\u0006\u00101\u001a\u00020.\u0012\u0006\u00105\u001a\u000202\u0012\u0006\u00109\u001a\u000206\u0012\u0006\u0010=\u001a\u00020:¢\u0006\u0004\b]\u0010^J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0015\u0010\r\u001a\u0004\u0018\u00010\fH\u0082@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000eJ\u0006\u0010\u000f\u001a\u00020\u0003J&\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0015J&\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\fJ0\u0010\u001e\u001a\u00020\u00032\b\u0010\u001d\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\fJ\u0006\u0010\u001f\u001a\u00020\u0003J\u000e\u0010 \u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005J\u0016\u0010\"\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\fJ \u0010$\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\f2\b\u0010#\u001a\u0004\u0018\u00010\fJ\u0006\u0010%\u001a\u00020\u0003R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\"\u0010D\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\u001d\u0010K\u001a\b\u0012\u0004\u0012\u00020F0E8\u0006¢\u0006\f\n\u0004\bG\u0010H\u001a\u0004\bI\u0010JR\u0019\u0010Q\u001a\u0004\u0018\u00010L8\u0006¢\u0006\f\n\u0004\bM\u0010N\u001a\u0004\bO\u0010PR\u0011\u0010S\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\bR\u0010AR\"\u0010U\u001a\u00020T8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bU\u0010V\u001a\u0004\bW\u0010X\"\u0004\bY\u0010Z\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006_"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b;", "", "I", "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;", "captchaFor", ExifInterface.GPS_DIRECTION_TRUE, "", h4.b.f83287e, "", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "", ExifInterface.LONGITUDE_EAST, "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "B", "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;", "forcedServerType", "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;", "forceServerResolutionHost", "testServerDomain", "Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;", "testServerCaptchaType", "P", "name", "countryCode", "password", "smsCode", "L", "captcha", "J", "K", "N", w.b.f83891c, "M", "token", "Q", "O", "Lcom/qennnsad/aknkaksd/domain/usecase/app/s;", "f", "Lcom/qennnsad/aknkaksd/domain/usecase/app/s;", "syncConfigUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/user/a;", "g", "Lcom/qennnsad/aknkaksd/domain/usecase/user/a;", "clearCurrentUserAndReleaseSocketUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;", "h", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;", "loginUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;", ContextChain.TAG_INFRA, "Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;", "loginGuestUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;", "j", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;", "getGraphCaptchaUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;", "k", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;", "sendSmsUseCase", "l", "Z", "G", "()Z", ExifInterface.LATITUDE_SOUTH, "(Z)V", "smsRequired", "Landroidx/lifecycle/MutableLiveData;", "Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;", "m", "Landroidx/lifecycle/MutableLiveData;", "D", "()Landroidx/lifecycle/MutableLiveData;", "config", "Lcom/qennnsad/aknkaksd/presentation/module/auth/h$a;", "n", "Lcom/qennnsad/aknkaksd/presentation/module/auth/h$a;", "F", "()Lcom/qennnsad/aknkaksd/presentation/module/auth/h$a;", "predefinedCredentials", "H", "isGuest", "Lh5/a;", "captchaToken", "Lh5/a;", "C", "()Lh5/a;", "R", "(Lh5/a;)V", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/app/s;Lcom/qennnsad/aknkaksd/domain/usecase/user/a;Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class LoginViewModel extends com.qennnsad.aknkaksd.presentation.common.l<com.qennnsad.aknkaksd.presentation.module.auth.login.b> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final g5.a f51131e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.app.s f51132f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.user.a f51133g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final x f51134h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final v f51135i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.auth.m f51136j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final h0 f51137k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f51138l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final MutableLiveData<ConfigBean> f51139m;
    @m8.h

    /* renamed from: n  reason: collision with root package name */
    private final h.a f51140n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private h5.a f51141o;

    /* compiled from: LoginViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel$1", f = "LoginViewModel.kt", i = {}, l = {43}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51142a;

        a(Continuation<? super a> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f51142a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.app.s sVar = LoginViewModel.this.f51132f;
                Unit unit = Unit.INSTANCE;
                this.f51142a = 1;
                if (sVar.b(unit, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            LoginViewModel.this.I();
            return Unit.INSTANCE;
        }
    }

    /* compiled from: LoginViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel$clearCurrentSession$1", f = "LoginViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51144a;

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
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f51144a == 0) {
                ResultKt.throwOnFailure(obj);
                SDKManager.h().h();
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* compiled from: LoginViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel$clearCurrentSession$2", f = "LoginViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51145a;

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
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f51145a == 0) {
                ResultKt.throwOnFailure(obj);
                LoginViewModel.this.f51133g.a();
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoginViewModel.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel", f = "LoginViewModel.kt", i = {0}, l = {162}, m = "getGraphCaptchaImage", n = {"this"}, s = {"L$0"})
    /* loaded from: classes3.dex */
    public static final class d extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f51147a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f51148b;

        /* renamed from: d  reason: collision with root package name */
        int f51150d;

        d(Continuation<? super d> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f51148b = obj;
            this.f51150d |= Integer.MIN_VALUE;
            return LoginViewModel.this.E(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoginViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel$login$1", f = "LoginViewModel.kt", i = {}, l = {86}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class e extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51151a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f51152b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ LoginViewModel f51153c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f51154d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f51155e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ String f51156f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ String f51157g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, LoginViewModel loginViewModel, String str2, String str3, String str4, String str5, Continuation<? super e> continuation) {
            super(2, continuation);
            this.f51152b = str;
            this.f51153c = loginViewModel;
            this.f51154d = str2;
            this.f51155e = str3;
            this.f51156f = str4;
            this.f51157g = str5;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new e(this.f51152b, this.f51153c, this.f51154d, this.f51155e, this.f51156f, this.f51157g, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((e) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            boolean isBlank;
            boolean isBlank2;
            Object b10;
            boolean isBlank3;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f51151a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                isBlank = StringsKt__StringsJVMKt.isBlank(this.f51152b);
                if (isBlank) {
                    this.f51153c.p("请输入用户名");
                } else {
                    isBlank2 = StringsKt__StringsJVMKt.isBlank(this.f51154d);
                    if (isBlank2) {
                        this.f51153c.p("请输入密码");
                    } else {
                        if (this.f51153c.G()) {
                            isBlank3 = StringsKt__StringsJVMKt.isBlank(this.f51155e);
                            if (isBlank3) {
                                this.f51153c.p("请输入短信代码");
                            }
                        }
                        this.f51153c.C().f(this.f51156f);
                        x xVar = this.f51153c.f51134h;
                        d.b bVar = new d.b(this.f51153c.C(), this.f51152b, this.f51157g, this.f51154d, this.f51153c.G() ? this.f51155e : null);
                        this.f51151a = 1;
                        b10 = xVar.b(bVar, this);
                        if (b10 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                }
                return Unit.INSTANCE;
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            LoginViewModel loginViewModel = this.f51153c;
            if (Result.m77isSuccessimpl(b10)) {
                Unit unit = (Unit) b10;
                loginViewModel.l(b.a.f51176a);
            }
            LoginViewModel loginViewModel2 = this.f51153c;
            Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(b10);
            if (m73exceptionOrNullimpl != null && !loginViewModel2.A(m73exceptionOrNullimpl, CaptchaReason.LOGIN)) {
                loginViewModel2.g(m73exceptionOrNullimpl);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: LoginViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel$loginGuest$1", f = "LoginViewModel.kt", i = {}, l = {102}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class f extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51158a;

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
            int i4 = this.f51158a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                v vVar = LoginViewModel.this.f51135i;
                d.a aVar = new d.a(null, 1, null);
                this.f51158a = 1;
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
            LoginViewModel loginViewModel = LoginViewModel.this;
            if (Result.m77isSuccessimpl(b10)) {
                Unit unit = (Unit) b10;
                loginViewModel.l(b.a.f51176a);
            }
            LoginViewModel loginViewModel2 = LoginViewModel.this;
            Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(b10);
            if (m73exceptionOrNullimpl != null && !loginViewModel2.A(m73exceptionOrNullimpl, CaptchaReason.LOGIN)) {
                loginViewModel2.g(m73exceptionOrNullimpl);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoginViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel$requestGraphCaptcha$1", f = "LoginViewModel.kt", i = {}, l = {156}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class g extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51160a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ CaptchaReason f51162c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(CaptchaReason captchaReason, Continuation<? super g> continuation) {
            super(2, continuation);
            this.f51162c = captchaReason;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new g(this.f51162c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((g) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f51160a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                LoginViewModel loginViewModel = LoginViewModel.this;
                this.f51160a = 1;
                obj = loginViewModel.E(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            String str = (String) obj;
            if (str != null) {
                LoginViewModel.this.l(new b.c(this.f51162c, str));
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoginViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel$sendSms$1", f = "LoginViewModel.kt", i = {}, l = {179}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class h extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51163a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f51165c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f51166d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f51167e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(String str, String str2, String str3, Continuation<? super h> continuation) {
            super(2, continuation);
            this.f51165c = str;
            this.f51166d = str2;
            this.f51167e = str3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new h(this.f51165c, this.f51166d, this.f51167e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((h) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object b10;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f51163a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                LoginViewModel.this.C().f(this.f51165c);
                h0 h0Var = LoginViewModel.this.f51137k;
                h0.a aVar = new h0.a(this.f51166d, this.f51167e, com.qennnsad.aknkaksd.data.websocket.b.f47819k, LoginViewModel.this.C());
                this.f51163a = 1;
                b10 = h0Var.b(aVar, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            LoginViewModel loginViewModel = LoginViewModel.this;
            if (Result.m77isSuccessimpl(b10)) {
                String str = (String) b10;
                loginViewModel.R(new h5.a(CaptchaType.None, null, 2, null));
                loginViewModel.l(b.g.f51183a);
            }
            LoginViewModel loginViewModel2 = LoginViewModel.this;
            Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(b10);
            if (m73exceptionOrNullimpl != null && !loginViewModel2.A(m73exceptionOrNullimpl, CaptchaReason.SMS)) {
                if ((m73exceptionOrNullimpl instanceof RequestException) && ((RequestException) m73exceptionOrNullimpl).getResponse().getCode() == 1) {
                    loginViewModel2.l(b.C0414b.f51177a);
                } else {
                    loginViewModel2.g(m73exceptionOrNullimpl);
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoginViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel$showCaptcha$1", f = "LoginViewModel.kt", i = {}, l = {115}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class i extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51168a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ CaptchaReason f51170c;

        /* compiled from: LoginViewModel.kt */
        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[CaptchaType.values().length];
                iArr[CaptchaType.Re.ordinal()] = 1;
                iArr[CaptchaType.H.ordinal()] = 2;
                iArr[CaptchaType.Graph.ordinal()] = 3;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(CaptchaReason captchaReason, Continuation<? super i> continuation) {
            super(2, continuation);
            this.f51170c = captchaReason;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new i(this.f51170c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((i) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x005f  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r5) {
            /*
                r4 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r4.f51168a
                r2 = 0
                r3 = 1
                if (r1 == 0) goto L18
                if (r1 != r3) goto L10
                kotlin.ResultKt.throwOnFailure(r5)
                goto L41
            L10:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r0)
                throw r5
            L18:
                kotlin.ResultKt.throwOnFailure(r5)
                com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel r5 = com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel.this
                h5.a r5 = r5.C()
                com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType r5 = r5.b()
                int[] r1 = com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel.i.a.$EnumSwitchMapping$0
                int r5 = r5.ordinal()
                r5 = r1[r5]
                if (r5 == r3) goto L56
                r1 = 2
                if (r5 == r1) goto L4e
                r1 = 3
                if (r5 == r1) goto L36
                goto L5d
            L36:
                com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel r5 = com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel.this
                r4.f51168a = r3
                java.lang.Object r5 = com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel.u(r5, r4)
                if (r5 != r0) goto L41
                return r0
            L41:
                java.lang.String r5 = (java.lang.String) r5
                if (r5 == 0) goto L5d
                com.qennnsad.aknkaksd.presentation.module.auth.captcha.CaptchaReason r0 = r4.f51170c
                com.qennnsad.aknkaksd.presentation.module.auth.login.b$c r1 = new com.qennnsad.aknkaksd.presentation.module.auth.login.b$c
                r1.<init>(r0, r5)
                r2 = r1
                goto L5d
            L4e:
                com.qennnsad.aknkaksd.presentation.module.auth.login.b$d r2 = new com.qennnsad.aknkaksd.presentation.module.auth.login.b$d
                com.qennnsad.aknkaksd.presentation.module.auth.captcha.CaptchaReason r5 = r4.f51170c
                r2.<init>(r5)
                goto L5d
            L56:
                com.qennnsad.aknkaksd.presentation.module.auth.login.b$e r2 = new com.qennnsad.aknkaksd.presentation.module.auth.login.b$e
                com.qennnsad.aknkaksd.presentation.module.auth.captcha.CaptchaReason r5 = r4.f51170c
                r2.<init>(r5)
            L5d:
                if (r2 == 0) goto L64
                com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel r5 = com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel.this
                r5.l(r2)
            L64:
                kotlin.Unit r5 = kotlin.Unit.INSTANCE
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel.i.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @u7.a
    public LoginViewModel(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.domain.usecase.app.s syncConfigUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.user.a clearCurrentUserAndReleaseSocketUseCase, @m8.g x loginUseCase, @m8.g v loginGuestUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.auth.m getGraphCaptchaUseCase, @m8.g h0 sendSmsUseCase) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(syncConfigUseCase, "syncConfigUseCase");
        Intrinsics.checkNotNullParameter(clearCurrentUserAndReleaseSocketUseCase, "clearCurrentUserAndReleaseSocketUseCase");
        Intrinsics.checkNotNullParameter(loginUseCase, "loginUseCase");
        Intrinsics.checkNotNullParameter(loginGuestUseCase, "loginGuestUseCase");
        Intrinsics.checkNotNullParameter(getGraphCaptchaUseCase, "getGraphCaptchaUseCase");
        Intrinsics.checkNotNullParameter(sendSmsUseCase, "sendSmsUseCase");
        this.f51131e = localDataManager;
        this.f51132f = syncConfigUseCase;
        this.f51133g = clearCurrentUserAndReleaseSocketUseCase;
        this.f51134h = loginUseCase;
        this.f51135i = loginGuestUseCase;
        this.f51136j = getGraphCaptchaUseCase;
        this.f51137k = sendSmsUseCase;
        this.f51139m = new MutableLiveData<>();
        this.f51140n = com.qennnsad.aknkaksd.presentation.module.auth.h.f51101a.a();
        this.f51141o = new h5.a(CaptchaType.None, null, 2, null);
        j(new a(null));
        BaseBeautyApplication.a aVar = BaseBeautyApplication.Companion;
        BaseBeautyApplication.gameCenterPointsRefreshPending = true;
        I();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean A(Throwable th, CaptchaReason captchaReason) {
        if (!(th instanceof RequestException)) {
            this.f51141o = new h5.a(CaptchaType.None, null, 2, null);
            return false;
        }
        int code = ((RequestException) th).getResponse().getCode();
        if (code != 1) {
            if (code == 2) {
                this.f51141o = new h5.a(CaptchaType.Re, null, 2, null);
                l(new b.e(captchaReason));
            } else if (code == 3) {
                this.f51138l = true;
                this.f51141o = new h5.a(CaptchaType.None, null, 2, null);
                l(b.f.f51182a);
            } else if (code == 4) {
                this.f51141o = new h5.a(CaptchaType.H, null, 2, null);
                l(new b.d(captchaReason));
            } else if (code != 5) {
                this.f51141o = new h5.a(CaptchaType.None, null, 2, null);
                return false;
            } else {
                this.f51141o = new h5.a(CaptchaType.Graph, null, 2, null);
                N(captchaReason);
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0064 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object E(kotlin.coroutines.Continuation<? super java.lang.String> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel.d
            if (r0 == 0) goto L13
            r0 = r5
            com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel$d r0 = (com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel.d) r0
            int r1 = r0.f51150d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f51150d = r1
            goto L18
        L13:
            com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel$d r0 = new com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel$d
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f51148b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f51150d
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r0 = r0.f51147a
            com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel r0 = (com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel) r0
            kotlin.ResultKt.throwOnFailure(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.m79unboximpl()
            goto L4e
        L33:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L3b:
            kotlin.ResultKt.throwOnFailure(r5)
            com.qennnsad.aknkaksd.domain.usecase.auth.m r5 = r4.f51136j
            kotlin.Unit r2 = kotlin.Unit.INSTANCE
            r0.f51147a = r4
            r0.f51150d = r3
            java.lang.Object r5 = r5.b(r2, r0)
            if (r5 != r1) goto L4d
            return r1
        L4d:
            r0 = r4
        L4e:
            boolean r1 = kotlin.Result.m77isSuccessimpl(r5)
            if (r1 == 0) goto L64
            com.qennnsad.aknkaksd.data.bean.user.LoginGCaptchaBean r5 = (com.qennnsad.aknkaksd.data.bean.user.LoginGCaptchaBean) r5
            h5.a r0 = r0.f51141o
            java.lang.String r1 = r5.getCaptchaId()
            r0.e(r1)
            java.lang.String r5 = r5.getCaptchaImage()
            return r5
        L64:
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel.E(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I() {
        this.f51139m.setValue(this.f51131e.e());
    }

    private final void T(CaptchaReason captchaReason) {
        k(d(), new i(captchaReason, null));
    }

    public final void B() {
        j(new b(null));
        j(new c(null));
    }

    @m8.g
    public final h5.a C() {
        return this.f51141o;
    }

    @m8.g
    public final MutableLiveData<ConfigBean> D() {
        return this.f51139m;
    }

    @m8.h
    public final h.a F() {
        return this.f51140n;
    }

    public final boolean G() {
        return this.f51138l;
    }

    public final boolean H() {
        UserBean C = this.f51131e.C();
        return C != null && C.isGuest();
    }

    public final void J(@m8.h String str, @m8.g String name, @m8.g String countryCode, @m8.g String password, @m8.g String smsCode) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(countryCode, "countryCode");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(smsCode, "smsCode");
        k(d(), new e(name, this, password, smsCode, str, countryCode, null));
    }

    public final void K() {
        k(d(), new f(null));
    }

    public final void L(@m8.g String name, @m8.g String countryCode, @m8.g String password, @m8.g String smsCode) {
        boolean isBlank;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(countryCode, "countryCode");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(smsCode, "smsCode");
        isBlank = StringsKt__StringsJVMKt.isBlank(smsCode);
        if (isBlank && this.f51141o.d()) {
            T(CaptchaReason.LOGIN);
        } else {
            J(null, name, countryCode, password, smsCode);
        }
    }

    public final void M(@m8.g String username, @m8.g String countryCode) {
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(countryCode, "countryCode");
        if (this.f51141o.d()) {
            T(CaptchaReason.SMS);
        } else {
            Q(username, countryCode, null);
        }
    }

    public final void N(@m8.g CaptchaReason captchaFor) {
        Intrinsics.checkNotNullParameter(captchaFor, "captchaFor");
        k(d(), new g(captchaFor, null));
    }

    public final void O() {
        this.f51138l = false;
        this.f51141o = new h5.a(CaptchaType.None, null, 2, null);
    }

    public final void P(@m8.g DnsResolver.ForcedServerType forcedServerType, @m8.g DnsResolver.ForcedDnsResolutionHost forceServerResolutionHost, @m8.g String testServerDomain, @m8.g CaptchaType testServerCaptchaType) {
        Intrinsics.checkNotNullParameter(forcedServerType, "forcedServerType");
        Intrinsics.checkNotNullParameter(forceServerResolutionHost, "forceServerResolutionHost");
        Intrinsics.checkNotNullParameter(testServerDomain, "testServerDomain");
        Intrinsics.checkNotNullParameter(testServerCaptchaType, "testServerCaptchaType");
        this.f51131e.b0(forcedServerType);
        this.f51131e.c0(forceServerResolutionHost);
        this.f51131e.o0(testServerDomain);
        this.f51131e.n0(testServerCaptchaType);
    }

    public final void Q(@m8.g String username, @m8.g String countryCode, @m8.h String str) {
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(countryCode, "countryCode");
        k(d(), new h(str, username, countryCode, null));
    }

    public final void R(@m8.g h5.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f51141o = aVar;
    }

    public final void S(boolean z9) {
        this.f51138l = z9;
    }
}
