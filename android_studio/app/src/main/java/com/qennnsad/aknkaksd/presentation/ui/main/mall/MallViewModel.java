package com.qennnsad.aknkaksd.presentation.ui.main.mall;

import com.didi.live.spring.R;
import com.im.freechat.sdk.SDKManager;
import com.qennnsad.aknkaksd.data.bean.IsAbleToCreateChatBean;
import com.qennnsad.aknkaksd.presentation.common.l;
import com.qennnsad.aknkaksd.presentation.ui.main.mall.b;
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
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;

/* compiled from: MallViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/b;", "", "id", "Lkotlinx/coroutines/j2;", "u", "", "v", "Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;", "e", "Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;", "checkIfAbleToCreateChatUseCase", "<init>", "(Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class MallViewModel extends l<com.qennnsad.aknkaksd.presentation.ui.main.mall.b> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.webview.b f52838e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MallViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.main.mall.MallViewModel$createChat$1", f = "MallViewModel.kt", i = {}, l = {28}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52839a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f52840b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ MallViewModel f52841c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MallViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)V"}, k = 3, mv = {1, 7, 1})
        /* renamed from: com.qennnsad.aknkaksd.presentation.ui.main.mall.MallViewModel$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0438a extends Lambda implements Function1<Integer, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ MallViewModel f52842a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0438a(MallViewModel mallViewModel) {
                super(1);
                this.f52842a = mallViewModel;
            }

            public final void a(int i4) {
                this.f52842a.l(new b.a(i4));
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                a(num.intValue());
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MallViewModel.kt */
        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class b extends Lambda implements Function1<Throwable, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ MallViewModel f52843a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(MallViewModel mallViewModel) {
                super(1);
                this.f52843a = mallViewModel;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@m8.g Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                this.f52843a.o(R.string.error_cant_create_chat);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(int i4, MallViewModel mallViewModel, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f52840b = i4;
            this.f52841c = mallViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(this.f52840b, this.f52841c, continuation);
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
            int i4 = this.f52839a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.sdk.a d4 = SDKManager.d();
                int i10 = this.f52840b;
                C0438a c0438a = new C0438a(this.f52841c);
                b bVar = new b(this.f52841c);
                this.f52839a = 1;
                if (d4.b(i10, c0438a, bVar, this) == coroutine_suspended) {
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

    /* compiled from: MallViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.main.mall.MallViewModel$createChatIfAble$1", f = "MallViewModel.kt", i = {}, l = {16}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52844a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f52846c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(int i4, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f52846c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b(this.f52846c, continuation);
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
            int i4 = this.f52844a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.webview.b bVar = MallViewModel.this.f52838e;
                Integer boxInt = Boxing.boxInt(this.f52846c);
                this.f52844a = 1;
                b10 = bVar.b(boxInt, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            MallViewModel mallViewModel = MallViewModel.this;
            int i10 = this.f52846c;
            if (Result.m77isSuccessimpl(b10)) {
                IsAbleToCreateChatBean isAbleToCreateChatBean = (IsAbleToCreateChatBean) b10;
                if (isAbleToCreateChatBean.isAble()) {
                    mallViewModel.u(i10);
                } else {
                    mallViewModel.p(isAbleToCreateChatBean.getMessage());
                }
            }
            MallViewModel mallViewModel2 = MallViewModel.this;
            if (Result.m73exceptionOrNullimpl(b10) != null) {
                mallViewModel2.q(R.string.error_cant_create_chat);
            }
            return Unit.INSTANCE;
        }
    }

    @u7.a
    public MallViewModel(@m8.g com.qennnsad.aknkaksd.domain.usecase.webview.b checkIfAbleToCreateChatUseCase) {
        Intrinsics.checkNotNullParameter(checkIfAbleToCreateChatUseCase, "checkIfAbleToCreateChatUseCase");
        this.f52838e = checkIfAbleToCreateChatUseCase;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final j2 u(int i4) {
        return j(new a(i4, this, null));
    }

    public final void v(int i4) {
        k(d(), new b(i4, null));
    }
}
