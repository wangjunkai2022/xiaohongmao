package com.im.freechat.domain.usecase.messages;

import com.im.freechat.domain.t;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RemoveMessagesForEveryoneInteractor.kt */
@Deprecated(message = "Not yet implemented on backend")
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\bB\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"Lcom/im/freechat/domain/usecase/messages/e;", "Lcom/im/freechat/domain/usecase/base/a;", "Lcom/im/freechat/domain/usecase/messages/e$a;", "", "params", "c", "(Lcom/im/freechat/domain/usecase/messages/e$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "Lcom/im/freechat/domain/t;", "b", "Lcom/im/freechat/domain/t;", "syncRepository", "<init>", "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/t;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class e extends com.im.freechat.domain.usecase.base.a<a, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.k f41868a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final t f41869b;

    /* compiled from: RemoveMessagesForEveryoneInteractor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000eR\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\f\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\u0006\u0010\n\u001a\u0004\b\u0004\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcom/im/freechat/domain/usecase/messages/e$a;", "", "", "", "a", "Ljava/util/List;", "b", "()Ljava/util/List;", "messageIds", "", "I", "()I", k4.b.f84734a, "<init>", "(Ljava/util/List;I)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final List<Long> f41870a;

        /* renamed from: b  reason: collision with root package name */
        private final int f41871b;

        public a(@m8.g List<Long> messageIds, int i4) {
            Intrinsics.checkNotNullParameter(messageIds, "messageIds");
            this.f41870a = messageIds;
            this.f41871b = i4;
        }

        public final int a() {
            return this.f41871b;
        }

        @m8.g
        public final List<Long> b() {
            return this.f41870a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RemoveMessagesForEveryoneInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.messages.RemoveMessagesForEveryoneInteractor", f = "RemoveMessagesForEveryoneInteractor.kt", i = {0, 0}, l = {14, 15}, m = "run", n = {"this", "params"}, s = {"L$0", "L$1"})
    /* loaded from: classes3.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41872a;

        /* renamed from: b  reason: collision with root package name */
        Object f41873b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f41874c;

        /* renamed from: e  reason: collision with root package name */
        int f41876e;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41874c = obj;
            this.f41876e |= Integer.MIN_VALUE;
            return e.this.b(null, this);
        }
    }

    public e(@m8.g com.im.freechat.domain.k loginRepository, @m8.g t syncRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        Intrinsics.checkNotNullParameter(syncRepository, "syncRepository");
        this.f41868a = loginRepository;
        this.f41869b = syncRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0070 A[RETURN] */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g com.im.freechat.domain.usecase.messages.e.a r7, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.im.freechat.domain.usecase.messages.e.b
            if (r0 == 0) goto L13
            r0 = r8
            com.im.freechat.domain.usecase.messages.e$b r0 = (com.im.freechat.domain.usecase.messages.e.b) r0
            int r1 = r0.f41876e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41876e = r1
            goto L18
        L13:
            com.im.freechat.domain.usecase.messages.e$b r0 = new com.im.freechat.domain.usecase.messages.e$b
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f41874c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f41876e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r8)
            goto L71
        L2c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L34:
            java.lang.Object r7 = r0.f41873b
            com.im.freechat.domain.usecase.messages.e$a r7 = (com.im.freechat.domain.usecase.messages.e.a) r7
            java.lang.Object r2 = r0.f41872a
            com.im.freechat.domain.usecase.messages.e r2 = (com.im.freechat.domain.usecase.messages.e) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L53
        L40:
            kotlin.ResultKt.throwOnFailure(r8)
            com.im.freechat.domain.k r8 = r6.f41868a
            r0.f41872a = r6
            r0.f41873b = r7
            r0.f41876e = r4
            java.lang.Object r8 = r8.v(r0)
            if (r8 != r1) goto L52
            return r1
        L52:
            r2 = r6
        L53:
            com.im.freechat.shared.entities.auth.UserInfo r8 = (com.im.freechat.shared.entities.auth.UserInfo) r8
            com.im.freechat.domain.t r2 = r2.f41869b
            int r8 = r8.getUserId()
            java.util.List r4 = r7.b()
            int r7 = r7.a()
            r5 = 0
            r0.f41872a = r5
            r0.f41873b = r5
            r0.f41876e = r3
            java.lang.Object r7 = r2.O(r8, r4, r7, r0)
            if (r7 != r1) goto L71
            return r1
        L71:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.messages.e.b(com.im.freechat.domain.usecase.messages.e$a, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
