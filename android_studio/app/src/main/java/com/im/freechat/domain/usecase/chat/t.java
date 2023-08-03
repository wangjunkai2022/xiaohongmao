package com.im.freechat.domain.usecase.chat;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SyncChatInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"Lcom/im/freechat/domain/usecase/chat/t;", "Lcom/im/freechat/domain/usecase/base/a;", "", "", "params", "c", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "Lcom/im/freechat/domain/t;", "b", "Lcom/im/freechat/domain/t;", "syncRepository", "<init>", "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/t;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class t extends com.im.freechat.domain.usecase.base.a<Integer, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.k f41532a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.im.freechat.domain.t f41533b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncChatInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.chat.SyncChatInteractor", f = "SyncChatInteractor.kt", i = {0, 0}, l = {13, 14}, m = "run", n = {"this", "params"}, s = {"L$0", "I$0"})
    /* loaded from: classes3.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41534a;

        /* renamed from: b  reason: collision with root package name */
        int f41535b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f41536c;

        /* renamed from: e  reason: collision with root package name */
        int f41538e;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41536c = obj;
            this.f41538e |= Integer.MIN_VALUE;
            return t.this.c(0, this);
        }
    }

    public t(@m8.g com.im.freechat.domain.k loginRepository, @m8.g com.im.freechat.domain.t syncRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        Intrinsics.checkNotNullParameter(syncRepository, "syncRepository");
        this.f41532a = loginRepository;
        this.f41533b = syncRepository;
    }

    @Override // com.im.freechat.domain.usecase.base.a
    public /* bridge */ /* synthetic */ Object b(Integer num, Continuation<? super Unit> continuation) {
        return c(num.intValue(), continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0064 A[RETURN] */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected java.lang.Object c(int r6, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.im.freechat.domain.usecase.chat.t.a
            if (r0 == 0) goto L13
            r0 = r7
            com.im.freechat.domain.usecase.chat.t$a r0 = (com.im.freechat.domain.usecase.chat.t.a) r0
            int r1 = r0.f41538e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41538e = r1
            goto L18
        L13:
            com.im.freechat.domain.usecase.chat.t$a r0 = new com.im.freechat.domain.usecase.chat.t$a
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f41536c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f41538e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3e
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r7)
            goto L65
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            int r6 = r0.f41535b
            java.lang.Object r2 = r0.f41534a
            com.im.freechat.domain.usecase.chat.t r2 = (com.im.freechat.domain.usecase.chat.t) r2
            kotlin.ResultKt.throwOnFailure(r7)
            goto L51
        L3e:
            kotlin.ResultKt.throwOnFailure(r7)
            com.im.freechat.domain.k r7 = r5.f41532a
            r0.f41534a = r5
            r0.f41535b = r6
            r0.f41538e = r4
            java.lang.Object r7 = r7.v(r0)
            if (r7 != r1) goto L50
            return r1
        L50:
            r2 = r5
        L51:
            com.im.freechat.shared.entities.auth.UserInfo r7 = (com.im.freechat.shared.entities.auth.UserInfo) r7
            com.im.freechat.domain.t r2 = r2.f41533b
            int r7 = r7.getUserId()
            r4 = 0
            r0.f41534a = r4
            r0.f41538e = r3
            java.lang.Object r6 = r2.g(r7, r6, r0)
            if (r6 != r1) goto L65
            return r1
        L65:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.chat.t.c(int, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
