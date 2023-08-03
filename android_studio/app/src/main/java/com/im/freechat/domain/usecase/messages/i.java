package com.im.freechat.domain.usecase.messages;

import com.im.freechat.domain.t;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SendGiphyStickerInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\bB\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"Lcom/im/freechat/domain/usecase/messages/i;", "Lcom/im/freechat/domain/usecase/base/a;", "Lcom/im/freechat/domain/usecase/messages/i$a;", "", "params", "c", "(Lcom/im/freechat/domain/usecase/messages/i$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "Lcom/im/freechat/domain/t;", "b", "Lcom/im/freechat/domain/t;", "syncRepository", "<init>", "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/t;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class i extends com.im.freechat.domain.usecase.base.a<a, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.k f41894a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final t f41895b;

    /* compiled from: SendGiphyStickerInteractor.kt */
    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0015\u0010\u0016R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0003\u0010\u0005R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u000e\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\n\u0010\u0004\u001a\u0004\b\r\u0010\u0005R\u0017\u0010\u0010\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\b\u0010\u0005R\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0006¢\u0006\f\n\u0004\b\r\u0010\u0012\u001a\u0004\b\u000f\u0010\u0013¨\u0006\u0017"}, d2 = {"Lcom/im/freechat/domain/usecase/messages/i$a;", "", "", "a", "I", "()I", k4.b.f84734a, "", "b", "Ljava/lang/String;", "c", "()Ljava/lang/String;", "mediaId", "e", "width", "d", "height", "", "Ljava/lang/Long;", "()Ljava/lang/Long;", "replyToMessageId", "<init>", "(ILjava/lang/String;IILjava/lang/Long;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f41896a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final String f41897b;

        /* renamed from: c  reason: collision with root package name */
        private final int f41898c;

        /* renamed from: d  reason: collision with root package name */
        private final int f41899d;
        @m8.h

        /* renamed from: e  reason: collision with root package name */
        private final Long f41900e;

        public a(int i4, @m8.g String mediaId, int i10, int i11, @m8.h Long l10) {
            Intrinsics.checkNotNullParameter(mediaId, "mediaId");
            this.f41896a = i4;
            this.f41897b = mediaId;
            this.f41898c = i10;
            this.f41899d = i11;
            this.f41900e = l10;
        }

        public final int a() {
            return this.f41896a;
        }

        public final int b() {
            return this.f41899d;
        }

        @m8.g
        public final String c() {
            return this.f41897b;
        }

        @m8.h
        public final Long d() {
            return this.f41900e;
        }

        public final int e() {
            return this.f41898c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SendGiphyStickerInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.messages.SendGiphyStickerInteractor", f = "SendGiphyStickerInteractor.kt", i = {0, 0}, l = {16, 17}, m = "run", n = {"this", "params"}, s = {"L$0", "L$1"})
    /* loaded from: classes3.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41901a;

        /* renamed from: b  reason: collision with root package name */
        Object f41902b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f41903c;

        /* renamed from: e  reason: collision with root package name */
        int f41905e;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41903c = obj;
            this.f41905e |= Integer.MIN_VALUE;
            return i.this.b(null, this);
        }
    }

    public i(@m8.g com.im.freechat.domain.k loginRepository, @m8.g t syncRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        Intrinsics.checkNotNullParameter(syncRepository, "syncRepository");
        this.f41894a = loginRepository;
        this.f41895b = syncRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007e A[RETURN] */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g com.im.freechat.domain.usecase.messages.i.a r10, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r11) {
        /*
            r9 = this;
            boolean r0 = r11 instanceof com.im.freechat.domain.usecase.messages.i.b
            if (r0 == 0) goto L13
            r0 = r11
            com.im.freechat.domain.usecase.messages.i$b r0 = (com.im.freechat.domain.usecase.messages.i.b) r0
            int r1 = r0.f41905e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41905e = r1
            goto L18
        L13:
            com.im.freechat.domain.usecase.messages.i$b r0 = new com.im.freechat.domain.usecase.messages.i$b
            r0.<init>(r11)
        L18:
            r8 = r0
            java.lang.Object r11 = r8.f41903c
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r8.f41905e
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L41
            if (r1 == r3) goto L35
            if (r1 != r2) goto L2d
            kotlin.ResultKt.throwOnFailure(r11)
            goto L7f
        L2d:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L35:
            java.lang.Object r10 = r8.f41902b
            com.im.freechat.domain.usecase.messages.i$a r10 = (com.im.freechat.domain.usecase.messages.i.a) r10
            java.lang.Object r1 = r8.f41901a
            com.im.freechat.domain.usecase.messages.i r1 = (com.im.freechat.domain.usecase.messages.i) r1
            kotlin.ResultKt.throwOnFailure(r11)
            goto L54
        L41:
            kotlin.ResultKt.throwOnFailure(r11)
            com.im.freechat.domain.k r11 = r9.f41894a
            r8.f41901a = r9
            r8.f41902b = r10
            r8.f41905e = r3
            java.lang.Object r11 = r11.v(r8)
            if (r11 != r0) goto L53
            return r0
        L53:
            r1 = r9
        L54:
            com.im.freechat.shared.entities.auth.UserInfo r11 = (com.im.freechat.shared.entities.auth.UserInfo) r11
            com.im.freechat.domain.t r1 = r1.f41895b
            int r11 = r11.getUserId()
            int r3 = r10.a()
            java.lang.String r4 = r10.c()
            int r5 = r10.e()
            int r6 = r10.b()
            java.lang.Long r7 = r10.d()
            r10 = 0
            r8.f41901a = r10
            r8.f41902b = r10
            r8.f41905e = r2
            r2 = r11
            java.lang.Object r10 = r1.j(r2, r3, r4, r5, r6, r7, r8)
            if (r10 != r0) goto L7f
            return r0
        L7f:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.messages.i.b(com.im.freechat.domain.usecase.messages.i$a, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
