package com.giphy.sdk.analytics.batching;

import android.util.Log;
import com.giphy.sdk.analytics.models.Session;
import com.giphy.sdk.analytics.network.response.PingbackResponse;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import m8.g;
import m8.h;

/* compiled from: PingbackSubmissionQueue.kt */
@Metadata(bv = {}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0000\u0018\u0000 -2\u00020\u0001:\u0001\u000bB\u0011\b\u0016\u0012\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b%\u0010&B!\b\u0016\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010+\u001a\u00020)¢\u0006\u0004\b%\u0010,J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u000e\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0002R\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u001c\u0010\u0011\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001f\u0010\u0018\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001d\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00060\u00198\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!¨\u0006."}, d2 = {"Lcom/giphy/sdk/analytics/batching/c;", "", "", "q", "r", "p", "Lcom/giphy/sdk/analytics/models/Session;", io.sentry.cache.d.f83059h, "l", "m", "", "a", "I", "retriesCount", "Ljava/util/concurrent/ScheduledFuture;", "b", "Ljava/util/concurrent/ScheduledFuture;", "retryFuture", "Ljava/util/concurrent/ScheduledExecutorService;", "kotlin.jvm.PlatformType", "c", "Ljava/util/concurrent/ScheduledExecutorService;", "n", "()Ljava/util/concurrent/ScheduledExecutorService;", "executorService", "Ljava/util/LinkedList;", "e", "Ljava/util/LinkedList;", "o", "()Ljava/util/LinkedList;", "sessions", "Ljava/lang/Runnable;", "f", "Ljava/lang/Runnable;", "retryFlush", "Lf2/a;", "pingbackClient", "<init>", "(Lf2/a;)V", "", "apiKey", "", "isMainInstance", "enableVerificationMode", "(Ljava/lang/String;ZZ)V", "j", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private int f16869a;

    /* renamed from: b  reason: collision with root package name */
    private ScheduledFuture<?> f16870b;

    /* renamed from: c  reason: collision with root package name */
    private final ScheduledExecutorService f16871c;

    /* renamed from: d  reason: collision with root package name */
    private f2.a f16872d;
    @g

    /* renamed from: e  reason: collision with root package name */
    private final LinkedList<Session> f16873e;

    /* renamed from: f  reason: collision with root package name */
    private final Runnable f16874f;
    @g

    /* renamed from: j  reason: collision with root package name */
    public static final a f16868j = new a(null);

    /* renamed from: g  reason: collision with root package name */
    private static int f16865g = 10;

    /* renamed from: h  reason: collision with root package name */
    private static long f16866h = 5000;

    /* renamed from: i  reason: collision with root package name */
    private static long f16867i = 3;

    /* compiled from: PingbackSubmissionQueue.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u0014R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000f¨\u0006\u0015"}, d2 = {"Lcom/giphy/sdk/analytics/batching/c$a;", "", "", "maximumQueuedSessions", "I", "b", "()I", "e", "(I)V", "", "delayAfterFailure", "J", "a", "()J", "d", "(J)V", "maximumRetriesCount", "c", "f", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public final long a() {
            return c.f16866h;
        }

        public final int b() {
            return c.f16865g;
        }

        public final long c() {
            return c.f16867i;
        }

        public final void d(long j4) {
            c.f16866h = j4;
        }

        public final void e(int i4) {
            c.f16865g = i4;
        }

        public final void f(long j4) {
            c.f16867i = j4;
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: PingbackSubmissionQueue.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class b implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Session f16876b;

        b(Session session) {
            this.f16876b = session;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (c.this.o().contains(this.f16876b)) {
                return;
            }
            c.this.o().addFirst(this.f16876b);
            c.this.r();
            c.this.q();
        }
    }

    /* compiled from: PingbackSubmissionQueue.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
    /* renamed from: com.giphy.sdk.analytics.batching.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static final class RunnableC0129c implements Runnable {
        RunnableC0129c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            c.this.q();
        }
    }

    /* compiled from: PingbackSubmissionQueue.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            c.this.q();
        }
    }

    /* compiled from: PingbackSubmissionQueue.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¨\u0006\b"}, d2 = {"com/giphy/sdk/analytics/batching/c$e", "Lcom/giphy/sdk/core/network/api/a;", "Lcom/giphy/sdk/analytics/network/response/PingbackResponse;", "result", "", "e", "", "b", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class e implements com.giphy.sdk.core.network.api.a<PingbackResponse> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Session f16880b;

        e(Session session) {
            this.f16880b = session;
        }

        @Override // com.giphy.sdk.core.network.api.a
        /* renamed from: b */
        public void a(@h PingbackResponse pingbackResponse, @h Throwable th) {
            if (th != null) {
                if (e2.a.f62216j.h()) {
                    Log.d(e2.a.f62208b, "Error submitting session. " + th.getLocalizedMessage());
                }
                c.this.o().addLast(this.f16880b);
                c.this.r();
                c.this.p();
                return;
            }
            c.this.f16869a = 0;
            if (e2.a.f62216j.h()) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format("Successfully submitted session %s %s", Arrays.copyOf(new Object[]{this.f16880b.getSessionId(), Integer.valueOf(this.f16880b.getEvents().size())}, 2));
                Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
                Log.d(e2.a.f62208b, format);
            }
        }
    }

    public c(@g f2.a pingbackClient) {
        Intrinsics.checkNotNullParameter(pingbackClient, "pingbackClient");
        this.f16871c = Executors.newSingleThreadScheduledExecutor();
        this.f16873e = new LinkedList<>();
        this.f16874f = new d();
        this.f16872d = pingbackClient;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p() {
        ScheduledFuture<?> scheduledFuture = this.f16870b;
        if (scheduledFuture != null) {
            Intrinsics.checkNotNull(scheduledFuture);
            if (!scheduledFuture.isCancelled()) {
                ScheduledFuture<?> scheduledFuture2 = this.f16870b;
                Intrinsics.checkNotNull(scheduledFuture2);
                scheduledFuture2.cancel(false);
            }
        }
        int i4 = this.f16869a;
        if (i4 < f16867i) {
            this.f16870b = this.f16871c.schedule(this.f16874f, f16866h * ((long) Math.pow(3.0d, i4)), TimeUnit.MILLISECONDS);
        } else {
            this.f16869a = i4 + 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q() {
        while (!this.f16873e.isEmpty()) {
            Session session = this.f16873e.pollFirst();
            f2.a aVar = this.f16872d;
            Intrinsics.checkNotNullExpressionValue(session, "session");
            aVar.a(session, new e(session));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r() {
        while (this.f16873e.size() > f16865g) {
            if (e2.a.f62216j.h()) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format("trimming queued session because count == %s", Arrays.copyOf(new Object[]{Integer.valueOf(this.f16873e.size())}, 1));
                Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
                Log.d(e2.a.f62208b, format);
            }
            this.f16873e.removeLast();
        }
    }

    public final void l(@g Session session) {
        Intrinsics.checkNotNullParameter(session, "session");
        this.f16871c.execute(new b(session));
    }

    public final void m() {
        this.f16871c.execute(new RunnableC0129c());
    }

    public final ScheduledExecutorService n() {
        return this.f16871c;
    }

    @g
    public final LinkedList<Session> o() {
        return this.f16873e;
    }

    public c(@g String apiKey, boolean z9, boolean z10) {
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        ScheduledExecutorService executorService = Executors.newSingleThreadScheduledExecutor();
        this.f16871c = executorService;
        this.f16873e = new LinkedList<>();
        this.f16874f = new d();
        Intrinsics.checkNotNullExpressionValue(executorService, "executorService");
        Intrinsics.checkNotNullExpressionValue(executorService, "executorService");
        this.f16872d = new f2.b(apiKey, new com.giphy.sdk.core.network.engine.a(executorService, executorService), new com.giphy.sdk.analytics.batching.a(apiKey, z9, z10));
    }
}
