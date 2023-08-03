package com.im.freechat.domain.usecase.chat;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.s0;

/* compiled from: DeleteAllChatsInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\u000e¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/domain/usecase/chat/d;", "Lcom/im/freechat/domain/usecase/base/a;", "", "params", "e", "(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "Lcom/im/freechat/domain/t;", "b", "Lcom/im/freechat/domain/t;", "syncRepository", "Lcom/im/freechat/domain/c;", "c", "Lcom/im/freechat/domain/c;", "databaseRepository", "<init>", "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/t;Lcom/im/freechat/domain/c;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class d extends com.im.freechat.domain.usecase.base.a<Unit, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.k f41467a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.im.freechat.domain.t f41468b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.im.freechat.domain.c f41469c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DeleteAllChatsInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.chat.DeleteAllChatsInteractor", f = "DeleteAllChatsInteractor.kt", i = {0}, l = {19, 20}, m = "run", n = {"this"}, s = {"L$0"})
    /* loaded from: classes3.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41470a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f41471b;

        /* renamed from: d  reason: collision with root package name */
        int f41473d;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41471b = obj;
            this.f41473d |= Integer.MIN_VALUE;
            return d.this.b(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DeleteAllChatsInteractor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.domain.usecase.chat.DeleteAllChatsInteractor$run$2", f = "DeleteAllChatsInteractor.kt", i = {}, l = {21}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends SuspendLambda implements Function3<s0, Integer, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41474a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ int f41475b;

        b(Continuation<? super b> continuation) {
            super(3, continuation);
        }

        @m8.h
        public final Object h(@m8.g s0 s0Var, int i4, @m8.h Continuation<? super Unit> continuation) {
            b bVar = new b(continuation);
            bVar.f41475b = i4;
            return bVar.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(s0 s0Var, Integer num, Continuation<? super Unit> continuation) {
            return h(s0Var, num.intValue(), continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41474a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                int i10 = this.f41475b;
                com.im.freechat.domain.t tVar = d.this.f41468b;
                int n9 = d.this.f41467a.n();
                this.f41474a = 1;
                if (tVar.K(n9, i10, this) == coroutine_suspended) {
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

    public d(@m8.g com.im.freechat.domain.k loginRepository, @m8.g com.im.freechat.domain.t syncRepository, @m8.g com.im.freechat.domain.c databaseRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        Intrinsics.checkNotNullParameter(syncRepository, "syncRepository");
        Intrinsics.checkNotNullParameter(databaseRepository, "databaseRepository");
        this.f41467a = loginRepository;
        this.f41468b = syncRepository;
        this.f41469c = databaseRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005f A[RETURN] */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g kotlin.Unit r6, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r6 = r7 instanceof com.im.freechat.domain.usecase.chat.d.a
            if (r6 == 0) goto L13
            r6 = r7
            com.im.freechat.domain.usecase.chat.d$a r6 = (com.im.freechat.domain.usecase.chat.d.a) r6
            int r0 = r6.f41473d
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r6.f41473d = r0
            goto L18
        L13:
            com.im.freechat.domain.usecase.chat.d$a r6 = new com.im.freechat.domain.usecase.chat.d$a
            r6.<init>(r7)
        L18:
            java.lang.Object r7 = r6.f41471b
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.f41473d
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L3c
            if (r1 == r3) goto L34
            if (r1 != r2) goto L2c
            kotlin.ResultKt.throwOnFailure(r7)
            goto L60
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            java.lang.Object r1 = r6.f41470a
            com.im.freechat.domain.usecase.chat.d r1 = (com.im.freechat.domain.usecase.chat.d) r1
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4d
        L3c:
            kotlin.ResultKt.throwOnFailure(r7)
            com.im.freechat.domain.c r7 = r5.f41469c
            r6.f41470a = r5
            r6.f41473d = r3
            java.lang.Object r7 = r7.F(r6)
            if (r7 != r0) goto L4c
            return r0
        L4c:
            r1 = r5
        L4d:
            java.util.List r7 = (java.util.List) r7
            com.im.freechat.domain.usecase.chat.d$b r3 = new com.im.freechat.domain.usecase.chat.d$b
            r4 = 0
            r3.<init>(r4)
            r6.f41470a = r4
            r6.f41473d = r2
            java.lang.Object r6 = com.im.freechat.domain.f.a(r7, r3, r6)
            if (r6 != r0) goto L60
            return r0
        L60:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.chat.d.b(kotlin.Unit, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
