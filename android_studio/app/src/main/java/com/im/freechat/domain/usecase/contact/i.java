package com.im.freechat.domain.usecase.contact;

import com.im.freechat.domain.t;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SyncFriendsInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"Lcom/im/freechat/domain/usecase/contact/i;", "Lcom/im/freechat/domain/usecase/base/a;", "", "params", "c", "(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/t;", "a", "Lcom/im/freechat/domain/t;", "syncRepository", "<init>", "(Lcom/im/freechat/domain/t;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class i extends com.im.freechat.domain.usecase.base.a<Unit, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final t f41650a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncFriendsInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.contact.SyncFriendsInteractor", f = "SyncFriendsInteractor.kt", i = {}, l = {11}, m = "run", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f41651a;

        /* renamed from: c  reason: collision with root package name */
        int f41653c;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41651a = obj;
            this.f41653c |= Integer.MIN_VALUE;
            return i.this.b(null, this);
        }
    }

    public i(@m8.g t syncRepository) {
        Intrinsics.checkNotNullParameter(syncRepository, "syncRepository");
        this.f41650a = syncRepository;
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
    public java.lang.Object b(@m8.g kotlin.Unit r4, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r5) {
        /*
            r3 = this;
            boolean r4 = r5 instanceof com.im.freechat.domain.usecase.contact.i.a
            if (r4 == 0) goto L13
            r4 = r5
            com.im.freechat.domain.usecase.contact.i$a r4 = (com.im.freechat.domain.usecase.contact.i.a) r4
            int r0 = r4.f41653c
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r4.f41653c = r0
            goto L18
        L13:
            com.im.freechat.domain.usecase.contact.i$a r4 = new com.im.freechat.domain.usecase.contact.i$a
            r4.<init>(r5)
        L18:
            java.lang.Object r5 = r4.f41651a
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.f41653c
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
            com.im.freechat.domain.t r5 = r3.f41650a
            r4.f41653c = r2
            java.lang.Object r4 = r5.R(r4)
            if (r4 != r0) goto L3f
            return r0
        L3f:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.contact.i.b(kotlin.Unit, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
