package com.im.freechat.data;

import android.app.DownloadManager;
import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import com.im.freechat.shared.entities.DownloadInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DownloadManagerRepositoryImpl.kt */
@Metadata(bv = {}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0019B\u0017\u0012\u0006\u0010\u001c\u001a\u00020\u001a\u0012\u0006\u0010\u001f\u001a\u00020\u001d¢\u0006\u0004\b \u0010!J\u001c\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\"\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00062\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0015\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJC\u0010\u0015\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\fH\u0016R\u0014\u0010\u001c\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u001e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\""}, d2 = {"Lcom/im/freechat/data/d;", "Lcom/im/freechat/domain/e;", "", "Lcom/im/freechat/shared/entities/DownloadInfo;", "list", "f", "Lkotlinx/coroutines/flow/i;", "b", "", "", "d", "()[Ljava/lang/Integer;", "", "mediaId", k4.b.f84734a, "", "remoteUrl", "fileName", "fileSize", "", "interanalDirector", "c", "(JILjava/lang/String;Ljava/lang/String;JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "id", "", "a", "Landroid/content/Context;", "Landroid/content/Context;", "context", "Landroid/app/DownloadManager;", "Landroid/app/DownloadManager;", "downloadManager", "<init>", "(Landroid/content/Context;Landroid/app/DownloadManager;)V", "data_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes2.dex */
public final class d implements com.im.freechat.domain.e {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Context f39754a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final DownloadManager f39755b;

    /* compiled from: DownloadManagerRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u000e\u001a\u00020\b\u0012\u0006\u0010\u0010\u001a\u00020\b\u0012\u0006\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u0015\u0010\u0016R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u000b\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0005\u0010\t\u001a\u0004\b\u0003\u0010\nR\u0017\u0010\u000e\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\f\u0010\t\u001a\u0004\b\r\u0010\nR\u0017\u0010\u0010\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\t\u001a\u0004\b\u000f\u0010\nR\u0017\u0010\u0014\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\r\u0010\u0012\u001a\u0004\b\f\u0010\u0013¨\u0006\u0017"}, d2 = {"Lcom/im/freechat/data/d$a;", "", "", "a", "J", "b", "()J", "id", "", "I", "()I", "downloaded", "c", "e", "total", "d", "status", "", "Ljava/lang/String;", "()Ljava/lang/String;", "path", "<init>", "(JIIILjava/lang/String;)V", "data_release"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final long f39756a;

        /* renamed from: b  reason: collision with root package name */
        private final int f39757b;

        /* renamed from: c  reason: collision with root package name */
        private final int f39758c;

        /* renamed from: d  reason: collision with root package name */
        private final int f39759d;
        @m8.g

        /* renamed from: e  reason: collision with root package name */
        private final String f39760e;

        public a(long j4, int i4, int i10, int i11, @m8.g String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            this.f39756a = j4;
            this.f39757b = i4;
            this.f39758c = i10;
            this.f39759d = i11;
            this.f39760e = path;
        }

        public final int a() {
            return this.f39757b;
        }

        public final long b() {
            return this.f39756a;
        }

        @m8.g
        public final String c() {
            return this.f39760e;
        }

        public final int d() {
            return this.f39759d;
        }

        public final int e() {
            return this.f39758c;
        }
    }

    /* compiled from: DownloadManagerRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/flow/j;", "", "Lcom/im/freechat/shared/entities/DownloadInfo;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.DownloadManagerRepositoryImpl$listenDownloads$1", f = "DownloadManagerRepositoryImpl.kt", i = {0, 1}, l = {22, 23}, m = "invokeSuspend", n = {"$this$flow", "$this$flow"}, s = {"L$0", "L$0"})
    /* loaded from: classes2.dex */
    static final class b extends SuspendLambda implements Function2<kotlinx.coroutines.flow.j<? super List<? extends DownloadInfo>>, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f39761a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f39762b;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ List<DownloadInfo> f39764d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(List<DownloadInfo> list, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f39764d = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            b bVar = new b(this.f39764d, continuation);
            bVar.f39762b = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.flow.j<? super List<? extends DownloadInfo>> jVar, Continuation<? super Unit> continuation) {
            return invoke2((kotlinx.coroutines.flow.j<? super List<DownloadInfo>>) jVar, continuation);
        }

        @m8.h
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object invoke2(@m8.g kotlinx.coroutines.flow.j<? super List<DownloadInfo>> jVar, @m8.h Continuation<? super Unit> continuation) {
            return ((b) create(jVar, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x003c A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:15:0x003d  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0052 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0053  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0053 -> B:12:0x0030). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r7.f39761a
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L28
                if (r1 == r3) goto L1f
                if (r1 != r2) goto L17
                java.lang.Object r1 = r7.f39762b
                kotlinx.coroutines.flow.j r1 = (kotlinx.coroutines.flow.j) r1
                kotlin.ResultKt.throwOnFailure(r8)
                r8 = r1
                goto L2f
            L17:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L1f:
                java.lang.Object r1 = r7.f39762b
                kotlinx.coroutines.flow.j r1 = (kotlinx.coroutines.flow.j) r1
                kotlin.ResultKt.throwOnFailure(r8)
                r8 = r7
                goto L40
            L28:
                kotlin.ResultKt.throwOnFailure(r8)
                java.lang.Object r8 = r7.f39762b
                kotlinx.coroutines.flow.j r8 = (kotlinx.coroutines.flow.j) r8
            L2f:
                r1 = r7
            L30:
                r4 = 500(0x1f4, double:2.47E-321)
                r1.f39762b = r8
                r1.f39761a = r3
                java.lang.Object r4 = kotlinx.coroutines.b1.b(r4, r1)
                if (r4 != r0) goto L3d
                return r0
            L3d:
                r6 = r1
                r1 = r8
                r8 = r6
            L40:
                com.im.freechat.data.d r4 = com.im.freechat.data.d.this
                java.util.List<com.im.freechat.shared.entities.DownloadInfo> r5 = r8.f39764d
                java.util.List r4 = com.im.freechat.data.d.e(r4, r5)
                r8.f39762b = r1
                r8.f39761a = r2
                java.lang.Object r4 = r1.emit(r4, r8)
                if (r4 != r0) goto L53
                return r0
            L53:
                r6 = r1
                r1 = r8
                r8 = r6
                goto L30
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.d.b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public d(@m8.g Context context, @m8.g DownloadManager downloadManager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(downloadManager, "downloadManager");
        this.f39754a = context;
        this.f39755b = downloadManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0090, code lost:
        if (r0 != null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.im.freechat.shared.entities.DownloadInfo> f(java.util.List<com.im.freechat.shared.entities.DownloadInfo> r21) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.d.f(java.util.List):java.util.List");
    }

    @Override // com.im.freechat.domain.e
    public void a(long j4) {
        this.f39755b.remove(j4);
    }

    @Override // com.im.freechat.domain.e
    @m8.g
    public kotlinx.coroutines.flow.i<List<DownloadInfo>> b(@m8.g List<DownloadInfo> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return kotlinx.coroutines.flow.k.I0(new b(list, null));
    }

    @Override // com.im.freechat.domain.e
    @m8.h
    public Object c(long j4, int i4, @m8.g String str, @m8.g String str2, long j10, boolean z9, @m8.g Continuation<? super DownloadInfo> continuation) {
        long j11;
        DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
        if (z9) {
            request.setDestinationInExternalFilesDir(this.f39754a, Environment.DIRECTORY_DOWNLOADS, String.valueOf(str2));
        } else {
            String str3 = Environment.DIRECTORY_DOWNLOADS;
            request.setDestinationInExternalPublicDir(str3, "freechat/" + str2);
        }
        request.setTitle(str2);
        request.setNotificationVisibility(1);
        try {
            j11 = this.f39755b.enqueue(request);
        } catch (Exception e4) {
            e4.printStackTrace();
            j11 = 0;
        }
        return new DownloadInfo(i4, j4, j11, "", str, j10, 0L, 1);
    }

    @Override // com.im.freechat.domain.e
    @m8.g
    public Integer[] d() {
        return new Integer[]{1, 4, 2};
    }
}
