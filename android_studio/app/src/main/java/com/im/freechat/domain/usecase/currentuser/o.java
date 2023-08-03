package com.im.freechat.domain.usecase.currentuser;

import com.im.freechat.domain.t;
import com.im.freechat.shared.entities.auth.UserInfo;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UpdateExternalAvatarInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001f\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u000f¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/domain/usecase/currentuser/o;", "Lcom/im/freechat/domain/usecase/base/a;", "", "Lcom/im/freechat/shared/entities/auth/UserInfo;", "params", "c", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/c;", "a", "Lcom/im/freechat/domain/c;", "databaseRepository", "Lcom/im/freechat/domain/t;", "b", "Lcom/im/freechat/domain/t;", "syncRepository", "Lcom/im/freechat/domain/k;", "Lcom/im/freechat/domain/k;", "loginRepository", "<init>", "(Lcom/im/freechat/domain/c;Lcom/im/freechat/domain/t;Lcom/im/freechat/domain/k;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class o extends com.im.freechat.domain.usecase.base.a<String, UserInfo> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.c f41742a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final t f41743b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.im.freechat.domain.k f41744c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UpdateExternalAvatarInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.currentuser.UpdateExternalAvatarInteractor", f = "UpdateExternalAvatarInteractor.kt", i = {0, 0, 1, 1, 2}, l = {16, 17, 18}, m = "run", n = {"this", "params", "this", "it", "it"}, s = {"L$0", "L$1", "L$0", "L$1", "L$0"})
    /* loaded from: classes3.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41745a;

        /* renamed from: b  reason: collision with root package name */
        Object f41746b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f41747c;

        /* renamed from: e  reason: collision with root package name */
        int f41749e;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41747c = obj;
            this.f41749e |= Integer.MIN_VALUE;
            return o.this.b(null, this);
        }
    }

    public o(@m8.g com.im.freechat.domain.c databaseRepository, @m8.g t syncRepository, @m8.g com.im.freechat.domain.k loginRepository) {
        Intrinsics.checkNotNullParameter(databaseRepository, "databaseRepository");
        Intrinsics.checkNotNullParameter(syncRepository, "syncRepository");
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        this.f41742a = databaseRepository;
        this.f41743b = syncRepository;
        this.f41744c = loginRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0095 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a7  */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g java.lang.String r22, @m8.g kotlin.coroutines.Continuation<? super com.im.freechat.shared.entities.auth.UserInfo> r23) {
        /*
            r21 = this;
            r0 = r21
            r1 = r23
            boolean r2 = r1 instanceof com.im.freechat.domain.usecase.currentuser.o.a
            if (r2 == 0) goto L17
            r2 = r1
            com.im.freechat.domain.usecase.currentuser.o$a r2 = (com.im.freechat.domain.usecase.currentuser.o.a) r2
            int r3 = r2.f41749e
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.f41749e = r3
            goto L1c
        L17:
            com.im.freechat.domain.usecase.currentuser.o$a r2 = new com.im.freechat.domain.usecase.currentuser.o$a
            r2.<init>(r1)
        L1c:
            java.lang.Object r1 = r2.f41747c
            java.lang.Object r3 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r4 = r2.f41749e
            r5 = 3
            r6 = 2
            r7 = 1
            if (r4 == 0) goto L5b
            if (r4 == r7) goto L4d
            if (r4 == r6) goto L40
            if (r4 != r5) goto L38
            java.lang.Object r2 = r2.f41745a
            com.im.freechat.shared.entities.auth.UserInfo r2 = (com.im.freechat.shared.entities.auth.UserInfo) r2
            kotlin.ResultKt.throwOnFailure(r1)
            goto La8
        L38:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L40:
            java.lang.Object r4 = r2.f41746b
            com.im.freechat.shared.entities.auth.UserInfo r4 = (com.im.freechat.shared.entities.auth.UserInfo) r4
            java.lang.Object r6 = r2.f41745a
            com.im.freechat.domain.usecase.currentuser.o r6 = (com.im.freechat.domain.usecase.currentuser.o) r6
            kotlin.ResultKt.throwOnFailure(r1)
            r1 = r4
            goto L97
        L4d:
            java.lang.Object r4 = r2.f41746b
            java.lang.String r4 = (java.lang.String) r4
            java.lang.Object r7 = r2.f41745a
            com.im.freechat.domain.usecase.currentuser.o r7 = (com.im.freechat.domain.usecase.currentuser.o) r7
            kotlin.ResultKt.throwOnFailure(r1)
            r12 = r4
            r4 = r7
            goto L71
        L5b:
            kotlin.ResultKt.throwOnFailure(r1)
            com.im.freechat.domain.k r1 = r0.f41744c
            r2.f41745a = r0
            r4 = r22
            r2.f41746b = r4
            r2.f41749e = r7
            java.lang.Object r1 = r1.v(r2)
            if (r1 != r3) goto L6f
            return r3
        L6f:
            r12 = r4
            r4 = r0
        L71:
            r7 = r1
            com.im.freechat.shared.entities.auth.UserInfo r7 = (com.im.freechat.shared.entities.auth.UserInfo) r7
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r13 = 0
            r14 = 0
            r15 = 0
            r16 = 0
            r18 = 0
            r19 = 1007(0x3ef, float:1.411E-42)
            r20 = 0
            com.im.freechat.shared.entities.auth.UserInfo r1 = com.im.freechat.shared.entities.auth.UserInfo.copy$default(r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r18, r19, r20)
            com.im.freechat.domain.k r7 = r4.f41744c
            r2.f41745a = r4
            r2.f41746b = r1
            r2.f41749e = r6
            java.lang.Object r6 = r7.p(r1, r2)
            if (r6 != r3) goto L96
            return r3
        L96:
            r6 = r4
        L97:
            com.im.freechat.domain.c r4 = r6.f41742a
            r2.f41745a = r1
            r6 = 0
            r2.f41746b = r6
            r2.f41749e = r5
            java.lang.Object r2 = r4.D(r1, r2)
            if (r2 != r3) goto La7
            return r3
        La7:
            r2 = r1
        La8:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.currentuser.o.b(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
