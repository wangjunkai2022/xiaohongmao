package com.im.freechat.domain.usecase.downloads;

import com.im.freechat.domain.e;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: StartDownloadInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\bB\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"Lcom/im/freechat/domain/usecase/downloads/d;", "Lcom/im/freechat/domain/usecase/base/a;", "Lcom/im/freechat/domain/usecase/downloads/d$a;", "", "params", "c", "(Lcom/im/freechat/domain/usecase/downloads/d$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/c;", "a", "Lcom/im/freechat/domain/c;", "databaseRepository", "Lcom/im/freechat/domain/e;", "b", "Lcom/im/freechat/domain/e;", "downloadManagerRepository", "<init>", "(Lcom/im/freechat/domain/c;Lcom/im/freechat/domain/e;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class d extends com.im.freechat.domain.usecase.base.a<a, Unit> {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.c f41791a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final e f41792b;

    /* compiled from: StartDownloadInteractor.kt */
    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\b\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012\u0006\u0010\u0013\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\u0002¢\u0006\u0004\b\u0015\u0010\u0016R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\f\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0003\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0013\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u000f\u001a\u0004\b\t\u0010\u0011R\u0017\u0010\u0014\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0004\u001a\u0004\b\u000e\u0010\u0006¨\u0006\u0017"}, d2 = {"Lcom/im/freechat/domain/usecase/downloads/d$a;", "", "", "a", "J", "d", "()J", "mediaId", "", "b", "I", "()I", k4.b.f84734a, "", "c", "Ljava/lang/String;", "e", "()Ljava/lang/String;", "remoteUrl", "fileName", "fileSize", "<init>", "(JILjava/lang/String;Ljava/lang/String;J)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final long f41793a;

        /* renamed from: b  reason: collision with root package name */
        private final int f41794b;
        @g

        /* renamed from: c  reason: collision with root package name */
        private final String f41795c;
        @g

        /* renamed from: d  reason: collision with root package name */
        private final String f41796d;

        /* renamed from: e  reason: collision with root package name */
        private final long f41797e;

        public a(long j4, int i4, @g String remoteUrl, @g String fileName, long j10) {
            Intrinsics.checkNotNullParameter(remoteUrl, "remoteUrl");
            Intrinsics.checkNotNullParameter(fileName, "fileName");
            this.f41793a = j4;
            this.f41794b = i4;
            this.f41795c = remoteUrl;
            this.f41796d = fileName;
            this.f41797e = j10;
        }

        public final int a() {
            return this.f41794b;
        }

        @g
        public final String b() {
            return this.f41796d;
        }

        public final long c() {
            return this.f41797e;
        }

        public final long d() {
            return this.f41793a;
        }

        @g
        public final String e() {
            return this.f41795c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StartDownloadInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.downloads.StartDownloadInteractor", f = "StartDownloadInteractor.kt", i = {0}, l = {13, 21}, m = "run", n = {"this"}, s = {"L$0"})
    /* loaded from: classes3.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41798a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f41799b;

        /* renamed from: d  reason: collision with root package name */
        int f41801d;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            this.f41799b = obj;
            this.f41801d |= Integer.MIN_VALUE;
            return d.this.b(null, this);
        }
    }

    public d(@g com.im.freechat.domain.c databaseRepository, @g e downloadManagerRepository) {
        Intrinsics.checkNotNullParameter(databaseRepository, "databaseRepository");
        Intrinsics.checkNotNullParameter(downloadManagerRepository, "downloadManagerRepository");
        this.f41791a = databaseRepository;
        this.f41792b = downloadManagerRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0074 A[RETURN] */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g com.im.freechat.domain.usecase.downloads.d.a r14, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r15) {
        /*
            r13 = this;
            boolean r0 = r15 instanceof com.im.freechat.domain.usecase.downloads.d.b
            if (r0 == 0) goto L13
            r0 = r15
            com.im.freechat.domain.usecase.downloads.d$b r0 = (com.im.freechat.domain.usecase.downloads.d.b) r0
            int r1 = r0.f41801d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41801d = r1
            goto L18
        L13:
            com.im.freechat.domain.usecase.downloads.d$b r0 = new com.im.freechat.domain.usecase.downloads.d$b
            r0.<init>(r15)
        L18:
            java.lang.Object r15 = r0.f41799b
            java.lang.Object r11 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r0.f41801d
            r12 = 2
            r2 = 1
            if (r1 == 0) goto L3c
            if (r1 == r2) goto L34
            if (r1 != r12) goto L2c
            kotlin.ResultKt.throwOnFailure(r15)
            goto L75
        L2c:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r15)
            throw r14
        L34:
            java.lang.Object r14 = r0.f41798a
            com.im.freechat.domain.usecase.downloads.d r14 = (com.im.freechat.domain.usecase.downloads.d) r14
            kotlin.ResultKt.throwOnFailure(r15)
            goto L65
        L3c:
            kotlin.ResultKt.throwOnFailure(r15)
            com.im.freechat.domain.e r1 = r13.f41792b
            long r3 = r14.d()
            int r15 = r14.a()
            java.lang.String r5 = r14.e()
            java.lang.String r6 = r14.b()
            long r7 = r14.c()
            r9 = 1
            r0.f41798a = r13
            r0.f41801d = r2
            r2 = r3
            r4 = r15
            r10 = r0
            java.lang.Object r15 = r1.c(r2, r4, r5, r6, r7, r9, r10)
            if (r15 != r11) goto L64
            return r11
        L64:
            r14 = r13
        L65:
            com.im.freechat.shared.entities.DownloadInfo r15 = (com.im.freechat.shared.entities.DownloadInfo) r15
            com.im.freechat.domain.c r14 = r14.f41791a
            r1 = 0
            r0.f41798a = r1
            r0.f41801d = r12
            java.lang.Object r14 = r14.u(r15, r0)
            if (r14 != r11) goto L75
            return r11
        L75:
            kotlin.Unit r14 = kotlin.Unit.INSTANCE
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.downloads.d.b(com.im.freechat.domain.usecase.downloads.d$a, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
