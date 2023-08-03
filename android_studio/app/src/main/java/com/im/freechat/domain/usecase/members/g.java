package com.im.freechat.domain.usecase.members;

import com.im.freechat.domain.k;
import com.im.freechat.domain.t;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RemoveMemberFromChatInteractor.kt */
@Deprecated(message = "Not yet implemented on backend")
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\bB\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"Lcom/im/freechat/domain/usecase/members/g;", "Lcom/im/freechat/domain/usecase/base/a;", "Lcom/im/freechat/domain/usecase/members/g$a;", "", "params", "c", "(Lcom/im/freechat/domain/usecase/members/g$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "Lcom/im/freechat/domain/t;", "b", "Lcom/im/freechat/domain/t;", "syncRepository", "<init>", "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/t;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class g extends com.im.freechat.domain.usecase.base.a<a, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final k f41836a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final t f41837b;

    /* compiled from: RemoveMemberFromChatInteractor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nR\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0003\u0010\u0005R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\u0007\u0010\u0005¨\u0006\u000b"}, d2 = {"Lcom/im/freechat/domain/usecase/members/g$a;", "", "", "a", "I", "()I", k4.b.f84734a, "b", "memberId", "<init>", "(II)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f41838a;

        /* renamed from: b  reason: collision with root package name */
        private final int f41839b;

        public a(int i4, int i10) {
            this.f41838a = i4;
            this.f41839b = i10;
        }

        public final int a() {
            return this.f41838a;
        }

        public final int b() {
            return this.f41839b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RemoveMemberFromChatInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.members.RemoveMemberFromChatInteractor", f = "RemoveMemberFromChatInteractor.kt", i = {}, l = {14}, m = "run", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f41840a;

        /* renamed from: c  reason: collision with root package name */
        int f41842c;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41840a = obj;
            this.f41842c |= Integer.MIN_VALUE;
            return g.this.b(null, this);
        }
    }

    public g(@m8.g k loginRepository, @m8.g t syncRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        Intrinsics.checkNotNullParameter(syncRepository, "syncRepository");
        this.f41836a = loginRepository;
        this.f41837b = syncRepository;
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
    public java.lang.Object b(@m8.g com.im.freechat.domain.usecase.members.g.a r6, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.im.freechat.domain.usecase.members.g.b
            if (r0 == 0) goto L13
            r0 = r7
            com.im.freechat.domain.usecase.members.g$b r0 = (com.im.freechat.domain.usecase.members.g.b) r0
            int r1 = r0.f41842c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41842c = r1
            goto L18
        L13:
            com.im.freechat.domain.usecase.members.g$b r0 = new com.im.freechat.domain.usecase.members.g$b
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f41840a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f41842c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4d
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.ResultKt.throwOnFailure(r7)
            com.im.freechat.domain.t r7 = r5.f41837b
            com.im.freechat.domain.k r2 = r5.f41836a
            int r2 = r2.n()
            int r4 = r6.a()
            int r6 = r6.b()
            r0.f41842c = r3
            java.lang.Object r6 = r7.f(r2, r4, r6, r0)
            if (r6 != r1) goto L4d
            return r1
        L4d:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.members.g.b(com.im.freechat.domain.usecase.members.g$a, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
