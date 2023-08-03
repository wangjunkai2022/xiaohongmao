package com.qennnsad.aknkaksd.presentation.common;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.sdk.SDKManager;
import com.im.freechat.shared.entities.LoggedOut;
import com.im.freechat.shared.entities.LoginState;
import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.data.bean.GameCenter;
import com.qennnsad.aknkaksd.data.bean.room.PrivateLimitBean;
import com.qennnsad.aknkaksd.data.bean.room.eyecatching.PinnedMessageBean;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.data.repository.RetrofitApi;
import com.qennnsad.aknkaksd.domain.usecase.anchor.s;
import com.qennnsad.aknkaksd.domain.usecase.auth.r;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.flow.j0;
import kotlinx.coroutines.flow.t;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;
import me.jessyan.retrofiturlmanager.RetrofitUrlManager;
import okhttp3.HttpUrl;
import timber.log.Timber;

/* compiled from: SharedViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001TBI\b\u0007\u0012\u0006\u0010F\u001a\u00020E\u0012\u0006\u0010\u001f\u001a\u00020\u001a\u0012\u0006\u0010K\u001a\u00020J\u0012\u0006\u0010#\u001a\u00020 \u0012\u0006\u0010'\u001a\u00020$\u0012\u0006\u0010+\u001a\u00020(\u0012\u0006\u0010/\u001a\u00020,\u0012\u0006\u00103\u001a\u000200¢\u0006\u0004\bR\u0010SJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010\u0005\u001a\u00020\u0003H\u0002J\b\u0010\u0006\u001a\u00020\u0003H\u0002J\u0006\u0010\u0007\u001a\u00020\u0003J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bJ$\u0010\u0011\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0014\u0010\u0010\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0004\u0012\u00020\n0\u000eJ \u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00122\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0014J\u000e\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0017R\u0017\u0010\u001f\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010'\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010/\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R%\u0010;\u001a\u0010\u0012\f\u0012\n 6*\u0004\u0018\u00010505048\u0006¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:R\u001d\u0010?\u001a\b\u0012\u0004\u0012\u00020<048\u0006¢\u0006\f\n\u0004\b=\u00108\u001a\u0004\b>\u0010:R\u001d\u0010D\u001a\b\u0012\u0004\u0012\u0002050\u00178\u0006¢\u0006\f\n\u0004\b@\u0010A\u001a\u0004\bB\u0010CR\u0017\u0010F\u001a\u00020E8\u0006¢\u0006\f\n\u0004\bF\u0010G\u001a\u0004\bH\u0010IR\u0017\u0010K\u001a\u00020J8\u0006¢\u0006\f\n\u0004\bK\u0010L\u001a\u0004\bM\u0010NR\u0011\u0010Q\u001a\u0002058F¢\u0006\u0006\u001a\u0004\bO\u0010P¨\u0006U"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$Event;", "Lkotlinx/coroutines/j2;", "L", "I", "K", "M", "Landroidx/lifecycle/LifecycleOwner;", "lifecycleOwner", "", "P", "", "anchorId", "Lkotlin/Function1;", "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;", "onLoaded", "J", "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;", "msg", "Lkotlin/Function0;", "onSuccess", "N", "Lkotlinx/coroutines/flow/t;", "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Lcom/qennnsad/aknkaksd/data/repository/m;", "f", "Lcom/qennnsad/aknkaksd/data/repository/m;", "G", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;", "h", "Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;", "requestGameCenterUrlUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/f;", ContextChain.TAG_INFRA, "Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/f;", "requestGameCenterPointsUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/s;", "j", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/s;", "loadPrivateLimitUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;", "k", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;", "imLoginUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/room/e;", "l", "Lcom/qennnsad/aknkaksd/domain/usecase/room/e;", "complainPinnedMessageUseCase", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "m", "Landroidx/lifecycle/MutableLiveData;", "D", "()Landroidx/lifecycle/MutableLiveData;", "gameCenterVisible", "", "n", "C", "gameCenterPoints", "o", "Lkotlinx/coroutines/flow/t;", ExifInterface.LONGITUDE_EAST, "()Lkotlinx/coroutines/flow/t;", "imServiceNotConnected", "Lg5/a;", "localDataManager", "Lg5/a;", "F", "()Lg5/a;", "Lx4/a;", "analytics", "Lx4/a;", "B", "()Lx4/a;", "H", "()Z", "isLegend", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/f;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/s;Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;Lcom/qennnsad/aknkaksd/domain/usecase/room/e;)V", "Event", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class SharedViewModel extends l<Event> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final g5.a f50874e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f50875f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final x4.a f50876g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.gamecenter.j f50877h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.gamecenter.f f50878i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final s f50879j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final r f50880k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.room.e f50881l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final MutableLiveData<Boolean> f50882m;
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final MutableLiveData<Integer> f50883n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private final t<Boolean> f50884o;

    /* compiled from: SharedViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$Event;", "", "(Ljava/lang/String;I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Event {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharedViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.common.SharedViewModel$listenImLoginStatus$1", f = "SharedViewModel.kt", i = {}, l = {106}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f50886a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SharedViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u008a@"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "user", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.common.SharedViewModel$listenImLoginStatus$1$1", f = "SharedViewModel.kt", i = {}, l = {108}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.qennnsad.aknkaksd.presentation.common.SharedViewModel$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0409a extends SuspendLambda implements Function2<UserBean, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f50888a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f50889b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ SharedViewModel f50890c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: SharedViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/LoginState;", "it", "", "a", "(Lcom/im/freechat/shared/entities/LoginState;)V"}, k = 3, mv = {1, 7, 1})
            /* renamed from: com.qennnsad.aknkaksd.presentation.common.SharedViewModel$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public static final class C0410a extends Lambda implements Function1<LoginState, Unit> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ SharedViewModel f50891a;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0410a(SharedViewModel sharedViewModel) {
                    super(1);
                    this.f50891a = sharedViewModel;
                }

                public final void a(@m8.g LoginState it) {
                    Boolean value;
                    Intrinsics.checkNotNullParameter(it, "it");
                    Timber.b bVar = Timber.f93860a;
                    bVar.k("IM State: " + it, new Object[0]);
                    boolean z9 = it instanceof LoggedOut;
                    t<Boolean> E = this.f50891a.E();
                    do {
                        value = E.getValue();
                        value.booleanValue();
                    } while (!E.compareAndSet(value, Boolean.valueOf(z9)));
                    if (z9) {
                        this.f50891a.K();
                    }
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(LoginState loginState) {
                    a(loginState);
                    return Unit.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0409a(SharedViewModel sharedViewModel, Continuation<? super C0409a> continuation) {
                super(2, continuation);
                this.f50890c = sharedViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                C0409a c0409a = new C0409a(this.f50890c, continuation);
                c0409a.f50889b = obj;
                return c0409a;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.h UserBean userBean, @m8.h Continuation<? super Unit> continuation) {
                return ((C0409a) create(userBean, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f50888a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    if (b5.a.h((UserBean) this.f50889b)) {
                        com.im.freechat.sdk.c h4 = SDKManager.h();
                        C0410a c0410a = new C0410a(this.f50890c);
                        this.f50888a = 1;
                        if (h4.d(c0410a, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

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
            int i4 = this.f50886a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                t<UserBean> A = SharedViewModel.this.A();
                C0409a c0409a = new C0409a(SharedViewModel.this, null);
                this.f50886a = 1;
                if (kotlinx.coroutines.flow.k.A(A, c0409a, this) == coroutine_suspended) {
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

    /* compiled from: SharedViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.common.SharedViewModel$loadPrivateLimit$1", f = "SharedViewModel.kt", i = {}, l = {93}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f50892a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f50894c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function1<PrivateLimitBean, Unit> f50895d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(String str, Function1<? super PrivateLimitBean, Unit> function1, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f50894c = str;
            this.f50895d = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b(this.f50894c, this.f50895d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object b10;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f50892a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                s sVar = SharedViewModel.this.f50879j;
                String str = this.f50894c;
                this.f50892a = 1;
                b10 = sVar.b(str, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            Function1<PrivateLimitBean, Unit> function1 = this.f50895d;
            if (Result.m77isSuccessimpl(b10)) {
                function1.invoke((PrivateLimitBean) b10);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharedViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.common.SharedViewModel$loginToIm$1", f = "SharedViewModel.kt", i = {}, l = {119, 122}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        Object f50896a;

        /* renamed from: b  reason: collision with root package name */
        int f50897b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SharedViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.common.SharedViewModel$loginToIm$1$1$1", f = "SharedViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f50899a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ SharedViewModel f50900b;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: SharedViewModel.kt */
            @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
            /* renamed from: com.qennnsad.aknkaksd.presentation.common.SharedViewModel$c$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public static final class C0411a extends Lambda implements Function1<String, Unit> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ SharedViewModel f50901a;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0411a(SharedViewModel sharedViewModel) {
                    super(1);
                    this.f50901a = sharedViewModel;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                    invoke2(str);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@m8.g String it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    this.f50901a.p(it);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(SharedViewModel sharedViewModel, Continuation<? super a> continuation) {
                super(1, continuation);
                this.f50900b = sharedViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.g Continuation<?> continuation) {
                return new a(this.f50900b, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            @m8.h
            public final Object invoke(@m8.h Continuation<? super Unit> continuation) {
                return ((a) create(continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f50899a == 0) {
                    ResultKt.throwOnFailure(obj);
                    com.im.freechat.sdk.e q9 = SDKManager.f41970a.q();
                    ConfigBean e4 = this.f50900b.F().e();
                    q9.g(!(e4 != null ? Intrinsics.areEqual(e4.getImWssReconnection(), Boxing.boxBoolean(false)) : false), new C0411a(this.f50900b));
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SharedViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.common.SharedViewModel$loginToIm$1$1$2", f = "SharedViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class b extends SuspendLambda implements Function2<String, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f50902a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f50903b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ SharedViewModel f50904c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(SharedViewModel sharedViewModel, Continuation<? super b> continuation) {
                super(2, continuation);
                this.f50904c = sharedViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                b bVar = new b(this.f50904c, continuation);
                bVar.f50903b = obj;
                return bVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g String str, @m8.h Continuation<? super Unit> continuation) {
                return ((b) create(str, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f50902a == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.f50904c.p((String) this.f50903b);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

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
            UserBean C;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f50897b;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                r rVar = SharedViewModel.this.f50880k;
                Unit unit = Unit.INSTANCE;
                this.f50897b = 1;
                b10 = rVar.b(unit, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                if (i4 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            SharedViewModel sharedViewModel = SharedViewModel.this;
            if (Result.m77isSuccessimpl(b10)) {
                String str = (String) b10;
                if (!(str.length() == 0) && (C = sharedViewModel.F().C()) != null) {
                    com.im.freechat.sdk.c h4 = SDKManager.h();
                    int parseInt = Integer.parseInt(C.getId());
                    Integer boxInt = Boxing.boxInt(sharedViewModel.F().n());
                    boolean z9 = C.isMystery() == 1;
                    a aVar = new a(sharedViewModel, null);
                    b bVar = new b(sharedViewModel, null);
                    this.f50896a = b10;
                    this.f50897b = 2;
                    if (h4.f(parseInt, boxInt, z9, str, aVar, bVar, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharedViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.common.SharedViewModel$requestGameCenterPoints$1", f = "SharedViewModel.kt", i = {}, l = {87}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class d extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f50905a;

        d(Continuation<? super d> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new d(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((d) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object b10;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f50905a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.gamecenter.f fVar = SharedViewModel.this.f50878i;
                Unit unit = Unit.INSTANCE;
                this.f50905a = 1;
                b10 = fVar.b(unit, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            SharedViewModel sharedViewModel = SharedViewModel.this;
            if (Result.m77isSuccessimpl(b10)) {
                sharedViewModel.C().setValue(Boxing.boxInt(((Number) b10).intValue()));
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SharedViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.common.SharedViewModel$requestGameCenterUrl$1", f = "SharedViewModel.kt", i = {}, l = {53}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class e extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f50907a;

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
            int i4 = this.f50907a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.gamecenter.j jVar = SharedViewModel.this.f50877h;
                Unit unit = Unit.INSTANCE;
                this.f50907a = 1;
                b10 = jVar.b(unit, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            SharedViewModel sharedViewModel = SharedViewModel.this;
            if (Result.m77isSuccessimpl(b10)) {
                boolean booleanValue = ((Boolean) b10).booleanValue();
                sharedViewModel.D().setValue(Boxing.boxBoolean(booleanValue));
                if (booleanValue) {
                    sharedViewModel.L();
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharedViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.common.SharedViewModel$sendPinnedMessageComplaint$1", f = "SharedViewModel.kt", i = {}, l = {99}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class f extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f50909a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ PinnedMessageBean f50911c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f50912d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(PinnedMessageBean pinnedMessageBean, Function0<Unit> function0, Continuation<? super f> continuation) {
            super(2, continuation);
            this.f50911c = pinnedMessageBean;
            this.f50912d = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new f(this.f50911c, this.f50912d, continuation);
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
            int i4 = this.f50909a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.room.e eVar = SharedViewModel.this.f50881l;
                String id = this.f50911c.getId();
                this.f50909a = 1;
                b10 = eVar.b(id, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            Function0<Unit> function0 = this.f50912d;
            if (Result.m77isSuccessimpl(b10)) {
                String str = (String) b10;
                Timber.f93860a.k("Pinned message complaint sent", new Object[0]);
                if (function0 != null) {
                    function0.invoke();
                }
            }
            return Unit.INSTANCE;
        }
    }

    @u7.a
    public SharedViewModel(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g x4.a analytics, @m8.g com.qennnsad.aknkaksd.domain.usecase.gamecenter.j requestGameCenterUrlUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.gamecenter.f requestGameCenterPointsUseCase, @m8.g s loadPrivateLimitUseCase, @m8.g r imLoginUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.room.e complainPinnedMessageUseCase) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(requestGameCenterUrlUseCase, "requestGameCenterUrlUseCase");
        Intrinsics.checkNotNullParameter(requestGameCenterPointsUseCase, "requestGameCenterPointsUseCase");
        Intrinsics.checkNotNullParameter(loadPrivateLimitUseCase, "loadPrivateLimitUseCase");
        Intrinsics.checkNotNullParameter(imLoginUseCase, "imLoginUseCase");
        Intrinsics.checkNotNullParameter(complainPinnedMessageUseCase, "complainPinnedMessageUseCase");
        this.f50874e = localDataManager;
        this.f50875f = sourceFactory;
        this.f50876g = analytics;
        this.f50877h = requestGameCenterUrlUseCase;
        this.f50878i = requestGameCenterPointsUseCase;
        this.f50879j = loadPrivateLimitUseCase;
        this.f50880k = imLoginUseCase;
        this.f50881l = complainPinnedMessageUseCase;
        GameCenter.GetUrlBean k10 = localDataManager.k();
        String url = k10 != null ? k10.getUrl() : null;
        this.f50882m = new MutableLiveData<>(Boolean.valueOf(!(url == null || url.length() == 0)));
        this.f50883n = new MutableLiveData<>();
        this.f50884o = j0.a(Boolean.FALSE);
        I();
    }

    private final j2 I() {
        return j(new a(null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final j2 K() {
        return j(new c(null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final j2 L() {
        return j(new d(null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ j2 O(SharedViewModel sharedViewModel, PinnedMessageBean pinnedMessageBean, Function0 function0, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            function0 = null;
        }
        return sharedViewModel.N(pinnedMessageBean, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q(SharedViewModel this$0, ConfigBean configBean) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (configBean != null) {
            String hostWithProtocol = this$0.f50874e.g().getHostWithProtocol(true);
            HttpUrl httpUrl = hostWithProtocol != null ? HttpUrl.Companion.get(hostWithProtocol) : null;
            if (httpUrl == null) {
                Timber.f93860a.x("initConfig(). New domain cannot be set: it's empty. Skipping.", new Object[0]);
                return;
            }
            HttpUrl fetchDomain = RetrofitUrlManager.getInstance().fetchDomain(RetrofitApi.f47692a);
            Timber.b bVar = Timber.f93860a;
            bVar.a("initConfig(). Curr domain: " + fetchDomain + "; New domain: " + httpUrl, new Object[0]);
            com.qennnsad.aknkaksd.util.m.a(this$0.f50874e.g(), configBean);
            if (Intrinsics.areEqual(fetchDomain, httpUrl)) {
                bVar.a("initConfig() Domains didn't change. Skipping.", new Object[0]);
            } else {
                RetrofitUrlManager.getInstance().putDomain(RetrofitApi.f47692a, httpUrl.toString());
            }
        }
    }

    @m8.g
    public final t<UserBean> A() {
        return this.f50874e.f67821g;
    }

    @m8.g
    public final x4.a B() {
        return this.f50876g;
    }

    @m8.g
    public final MutableLiveData<Integer> C() {
        return this.f50883n;
    }

    @m8.g
    public final MutableLiveData<Boolean> D() {
        return this.f50882m;
    }

    @m8.g
    public final t<Boolean> E() {
        return this.f50884o;
    }

    @m8.g
    public final g5.a F() {
        return this.f50874e;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.repository.m G() {
        return this.f50875f;
    }

    public final boolean H() {
        UserBean C = this.f50874e.C();
        return C != null && C.is_legend();
    }

    @m8.g
    public final j2 J(@m8.g String anchorId, @m8.g Function1<? super PrivateLimitBean, Unit> onLoaded) {
        Intrinsics.checkNotNullParameter(anchorId, "anchorId");
        Intrinsics.checkNotNullParameter(onLoaded, "onLoaded");
        return j(new b(anchorId, onLoaded, null));
    }

    @m8.g
    public final j2 M() {
        return j(new e(null));
    }

    @m8.g
    public final j2 N(@m8.g PinnedMessageBean msg, @m8.h Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        return j(new f(msg, function0, null));
    }

    public final void P(@m8.g LifecycleOwner lifecycleOwner) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        this.f50874e.r0(lifecycleOwner, new Observer() { // from class: com.qennnsad.aknkaksd.presentation.common.m
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                SharedViewModel.Q(SharedViewModel.this, (ConfigBean) obj);
            }
        });
    }
}
