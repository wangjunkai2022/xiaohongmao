package com.im.freechat.domain.usecase.messages;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UpdateDraftMessageInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\bB\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"Lcom/im/freechat/domain/usecase/messages/p;", "Lcom/im/freechat/domain/usecase/base/a;", "Lcom/im/freechat/domain/usecase/messages/p$a;", "", "params", "c", "(Lcom/im/freechat/domain/usecase/messages/p$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/c;", "a", "Lcom/im/freechat/domain/c;", "databaseRepository", "<init>", "(Lcom/im/freechat/domain/c;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class p extends com.im.freechat.domain.usecase.base.a<a, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.c f41931a;

    /* compiled from: UpdateDraftMessageInteractor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\rR\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0003\u0010\u0005R\u0017\u0010\u000b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\b\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/im/freechat/domain/usecase/messages/p$a;", "", "", "a", "I", "()I", k4.b.f84734a, "", "b", "Ljava/lang/String;", "()Ljava/lang/String;", "draftMessage", "<init>", "(ILjava/lang/String;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f41932a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final String f41933b;

        public a(int i4, @m8.g String draftMessage) {
            Intrinsics.checkNotNullParameter(draftMessage, "draftMessage");
            this.f41932a = i4;
            this.f41933b = draftMessage;
        }

        public final int a() {
            return this.f41932a;
        }

        @m8.g
        public final String b() {
            return this.f41933b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UpdateDraftMessageInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.messages.UpdateDraftMessageInteractor", f = "UpdateDraftMessageInteractor.kt", i = {}, l = {11}, m = "run", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f41934a;

        /* renamed from: c  reason: collision with root package name */
        int f41936c;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41934a = obj;
            this.f41936c |= Integer.MIN_VALUE;
            return p.this.b(null, this);
        }
    }

    public p(@m8.g com.im.freechat.domain.c databaseRepository) {
        Intrinsics.checkNotNullParameter(databaseRepository, "databaseRepository");
        this.f41931a = databaseRepository;
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
    public java.lang.Object b(@m8.g com.im.freechat.domain.usecase.messages.p.a r5, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.im.freechat.domain.usecase.messages.p.b
            if (r0 == 0) goto L13
            r0 = r6
            com.im.freechat.domain.usecase.messages.p$b r0 = (com.im.freechat.domain.usecase.messages.p.b) r0
            int r1 = r0.f41936c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41936c = r1
            goto L18
        L13:
            com.im.freechat.domain.usecase.messages.p$b r0 = new com.im.freechat.domain.usecase.messages.p$b
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f41934a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f41936c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r6)
            goto L47
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r6)
            com.im.freechat.domain.c r6 = r4.f41931a
            int r2 = r5.a()
            java.lang.String r5 = r5.b()
            r0.f41936c = r3
            java.lang.Object r5 = r6.C(r2, r5, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.messages.p.b(com.im.freechat.domain.usecase.messages.p$a, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
