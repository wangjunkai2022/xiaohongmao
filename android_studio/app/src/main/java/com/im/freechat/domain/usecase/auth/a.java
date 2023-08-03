package com.im.freechat.domain.usecase.auth;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AssertUserLoggedInInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"Lcom/im/freechat/domain/usecase/auth/a;", "Lcom/im/freechat/domain/usecase/base/a;", "", "params", "c", "(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "<init>", "(Lcom/im/freechat/domain/k;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a extends com.im.freechat.domain.usecase.base.a<Unit, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.k f41368a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AssertUserLoggedInInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.auth.AssertUserLoggedInInteractor", f = "AssertUserLoggedInInteractor.kt", i = {}, l = {11}, m = "run", n = {}, s = {})
    /* renamed from: com.im.freechat.domain.usecase.auth.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0316a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f41369a;

        /* renamed from: c  reason: collision with root package name */
        int f41371c;

        C0316a(Continuation<? super C0316a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41369a = obj;
            this.f41371c |= Integer.MIN_VALUE;
            return a.this.b(null, this);
        }
    }

    public a(@m8.g com.im.freechat.domain.k loginRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        this.f41368a = loginRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004a  */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g kotlin.Unit r4, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r5) {
        /*
            r3 = this;
            boolean r4 = r5 instanceof com.im.freechat.domain.usecase.auth.a.C0316a
            if (r4 == 0) goto L13
            r4 = r5
            com.im.freechat.domain.usecase.auth.a$a r4 = (com.im.freechat.domain.usecase.auth.a.C0316a) r4
            int r0 = r4.f41371c
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r4.f41371c = r0
            goto L18
        L13:
            com.im.freechat.domain.usecase.auth.a$a r4 = new com.im.freechat.domain.usecase.auth.a$a
            r4.<init>(r5)
        L18:
            java.lang.Object r5 = r4.f41369a
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.f41371c
            r2 = 1
            if (r1 == 0) goto L31
            if (r1 != r2) goto L29
            kotlin.ResultKt.throwOnFailure(r5)
            goto L3f
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            com.im.freechat.domain.k r5 = r3.f41368a
            r4.f41371c = r2
            java.lang.Object r5 = r5.h(r4)
            if (r5 != r0) goto L3f
            return r0
        L3f:
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r4 = r5.booleanValue()
            if (r4 == 0) goto L4a
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L4a:
            java.lang.Exception r4 = new java.lang.Exception
            java.lang.String r5 = "User is not logged in"
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.auth.a.b(kotlin.Unit, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
