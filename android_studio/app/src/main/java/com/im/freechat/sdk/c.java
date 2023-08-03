package com.im.freechat.sdk;

import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.domain.o;
import com.im.freechat.sdk.a;
import com.im.freechat.shared.entities.LoginState;
import com.im.freechat.shared.entities.auth.Country;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.l;
import kotlinx.coroutines.s0;

/* compiled from: LoginManager.kt */
@Metadata(bv = {}, d1 = {"\u0000À\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B_\u0012\u0006\u00101\u001a\u00020.\u0012\u0006\u00104\u001a\u000202\u0012\u0006\u00107\u001a\u000205\u0012\u0006\u0010:\u001a\u000208\u0012\u0006\u0010=\u001a\u00020;\u0012\u0006\u0010@\u001a\u00020>\u0012\u0006\u0010D\u001a\u00020A\u0012\u0006\u0010G\u001a\u00020E\u0012\u0006\u0010J\u001a\u00020H\u0012\u0006\u0010M\u001a\u00020K\u0012\u0006\u0010P\u001a\u00020N¢\u0006\u0004\bQ\u0010RJ\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u007f\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2 \b\u0002\u0010\u000f\u001a\u001a\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\f2&\b\u0002\u0010\u0011\u001a \b\u0001\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0010H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\"\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0014H\u0086@ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016J*\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00142\u0006\u0010\u0017\u001a\u00020\nH\u0086@ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\"\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\n0\u0014H\u0086@ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u0016J*\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00142\u0006\u0010\u001b\u001a\u00020\nH\u0086@ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u0019J*\u0010 \u001a\b\u0012\u0004\u0012\u00020\u000e0\u00142\u0006\u0010\u001f\u001a\u00020\u001eH\u0086@ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b \u0010!J*\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001e0\u00142\u0006\u0010\u001f\u001a\u00020\u001eH\u0086@ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b\"\u0010!J2\u0010#\u001a\b\u0012\u0004\u0012\u00020\b0\u00142\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u0005H\u0086@ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b#\u0010$J)\u0010'\u001a\u00020\u000e2\u0014\u0010&\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\fH\u0086@ø\u0001\u0000¢\u0006\u0004\b'\u0010(J$\u0010,\u001a\u00020+2\u0006\u0010*\u001a\u00020)2\u0014\u0010&\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\fJ\u0006\u0010-\u001a\u00020\u000eR\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0014\u00104\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u00103R\u0014\u00107\u001a\u0002058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u00106R\u0014\u0010:\u001a\u0002088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u00109R\u0014\u0010=\u001a\u00020;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010<R\u0014\u0010@\u001a\u00020>8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010?R\u0014\u0010D\u001a\u00020A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010CR\u0014\u0010G\u001a\u00020E8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010FR\u0014\u0010J\u001a\u00020H8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010IR\u0014\u0010M\u001a\u00020K8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010LR\u0014\u0010P\u001a\u00020N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010O\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006S"}, d2 = {"Lcom/im/freechat/sdk/c;", "", "", "Lcom/im/freechat/shared/entities/auth/Country;", "c", "", "userId", "role", "", "isMystery", "", "bearerToken", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "onSuccess", "Lkotlin/Function2;", "onFailure", "f", "(ILjava/lang/Integer;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Result;", "n", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "code", "k", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "b", "nickName", "Lcom/im/freechat/shared/entities/auth/UserInfo;", "l", "Lcom/im/freechat/shared/entities/auth/PhoneNumber;", "phoneNumber", "j", "(Lcom/im/freechat/shared/entities/auth/PhoneNumber;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", ContextChain.TAG_INFRA, "m", "(Lcom/im/freechat/shared/entities/auth/PhoneNumber;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/shared/entities/LoginState;", "onData", "d", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/sdk/a$a;", "suspendRunner", "Lkotlinx/coroutines/j2;", "e", "h", "Lcom/im/freechat/domain/usecase/auth/a;", "a", "Lcom/im/freechat/domain/usecase/auth/a;", "assertUserLoggedInInteractor", "Lcom/im/freechat/domain/usecase/auth/b;", "Lcom/im/freechat/domain/usecase/auth/b;", "externalLoginInteractor", "Lcom/im/freechat/domain/usecase/currentuser/e;", "Lcom/im/freechat/domain/usecase/currentuser/e;", "saveCountryCodeInteractor", "Lcom/im/freechat/domain/usecase/auth/d;", "Lcom/im/freechat/domain/usecase/auth/d;", "getCountryCodeInteractor", "Lcom/im/freechat/domain/usecase/currentuser/i;", "Lcom/im/freechat/domain/usecase/currentuser/i;", "setNicknameInteractor", "Lcom/im/freechat/domain/usecase/auth/i;", "Lcom/im/freechat/domain/usecase/auth/i;", "requestCodeInteractor", "Lcom/im/freechat/domain/usecase/auth/h;", "g", "Lcom/im/freechat/domain/usecase/auth/h;", "parsePhoneInteractor", "Lcom/im/freechat/domain/usecase/auth/j;", "Lcom/im/freechat/domain/usecase/auth/j;", "signInViaSmsInteractor", "Lcom/im/freechat/domain/o;", "Lcom/im/freechat/domain/o;", "phoneUtil", "Lcom/im/freechat/domain/usecase/auth/g;", "Lcom/im/freechat/domain/usecase/auth/g;", "logoutUserInteractor", "Lcom/im/freechat/domain/usecase/auth/f;", "Lcom/im/freechat/domain/usecase/auth/f;", "listenLoginStatusInteractor", "<init>", "(Lcom/im/freechat/domain/usecase/auth/a;Lcom/im/freechat/domain/usecase/auth/b;Lcom/im/freechat/domain/usecase/currentuser/e;Lcom/im/freechat/domain/usecase/auth/d;Lcom/im/freechat/domain/usecase/currentuser/i;Lcom/im/freechat/domain/usecase/auth/i;Lcom/im/freechat/domain/usecase/auth/h;Lcom/im/freechat/domain/usecase/auth/j;Lcom/im/freechat/domain/o;Lcom/im/freechat/domain/usecase/auth/g;Lcom/im/freechat/domain/usecase/auth/f;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.auth.a f42159a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.auth.b f42160b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.currentuser.e f42161c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.auth.d f42162d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.currentuser.i f42163e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.auth.i f42164f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.auth.h f42165g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.auth.j f42166h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final o f42167i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.auth.g f42168j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.auth.f f42169k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoginManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.sdk.LoginManager", f = "LoginManager.kt", i = {}, l = {58}, m = "getCountryCode-IoAF18A", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f42170a;

        /* renamed from: c  reason: collision with root package name */
        int f42172c;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            this.f42170a = obj;
            this.f42172c |= Integer.MIN_VALUE;
            Object b10 = c.this.b(this);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return b10 == coroutine_suspended ? b10 : Result.m69boximpl(b10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoginManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "Lcom/im/freechat/shared/entities/LoginState;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.LoginManager$listenLoginStatus$2", f = "LoginManager.kt", i = {}, l = {79}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends LoginState>, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42173a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f42174b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function1<LoginState, Unit> f42175c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: LoginManager.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/LoginState;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.sdk.LoginManager$listenLoginStatus$2$1", f = "LoginManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<LoginState, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f42176a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f42177b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Function1<LoginState, Unit> f42178c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(Function1<? super LoginState, Unit> function1, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f42178c = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f42178c, continuation);
                aVar.f42177b = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g LoginState loginState, @m8.h Continuation<? super Unit> continuation) {
                return ((a) create(loginState, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f42176a == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.f42178c.invoke((LoginState) this.f42177b);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(Function1<? super LoginState, Unit> function1, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f42175c = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            b bVar = new b(this.f42175c, continuation);
            bVar.f42174b = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<? extends LoginState> result, @m8.h Continuation<? super Unit> continuation) {
            return ((b) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42173a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                a aVar = new a(this.f42175c, null);
                this.f42173a = 1;
                if (((com.im.freechat.shared.entities.Result) this.f42174b).onSuccess(aVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: LoginManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.LoginManager$listenLoginStatus$3", f = "LoginManager.kt", i = {}, l = {87}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.im.freechat.sdk.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    static final class C0338c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42179a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function1<LoginState, Unit> f42181c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C0338c(Function1<? super LoginState, Unit> function1, Continuation<? super C0338c> continuation) {
            super(2, continuation);
            this.f42181c = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new C0338c(this.f42181c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((C0338c) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42179a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                c cVar = c.this;
                Function1<LoginState, Unit> function1 = this.f42181c;
                this.f42179a = 1;
                if (cVar.d(function1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoginManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.sdk.LoginManager", f = "LoginManager.kt", i = {0, 0, 1}, l = {37, 45, 46}, m = "loginWithExternal", n = {"onSuccess", "onFailure", "onFailure"}, s = {"L$0", "L$1", "L$0"})
    /* loaded from: classes3.dex */
    public static final class d extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f42182a;

        /* renamed from: b  reason: collision with root package name */
        Object f42183b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f42184c;

        /* renamed from: e  reason: collision with root package name */
        int f42186e;

        d(Continuation<? super d> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f42184c = obj;
            this.f42186e |= Integer.MIN_VALUE;
            return c.this.f(0, null, false, null, null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoginManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.LoginManager$logout$1", f = "LoginManager.kt", i = {}, l = {93}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class e extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42187a;

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
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42187a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.auth.g gVar = c.this.f42168j;
                Unit unit = Unit.INSTANCE;
                this.f42187a = 1;
                if (gVar.a(unit, this) == coroutine_suspended) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoginManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.sdk.LoginManager", f = "LoginManager.kt", i = {}, l = {70}, m = "parsePhone-gIAlu-s", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class f extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f42189a;

        /* renamed from: c  reason: collision with root package name */
        int f42191c;

        f(Continuation<? super f> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            this.f42189a = obj;
            this.f42191c |= Integer.MIN_VALUE;
            Object i4 = c.this.i(null, this);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return i4 == coroutine_suspended ? i4 : Result.m69boximpl(i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoginManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.sdk.LoginManager", f = "LoginManager.kt", i = {}, l = {66}, m = "requestCode-gIAlu-s", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class g extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f42192a;

        /* renamed from: c  reason: collision with root package name */
        int f42194c;

        g(Continuation<? super g> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            this.f42192a = obj;
            this.f42194c |= Integer.MIN_VALUE;
            Object j4 = c.this.j(null, this);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return j4 == coroutine_suspended ? j4 : Result.m69boximpl(j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoginManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.sdk.LoginManager", f = "LoginManager.kt", i = {}, l = {54}, m = "saveCountryCode-gIAlu-s", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class h extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f42195a;

        /* renamed from: c  reason: collision with root package name */
        int f42197c;

        h(Continuation<? super h> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            this.f42195a = obj;
            this.f42197c |= Integer.MIN_VALUE;
            Object k10 = c.this.k(null, this);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return k10 == coroutine_suspended ? k10 : Result.m69boximpl(k10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoginManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.sdk.LoginManager", f = "LoginManager.kt", i = {}, l = {62}, m = "setNickname-gIAlu-s", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class i extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f42198a;

        /* renamed from: c  reason: collision with root package name */
        int f42200c;

        i(Continuation<? super i> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            this.f42198a = obj;
            this.f42200c |= Integer.MIN_VALUE;
            Object l10 = c.this.l(null, this);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return l10 == coroutine_suspended ? l10 : Result.m69boximpl(l10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoginManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.sdk.LoginManager", f = "LoginManager.kt", i = {}, l = {74}, m = "sighInViaSms-0E7RQCE", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class j extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f42201a;

        /* renamed from: c  reason: collision with root package name */
        int f42203c;

        j(Continuation<? super j> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            this.f42201a = obj;
            this.f42203c |= Integer.MIN_VALUE;
            Object m9 = c.this.m(null, 0, this);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return m9 == coroutine_suspended ? m9 : Result.m69boximpl(m9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoginManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.sdk.LoginManager", f = "LoginManager.kt", i = {}, l = {50}, m = "userIsLoggedIn-IoAF18A", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class k extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f42204a;

        /* renamed from: c  reason: collision with root package name */
        int f42206c;

        k(Continuation<? super k> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            this.f42204a = obj;
            this.f42206c |= Integer.MIN_VALUE;
            Object n9 = c.this.n(this);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return n9 == coroutine_suspended ? n9 : Result.m69boximpl(n9);
        }
    }

    public c(@m8.g com.im.freechat.domain.usecase.auth.a assertUserLoggedInInteractor, @m8.g com.im.freechat.domain.usecase.auth.b externalLoginInteractor, @m8.g com.im.freechat.domain.usecase.currentuser.e saveCountryCodeInteractor, @m8.g com.im.freechat.domain.usecase.auth.d getCountryCodeInteractor, @m8.g com.im.freechat.domain.usecase.currentuser.i setNicknameInteractor, @m8.g com.im.freechat.domain.usecase.auth.i requestCodeInteractor, @m8.g com.im.freechat.domain.usecase.auth.h parsePhoneInteractor, @m8.g com.im.freechat.domain.usecase.auth.j signInViaSmsInteractor, @m8.g o phoneUtil, @m8.g com.im.freechat.domain.usecase.auth.g logoutUserInteractor, @m8.g com.im.freechat.domain.usecase.auth.f listenLoginStatusInteractor) {
        Intrinsics.checkNotNullParameter(assertUserLoggedInInteractor, "assertUserLoggedInInteractor");
        Intrinsics.checkNotNullParameter(externalLoginInteractor, "externalLoginInteractor");
        Intrinsics.checkNotNullParameter(saveCountryCodeInteractor, "saveCountryCodeInteractor");
        Intrinsics.checkNotNullParameter(getCountryCodeInteractor, "getCountryCodeInteractor");
        Intrinsics.checkNotNullParameter(setNicknameInteractor, "setNicknameInteractor");
        Intrinsics.checkNotNullParameter(requestCodeInteractor, "requestCodeInteractor");
        Intrinsics.checkNotNullParameter(parsePhoneInteractor, "parsePhoneInteractor");
        Intrinsics.checkNotNullParameter(signInViaSmsInteractor, "signInViaSmsInteractor");
        Intrinsics.checkNotNullParameter(phoneUtil, "phoneUtil");
        Intrinsics.checkNotNullParameter(logoutUserInteractor, "logoutUserInteractor");
        Intrinsics.checkNotNullParameter(listenLoginStatusInteractor, "listenLoginStatusInteractor");
        this.f42159a = assertUserLoggedInInteractor;
        this.f42160b = externalLoginInteractor;
        this.f42161c = saveCountryCodeInteractor;
        this.f42162d = getCountryCodeInteractor;
        this.f42163e = setNicknameInteractor;
        this.f42164f = requestCodeInteractor;
        this.f42165g = parsePhoneInteractor;
        this.f42166h = signInViaSmsInteractor;
        this.f42167i = phoneUtil;
        this.f42168j = logoutUserInteractor;
        this.f42169k = listenLoginStatusInteractor;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(@m8.g kotlin.coroutines.Continuation<? super kotlin.Result<java.lang.String>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.im.freechat.sdk.c.a
            if (r0 == 0) goto L13
            r0 = r5
            com.im.freechat.sdk.c$a r0 = (com.im.freechat.sdk.c.a) r0
            int r1 = r0.f42172c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42172c = r1
            goto L18
        L13:
            com.im.freechat.sdk.c$a r0 = new com.im.freechat.sdk.c$a
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f42170a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f42172c
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.m79unboximpl()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r5)
            com.im.freechat.domain.usecase.auth.d r5 = r4.f42162d
            kotlin.Unit r2 = kotlin.Unit.INSTANCE
            r0.f42172c = r3
            java.lang.Object r5 = r5.a(r2, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.sdk.c.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @m8.g
    public final List<Country> c() {
        List<Country> list;
        list = CollectionsKt___CollectionsKt.toList(this.f42167i.c().values());
        return list;
    }

    @m8.h
    public final Object d(@m8.g Function1<? super LoginState, Unit> function1, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        com.im.freechat.domain.usecase.auth.f fVar = this.f42169k;
        Unit unit = Unit.INSTANCE;
        Object c10 = fVar.c(unit, new b(function1, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return c10 == coroutine_suspended ? c10 : unit;
    }

    @m8.g
    public final j2 e(@m8.g a.C0327a suspendRunner, @m8.g Function1<? super LoginState, Unit> onData) {
        Intrinsics.checkNotNullParameter(suspendRunner, "suspendRunner");
        Intrinsics.checkNotNullParameter(onData, "onData");
        return suspendRunner.c(new C0338c(onData, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0090 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a7 A[RETURN] */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object f(int r7, @m8.h java.lang.Integer r8, boolean r9, @m8.g java.lang.String r10, @m8.h kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r11, @m8.h kotlin.jvm.functions.Function2<? super java.lang.String, ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r12, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r13) {
        /*
            r6 = this;
            boolean r0 = r13 instanceof com.im.freechat.sdk.c.d
            if (r0 == 0) goto L13
            r0 = r13
            com.im.freechat.sdk.c$d r0 = (com.im.freechat.sdk.c.d) r0
            int r1 = r0.f42186e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42186e = r1
            goto L18
        L13:
            com.im.freechat.sdk.c$d r0 = new com.im.freechat.sdk.c$d
            r0.<init>(r13)
        L18:
            java.lang.Object r13 = r0.f42184c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f42186e
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L56
            if (r2 == r5) goto L42
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            kotlin.ResultKt.throwOnFailure(r13)
            goto La8
        L30:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L38:
            java.lang.Object r7 = r0.f42183b
            java.lang.Object r8 = r0.f42182a
            kotlin.jvm.functions.Function2 r8 = (kotlin.jvm.functions.Function2) r8
            kotlin.ResultKt.throwOnFailure(r13)
            goto L89
        L42:
            java.lang.Object r7 = r0.f42183b
            r12 = r7
            kotlin.jvm.functions.Function2 r12 = (kotlin.jvm.functions.Function2) r12
            java.lang.Object r7 = r0.f42182a
            r11 = r7
            kotlin.jvm.functions.Function1 r11 = (kotlin.jvm.functions.Function1) r11
            kotlin.ResultKt.throwOnFailure(r13)
            kotlin.Result r13 = (kotlin.Result) r13
            java.lang.Object r7 = r13.m79unboximpl()
            goto L6d
        L56:
            kotlin.ResultKt.throwOnFailure(r13)
            com.im.freechat.domain.usecase.auth.b r13 = r6.f42160b
            com.im.freechat.domain.usecase.auth.b$a r2 = new com.im.freechat.domain.usecase.auth.b$a
            r2.<init>(r7, r8, r9, r10)
            r0.f42182a = r11
            r0.f42183b = r12
            r0.f42186e = r5
            java.lang.Object r7 = r13.a(r2, r0)
            if (r7 != r1) goto L6d
            return r1
        L6d:
            boolean r8 = kotlin.Result.m77isSuccessimpl(r7)
            if (r8 == 0) goto L8a
            r8 = r7
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            r8.booleanValue()
            if (r11 == 0) goto L8a
            r0.f42182a = r12
            r0.f42183b = r7
            r0.f42186e = r4
            java.lang.Object r8 = r11.invoke(r0)
            if (r8 != r1) goto L88
            return r1
        L88:
            r8 = r12
        L89:
            r12 = r8
        L8a:
            java.lang.Throwable r8 = kotlin.Result.m73exceptionOrNullimpl(r7)
            if (r8 == 0) goto La8
            if (r12 == 0) goto La8
            java.lang.String r8 = r8.getLocalizedMessage()
            if (r8 != 0) goto L9a
            java.lang.String r8 = "IM Login Error"
        L9a:
            r0.f42182a = r7
            r7 = 0
            r0.f42183b = r7
            r0.f42186e = r3
            java.lang.Object r7 = r12.invoke(r8, r0)
            if (r7 != r1) goto La8
            return r1
        La8:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.sdk.c.f(int, java.lang.Integer, boolean, java.lang.String, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void h() {
        SDKManager.f41970a.v();
        l.f(a2.f84781a, null, null, new e(null), 3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object i(@m8.g com.im.freechat.shared.entities.auth.PhoneNumber r5, @m8.g kotlin.coroutines.Continuation<? super kotlin.Result<com.im.freechat.shared.entities.auth.PhoneNumber>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.im.freechat.sdk.c.f
            if (r0 == 0) goto L13
            r0 = r6
            com.im.freechat.sdk.c$f r0 = (com.im.freechat.sdk.c.f) r0
            int r1 = r0.f42191c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42191c = r1
            goto L18
        L13:
            com.im.freechat.sdk.c$f r0 = new com.im.freechat.sdk.c$f
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f42189a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f42191c
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.m79unboximpl()
            goto L45
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            com.im.freechat.domain.usecase.auth.h r6 = r4.f42165g
            r0.f42191c = r3
            java.lang.Object r5 = r6.a(r5, r0)
            if (r5 != r1) goto L45
            return r1
        L45:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.sdk.c.i(com.im.freechat.shared.entities.auth.PhoneNumber, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object j(@m8.g com.im.freechat.shared.entities.auth.PhoneNumber r5, @m8.g kotlin.coroutines.Continuation<? super kotlin.Result<kotlin.Unit>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.im.freechat.sdk.c.g
            if (r0 == 0) goto L13
            r0 = r6
            com.im.freechat.sdk.c$g r0 = (com.im.freechat.sdk.c.g) r0
            int r1 = r0.f42194c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42194c = r1
            goto L18
        L13:
            com.im.freechat.sdk.c$g r0 = new com.im.freechat.sdk.c$g
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f42192a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f42194c
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.m79unboximpl()
            goto L45
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            com.im.freechat.domain.usecase.auth.i r6 = r4.f42164f
            r0.f42194c = r3
            java.lang.Object r5 = r6.a(r5, r0)
            if (r5 != r1) goto L45
            return r1
        L45:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.sdk.c.j(com.im.freechat.shared.entities.auth.PhoneNumber, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object k(@m8.g java.lang.String r5, @m8.g kotlin.coroutines.Continuation<? super kotlin.Result<kotlin.Unit>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.im.freechat.sdk.c.h
            if (r0 == 0) goto L13
            r0 = r6
            com.im.freechat.sdk.c$h r0 = (com.im.freechat.sdk.c.h) r0
            int r1 = r0.f42197c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42197c = r1
            goto L18
        L13:
            com.im.freechat.sdk.c$h r0 = new com.im.freechat.sdk.c$h
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f42195a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f42197c
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.m79unboximpl()
            goto L45
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            com.im.freechat.domain.usecase.currentuser.e r6 = r4.f42161c
            r0.f42197c = r3
            java.lang.Object r5 = r6.a(r5, r0)
            if (r5 != r1) goto L45
            return r1
        L45:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.sdk.c.k(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object l(@m8.g java.lang.String r5, @m8.g kotlin.coroutines.Continuation<? super kotlin.Result<com.im.freechat.shared.entities.auth.UserInfo>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.im.freechat.sdk.c.i
            if (r0 == 0) goto L13
            r0 = r6
            com.im.freechat.sdk.c$i r0 = (com.im.freechat.sdk.c.i) r0
            int r1 = r0.f42200c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42200c = r1
            goto L18
        L13:
            com.im.freechat.sdk.c$i r0 = new com.im.freechat.sdk.c$i
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f42198a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f42200c
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.m79unboximpl()
            goto L45
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            com.im.freechat.domain.usecase.currentuser.i r6 = r4.f42163e
            r0.f42200c = r3
            java.lang.Object r5 = r6.a(r5, r0)
            if (r5 != r1) goto L45
            return r1
        L45:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.sdk.c.l(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object m(@m8.g com.im.freechat.shared.entities.auth.PhoneNumber r5, int r6, @m8.g kotlin.coroutines.Continuation<? super kotlin.Result<java.lang.Boolean>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.im.freechat.sdk.c.j
            if (r0 == 0) goto L13
            r0 = r7
            com.im.freechat.sdk.c$j r0 = (com.im.freechat.sdk.c.j) r0
            int r1 = r0.f42203c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42203c = r1
            goto L18
        L13:
            com.im.freechat.sdk.c$j r0 = new com.im.freechat.sdk.c$j
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f42201a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f42203c
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r5 = r7.m79unboximpl()
            goto L4a
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r7)
            com.im.freechat.domain.usecase.auth.j r7 = r4.f42166h
            com.im.freechat.domain.usecase.auth.j$a r2 = new com.im.freechat.domain.usecase.auth.j$a
            r2.<init>(r5, r6)
            r0.f42203c = r3
            java.lang.Object r5 = r7.a(r2, r0)
            if (r5 != r1) goto L4a
            return r1
        L4a:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.sdk.c.m(com.im.freechat.shared.entities.auth.PhoneNumber, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object n(@m8.g kotlin.coroutines.Continuation<? super kotlin.Result<kotlin.Unit>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.im.freechat.sdk.c.k
            if (r0 == 0) goto L13
            r0 = r5
            com.im.freechat.sdk.c$k r0 = (com.im.freechat.sdk.c.k) r0
            int r1 = r0.f42206c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42206c = r1
            goto L18
        L13:
            com.im.freechat.sdk.c$k r0 = new com.im.freechat.sdk.c$k
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f42204a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f42206c
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.m79unboximpl()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r5)
            com.im.freechat.domain.usecase.auth.a r5 = r4.f42159a
            kotlin.Unit r2 = kotlin.Unit.INSTANCE
            r0.f42206c = r3
            java.lang.Object r5 = r5.a(r2, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.sdk.c.n(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
