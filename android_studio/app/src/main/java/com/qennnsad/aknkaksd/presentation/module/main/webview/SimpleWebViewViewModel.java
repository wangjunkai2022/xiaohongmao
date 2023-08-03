package com.qennnsad.aknkaksd.presentation.module.main.webview;

import com.didi.live.spring.R;
import com.im.freechat.sdk.SDKManager;
import com.qennnsad.aknkaksd.data.bean.IsAbleToCreateChatBean;
import com.qennnsad.aknkaksd.data.bean.websocket.PeerageLogin;
import com.qennnsad.aknkaksd.domain.usecase.gamecenter.b;
import com.qennnsad.aknkaksd.presentation.module.main.webview.h;
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
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;

/* compiled from: SimpleWebViewViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0011\u001a\u00020\f\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0019\u001a\u00020\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\tR\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/module/main/webview/h;", "", "id", "Lkotlinx/coroutines/j2;", "v", "", "w", "Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;", "peerage", y.b.f83920h, "Lcom/qennnsad/aknkaksd/data/repository/m;", "e", "Lcom/qennnsad/aknkaksd/data/repository/m;", y.b.f83919g, "()Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;", "f", "Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;", "checkIfAbleToCreateChatUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;", "g", "Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;", "prepareSvgaUseCase", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class SimpleWebViewViewModel extends com.qennnsad.aknkaksd.presentation.common.l<h> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f52100e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.webview.b f52101f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.gamecenter.b f52102g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimpleWebViewViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewViewModel$createChat$1", f = "SimpleWebViewViewModel.kt", i = {}, l = {33}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52103a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f52104b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ SimpleWebViewViewModel f52105c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SimpleWebViewViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)V"}, k = 3, mv = {1, 7, 1})
        /* renamed from: com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewViewModel$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0426a extends Lambda implements Function1<Integer, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SimpleWebViewViewModel f52106a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0426a(SimpleWebViewViewModel simpleWebViewViewModel) {
                super(1);
                this.f52106a = simpleWebViewViewModel;
            }

            public final void a(int i4) {
                this.f52106a.l(new h.a(i4));
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                a(num.intValue());
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SimpleWebViewViewModel.kt */
        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class b extends Lambda implements Function1<Throwable, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SimpleWebViewViewModel f52107a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(SimpleWebViewViewModel simpleWebViewViewModel) {
                super(1);
                this.f52107a = simpleWebViewViewModel;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@m8.g Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                this.f52107a.o(R.string.error_cant_create_chat);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(int i4, SimpleWebViewViewModel simpleWebViewViewModel, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f52104b = i4;
            this.f52105c = simpleWebViewViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(this.f52104b, this.f52105c, continuation);
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
            int i4 = this.f52103a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.sdk.a d4 = SDKManager.d();
                int i10 = this.f52104b;
                C0426a c0426a = new C0426a(this.f52105c);
                b bVar = new b(this.f52105c);
                this.f52103a = 1;
                if (d4.b(i10, c0426a, bVar, this) == coroutine_suspended) {
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

    /* compiled from: SimpleWebViewViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewViewModel$createChatIfAble$1", f = "SimpleWebViewViewModel.kt", i = {}, l = {21}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52108a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f52110c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(int i4, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f52110c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b(this.f52110c, continuation);
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
            int i4 = this.f52108a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.webview.b bVar = SimpleWebViewViewModel.this.f52101f;
                Integer boxInt = Boxing.boxInt(this.f52110c);
                this.f52108a = 1;
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
            SimpleWebViewViewModel simpleWebViewViewModel = SimpleWebViewViewModel.this;
            int i10 = this.f52110c;
            if (Result.m77isSuccessimpl(b10)) {
                IsAbleToCreateChatBean isAbleToCreateChatBean = (IsAbleToCreateChatBean) b10;
                if (isAbleToCreateChatBean.isAble()) {
                    simpleWebViewViewModel.v(i10);
                } else {
                    simpleWebViewViewModel.p(isAbleToCreateChatBean.getMessage());
                }
            }
            SimpleWebViewViewModel simpleWebViewViewModel2 = SimpleWebViewViewModel.this;
            if (Result.m73exceptionOrNullimpl(b10) != null) {
                simpleWebViewViewModel2.q(R.string.error_cant_create_chat);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SimpleWebViewViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewViewModel$prepareSvga$1", f = "SimpleWebViewViewModel.kt", i = {}, l = {47}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52111a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ PeerageLogin f52113c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(PeerageLogin peerageLogin, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f52113c = peerageLogin;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new c(this.f52113c, continuation);
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
            int i4 = this.f52111a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.gamecenter.b bVar = SimpleWebViewViewModel.this.f52102g;
                String cache_name = this.f52113c.getCache_name();
                Intrinsics.checkNotNullExpressionValue(cache_name, "peerage.cache_name");
                String mount_url = this.f52113c.getMount_url();
                Intrinsics.checkNotNullExpressionValue(mount_url, "peerage.mount_url");
                b.a aVar = new b.a(cache_name, mount_url);
                this.f52111a = 1;
                b10 = bVar.b(aVar, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            SimpleWebViewViewModel simpleWebViewViewModel = SimpleWebViewViewModel.this;
            PeerageLogin peerageLogin = this.f52113c;
            if (Result.m77isSuccessimpl(b10)) {
                Unit unit = (Unit) b10;
                simpleWebViewViewModel.l(new h.b(peerageLogin));
            }
            return Unit.INSTANCE;
        }
    }

    @u7.a
    public SimpleWebViewViewModel(@m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g com.qennnsad.aknkaksd.domain.usecase.webview.b checkIfAbleToCreateChatUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.gamecenter.b prepareSvgaUseCase) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(checkIfAbleToCreateChatUseCase, "checkIfAbleToCreateChatUseCase");
        Intrinsics.checkNotNullParameter(prepareSvgaUseCase, "prepareSvgaUseCase");
        this.f52100e = sourceFactory;
        this.f52101f = checkIfAbleToCreateChatUseCase;
        this.f52102g = prepareSvgaUseCase;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final j2 v(int i4) {
        return j(new a(i4, this, null));
    }

    public final void w(int i4) {
        k(d(), new b(i4, null));
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.repository.m x() {
        return this.f52100e;
    }

    @m8.g
    public final j2 y(@m8.g PeerageLogin peerage) {
        Intrinsics.checkNotNullParameter(peerage, "peerage");
        return j(new c(peerage, null));
    }
}
