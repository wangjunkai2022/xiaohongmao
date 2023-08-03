package com.qennnsad.aknkaksd.presentation.ui.main;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.im.freechat.sdk.SDKManager;
import com.qennnsad.aknkaksd.data.bean.AdConfigBean;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.domain.usecase.room.i0;
import com.qennnsad.aknkaksd.domain.usecase.user.e0;
import com.qennnsad.aknkaksd.presentation.ui.main.c;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.s0;

/* compiled from: MainViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BA\b\u0007\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$R%\u0010\n\u001a\u0010\u0012\f\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u00038\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR%\u0010\u000e\u001a\u0010\u0012\f\u0012\n \u0005*\u0004\u0018\u00010\u000b0\u000b0\u00038\u0006¢\u0006\f\n\u0004\b\f\u0010\u0007\u001a\u0004\b\r\u0010\tR\u001d\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006%"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/c;", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "e", "Landroidx/lifecycle/MutableLiveData;", "u", "()Landroidx/lifecycle/MutableLiveData;", "isIm", "", "f", "t", "unreadCount", "Landroidx/lifecycle/LiveData;", "g", "Landroidx/lifecycle/LiveData;", "s", "()Landroidx/lifecycle/LiveData;", "indicatorVisibility", "Lg5/a;", "localDataManager", "Lcom/qennnsad/aknkaksd/domain/usecase/app/c;", "getAdConfigUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/app/w;", "syncPeeragePricesUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;", "syncGiftsUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/user/w;", "syncMeUserUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;", "syncUserMoneyUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;", "syncDepositOptionsUseCase", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/app/c;Lcom/qennnsad/aknkaksd/domain/usecase/app/w;Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Lcom/qennnsad/aknkaksd/domain/usecase/user/w;Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class MainViewModel extends com.qennnsad.aknkaksd.presentation.common.l<com.qennnsad.aknkaksd.presentation.ui.main.c> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final MutableLiveData<Boolean> f52755e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final MutableLiveData<Integer> f52756f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final LiveData<Boolean> f52757g;

    /* compiled from: MainViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.main.MainViewModel$1", f = "MainViewModel.kt", i = {}, l = {38}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52758a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.qennnsad.aknkaksd.domain.usecase.app.c f52759b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ MainViewModel f52760c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ g5.a f52761d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(com.qennnsad.aknkaksd.domain.usecase.app.c cVar, MainViewModel mainViewModel, g5.a aVar, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f52759b = cVar;
            this.f52760c = mainViewModel;
            this.f52761d = aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(this.f52759b, this.f52760c, this.f52761d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object b10;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f52758a;
            boolean z9 = true;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.app.c cVar = this.f52759b;
                Unit unit = Unit.INSTANCE;
                this.f52758a = 1;
                b10 = cVar.b(unit, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            MainViewModel mainViewModel = this.f52760c;
            if (Result.m77isSuccessimpl(b10)) {
                mainViewModel.l(new c.b((AdConfigBean) b10));
            }
            g5.a aVar = this.f52761d;
            MainViewModel mainViewModel2 = this.f52760c;
            if (Result.m73exceptionOrNullimpl(b10) != null) {
                UserBean C = aVar.C();
                if ((C == null || !C.isGuest()) ? false : false) {
                    mainViewModel2.l(c.C0435c.f52790a);
                }
            }
            this.f52760c.l(c.a.f52788a);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: MainViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.main.MainViewModel$2", f = "MainViewModel.kt", i = {}, l = {43}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52762a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.qennnsad.aknkaksd.domain.usecase.app.w f52763b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(com.qennnsad.aknkaksd.domain.usecase.app.w wVar, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f52763b = wVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b(this.f52763b, continuation);
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
            int i4 = this.f52762a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.app.w wVar = this.f52763b;
                Unit unit = Unit.INSTANCE;
                this.f52762a = 1;
                if (wVar.b(unit, this) == coroutine_suspended) {
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

    /* compiled from: MainViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.main.MainViewModel$3", f = "MainViewModel.kt", i = {}, l = {44}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52764a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.qennnsad.aknkaksd.domain.usecase.gift.d f52765b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(com.qennnsad.aknkaksd.domain.usecase.gift.d dVar, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f52765b = dVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new c(this.f52765b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((c) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f52764a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.gift.d dVar = this.f52765b;
                Unit unit = Unit.INSTANCE;
                this.f52764a = 1;
                if (dVar.b(unit, this) == coroutine_suspended) {
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

    /* compiled from: MainViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.main.MainViewModel$4", f = "MainViewModel.kt", i = {}, l = {45}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class d extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52766a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.qennnsad.aknkaksd.domain.usecase.user.w f52767b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(com.qennnsad.aknkaksd.domain.usecase.user.w wVar, Continuation<? super d> continuation) {
            super(2, continuation);
            this.f52767b = wVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new d(this.f52767b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((d) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f52766a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.user.w wVar = this.f52767b;
                Unit unit = Unit.INSTANCE;
                this.f52766a = 1;
                if (wVar.b(unit, this) == coroutine_suspended) {
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

    /* compiled from: MainViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.main.MainViewModel$5", f = "MainViewModel.kt", i = {}, l = {46}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class e extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52768a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ e0 f52769b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(e0 e0Var, Continuation<? super e> continuation) {
            super(2, continuation);
            this.f52769b = e0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new e(this.f52769b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((e) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f52768a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                e0 e0Var = this.f52769b;
                Unit unit = Unit.INSTANCE;
                this.f52768a = 1;
                if (e0Var.b(unit, this) == coroutine_suspended) {
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

    /* compiled from: MainViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.main.MainViewModel$6", f = "MainViewModel.kt", i = {}, l = {48}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class f extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52770a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MainViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(Ljava/lang/Integer;)V"}, k = 3, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class a extends Lambda implements Function1<Integer, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ MainViewModel f52772a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(MainViewModel mainViewModel) {
                super(1);
                this.f52772a = mainViewModel;
            }

            public final void a(@m8.h Integer num) {
                MutableLiveData<Integer> t9 = this.f52772a.t();
                if (num == null) {
                    num = 0;
                }
                t9.setValue(num);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                a(num);
                return Unit.INSTANCE;
            }
        }

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
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f52770a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.sdk.a d4 = SDKManager.d();
                a aVar = new a(MainViewModel.this);
                this.f52770a = 1;
                if (d4.v(aVar, this) == coroutine_suspended) {
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

    /* compiled from: MainViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.main.MainViewModel$7", f = "MainViewModel.kt", i = {}, l = {52}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class g extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52773a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ i0 f52774b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(i0 i0Var, Continuation<? super g> continuation) {
            super(2, continuation);
            this.f52774b = i0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new g(this.f52774b, continuation);
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
            int i4 = this.f52773a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                i0 i0Var = this.f52774b;
                Unit unit = Unit.INSTANCE;
                this.f52773a = 1;
                if (i0Var.b(unit, this) == coroutine_suspended) {
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

    /* compiled from: MainViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00002\b\u0010\u0001\u001a\u0004\u0018\u00010\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "im", "", "unread", "a", "(Ljava/lang/Boolean;Ljava/lang/Integer;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class h extends Lambda implements Function2<Boolean, Integer, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final h f52775a = new h();

        h() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: a */
        public final Boolean invoke(@m8.h Boolean bool, @m8.h Integer num) {
            boolean z9 = false;
            if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
                if ((num != null ? num.intValue() : 0) > 0) {
                    z9 = true;
                }
            }
            return Boolean.valueOf(z9);
        }
    }

    @u7.a
    public MainViewModel(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.domain.usecase.app.c getAdConfigUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.app.w syncPeeragePricesUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.gift.d syncGiftsUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.user.w syncMeUserUseCase, @m8.g e0 syncUserMoneyUseCase, @m8.g i0 syncDepositOptionsUseCase) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(getAdConfigUseCase, "getAdConfigUseCase");
        Intrinsics.checkNotNullParameter(syncPeeragePricesUseCase, "syncPeeragePricesUseCase");
        Intrinsics.checkNotNullParameter(syncGiftsUseCase, "syncGiftsUseCase");
        Intrinsics.checkNotNullParameter(syncMeUserUseCase, "syncMeUserUseCase");
        Intrinsics.checkNotNullParameter(syncUserMoneyUseCase, "syncUserMoneyUseCase");
        Intrinsics.checkNotNullParameter(syncDepositOptionsUseCase, "syncDepositOptionsUseCase");
        MutableLiveData<Boolean> mutableLiveData = new MutableLiveData<>(Boolean.FALSE);
        this.f52755e = mutableLiveData;
        MutableLiveData<Integer> mutableLiveData2 = new MutableLiveData<>(0);
        this.f52756f = mutableLiveData2;
        this.f52757g = o4.m.n(mutableLiveData, mutableLiveData2, h.f52775a);
        j(new a(getAdConfigUseCase, this, localDataManager, null));
        j(new b(syncPeeragePricesUseCase, null));
        j(new c(syncGiftsUseCase, null));
        j(new d(syncMeUserUseCase, null));
        j(new e(syncUserMoneyUseCase, null));
        j(new f(null));
        j(new g(syncDepositOptionsUseCase, null));
        UserBean C = localDataManager.C();
        mutableLiveData.setValue(C != null ? Boolean.valueOf(b5.a.h(C)) : null);
    }

    @m8.g
    public final LiveData<Boolean> s() {
        return this.f52757g;
    }

    @m8.g
    public final MutableLiveData<Integer> t() {
        return this.f52756f;
    }

    @m8.g
    public final MutableLiveData<Boolean> u() {
        return this.f52755e;
    }
}
