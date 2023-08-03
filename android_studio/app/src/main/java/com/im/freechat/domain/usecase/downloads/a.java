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

/* compiled from: DownloadMediaFileInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\bB\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"Lcom/im/freechat/domain/usecase/downloads/a;", "Lcom/im/freechat/domain/usecase/base/a;", "Lcom/im/freechat/domain/usecase/downloads/a$a;", "", "params", "c", "(Lcom/im/freechat/domain/usecase/downloads/a$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/e;", "a", "Lcom/im/freechat/domain/e;", "downloadManagerRepository", "<init>", "(Lcom/im/freechat/domain/e;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a extends com.im.freechat.domain.usecase.base.a<C0323a, Unit> {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final e f41776a;

    /* compiled from: DownloadMediaFileInteractor.kt */
    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u0010\u001a\u00020\f¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u000b\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0005\u0010\t\u001a\u0004\b\u0003\u0010\nR\u0017\u0010\u0010\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\r\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/im/freechat/domain/usecase/downloads/a$a;", "", "", "a", "J", "b", "()J", "mediaId", "", "I", "()I", k4.b.f84734a, "", "c", "Ljava/lang/String;", "()Ljava/lang/String;", "remoteUrl", "<init>", "(JILjava/lang/String;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
    /* renamed from: com.im.freechat.domain.usecase.downloads.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0323a {

        /* renamed from: a  reason: collision with root package name */
        private final long f41777a;

        /* renamed from: b  reason: collision with root package name */
        private final int f41778b;
        @g

        /* renamed from: c  reason: collision with root package name */
        private final String f41779c;

        public C0323a(long j4, int i4, @g String remoteUrl) {
            Intrinsics.checkNotNullParameter(remoteUrl, "remoteUrl");
            this.f41777a = j4;
            this.f41778b = i4;
            this.f41779c = remoteUrl;
        }

        public final int a() {
            return this.f41778b;
        }

        public final long b() {
            return this.f41777a;
        }

        @g
        public final String c() {
            return this.f41779c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DownloadMediaFileInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.downloads.DownloadMediaFileInteractor", f = "DownloadMediaFileInteractor.kt", i = {}, l = {11}, m = "run", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f41780a;

        /* renamed from: c  reason: collision with root package name */
        int f41782c;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            this.f41780a = obj;
            this.f41782c |= Integer.MIN_VALUE;
            return a.this.b(null, this);
        }
    }

    public a(@g e downloadManagerRepository) {
        Intrinsics.checkNotNullParameter(downloadManagerRepository, "downloadManagerRepository");
        this.f41776a = downloadManagerRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g com.im.freechat.domain.usecase.downloads.a.C0323a r12, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r13) {
        /*
            r11 = this;
            boolean r0 = r13 instanceof com.im.freechat.domain.usecase.downloads.a.b
            if (r0 == 0) goto L13
            r0 = r13
            com.im.freechat.domain.usecase.downloads.a$b r0 = (com.im.freechat.domain.usecase.downloads.a.b) r0
            int r1 = r0.f41782c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41782c = r1
            goto L18
        L13:
            com.im.freechat.domain.usecase.downloads.a$b r0 = new com.im.freechat.domain.usecase.downloads.a$b
            r0.<init>(r13)
        L18:
            r10 = r0
            java.lang.Object r13 = r10.f41780a
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r10.f41782c
            r2 = 1
            if (r1 == 0) goto L32
            if (r1 != r2) goto L2a
            kotlin.ResultKt.throwOnFailure(r13)
            goto L73
        L2a:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L32:
            kotlin.ResultKt.throwOnFailure(r13)
            com.im.freechat.domain.e r1 = r11.f41776a
            long r3 = r12.b()
            int r13 = r12.a()
            java.lang.String r5 = r12.c()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            long r7 = java.lang.System.currentTimeMillis()
            r6.append(r7)
            r7 = 46
            r6.append(r7)
            java.lang.String r12 = r12.c()
            r8 = 2
            r9 = 0
            java.lang.String r12 = kotlin.text.StringsKt.substringAfterLast$default(r12, r7, r9, r8, r9)
            r6.append(r12)
            java.lang.String r6 = r6.toString()
            r7 = 0
            r9 = 0
            r10.f41782c = r2
            r2 = r3
            r4 = r13
            java.lang.Object r12 = r1.c(r2, r4, r5, r6, r7, r9, r10)
            if (r12 != r0) goto L73
            return r0
        L73:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.downloads.a.b(com.im.freechat.domain.usecase.downloads.a$a, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
