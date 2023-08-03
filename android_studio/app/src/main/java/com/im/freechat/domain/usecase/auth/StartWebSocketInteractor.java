package com.im.freechat.domain.usecase.auth;

import com.im.freechat.domain.t;
import com.im.freechat.domain.u;
import com.im.freechat.domain.usecase.base.FlowUseCase;
import com.im.freechat.shared.entities.SocketEvent;
import com.im.freechat.shared.entities.SyncAppStateEvent;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.s0;

/* compiled from: StartWebSocketInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B'\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0017\u001a\u00020\u0014¢\u0006\u0004\b\u0018\u0010\u0019J!\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;", "Lcom/im/freechat/domain/usecase/base/FlowUseCase;", "", "", "params", "Lkotlinx/coroutines/flow/i;", "h", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "Lcom/im/freechat/domain/u;", "b", "Lcom/im/freechat/domain/u;", "webSocketRepository", "Lcom/im/freechat/domain/t;", "c", "Lcom/im/freechat/domain/t;", "syncRepository", "Lcom/im/freechat/domain/c;", "d", "Lcom/im/freechat/domain/c;", "databaseRepository", "<init>", "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/u;Lcom/im/freechat/domain/t;Lcom/im/freechat/domain/c;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class StartWebSocketInteractor extends FlowUseCase<Boolean, String> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.k f41335a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final u f41336b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final t f41337c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final com.im.freechat.domain.c f41338d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StartWebSocketInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.auth.StartWebSocketInteractor", f = "StartWebSocketInteractor.kt", i = {0, 0, 1, 1}, l = {21, 22}, m = "buildFlow", n = {"this", "params", "this", "params"}, s = {"L$0", "Z$0", "L$0", "Z$0"})
    /* loaded from: classes3.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41352a;

        /* renamed from: b  reason: collision with root package name */
        Object f41353b;

        /* renamed from: c  reason: collision with root package name */
        Object f41354c;

        /* renamed from: d  reason: collision with root package name */
        boolean f41355d;

        /* renamed from: e  reason: collision with root package name */
        /* synthetic */ Object f41356e;

        /* renamed from: g  reason: collision with root package name */
        int f41358g;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41356e = obj;
            this.f41358g |= Integer.MIN_VALUE;
            return StartWebSocketInteractor.this.h(false, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StartWebSocketInteractor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/SocketEvent;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.domain.usecase.auth.StartWebSocketInteractor$buildFlow$2", f = "StartWebSocketInteractor.kt", i = {1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8}, l = {26, 31, 32, 34, 36, 37, 39, 39, 40, 41, 52, 56}, m = "invokeSuspend", n = {"it", "it", "it", "it", "presentIds", "it", "presentIds", "it", "presentIds", "it", "presentIds", "it", "presentIds"}, s = {"L$0", "L$0", "L$0", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1"})
    /* loaded from: classes3.dex */
    public static final class b extends SuspendLambda implements Function2<SocketEvent, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        Object f41359a;

        /* renamed from: b  reason: collision with root package name */
        Object f41360b;

        /* renamed from: c  reason: collision with root package name */
        int f41361c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f41362d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: StartWebSocketInteractor.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010&\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0007\u001a\u00020\u0006*\u00020\u00002\"\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00030\u0001H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "", "Lkotlin/Pair;", "", "pair", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.domain.usecase.auth.StartWebSocketInteractor$buildFlow$2$1", f = "StartWebSocketInteractor.kt", i = {}, l = {42}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function3<s0, Map.Entry<? extends Integer, ? extends Pair<? extends Long, ? extends Long>>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f41364a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f41365b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ StartWebSocketInteractor f41366c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ SocketEvent f41367d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(StartWebSocketInteractor startWebSocketInteractor, SocketEvent socketEvent, Continuation<? super a> continuation) {
                super(3, continuation);
                this.f41366c = startWebSocketInteractor;
                this.f41367d = socketEvent;
            }

            @Override // kotlin.jvm.functions.Function3
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g s0 s0Var, @m8.g Map.Entry<Integer, Pair<Long, Long>> entry, @m8.h Continuation<? super Unit> continuation) {
                a aVar = new a(this.f41366c, this.f41367d, continuation);
                aVar.f41365b = entry;
                return aVar.invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f41364a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Map.Entry entry = (Map.Entry) this.f41365b;
                    this.f41364a = 1;
                    if (this.f41366c.f41337c.n(((SyncAppStateEvent) this.f41367d).getUserId(), ((Number) entry.getKey()).intValue(), (Pair) entry.getValue(), this) == coroutine_suspended) {
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

        b(Continuation<? super b> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            b bVar = new b(continuation);
            bVar.f41362d = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g SocketEvent socketEvent, @m8.h Continuation<? super Unit> continuation) {
            return ((b) create(socketEvent, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:54:0x00ea A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:57:0x0103 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:60:0x013b A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:63:0x0157 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0173 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0192 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:70:0x0193  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x01af A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:76:0x01c5 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r10) {
            /*
                Method dump skipped, instructions count: 580
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.auth.StartWebSocketInteractor.b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public StartWebSocketInteractor(@m8.g com.im.freechat.domain.k loginRepository, @m8.g u webSocketRepository, @m8.g t syncRepository, @m8.g com.im.freechat.domain.c databaseRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        Intrinsics.checkNotNullParameter(webSocketRepository, "webSocketRepository");
        Intrinsics.checkNotNullParameter(syncRepository, "syncRepository");
        Intrinsics.checkNotNullParameter(databaseRepository, "databaseRepository");
        this.f41335a = loginRepository;
        this.f41336b = webSocketRepository;
        this.f41337c = syncRepository;
        this.f41338d = databaseRepository;
    }

    @Override // com.im.freechat.domain.usecase.base.FlowUseCase
    public /* bridge */ /* synthetic */ Object b(Boolean bool, Continuation<? super kotlinx.coroutines.flow.i<? extends String>> continuation) {
        return h(bool.booleanValue(), continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007f  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected java.lang.Object h(boolean r8, @m8.g kotlin.coroutines.Continuation<? super kotlinx.coroutines.flow.i<java.lang.String>> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.im.freechat.domain.usecase.auth.StartWebSocketInteractor.a
            if (r0 == 0) goto L13
            r0 = r9
            com.im.freechat.domain.usecase.auth.StartWebSocketInteractor$a r0 = (com.im.freechat.domain.usecase.auth.StartWebSocketInteractor.a) r0
            int r1 = r0.f41358g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41358g = r1
            goto L18
        L13:
            com.im.freechat.domain.usecase.auth.StartWebSocketInteractor$a r0 = new com.im.freechat.domain.usecase.auth.StartWebSocketInteractor$a
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f41356e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f41358g
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L50
            if (r2 == r4) goto L42
            if (r2 != r3) goto L3a
            boolean r8 = r0.f41355d
            java.lang.Object r1 = r0.f41354c
            com.im.freechat.shared.entities.auth.UserInfo r1 = (com.im.freechat.shared.entities.auth.UserInfo) r1
            java.lang.Object r2 = r0.f41353b
            com.im.freechat.domain.u r2 = (com.im.freechat.domain.u) r2
            java.lang.Object r0 = r0.f41352a
            com.im.freechat.domain.usecase.auth.StartWebSocketInteractor r0 = (com.im.freechat.domain.usecase.auth.StartWebSocketInteractor) r0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L82
        L3a:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L42:
            boolean r8 = r0.f41355d
            java.lang.Object r2 = r0.f41353b
            com.im.freechat.domain.u r2 = (com.im.freechat.domain.u) r2
            java.lang.Object r4 = r0.f41352a
            com.im.freechat.domain.usecase.auth.StartWebSocketInteractor r4 = (com.im.freechat.domain.usecase.auth.StartWebSocketInteractor) r4
            kotlin.ResultKt.throwOnFailure(r9)
            goto L6a
        L50:
            kotlin.ResultKt.throwOnFailure(r9)
            com.im.freechat.domain.u r9 = r7.f41336b
            com.im.freechat.domain.k r2 = r7.f41335a
            r0.f41352a = r7
            r0.f41353b = r9
            r0.f41355d = r8
            r0.f41358g = r4
            java.lang.Object r2 = r2.v(r0)
            if (r2 != r1) goto L66
            return r1
        L66:
            r4 = r7
            r6 = r2
            r2 = r9
            r9 = r6
        L6a:
            com.im.freechat.shared.entities.auth.UserInfo r9 = (com.im.freechat.shared.entities.auth.UserInfo) r9
            com.im.freechat.domain.k r5 = r4.f41335a
            r0.f41352a = r4
            r0.f41353b = r2
            r0.f41354c = r9
            r0.f41355d = r8
            r0.f41358g = r3
            java.lang.Object r0 = r5.c(r0)
            if (r0 != r1) goto L7f
            return r1
        L7f:
            r1 = r9
            r9 = r0
            r0 = r4
        L82:
            java.lang.String r9 = (java.lang.String) r9
            kotlinx.coroutines.flow.i r8 = r2.f(r1, r9, r8)
            com.im.freechat.domain.usecase.auth.StartWebSocketInteractor$b r9 = new com.im.freechat.domain.usecase.auth.StartWebSocketInteractor$b
            r1 = 0
            r9.<init>(r1)
            kotlinx.coroutines.flow.i r8 = kotlinx.coroutines.flow.k.e1(r8, r9)
            com.im.freechat.domain.usecase.auth.StartWebSocketInteractor$buildFlow$$inlined$filter$1 r9 = new com.im.freechat.domain.usecase.auth.StartWebSocketInteractor$buildFlow$$inlined$filter$1
            r9.<init>()
            com.im.freechat.domain.usecase.auth.StartWebSocketInteractor$buildFlow$$inlined$map$1 r8 = new com.im.freechat.domain.usecase.auth.StartWebSocketInteractor$buildFlow$$inlined$map$1
            r8.<init>()
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.auth.StartWebSocketInteractor.h(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
