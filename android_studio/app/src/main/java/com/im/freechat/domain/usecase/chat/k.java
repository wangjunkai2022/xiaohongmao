package com.im.freechat.domain.usecase.chat;

import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PinChatInteractor.kt */
@Deprecated(message = "Not yet implemented on backend")
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\bB\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"Lcom/im/freechat/domain/usecase/chat/k;", "Lcom/im/freechat/domain/usecase/base/a;", "Lcom/im/freechat/domain/usecase/chat/k$a;", "", "params", "c", "(Lcom/im/freechat/domain/usecase/chat/k$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "Lcom/im/freechat/domain/t;", "b", "Lcom/im/freechat/domain/t;", "syncRepository", "<init>", "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/t;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class k extends com.im.freechat.domain.usecase.base.a<a, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.k f41487a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.im.freechat.domain.t f41488b;

    /* compiled from: PinChatInteractor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\rR\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0003\u0010\u0005R\u0017\u0010\u000b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\b\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/im/freechat/domain/usecase/chat/k$a;", "", "", "a", "I", "()I", k4.b.f84734a, "", "b", "Z", "()Z", "pinState", "<init>", "(IZ)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f41489a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f41490b;

        public a(int i4, boolean z9) {
            this.f41489a = i4;
            this.f41490b = z9;
        }

        public final int a() {
            return this.f41489a;
        }

        public final boolean b() {
            return this.f41490b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PinChatInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.chat.PinChatInteractor", f = "PinChatInteractor.kt", i = {0}, l = {14, 14}, m = "run", n = {"params"}, s = {"L$0"})
    /* loaded from: classes3.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41491a;

        /* renamed from: b  reason: collision with root package name */
        Object f41492b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f41493c;

        /* renamed from: e  reason: collision with root package name */
        int f41495e;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41493c = obj;
            this.f41495e |= Integer.MIN_VALUE;
            return k.this.b(null, this);
        }
    }

    public k(@m8.g com.im.freechat.domain.k loginRepository, @m8.g com.im.freechat.domain.t syncRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        Intrinsics.checkNotNullParameter(syncRepository, "syncRepository");
        this.f41487a = loginRepository;
        this.f41488b = syncRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0073 A[RETURN] */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g com.im.freechat.domain.usecase.chat.k.a r8, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.im.freechat.domain.usecase.chat.k.b
            if (r0 == 0) goto L13
            r0 = r9
            com.im.freechat.domain.usecase.chat.k$b r0 = (com.im.freechat.domain.usecase.chat.k.b) r0
            int r1 = r0.f41495e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41495e = r1
            goto L18
        L13:
            com.im.freechat.domain.usecase.chat.k$b r0 = new com.im.freechat.domain.usecase.chat.k$b
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f41493c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f41495e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r9)
            goto L74
        L2c:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L34:
            java.lang.Object r8 = r0.f41492b
            com.im.freechat.domain.t r8 = (com.im.freechat.domain.t) r8
            java.lang.Object r2 = r0.f41491a
            com.im.freechat.domain.usecase.chat.k$a r2 = (com.im.freechat.domain.usecase.chat.k.a) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto L58
        L40:
            kotlin.ResultKt.throwOnFailure(r9)
            com.im.freechat.domain.t r9 = r7.f41488b
            com.im.freechat.domain.k r2 = r7.f41487a
            r0.f41491a = r8
            r0.f41492b = r9
            r0.f41495e = r4
            java.lang.Object r2 = r2.v(r0)
            if (r2 != r1) goto L54
            return r1
        L54:
            r6 = r2
            r2 = r8
            r8 = r9
            r9 = r6
        L58:
            com.im.freechat.shared.entities.auth.UserInfo r9 = (com.im.freechat.shared.entities.auth.UserInfo) r9
            int r9 = r9.getUserId()
            int r4 = r2.a()
            boolean r2 = r2.b()
            r5 = 0
            r0.f41491a = r5
            r0.f41492b = r5
            r0.f41495e = r3
            java.lang.Object r8 = r8.I(r9, r4, r2, r0)
            if (r8 != r1) goto L74
            return r1
        L74:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.chat.k.b(com.im.freechat.domain.usecase.chat.k$a, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
