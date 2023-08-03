package com.im.freechat.domain.usecase.downloads;

import com.im.freechat.domain.e;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: RemoveDownloadInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\bB\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"Lcom/im/freechat/domain/usecase/downloads/c;", "Lcom/im/freechat/domain/usecase/base/a;", "Lcom/im/freechat/domain/usecase/downloads/c$a;", "", "params", "c", "(Lcom/im/freechat/domain/usecase/downloads/c$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/c;", "a", "Lcom/im/freechat/domain/c;", "databaseRepository", "Lcom/im/freechat/domain/e;", "b", "Lcom/im/freechat/domain/e;", "downloadManagerRepository", "<init>", "(Lcom/im/freechat/domain/c;Lcom/im/freechat/domain/e;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c extends com.im.freechat.domain.usecase.base.a<a, Unit> {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.c f41784a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final e f41785b;

    /* compiled from: RemoveDownloadInteractor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\b\u0010\tR\u001d\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0004\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/im/freechat/domain/usecase/downloads/c$a;", "", "", "", "a", "Ljava/util/List;", "()Ljava/util/List;", "mediaIds", "<init>", "(Ljava/util/List;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        @g

        /* renamed from: a  reason: collision with root package name */
        private final List<Long> f41786a;

        public a(@g List<Long> mediaIds) {
            Intrinsics.checkNotNullParameter(mediaIds, "mediaIds");
            this.f41786a = mediaIds;
        }

        @g
        public final List<Long> a() {
            return this.f41786a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RemoveDownloadInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.downloads.RemoveDownloadInteractor", f = "RemoveDownloadInteractor.kt", i = {0}, l = {13}, m = "run", n = {"this"}, s = {"L$0"})
    /* loaded from: classes3.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41787a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f41788b;

        /* renamed from: d  reason: collision with root package name */
        int f41790d;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            this.f41788b = obj;
            this.f41790d |= Integer.MIN_VALUE;
            return c.this.b(null, this);
        }
    }

    public c(@g com.im.freechat.domain.c databaseRepository, @g e downloadManagerRepository) {
        Intrinsics.checkNotNullParameter(databaseRepository, "databaseRepository");
        Intrinsics.checkNotNullParameter(downloadManagerRepository, "downloadManagerRepository");
        this.f41784a = databaseRepository;
        this.f41785b = downloadManagerRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0056 A[LOOP:0: B:19:0x0050->B:21:0x0056, LOOP_END] */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g com.im.freechat.domain.usecase.downloads.c.a r5, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.im.freechat.domain.usecase.downloads.c.b
            if (r0 == 0) goto L13
            r0 = r6
            com.im.freechat.domain.usecase.downloads.c$b r0 = (com.im.freechat.domain.usecase.downloads.c.b) r0
            int r1 = r0.f41790d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41790d = r1
            goto L18
        L13:
            com.im.freechat.domain.usecase.downloads.c$b r0 = new com.im.freechat.domain.usecase.downloads.c$b
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f41788b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f41790d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f41787a
            com.im.freechat.domain.usecase.downloads.c r5 = (com.im.freechat.domain.usecase.downloads.c) r5
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4a
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            com.im.freechat.domain.c r6 = r4.f41784a
            java.util.List r5 = r5.a()
            r0.f41787a = r4
            r0.f41790d = r3
            java.lang.Object r6 = r6.J(r5, r0)
            if (r6 != r1) goto L49
            return r1
        L49:
            r5 = r4
        L4a:
            java.util.List r6 = (java.util.List) r6
            java.util.Iterator r6 = r6.iterator()
        L50:
            boolean r0 = r6.hasNext()
            if (r0 == 0) goto L66
            java.lang.Object r0 = r6.next()
            com.im.freechat.shared.entities.DownloadInfo r0 = (com.im.freechat.shared.entities.DownloadInfo) r0
            com.im.freechat.domain.e r1 = r5.f41785b
            long r2 = r0.getDownloadManagerID()
            r1.a(r2)
            goto L50
        L66:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.downloads.c.b(com.im.freechat.domain.usecase.downloads.c$a, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
