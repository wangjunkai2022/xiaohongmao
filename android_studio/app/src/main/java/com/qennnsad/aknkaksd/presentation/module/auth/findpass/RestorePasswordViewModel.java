package com.qennnsad.aknkaksd.presentation.module.auth.findpass;

import androidx.exifinterface.media.ExifInterface;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.domain.base.RequestException;
import com.qennnsad.aknkaksd.domain.usecase.auth.h0;
import com.qennnsad.aknkaksd.domain.usecase.auth.j;
import com.qennnsad.aknkaksd.presentation.module.auth.findpass.b;
import com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType;
import io.sentry.h4;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.s0;
import timber.log.Timber;

/* compiled from: RestorePasswordViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B)\b\u0007\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u0012\u0006\u0010\u001e\u001a\u00020\u001b\u0012\u0006\u0010\"\u001a\u00020\u001f\u0012\u0006\u0010.\u001a\u00020-¢\u0006\u0004\b/\u00100J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0015\u0010\n\u001a\u0004\u0018\u00010\tH\u0082@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bJ&\u0010\u0010\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tJ\u0016\u0010\u0012\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tJ \u0010\u0014\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\t2\b\u0010\u0013\u001a\u0004\u0018\u00010\tJ\u0006\u0010\u0015\u001a\u00020\u0003J\u0006\u0010\u0016\u001a\u00020\u0003R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0011\u0010%\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b#\u0010$R\"\u0010'\u001a\u00020&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,\u0082\u0002\u0004\n\u0002\b\u0019¨\u00061"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b;", "", "F", "", h4.b.f83287e, "", "v", "", y.b.f83920h, "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "countryCode", "phone", "newPassword", "smsCode", ExifInterface.LONGITUDE_EAST, "phoneNumber", "z", "token", "C", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;", "e", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;", "sendSmsUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;", "f", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;", "getGraphCaptchaUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;", "g", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;", "changePasswordUseCase", y.b.f83919g, "()Ljava/lang/String;", "contactUs", "Lh5/a;", "captchaToken", "Lh5/a;", "w", "()Lh5/a;", "D", "(Lh5/a;)V", "Lg5/a;", "localDataManager", "<init>", "(Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class RestorePasswordViewModel extends com.qennnsad.aknkaksd.presentation.common.l<com.qennnsad.aknkaksd.presentation.module.auth.findpass.b> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final h0 f51053e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.auth.m f51054f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.auth.j f51055g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final g5.a f51056h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private h5.a f51057i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RestorePasswordViewModel.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel", f = "RestorePasswordViewModel.kt", i = {0}, l = {131}, m = "getGraphCaptchaImage", n = {"this"}, s = {"L$0"})
    /* loaded from: classes3.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f51058a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f51059b;

        /* renamed from: d  reason: collision with root package name */
        int f51061d;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f51059b = obj;
            this.f51061d |= Integer.MIN_VALUE;
            return RestorePasswordViewModel.this.y(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RestorePasswordViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel$requestGraphCaptcha$1", f = "RestorePasswordViewModel.kt", i = {}, l = {125}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51062a;

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
            int i4 = this.f51062a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                RestorePasswordViewModel restorePasswordViewModel = RestorePasswordViewModel.this;
                this.f51062a = 1;
                obj = restorePasswordViewModel.y(this);
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
                RestorePasswordViewModel.this.l(new b.c(str));
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RestorePasswordViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel$sendSms$1", f = "RestorePasswordViewModel.kt", i = {}, l = {77}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51064a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f51066c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f51067d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f51068e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, String str2, String str3, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f51066c = str;
            this.f51067d = str2;
            this.f51068e = str3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new c(this.f51066c, this.f51067d, this.f51068e, continuation);
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
            int i4 = this.f51064a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                RestorePasswordViewModel.this.w().f(this.f51066c);
                h0 h0Var = RestorePasswordViewModel.this.f51053e;
                h0.a aVar = new h0.a(this.f51067d, this.f51068e, "findpass", RestorePasswordViewModel.this.w());
                this.f51064a = 1;
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
            RestorePasswordViewModel restorePasswordViewModel = RestorePasswordViewModel.this;
            if (Result.m77isSuccessimpl(b10)) {
                String str = (String) b10;
                restorePasswordViewModel.D(new h5.a(CaptchaType.None, null, 2, null));
                restorePasswordViewModel.l(b.f.f51082a);
            }
            RestorePasswordViewModel restorePasswordViewModel2 = RestorePasswordViewModel.this;
            Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(b10);
            if (m73exceptionOrNullimpl != null && !restorePasswordViewModel2.v(m73exceptionOrNullimpl)) {
                if ((m73exceptionOrNullimpl instanceof RequestException) && ((RequestException) m73exceptionOrNullimpl).getResponse().getCode() == 1) {
                    restorePasswordViewModel2.g(m73exceptionOrNullimpl);
                    restorePasswordViewModel2.l(b.C0413b.f51078a);
                } else {
                    restorePasswordViewModel2.g(m73exceptionOrNullimpl);
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: RestorePasswordViewModel.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class d extends Lambda implements Function1<String, Unit> {
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
            RestorePasswordViewModel.this.p(it);
            RestorePasswordViewModel.this.l(b.a.f51077a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RestorePasswordViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel$showCaptcha$1", f = "RestorePasswordViewModel.kt", i = {}, l = {67}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class e extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51070a;

        /* compiled from: RestorePasswordViewModel.kt */
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

        /* JADX WARN: Removed duplicated region for block: B:24:0x0053  */
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
                int r1 = r4.f51070a
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
                com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel r5 = com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel.this
                h5.a r5 = r5.w()
                com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType r5 = r5.b()
                int[] r1 = com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel.e.a.$EnumSwitchMapping$0
                int r5 = r5.ordinal()
                r5 = r1[r5]
                if (r5 == r3) goto L4f
                r1 = 2
                if (r5 == r1) goto L4c
                r1 = 3
                if (r5 == r1) goto L36
                goto L51
            L36:
                com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel r5 = com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel.this
                r4.f51070a = r3
                java.lang.Object r5 = com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel.t(r5, r4)
                if (r5 != r0) goto L41
                return r0
            L41:
                java.lang.String r5 = (java.lang.String) r5
                if (r5 == 0) goto L51
                com.qennnsad.aknkaksd.presentation.module.auth.findpass.b$c r0 = new com.qennnsad.aknkaksd.presentation.module.auth.findpass.b$c
                r0.<init>(r5)
                r2 = r0
                goto L51
            L4c:
                com.qennnsad.aknkaksd.presentation.module.auth.findpass.b$d r2 = com.qennnsad.aknkaksd.presentation.module.auth.findpass.b.d.f51080a
                goto L51
            L4f:
                com.qennnsad.aknkaksd.presentation.module.auth.findpass.b$e r2 = com.qennnsad.aknkaksd.presentation.module.auth.findpass.b.e.f51081a
            L51:
                if (r2 == 0) goto L58
                com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel r5 = com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel.this
                r5.l(r2)
            L58:
                kotlin.Unit r5 = kotlin.Unit.INSTANCE
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel.e.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @u7.a
    public RestorePasswordViewModel(@m8.g h0 sendSmsUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.auth.m getGraphCaptchaUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.auth.j changePasswordUseCase, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(sendSmsUseCase, "sendSmsUseCase");
        Intrinsics.checkNotNullParameter(getGraphCaptchaUseCase, "getGraphCaptchaUseCase");
        Intrinsics.checkNotNullParameter(changePasswordUseCase, "changePasswordUseCase");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f51053e = sendSmsUseCase;
        this.f51054f = getGraphCaptchaUseCase;
        this.f51055g = changePasswordUseCase;
        this.f51056h = localDataManager;
        this.f51057i = new h5.a(CaptchaType.None, null, 2, null);
    }

    private final void F() {
        k(d(), new e(null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean v(Throwable th) {
        if (!(th instanceof RequestException)) {
            this.f51057i = new h5.a(CaptchaType.None, null, 2, null);
            return false;
        }
        int code = ((RequestException) th).getResponse().getCode();
        if (code != 1) {
            if (code == 2) {
                this.f51057i = new h5.a(CaptchaType.Re, null, 2, null);
                l(b.e.f51081a);
            } else if (code == 3) {
                Timber.f93860a.x("Weird. Sms is required for send sms", new Object[0]);
            } else if (code == 4) {
                this.f51057i = new h5.a(CaptchaType.H, null, 2, null);
                l(b.d.f51080a);
            } else if (code != 5) {
                this.f51057i = new h5.a(CaptchaType.None, null, 2, null);
                return false;
            } else {
                this.f51057i = new h5.a(CaptchaType.Graph, null, 2, null);
                A();
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
    public final java.lang.Object y(kotlin.coroutines.Continuation<? super java.lang.String> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel.a
            if (r0 == 0) goto L13
            r0 = r5
            com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel$a r0 = (com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel.a) r0
            int r1 = r0.f51061d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f51061d = r1
            goto L18
        L13:
            com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel$a r0 = new com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel$a
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f51059b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f51061d
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r0 = r0.f51058a
            com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel r0 = (com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel) r0
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
            com.qennnsad.aknkaksd.domain.usecase.auth.m r5 = r4.f51054f
            kotlin.Unit r2 = kotlin.Unit.INSTANCE
            r0.f51058a = r4
            r0.f51061d = r3
            java.lang.Object r5 = r5.b(r2, r0)
            if (r5 != r1) goto L4d
            return r1
        L4d:
            r0 = r4
        L4e:
            boolean r1 = kotlin.Result.m77isSuccessimpl(r5)
            if (r1 == 0) goto L64
            com.qennnsad.aknkaksd.data.bean.user.LoginGCaptchaBean r5 = (com.qennnsad.aknkaksd.data.bean.user.LoginGCaptchaBean) r5
            h5.a r0 = r0.f51057i
            java.lang.String r1 = r5.getCaptchaId()
            r0.e(r1)
            java.lang.String r5 = r5.getCaptchaImage()
            return r5
        L64:
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel.y(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void A() {
        k(d(), new b(null));
    }

    public final void B() {
        this.f51057i = new h5.a(CaptchaType.None, null, 2, null);
    }

    public final void C(@m8.g String countryCode, @m8.g String phoneNumber, @m8.h String str) {
        Intrinsics.checkNotNullParameter(countryCode, "countryCode");
        Intrinsics.checkNotNullParameter(phoneNumber, "phoneNumber");
        k(d(), new c(str, phoneNumber, countryCode, null));
    }

    public final void D(@m8.g h5.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f51057i = aVar;
    }

    public final void E(@m8.g String countryCode, @m8.g String phone, @m8.g String newPassword, @m8.g String smsCode) {
        boolean isBlank;
        boolean isBlank2;
        Intrinsics.checkNotNullParameter(countryCode, "countryCode");
        Intrinsics.checkNotNullParameter(phone, "phone");
        Intrinsics.checkNotNullParameter(newPassword, "newPassword");
        Intrinsics.checkNotNullParameter(smsCode, "smsCode");
        isBlank = StringsKt__StringsJVMKt.isBlank(phone);
        if (isBlank) {
            o(R.string.phone_login_badnumber);
            return;
        }
        isBlank2 = StringsKt__StringsJVMKt.isBlank(smsCode);
        if (isBlank2) {
            o(R.string.phone_login_nullcode);
        } else {
            h(this.f51055g, d(), new j.a(phone, countryCode, newPassword, smsCode), new d());
        }
    }

    @m8.g
    public final h5.a w() {
        return this.f51057i;
    }

    @m8.g
    public final String x() {
        String contactUs = this.f51056h.g().getContactUs();
        Intrinsics.checkNotNullExpressionValue(contactUs, "localDataManager.getDns().contactUs");
        return contactUs;
    }

    public final void z(@m8.g String countryCode, @m8.g String phoneNumber) {
        boolean isBlank;
        Intrinsics.checkNotNullParameter(countryCode, "countryCode");
        Intrinsics.checkNotNullParameter(phoneNumber, "phoneNumber");
        isBlank = StringsKt__StringsJVMKt.isBlank(phoneNumber);
        if (isBlank) {
            o(R.string.phone_login_nullnumber);
        } else if (this.f51057i.d()) {
            F();
        } else {
            C(countryCode, phoneNumber, null);
        }
    }
}
