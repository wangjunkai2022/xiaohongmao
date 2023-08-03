package com.im.freechat.domain.usecase.auth;

import com.im.freechat.domain.t;
import com.im.freechat.domain.u;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LogoutUserInteractor.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B'\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u0015\u0010\u0016J\u001b\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0010\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0017"}, d2 = {"Lcom/im/freechat/domain/usecase/auth/g;", "Lcom/im/freechat/domain/usecase/base/a;", "", "params", "c", "(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "Lcom/im/freechat/domain/c;", "b", "Lcom/im/freechat/domain/c;", "databaseRepository", "Lcom/im/freechat/domain/u;", "Lcom/im/freechat/domain/u;", "webSocketRepository", "Lcom/im/freechat/domain/t;", "d", "Lcom/im/freechat/domain/t;", "syncRepository", "<init>", "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/c;Lcom/im/freechat/domain/u;Lcom/im/freechat/domain/t;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class g extends com.im.freechat.domain.usecase.base.a<Unit, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.k f41395a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.im.freechat.domain.c f41396b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final u f41397c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final t f41398d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LogoutUserInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.auth.LogoutUserInteractor", f = "LogoutUserInteractor.kt", i = {0}, l = {19, 20}, m = "run", n = {"this"}, s = {"L$0"})
    /* loaded from: classes3.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41399a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f41400b;

        /* renamed from: d  reason: collision with root package name */
        int f41402d;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41400b = obj;
            this.f41402d |= Integer.MIN_VALUE;
            return g.this.b(null, this);
        }
    }

    public g(@m8.g com.im.freechat.domain.k loginRepository, @m8.g com.im.freechat.domain.c databaseRepository, @m8.g u webSocketRepository, @m8.g t syncRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        Intrinsics.checkNotNullParameter(databaseRepository, "databaseRepository");
        Intrinsics.checkNotNullParameter(webSocketRepository, "webSocketRepository");
        Intrinsics.checkNotNullParameter(syncRepository, "syncRepository");
        this.f41395a = loginRepository;
        this.f41396b = databaseRepository;
        this.f41397c = webSocketRepository;
        this.f41398d = syncRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0065 A[RETURN] */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g kotlin.Unit r5, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r5 = r6 instanceof com.im.freechat.domain.usecase.auth.g.a
            if (r5 == 0) goto L13
            r5 = r6
            com.im.freechat.domain.usecase.auth.g$a r5 = (com.im.freechat.domain.usecase.auth.g.a) r5
            int r0 = r5.f41402d
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r5.f41402d = r0
            goto L18
        L13:
            com.im.freechat.domain.usecase.auth.g$a r5 = new com.im.freechat.domain.usecase.auth.g$a
            r5.<init>(r6)
        L18:
            java.lang.Object r6 = r5.f41400b
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.f41402d
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L3c
            if (r1 == r3) goto L34
            if (r1 != r2) goto L2c
            kotlin.ResultKt.throwOnFailure(r6)
            goto L66
        L2c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L34:
            java.lang.Object r1 = r5.f41399a
            com.im.freechat.domain.usecase.auth.g r1 = (com.im.freechat.domain.usecase.auth.g) r1
            kotlin.ResultKt.throwOnFailure(r6)
            goto L58
        L3c:
            kotlin.ResultKt.throwOnFailure(r6)
            com.im.freechat.domain.t r6 = r4.f41398d
            r1 = 0
            r6.u(r1)
            com.im.freechat.domain.u r6 = r4.f41397c
            r6.c()
            com.im.freechat.domain.k r6 = r4.f41395a
            r5.f41399a = r4
            r5.f41402d = r3
            java.lang.Object r6 = r6.t(r5)
            if (r6 != r0) goto L57
            return r0
        L57:
            r1 = r4
        L58:
            com.im.freechat.domain.c r6 = r1.f41396b
            r1 = 0
            r5.f41399a = r1
            r5.f41402d = r2
            java.lang.Object r5 = r6.a(r5)
            if (r5 != r0) goto L66
            return r0
        L66:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.auth.g.b(kotlin.Unit, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
