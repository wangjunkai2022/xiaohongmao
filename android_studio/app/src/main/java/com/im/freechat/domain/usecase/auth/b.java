package com.im.freechat.domain.usecase.auth;

import com.im.freechat.domain.t;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ExternalLoginInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\bB\u001f\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u000f¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/domain/usecase/auth/b;", "Lcom/im/freechat/domain/usecase/base/a;", "Lcom/im/freechat/domain/usecase/auth/b$a;", "", "params", "c", "(Lcom/im/freechat/domain/usecase/auth/b$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "Lcom/im/freechat/domain/t;", "b", "Lcom/im/freechat/domain/t;", "syncRepository", "Lcom/im/freechat/domain/c;", "Lcom/im/freechat/domain/c;", "databaseRepository", "<init>", "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/t;Lcom/im/freechat/domain/c;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b extends com.im.freechat.domain.usecase.base.a<a, Boolean> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.k f41372a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final t f41373b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.im.freechat.domain.c f41374c;

    /* compiled from: ExternalLoginInteractor.kt */
    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0010\u001a\u00020\f\u0012\u0006\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u0015\u0010\u0016R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\b\u0010\nR\u0017\u0010\u0010\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\u0005\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0014\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0012\u001a\u0004\b\u0003\u0010\u0013¨\u0006\u0017"}, d2 = {"Lcom/im/freechat/domain/usecase/auth/b$a;", "", "", "a", "I", "c", "()I", "userId", "b", "Ljava/lang/Integer;", "()Ljava/lang/Integer;", "role", "", "Z", "d", "()Z", "isMystery", "", "Ljava/lang/String;", "()Ljava/lang/String;", "bearerToken", "<init>", "(ILjava/lang/Integer;ZLjava/lang/String;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f41375a;
        @m8.h

        /* renamed from: b  reason: collision with root package name */
        private final Integer f41376b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f41377c;
        @m8.g

        /* renamed from: d  reason: collision with root package name */
        private final String f41378d;

        public a(int i4, @m8.h Integer num, boolean z9, @m8.g String bearerToken) {
            Intrinsics.checkNotNullParameter(bearerToken, "bearerToken");
            this.f41375a = i4;
            this.f41376b = num;
            this.f41377c = z9;
            this.f41378d = bearerToken;
        }

        @m8.g
        public final String a() {
            return this.f41378d;
        }

        @m8.h
        public final Integer b() {
            return this.f41376b;
        }

        public final int c() {
            return this.f41375a;
        }

        public final boolean d() {
            return this.f41377c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ExternalLoginInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.auth.ExternalLoginInteractor", f = "ExternalLoginInteractor.kt", i = {0, 0, 1, 1, 2, 3, 4}, l = {17, 18, 19, 29, 30, 31}, m = "run", n = {"this", "params", "this", "params", "this", "this", "this"}, s = {"L$0", "L$1", "L$0", "L$1", "L$0", "L$0", "L$0"})
    /* renamed from: com.im.freechat.domain.usecase.auth.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0317b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41379a;

        /* renamed from: b  reason: collision with root package name */
        Object f41380b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f41381c;

        /* renamed from: e  reason: collision with root package name */
        int f41383e;

        C0317b(Continuation<? super C0317b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41381c = obj;
            this.f41383e |= Integer.MIN_VALUE;
            return b.this.b(null, this);
        }
    }

    public b(@m8.g com.im.freechat.domain.k loginRepository, @m8.g t syncRepository, @m8.g com.im.freechat.domain.c databaseRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        Intrinsics.checkNotNullParameter(syncRepository, "syncRepository");
        Intrinsics.checkNotNullParameter(databaseRepository, "databaseRepository");
        this.f41372a = loginRepository;
        this.f41373b = syncRepository;
        this.f41374c = databaseRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0105 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0115 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0123 A[RETURN] */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g com.im.freechat.domain.usecase.auth.b.a r20, @m8.g kotlin.coroutines.Continuation<? super java.lang.Boolean> r21) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.auth.b.b(com.im.freechat.domain.usecase.auth.b$a, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
