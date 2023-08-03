package com.im.freechat.domain.usecase.chat_request;

import com.im.freechat.domain.t;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: DeleteFriendRequestInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\bB\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"Lcom/im/freechat/domain/usecase/chat_request/a;", "Lcom/im/freechat/domain/usecase/base/a;", "Lcom/im/freechat/domain/usecase/chat_request/a$a;", "", "params", "c", "(Lcom/im/freechat/domain/usecase/chat_request/a$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/t;", "a", "Lcom/im/freechat/domain/t;", "syncRepository", "<init>", "(Lcom/im/freechat/domain/t;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a extends com.im.freechat.domain.usecase.base.a<C0321a, Unit> {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final t f41553a;

    /* compiled from: DeleteFriendRequestInteractor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0003\u0010\u0005¨\u0006\t"}, d2 = {"Lcom/im/freechat/domain/usecase/chat_request/a$a;", "", "", "a", "I", "()I", "targetUserId", "<init>", "(I)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
    /* renamed from: com.im.freechat.domain.usecase.chat_request.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0321a {

        /* renamed from: a  reason: collision with root package name */
        private final int f41554a;

        public C0321a(int i4) {
            this.f41554a = i4;
        }

        public final int a() {
            return this.f41554a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DeleteFriendRequestInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.chat_request.DeleteFriendRequestInteractor", f = "DeleteFriendRequestInteractor.kt", i = {}, l = {11}, m = "run", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f41555a;

        /* renamed from: c  reason: collision with root package name */
        int f41557c;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            this.f41555a = obj;
            this.f41557c |= Integer.MIN_VALUE;
            return a.this.b(null, this);
        }
    }

    public a(@g t syncRepository) {
        Intrinsics.checkNotNullParameter(syncRepository, "syncRepository");
        this.f41553a = syncRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g com.im.freechat.domain.usecase.chat_request.a.C0321a r5, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.im.freechat.domain.usecase.chat_request.a.b
            if (r0 == 0) goto L13
            r0 = r6
            com.im.freechat.domain.usecase.chat_request.a$b r0 = (com.im.freechat.domain.usecase.chat_request.a.b) r0
            int r1 = r0.f41557c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41557c = r1
            goto L18
        L13:
            com.im.freechat.domain.usecase.chat_request.a$b r0 = new com.im.freechat.domain.usecase.chat_request.a$b
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f41555a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f41557c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r6)
            goto L43
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r6)
            com.im.freechat.domain.t r6 = r4.f41553a
            int r5 = r5.a()
            r0.f41557c = r3
            java.lang.Object r5 = r6.t(r5, r0)
            if (r5 != r1) goto L43
            return r1
        L43:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.chat_request.a.b(com.im.freechat.domain.usecase.chat_request.a$a, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
