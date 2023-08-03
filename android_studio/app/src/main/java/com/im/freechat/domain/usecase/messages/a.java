package com.im.freechat.domain.usecase.messages;

import com.im.freechat.domain.t;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AddToFavoritesInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0006\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lcom/im/freechat/domain/usecase/messages/a;", "Lcom/im/freechat/domain/usecase/base/a;", "", "", "", "params", "c", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "Lcom/im/freechat/domain/t;", "b", "Lcom/im/freechat/domain/t;", "syncRepository", "<init>", "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/t;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a extends com.im.freechat.domain.usecase.base.a<List<? extends Long>, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.k f41851a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final t f41852b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AddToFavoritesInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.messages.AddToFavoritesInteractor", f = "AddToFavoritesInteractor.kt", i = {0, 0}, l = {13, 14}, m = "run", n = {"this", "params"}, s = {"L$0", "L$1"})
    /* renamed from: com.im.freechat.domain.usecase.messages.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0326a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41853a;

        /* renamed from: b  reason: collision with root package name */
        Object f41854b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f41855c;

        /* renamed from: e  reason: collision with root package name */
        int f41857e;

        C0326a(Continuation<? super C0326a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41855c = obj;
            this.f41857e |= Integer.MIN_VALUE;
            return a.this.b(null, this);
        }
    }

    public a(@m8.g com.im.freechat.domain.k loginRepository, @m8.g t syncRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        Intrinsics.checkNotNullParameter(syncRepository, "syncRepository");
        this.f41851a = loginRepository;
        this.f41852b = syncRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0079 A[RETURN] */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g java.util.List<java.lang.Long> r11, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof com.im.freechat.domain.usecase.messages.a.C0326a
            if (r0 == 0) goto L13
            r0 = r12
            com.im.freechat.domain.usecase.messages.a$a r0 = (com.im.freechat.domain.usecase.messages.a.C0326a) r0
            int r1 = r0.f41857e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41857e = r1
            goto L18
        L13:
            com.im.freechat.domain.usecase.messages.a$a r0 = new com.im.freechat.domain.usecase.messages.a$a
            r0.<init>(r12)
        L18:
            r9 = r0
            java.lang.Object r12 = r9.f41855c
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.f41857e
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L41
            if (r1 == r3) goto L35
            if (r1 != r2) goto L2d
            kotlin.ResultKt.throwOnFailure(r12)
            goto L7a
        L2d:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L35:
            java.lang.Object r11 = r9.f41854b
            java.util.List r11 = (java.util.List) r11
            java.lang.Object r1 = r9.f41853a
            com.im.freechat.domain.usecase.messages.a r1 = (com.im.freechat.domain.usecase.messages.a) r1
            kotlin.ResultKt.throwOnFailure(r12)
            goto L54
        L41:
            kotlin.ResultKt.throwOnFailure(r12)
            com.im.freechat.domain.k r12 = r10.f41851a
            r9.f41853a = r10
            r9.f41854b = r11
            r9.f41857e = r3
            java.lang.Object r12 = r12.v(r9)
            if (r12 != r0) goto L53
            return r0
        L53:
            r1 = r10
        L54:
            r4 = r11
            com.im.freechat.shared.entities.auth.UserInfo r12 = (com.im.freechat.shared.entities.auth.UserInfo) r12
            com.im.freechat.domain.t r1 = r1.f41852b
            int r11 = r12.getUserId()
            int r3 = r12.getUserId()
            r5 = 0
            java.util.List r6 = kotlin.collections.CollectionsKt.emptyList()
            r7 = 0
            java.util.Map r8 = kotlin.collections.MapsKt.emptyMap()
            r12 = 0
            r9.f41853a = r12
            r9.f41854b = r12
            r9.f41857e = r2
            r2 = r11
            java.lang.Object r11 = r1.E(r2, r3, r4, r5, r6, r7, r8, r9)
            if (r11 != r0) goto L7a
            return r0
        L7a:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.messages.a.b(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
