package com.im.freechat.domain.usecase.chat;

import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SetChatAvatarInteractor.kt */
@Deprecated(message = "Not yet implemented on backend")
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\bB\u001f\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u000f¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/domain/usecase/chat/m;", "Lcom/im/freechat/domain/usecase/base/a;", "Lcom/im/freechat/domain/usecase/chat/m$a;", "", "params", "c", "(Lcom/im/freechat/domain/usecase/chat/m$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "Lcom/im/freechat/domain/g;", "b", "Lcom/im/freechat/domain/g;", "fileRepository", "Lcom/im/freechat/domain/t;", "Lcom/im/freechat/domain/t;", "syncRepository", "<init>", "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/g;Lcom/im/freechat/domain/t;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class m extends com.im.freechat.domain.usecase.base.a<a, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.k f41500a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.im.freechat.domain.g f41501b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.im.freechat.domain.t f41502c;

    /* compiled from: SetChatAvatarInteractor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\rR\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0003\u0010\u0005R\u0017\u0010\u000b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\b\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/im/freechat/domain/usecase/chat/m$a;", "", "", "a", "I", "()I", k4.b.f84734a, "", "b", "Ljava/lang/String;", "()Ljava/lang/String;", "newAvatar", "<init>", "(ILjava/lang/String;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f41503a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final String f41504b;

        public a(int i4, @m8.g String newAvatar) {
            Intrinsics.checkNotNullParameter(newAvatar, "newAvatar");
            this.f41503a = i4;
            this.f41504b = newAvatar;
        }

        public final int a() {
            return this.f41503a;
        }

        @m8.g
        public final String b() {
            return this.f41504b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SetChatAvatarInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.chat.SetChatAvatarInteractor", f = "SetChatAvatarInteractor.kt", i = {}, l = {16}, m = "run", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f41505a;

        /* renamed from: c  reason: collision with root package name */
        int f41507c;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41505a = obj;
            this.f41507c |= Integer.MIN_VALUE;
            return m.this.b(null, this);
        }
    }

    public m(@m8.g com.im.freechat.domain.k loginRepository, @m8.g com.im.freechat.domain.g fileRepository, @m8.g com.im.freechat.domain.t syncRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        Intrinsics.checkNotNullParameter(fileRepository, "fileRepository");
        Intrinsics.checkNotNullParameter(syncRepository, "syncRepository");
        this.f41500a = loginRepository;
        this.f41501b = fileRepository;
        this.f41502c = syncRepository;
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
    public java.lang.Object b(@m8.g com.im.freechat.domain.usecase.chat.m.a r8, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.im.freechat.domain.usecase.chat.m.b
            if (r0 == 0) goto L13
            r0 = r9
            com.im.freechat.domain.usecase.chat.m$b r0 = (com.im.freechat.domain.usecase.chat.m.b) r0
            int r1 = r0.f41507c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41507c = r1
            goto L18
        L13:
            com.im.freechat.domain.usecase.chat.m$b r0 = new com.im.freechat.domain.usecase.chat.m$b
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f41505a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f41507c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r9)
            goto L55
        L29:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L31:
            kotlin.ResultKt.throwOnFailure(r9)
            com.im.freechat.domain.t r9 = r7.f41502c
            com.im.freechat.domain.k r2 = r7.f41500a
            int r2 = r2.n()
            int r4 = r8.a()
            com.im.freechat.domain.g r5 = r7.f41501b
            java.lang.String r8 = r8.b()
            java.lang.String r6 = "avatar"
            java.io.File r8 = r5.b(r6, r8)
            r0.f41507c = r3
            java.lang.Object r8 = r9.U(r2, r4, r8, r0)
            if (r8 != r1) goto L55
            return r1
        L55:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.chat.m.b(com.im.freechat.domain.usecase.chat.m$a, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
