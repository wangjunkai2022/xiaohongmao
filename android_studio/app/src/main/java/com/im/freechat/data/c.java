package com.im.freechat.data;

import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.data.sources.api.RemoteApi;
import com.im.freechat.shared.entities.AwaitingResolution;
import com.im.freechat.shared.entities.DnsResolutionState;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.j0;
import kotlinx.coroutines.flow.t;

/* compiled from: DnsRepositoryImpl.kt */
@Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \f2\u00020\u0001:\u0001\u000bB\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0013¢\u0006\u0004\b\u0019\u0010\u001aJ\u001d\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u001b\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0004H\u0082@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u000b\u001a\u00020\u0004H\u0016J\b\u0010\f\u001a\u00020\u0004H\u0016J\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0016J\u0013\u0010\u0011\u001a\u00020\u0010H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0014R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0017\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"Lcom/im/freechat/data/c;", "Lcom/im/freechat/domain/d;", "", "attempt", "", ContextChain.TAG_INFRA, "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", m.c.f86932f, "", "h", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "a", "c", "Lkotlinx/coroutines/flow/i;", "Lcom/im/freechat/shared/entities/DnsResolutionState;", "d", "", "b", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/data/sources/api/RemoteApi;", "Lcom/im/freechat/data/sources/api/RemoteApi;", "remoteApi", "Lkotlinx/coroutines/flow/t;", "Lkotlinx/coroutines/flow/t;", "dnsResolutionStatusFlow", "<init>", "(Lcom/im/freechat/data/sources/api/RemoteApi;)V", "data_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes2.dex */
public final class c implements com.im.freechat.domain.d {
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    public static final a f39736c = new a(null);
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private static String f39737d = "";
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final RemoteApi f39738a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final t<DnsResolutionState> f39739b;

    /* compiled from: DnsRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004R\u0011\u0010\u0007\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0004R\u0016\u0010\b\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/im/freechat/data/c$a;", "", "", "a", "()Ljava/lang/String;", "apiHost", "b", "wsHost", m.c.f86932f, "Ljava/lang/String;", "<init>", "()V", "data_release"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @m8.g
        public final String a() {
            return c5.j.f4022b + c.f39737d;
        }

        @m8.g
        public final String b() {
            return "wss://" + c.f39737d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DnsRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.DnsRepositoryImpl", f = "DnsRepositoryImpl.kt", i = {}, l = {82}, m = "isHostReachable", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f39740a;

        /* renamed from: c  reason: collision with root package name */
        int f39742c;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f39740a = obj;
            this.f39742c |= Integer.MIN_VALUE;
            return c.this.h(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DnsRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.DnsRepositoryImpl", f = "DnsRepositoryImpl.kt", i = {0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 6, 6, 6}, l = {43, 44, 45, 46, 47, 56, 65, 74}, m = "resolveDoH", n = {"this", "attempt", "this", "attempt", "this", "attempt", "this", "attempt", "this", "attempt", "this", m.c.f86932f, "attempt"}, s = {"L$0", "I$0", "L$0", "I$0", "L$0", "I$0", "L$0", "I$0", "L$0", "I$0", "L$0", "L$2", "I$0"})
    /* renamed from: com.im.freechat.data.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0306c extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f39743a;

        /* renamed from: b  reason: collision with root package name */
        Object f39744b;

        /* renamed from: c  reason: collision with root package name */
        Object f39745c;

        /* renamed from: d  reason: collision with root package name */
        int f39746d;

        /* renamed from: e  reason: collision with root package name */
        /* synthetic */ Object f39747e;

        /* renamed from: g  reason: collision with root package name */
        int f39749g;

        C0306c(Continuation<? super C0306c> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f39747e = obj;
            this.f39749g |= Integer.MIN_VALUE;
            return c.this.i(0, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DnsRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.DnsRepositoryImpl", f = "DnsRepositoryImpl.kt", i = {0}, l = {32}, m = "resolveHost", n = {"this"}, s = {"L$0"})
    /* loaded from: classes2.dex */
    public static final class d extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f39750a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f39751b;

        /* renamed from: d  reason: collision with root package name */
        int f39753d;

        d(Continuation<? super d> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f39751b = obj;
            this.f39753d |= Integer.MIN_VALUE;
            return c.this.b(this);
        }
    }

    public c(@m8.g RemoteApi remoteApi) {
        Intrinsics.checkNotNullParameter(remoteApi, "remoteApi");
        this.f39738a = remoteApi;
        this.f39739b = j0.a(AwaitingResolution.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007a A[Catch: Exception -> 0x002a, TryCatch #0 {Exception -> 0x002a, blocks: (B:11:0x0026, B:21:0x0070, B:23:0x007a, B:25:0x0080, B:18:0x004f), top: B:29:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object h(java.lang.String r7, kotlin.coroutines.Continuation<? super java.lang.Boolean> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.im.freechat.data.c.b
            if (r0 == 0) goto L13
            r0 = r8
            com.im.freechat.data.c$b r0 = (com.im.freechat.data.c.b) r0
            int r1 = r0.f39742c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f39742c = r1
            goto L18
        L13:
            com.im.freechat.data.c$b r0 = new com.im.freechat.data.c$b
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f39740a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f39742c
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L34
            if (r2 != r4) goto L2c
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Exception -> L2a
            goto L70
        L2a:
            r7 = move-exception
            goto L8b
        L2c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L34:
            kotlin.ResultKt.throwOnFailure(r8)
            timber.log.Timber$b r8 = timber.log.Timber.f93860a
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r5 = "Pinging host: "
            r2.append(r5)
            r2.append(r7)
            java.lang.String r2 = r2.toString()
            java.lang.Object[] r5 = new java.lang.Object[r3]
            r8.a(r2, r5)
            com.im.freechat.data.sources.api.RemoteApi r8 = r6.f39738a     // Catch: java.lang.Exception -> L2a
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L2a
            r2.<init>()     // Catch: java.lang.Exception -> L2a
            java.lang.String r5 = "https://"
            r2.append(r5)     // Catch: java.lang.Exception -> L2a
            r2.append(r7)     // Catch: java.lang.Exception -> L2a
            java.lang.String r7 = "/ping"
            r2.append(r7)     // Catch: java.lang.Exception -> L2a
            java.lang.String r7 = r2.toString()     // Catch: java.lang.Exception -> L2a
            r0.f39742c = r4     // Catch: java.lang.Exception -> L2a
            java.lang.Object r8 = r8.ping(r7, r0)     // Catch: java.lang.Exception -> L2a
            if (r8 != r1) goto L70
            return r1
        L70:
            retrofit2.Response r8 = (retrofit2.Response) r8     // Catch: java.lang.Exception -> L2a
            java.lang.Object r7 = r8.body()     // Catch: java.lang.Exception -> L2a
            com.im.freechat.data.openapigen.models.Ping200Response r7 = (com.im.freechat.data.openapigen.models.Ping200Response) r7     // Catch: java.lang.Exception -> L2a
            if (r7 == 0) goto L7f
            java.lang.String r7 = r7.getMsg()     // Catch: java.lang.Exception -> L2a
            goto L80
        L7f:
            r7 = 0
        L80:
            java.lang.String r8 = "ok"
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r8)     // Catch: java.lang.Exception -> L2a
            java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r7)     // Catch: java.lang.Exception -> L2a
            return r7
        L8b:
            timber.log.Timber$b r8 = timber.log.Timber.f93860a
            r8.b(r7)
            java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.c.h(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(6:1|(2:3|(4:5|6|7|8))|102|6|7|8) */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01b9  */
    /* JADX WARN: Type inference failed for: r5v0, types: [int] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:94:0x01ac -> B:96:0x01af). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object i(int r22, kotlin.coroutines.Continuation<? super java.lang.String> r23) {
        /*
            Method dump skipped, instructions count: 570
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.c.i(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.d
    @m8.g
    public String a() {
        return f39736c.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0078  */
    @Override // com.im.freechat.domain.d
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.im.freechat.data.c.d
            if (r0 == 0) goto L13
            r0 = r7
            com.im.freechat.data.c$d r0 = (com.im.freechat.data.c.d) r0
            int r1 = r0.f39753d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f39753d = r1
            goto L18
        L13:
            com.im.freechat.data.c$d r0 = new com.im.freechat.data.c$d
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f39751b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f39753d
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L36
            if (r2 != r4) goto L2e
            java.lang.Object r0 = r0.f39750a
            com.im.freechat.data.c r0 = (com.im.freechat.data.c) r0
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4e
        L2e:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L36:
            kotlin.ResultKt.throwOnFailure(r7)
            timber.log.Timber$b r7 = timber.log.Timber.f93860a
            java.lang.Object[] r2 = new java.lang.Object[r3]
            java.lang.String r5 = "Resolving DOH..."
            r7.k(r5, r2)
            r0.f39750a = r6
            r0.f39753d = r4
            java.lang.Object r7 = r6.i(r4, r0)
            if (r7 != r1) goto L4d
            return r1
        L4d:
            r0 = r6
        L4e:
            java.lang.String r7 = (java.lang.String) r7
            if (r7 == 0) goto L78
            com.im.freechat.data.c.f39737d = r7
            timber.log.Timber$b r7 = timber.log.Timber.f93860a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "DOH resolved: "
            r1.append(r2)
            java.lang.String r2 = com.im.freechat.data.c.f39737d
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.lang.Object[] r2 = new java.lang.Object[r3]
            r7.k(r1, r2)
            kotlinx.coroutines.flow.t<com.im.freechat.shared.entities.DnsResolutionState> r7 = r0.f39739b
            com.im.freechat.shared.entities.Resolved r0 = com.im.freechat.shared.entities.Resolved.INSTANCE
            r7.setValue(r0)
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L78:
            kotlinx.coroutines.flow.t<com.im.freechat.shared.entities.DnsResolutionState> r7 = r0.f39739b
            com.im.freechat.shared.entities.Failed r0 = com.im.freechat.shared.entities.Failed.INSTANCE
            r7.setValue(r0)
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "All DoH Answers are unsuccessful. Giving up with error"
            java.lang.String r0 = r0.toString()
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.c.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.d
    @m8.g
    public String c() {
        return f39736c.b();
    }

    @Override // com.im.freechat.domain.d
    @m8.g
    public kotlinx.coroutines.flow.i<DnsResolutionState> d() {
        return this.f39739b;
    }
}
