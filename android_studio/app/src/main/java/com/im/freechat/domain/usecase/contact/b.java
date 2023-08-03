package com.im.freechat.domain.usecase.contact;

import com.im.freechat.domain.p;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FollowContactInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001f\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u000f¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/domain/usecase/contact/b;", "Lcom/im/freechat/domain/usecase/base/a;", "", "", "params", "c", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "Lcom/im/freechat/domain/p;", "b", "Lcom/im/freechat/domain/p;", "remoteRepository", "Lcom/im/freechat/domain/c;", "Lcom/im/freechat/domain/c;", "databaseRepository", "<init>", "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/p;Lcom/im/freechat/domain/c;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b extends com.im.freechat.domain.usecase.base.a<Integer, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.k f41608a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final p f41609b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.im.freechat.domain.c f41610c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FollowContactInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.contact.FollowContactInteractor", f = "FollowContactInteractor.kt", i = {0, 0, 1, 1}, l = {16, 17, 22}, m = "run", n = {"this", "params", "this", "params"}, s = {"L$0", "I$0", "L$0", "I$0"})
    /* loaded from: classes3.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41611a;

        /* renamed from: b  reason: collision with root package name */
        int f41612b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f41613c;

        /* renamed from: e  reason: collision with root package name */
        int f41615e;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41613c = obj;
            this.f41615e |= Integer.MIN_VALUE;
            return b.this.c(0, this);
        }
    }

    public b(@m8.g com.im.freechat.domain.k loginRepository, @m8.g p remoteRepository, @m8.g com.im.freechat.domain.c databaseRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        Intrinsics.checkNotNullParameter(remoteRepository, "remoteRepository");
        Intrinsics.checkNotNullParameter(databaseRepository, "databaseRepository");
        this.f41608a = loginRepository;
        this.f41609b = remoteRepository;
        this.f41610c = databaseRepository;
    }

    @Override // com.im.freechat.domain.usecase.base.a
    public /* bridge */ /* synthetic */ Object b(Integer num, Continuation<? super Unit> continuation) {
        return c(num.intValue(), continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0074 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0082 A[RETURN] */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected java.lang.Object c(int r8, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.im.freechat.domain.usecase.contact.b.a
            if (r0 == 0) goto L13
            r0 = r9
            com.im.freechat.domain.usecase.contact.b$a r0 = (com.im.freechat.domain.usecase.contact.b.a) r0
            int r1 = r0.f41615e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41615e = r1
            goto L18
        L13:
            com.im.freechat.domain.usecase.contact.b$a r0 = new com.im.freechat.domain.usecase.contact.b$a
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f41613c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f41615e
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L4b
            if (r2 == r5) goto L41
            if (r2 == r4) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r9)
            goto L83
        L2f:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L37:
            int r8 = r0.f41612b
            java.lang.Object r2 = r0.f41611a
            com.im.freechat.domain.usecase.contact.b r2 = (com.im.freechat.domain.usecase.contact.b) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto L75
        L41:
            int r8 = r0.f41612b
            java.lang.Object r2 = r0.f41611a
            com.im.freechat.domain.usecase.contact.b r2 = (com.im.freechat.domain.usecase.contact.b) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto L5e
        L4b:
            kotlin.ResultKt.throwOnFailure(r9)
            com.im.freechat.domain.k r9 = r7.f41608a
            r0.f41611a = r7
            r0.f41612b = r8
            r0.f41615e = r5
            java.lang.Object r9 = r9.v(r0)
            if (r9 != r1) goto L5d
            return r1
        L5d:
            r2 = r7
        L5e:
            com.im.freechat.shared.entities.auth.UserInfo r9 = (com.im.freechat.shared.entities.auth.UserInfo) r9
            java.lang.String r9 = r9.getToken()
            com.im.freechat.domain.p r5 = r2.f41609b
            com.im.freechat.shared.entities.contact.RelationOperationType r6 = com.im.freechat.shared.entities.contact.RelationOperationType.FOLLOW
            r0.f41611a = r2
            r0.f41612b = r8
            r0.f41615e = r4
            java.lang.Object r9 = r5.b(r9, r6, r8, r0)
            if (r9 != r1) goto L75
            return r1
        L75:
            com.im.freechat.domain.c r9 = r2.f41610c
            r2 = 0
            r0.f41611a = r2
            r0.f41615e = r3
            java.lang.Object r8 = r9.n(r8, r0)
            if (r8 != r1) goto L83
            return r1
        L83:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.contact.b.c(int, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
