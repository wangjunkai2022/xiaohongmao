package com.giphy.sdk.analytics.batching;

import android.util.Log;
import com.facebook.common.callercontext.ContextChain;
import com.giphy.sdk.analytics.batching.d;
import com.giphy.sdk.analytics.models.AnalyticsEvent;
import com.giphy.sdk.analytics.models.Session;
import com.giphy.sdk.analytics.models.enums.ActionType;
import com.giphy.sdk.analytics.models.enums.AttributeKey;
import com.giphy.sdk.analytics.models.enums.EventType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import m8.g;
import m8.h;

/* compiled from: PingbackCollector.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000 \u000b2\u00020\u0001:\u0001\"B7\u0012\u0006\u0010E\u001a\u00020\b\u0012\b\b\u0002\u0010I\u001a\u00020F\u0012\b\b\u0002\u0010J\u001a\u00020F\u0012\b\b\u0002\u0010N\u001a\u00020K\u0012\b\b\u0002\u0010O\u001a\u00020F¢\u0006\u0004\bP\u0010QJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\u001a\u0010\u000b\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\bH\u0002J\u001a\u0010\f\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\bH\u0002J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002Jl\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0014\u001a\u00020\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0018\u001a\u0004\u0018\u00010\b2\u0006\u0010\u001a\u001a\u00020\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\bJ\u0006\u0010\u001d\u001a\u00020\u0002J\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R#\u0010*\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00040%8\u0006¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u001c\u0010.\u001a\b\u0012\u0002\b\u0003\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u001c\u00100\u001a\b\u0012\u0002\b\u0003\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010-R\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u001a\u00108\u001a\b\u0012\u0004\u0012\u00020\u001f058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107R\u0017\u0010>\u001a\u0002098\u0006¢\u0006\f\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=R\u0014\u0010B\u001a\u00020?8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010AR\u0014\u0010E\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010DR\u0014\u0010I\u001a\u00020F8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bG\u0010HR\u0014\u0010J\u001a\u00020F8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010HR\u0014\u0010N\u001a\u00020K8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bL\u0010MR\u0014\u0010O\u001a\u00020F8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010H¨\u0006R"}, d2 = {"Lcom/giphy/sdk/analytics/batching/b;", "", "", "u", "Lcom/giphy/sdk/analytics/models/Session;", io.sentry.cache.d.f83059h, "v", "t", "", "sessionId", "userId", "q", "w", "n", "s", "loggedInUserId", "analyticsResponsePayload", "referrer", "Lcom/giphy/sdk/analytics/models/enums/EventType;", "eventType", "mediaId", m.b.f86919c, "Lcom/giphy/sdk/analytics/models/enums/ActionType;", "actionType", "layoutType", "", "position", "placement", "k", "m", "", "Lcom/giphy/sdk/analytics/batching/d$a;", "p", "Ljava/util/concurrent/ScheduledExecutorService;", "a", "Ljava/util/concurrent/ScheduledExecutorService;", "executorService", "Ljava/util/HashMap;", "b", "Ljava/util/HashMap;", "r", "()Ljava/util/HashMap;", "sessions", "Ljava/util/concurrent/ScheduledFuture;", "c", "Ljava/util/concurrent/ScheduledFuture;", "addPingbackFuture", "d", "submitReadySessionsFuture", "Lcom/giphy/sdk/analytics/batching/d;", "e", "Lcom/giphy/sdk/analytics/batching/d;", "eventWrapperRecycler", "", "f", "Ljava/util/List;", "pingbacksBatch", "Lcom/giphy/sdk/analytics/batching/a;", "g", "Lcom/giphy/sdk/analytics/batching/a;", "o", "()Lcom/giphy/sdk/analytics/batching/a;", "analyticsId", "Ljava/lang/Runnable;", "h", "Ljava/lang/Runnable;", "addPingbackRunnable", ContextChain.TAG_INFRA, "Ljava/lang/String;", "apiKey", "", "j", "Z", "isMainInstance", "enableVerificationMode", "Lcom/giphy/sdk/analytics/batching/c;", "l", "Lcom/giphy/sdk/analytics/batching/c;", "submissionQueue", "verificationMode", "<init>", "(Ljava/lang/String;ZZLcom/giphy/sdk/analytics/batching/c;Z)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a */
    private final ScheduledExecutorService f16849a;
    @g

    /* renamed from: b */
    private final HashMap<String, Session> f16850b;

    /* renamed from: c */
    private ScheduledFuture<?> f16851c;

    /* renamed from: d */
    private ScheduledFuture<?> f16852d;

    /* renamed from: e */
    private final com.giphy.sdk.analytics.batching.d f16853e;

    /* renamed from: f */
    private final List<d.a> f16854f;
    @g

    /* renamed from: g */
    private final com.giphy.sdk.analytics.batching.a f16855g;

    /* renamed from: h */
    private final Runnable f16856h;

    /* renamed from: i */
    private final String f16857i;

    /* renamed from: j */
    private final boolean f16858j;

    /* renamed from: k */
    private final boolean f16859k;

    /* renamed from: l */
    private final com.giphy.sdk.analytics.batching.c f16860l;

    /* renamed from: m */
    private final boolean f16861m;
    @g

    /* renamed from: q */
    public static final a f16848q = new a(null);

    /* renamed from: n */
    private static long f16845n = 3000;

    /* renamed from: o */
    private static long f16846o = 10000;

    /* renamed from: p */
    private static int f16847p = 100;

    /* compiled from: PingbackCollector.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u0014R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/giphy/sdk/analytics/batching/b$a;", "", "", "addPingbackDelay", "J", "a", "()J", "d", "(J)V", "maximumIdleTimeBeforeSubmitting", "b", "e", "", "maximumPingbacksBeforeSubmitting", "I", "c", "()I", "f", "(I)V", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public final long a() {
            return b.f16845n;
        }

        public final long b() {
            return b.f16846o;
        }

        public final int c() {
            return b.f16847p;
        }

        public final void d(long j4) {
            b.f16845n = j4;
        }

        public final void e(long j4) {
            b.f16846o = j4;
        }

        public final void f(int i4) {
            b.f16847p = i4;
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PingbackCollector.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
    /* renamed from: com.giphy.sdk.analytics.batching.b$b */
    /* loaded from: classes2.dex */
    public static final class RunnableC0128b implements Runnable {
        RunnableC0128b() {
            b.this = r1;
        }

        @Override // java.lang.Runnable
        public final void run() {
            b.this.s();
            b.this.t();
        }
    }

    /* compiled from: PingbackCollector.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class c implements Runnable {
        c() {
            b.this = r1;
        }

        @Override // java.lang.Runnable
        public final void run() {
            b.this.s();
            b.this.u();
            b.this.f16860l.m();
        }
    }

    /* compiled from: PingbackCollector.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class d implements Runnable {
        d() {
            b.this = r1;
        }

        @Override // java.lang.Runnable
        public final void run() {
            b.this.u();
        }
    }

    public b(@g String apiKey, boolean z9, boolean z10, @g com.giphy.sdk.analytics.batching.c submissionQueue, boolean z11) {
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(submissionQueue, "submissionQueue");
        this.f16857i = apiKey;
        this.f16858j = z9;
        this.f16859k = z10;
        this.f16860l = submissionQueue;
        this.f16861m = z11;
        this.f16855g = new com.giphy.sdk.analytics.batching.a(apiKey, z9, z10);
        this.f16856h = new RunnableC0128b();
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        Intrinsics.checkNotNullExpressionValue(newSingleThreadScheduledExecutor, "Executors.newSingleThreadScheduledExecutor()");
        this.f16849a = newSingleThreadScheduledExecutor;
        this.f16850b = new HashMap<>();
        this.f16854f = new ArrayList();
        this.f16853e = new com.giphy.sdk.analytics.batching.d();
    }

    public static /* synthetic */ void l(b bVar, String str, String str2, String str3, EventType eventType, String str4, String str5, ActionType actionType, String str6, String str7, int i4, String str8, int i10, Object obj) {
        bVar.k(str, str2, str3, eventType, str4, str5, actionType, str6, str7, i4, (i10 & 1024) != 0 ? null : str8);
    }

    private final String n(String str) {
        return "user:" + str;
    }

    private final Session q(String str, String str2) {
        String w9 = w(str, str2);
        Session session = this.f16850b.get(w9);
        if (session != null) {
            return session;
        }
        Session session2 = new Session(str, null, 2, null);
        this.f16850b.put(w9, session2);
        return session2;
    }

    public final void s() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f16854f) {
            arrayList.addAll(this.f16854f);
            this.f16854f.clear();
            Unit unit = Unit.INSTANCE;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            d.a aVar = (d.a) it.next();
            HashMap hashMap = new HashMap();
            Session q9 = q(aVar.k(), aVar.n());
            String d4 = aVar.d();
            if (d4 != null) {
                hashMap.put(AttributeKey.layout_type.name(), d4);
            }
            if (aVar.h() >= 0) {
                String name = AttributeKey.position.name();
                String num = Integer.toString(aVar.h());
                Intrinsics.checkNotNullExpressionValue(num, "Integer.toString(pingbackWrapper.position)");
                hashMap.put(name, num);
            }
            String g4 = aVar.g();
            if (g4 != null) {
                hashMap.put(AttributeKey.placement.name(), g4);
            }
            Iterator it2 = it;
            ArrayList arrayList2 = arrayList;
            q9.getEvents().add(new AnalyticsEvent(aVar.b(), aVar.c(), aVar.a(), aVar.f(), aVar.l(), aVar.m(), hashMap, aVar.n(), aVar.e(), this.f16861m ? aVar.i() : ""));
            if (e2.a.f62216j.h()) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format("Event added %s %s %s | %s %s %s %s | %s | %s %s %s", Arrays.copyOf(new Object[]{aVar.a(), aVar.f(), Long.valueOf(aVar.m()), aVar.b(), aVar.i(), aVar.j(), aVar.c(), aVar.k(), aVar.d(), Integer.valueOf(aVar.h()), aVar.g()}, 11));
                Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
                Log.d(e2.a.f62208b, format);
            }
            if (q9.getEvents().size() >= f16847p) {
                v(q9);
            }
            arrayList = arrayList2;
            it = it2;
        }
        ArrayList arrayList3 = arrayList;
        synchronized (this.f16853e) {
            Iterator it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                d.a eventWrapper = (d.a) it3.next();
                com.giphy.sdk.analytics.batching.d dVar = this.f16853e;
                Intrinsics.checkNotNullExpressionValue(eventWrapper, "eventWrapper");
                dVar.c(eventWrapper);
            }
            Unit unit2 = Unit.INSTANCE;
        }
    }

    public final void t() {
        ScheduledFuture<?> scheduledFuture = this.f16852d;
        if (scheduledFuture != null) {
            Intrinsics.checkNotNull(scheduledFuture);
            if (!scheduledFuture.isCancelled()) {
                ScheduledFuture<?> scheduledFuture2 = this.f16852d;
                Intrinsics.checkNotNull(scheduledFuture2);
                scheduledFuture2.cancel(false);
            }
        }
        this.f16852d = this.f16849a.schedule(new d(), f16846o, TimeUnit.MILLISECONDS);
    }

    public final void u() {
        Iterator<Map.Entry<String, Session>> it = this.f16850b.entrySet().iterator();
        while (it.hasNext()) {
            Session value = it.next().getValue();
            Intrinsics.checkNotNullExpressionValue(value, "it.next().value");
            Session session = value;
            if (session.getEvents().size() >= 0) {
                if (e2.a.f62216j.h()) {
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    String format = String.format("Enqueueing session %s %s", Arrays.copyOf(new Object[]{session.getSessionId(), Integer.valueOf(session.getEvents().size())}, 2));
                    Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
                    Log.d(e2.a.f62208b, format);
                }
                this.f16860l.l(session);
            }
            it.remove();
        }
    }

    private final void v(Session session) {
        if (e2.a.f62216j.h()) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("Enqueueing ready session %s %s", Arrays.copyOf(new Object[]{session.getSessionId(), Integer.valueOf(session.getEvents().size())}, 2));
            Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
            Log.d(e2.a.f62208b, format);
        }
        this.f16860l.l(session);
        HashMap<String, Session> hashMap = this.f16850b;
        String sessionId = session.getSessionId();
        String userId = session.getUserId();
        if (userId == null) {
            userId = "";
        }
        hashMap.remove(w(sessionId, userId));
    }

    private final String w(String str, String str2) {
        if (str != null) {
            if (!(str.length() == 0)) {
                return str;
            }
        }
        return n(str2);
    }

    public final void k(@g String loggedInUserId, @g String analyticsResponsePayload, @h String str, @h EventType eventType, @g String mediaId, @h String str2, @g ActionType actionType, @h String str3, @h String str4, int i4, @h String str5) {
        com.giphy.sdk.analytics.batching.d dVar;
        int size;
        Intrinsics.checkNotNullParameter(loggedInUserId, "loggedInUserId");
        Intrinsics.checkNotNullParameter(analyticsResponsePayload, "analyticsResponsePayload");
        Intrinsics.checkNotNullParameter(mediaId, "mediaId");
        Intrinsics.checkNotNullParameter(actionType, "actionType");
        com.giphy.sdk.analytics.batching.d dVar2 = this.f16853e;
        synchronized (dVar2) {
            try {
                dVar = dVar2;
                try {
                    d.a b10 = this.f16853e.b(this.f16855g.d(), loggedInUserId, this.f16855g.e(), analyticsResponsePayload, str, eventType, mediaId, str2, actionType, str3, str4, i4, str5);
                    Unit unit = Unit.INSTANCE;
                    synchronized (this.f16854f) {
                        List<d.a> list = this.f16854f;
                        if (b10 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("pingbackWrapper");
                        }
                        list.add(b10);
                        size = this.f16854f.size();
                    }
                    ScheduledFuture<?> scheduledFuture = this.f16851c;
                    if (scheduledFuture != null) {
                        Intrinsics.checkNotNull(scheduledFuture);
                        if (!scheduledFuture.isCancelled()) {
                            ScheduledFuture<?> scheduledFuture2 = this.f16851c;
                            Intrinsics.checkNotNull(scheduledFuture2);
                            scheduledFuture2.cancel(false);
                        }
                    }
                    if (str2 != null) {
                        m();
                    } else if (size < f16847p) {
                        this.f16851c = this.f16849a.schedule(this.f16856h, f16845n, TimeUnit.MILLISECONDS);
                    } else {
                        this.f16849a.execute(this.f16856h);
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                dVar = dVar2;
            }
        }
    }

    public final void m() {
        this.f16849a.execute(new c());
    }

    @g
    public final com.giphy.sdk.analytics.batching.a o() {
        return this.f16855g;
    }

    @g
    public final List<d.a> p() {
        return this.f16854f;
    }

    @g
    public final HashMap<String, Session> r() {
        return this.f16850b;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public /* synthetic */ b(java.lang.String r8, boolean r9, boolean r10, com.giphy.sdk.analytics.batching.c r11, boolean r12, int r13, kotlin.jvm.internal.DefaultConstructorMarker r14) {
        /*
            r7 = this;
            r14 = r13 & 2
            r0 = 0
            if (r14 == 0) goto L7
            r3 = 0
            goto L8
        L7:
            r3 = r9
        L8:
            r9 = r13 & 4
            if (r9 == 0) goto Le
            r4 = 0
            goto Lf
        Le:
            r4 = r10
        Lf:
            r9 = r13 & 8
            if (r9 == 0) goto L18
            com.giphy.sdk.analytics.batching.c r11 = new com.giphy.sdk.analytics.batching.c
            r11.<init>(r8, r3, r4)
        L18:
            r5 = r11
            r9 = r13 & 16
            if (r9 == 0) goto L1f
            r6 = 0
            goto L20
        L1f:
            r6 = r12
        L20:
            r1 = r7
            r2 = r8
            r1.<init>(r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.giphy.sdk.analytics.batching.b.<init>(java.lang.String, boolean, boolean, com.giphy.sdk.analytics.batching.c, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
