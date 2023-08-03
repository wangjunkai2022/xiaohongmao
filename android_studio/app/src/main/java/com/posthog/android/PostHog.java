package com.posthog.android;

import a.f0;
import a.g0;
import a.k0;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.posthog.android.internal.Utils;
import com.posthog.android.m;
import com.posthog.android.n;
import com.posthog.android.payloads.BasePayload;
import com.posthog.android.payloads.a;
import com.posthog.android.payloads.b;
import com.posthog.android.payloads.c;
import com.posthog.android.payloads.d;
import com.posthog.android.payloads.e;
import com.posthog.android.q;
import com.posthog.android.s;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class PostHog {
    static final String A = "posthog_api_key";
    static final String B = "posthog_host";
    static final String C = "https://app.posthog.com";
    private static final String G = "version";
    private static final String H = "build";
    private static final String I = "properties";
    private static final String J = "send_feature_flags";

    /* renamed from: z  reason: collision with root package name */
    static final String f47383z = "opt-out";

    /* renamed from: a  reason: collision with root package name */
    private final Application f47384a;

    /* renamed from: b  reason: collision with root package name */
    final ExecutorService f47385b;

    /* renamed from: c  reason: collision with root package name */
    final v f47386c;
    @f0

    /* renamed from: d  reason: collision with root package name */
    private final List<com.posthog.android.j> f47387d;

    /* renamed from: e  reason: collision with root package name */
    final k f47388e;

    /* renamed from: f  reason: collision with root package name */
    final s.a f47389f;

    /* renamed from: g  reason: collision with root package name */
    final m.a f47390g;

    /* renamed from: h  reason: collision with root package name */
    final o f47391h;

    /* renamed from: i  reason: collision with root package name */
    private final com.posthog.android.i f47392i;

    /* renamed from: j  reason: collision with root package name */
    final String f47393j;

    /* renamed from: k  reason: collision with root package name */
    final com.posthog.android.c f47394k;

    /* renamed from: l  reason: collision with root package name */
    final com.posthog.android.b f47395l;

    /* renamed from: m  reason: collision with root package name */
    final com.posthog.android.e f47396m;

    /* renamed from: n  reason: collision with root package name */
    final Application.ActivityLifecycleCallbacks f47397n;

    /* renamed from: o  reason: collision with root package name */
    final String f47398o;

    /* renamed from: p  reason: collision with root package name */
    final String f47399p;

    /* renamed from: q  reason: collision with root package name */
    final int f47400q;

    /* renamed from: r  reason: collision with root package name */
    final long f47401r;

    /* renamed from: s  reason: collision with root package name */
    private final CountDownLatch f47402s;

    /* renamed from: t  reason: collision with root package name */
    private final ExecutorService f47403t;

    /* renamed from: u  reason: collision with root package name */
    private final com.posthog.android.a f47404u;

    /* renamed from: v  reason: collision with root package name */
    private final com.posthog.android.g f47405v;

    /* renamed from: w  reason: collision with root package name */
    private final q f47406w;

    /* renamed from: x  reason: collision with root package name */
    volatile boolean f47407x;

    /* renamed from: y  reason: collision with root package name */
    static final Handler f47382y = new a(Looper.getMainLooper());
    static final List<String> D = new ArrayList(1);
    @SuppressLint({"StaticFieldLeak"})
    static volatile PostHog E = null;
    static final s F = new s();

    /* loaded from: classes3.dex */
    public enum LogLevel {
        NONE,
        INFO,
        DEBUG,
        VERBOSE;

        public boolean log() {
            return this != NONE;
        }
    }

    /* loaded from: classes3.dex */
    static class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            throw new AssertionError("Unknown handler message received: " + message.what);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.posthog.android.h f47409a;

        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                b bVar = b.this;
                PostHog.this.I(bVar.f47409a);
            }
        }

        b(com.posthog.android.h hVar) {
            this.f47409a = hVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            PostHog.f47382y.post(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f47412a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ s f47413b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ k f47414c;

        c(String str, s sVar, k kVar) {
            this.f47412a = str;
            this.f47413b = sVar;
            this.f47414c = kVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            s c10 = PostHog.this.f47389f.c();
            if (!Utils.w(this.f47412a)) {
                c10.C(this.f47412a);
            }
            if (!Utils.y(this.f47413b)) {
                c10.putAll(this.f47413b);
            }
            PostHog.this.f47389f.e(c10);
            k kVar = this.f47414c;
            if (kVar == null) {
                kVar = PostHog.this.f47388e;
            }
            s sVar = this.f47413b;
            if (sVar == null) {
                sVar = PostHog.F;
            }
            PostHog.this.j(new d.a().l(sVar), kVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k f47416a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ s f47417b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f47418c;

        d(k kVar, s sVar, String str) {
            this.f47416a = kVar;
            this.f47417b = sVar;
            this.f47418c = str;
        }

        @Override // java.lang.Runnable
        @k0(api = 24)
        public void run() {
            k kVar = this.f47416a;
            k kVar2 = kVar == null ? PostHog.this.f47388e : kVar;
            s sVar = this.f47417b;
            if (sVar == null) {
                sVar = PostHog.F;
            }
            boolean z9 = true;
            if (kVar != null && !kVar.a().isEmpty() && (this.f47416a.a().get(PostHog.J) instanceof Boolean)) {
                z9 = ((Boolean) this.f47416a.a().get(PostHog.J)).booleanValue();
            }
            if (z9) {
                x c10 = PostHog.this.f47406w.c();
                List<String> d4 = PostHog.this.f47406w.d();
                for (Map.Entry<String, Object> entry : c10.entrySet()) {
                    sVar.D(entry.getKey(), entry.getValue());
                }
                sVar.A(d4);
            }
            PostHog.this.j(new b.a().j(this.f47418c).f(sVar), kVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k f47420a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ s f47421b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f47422c;

        e(k kVar, s sVar, String str) {
            this.f47420a = kVar;
            this.f47421b = sVar;
            this.f47422c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            k kVar = this.f47420a;
            k kVar2 = kVar == null ? PostHog.this.f47388e : kVar;
            s sVar = this.f47421b;
            if (sVar == null) {
                sVar = PostHog.F;
            }
            boolean z9 = true;
            if (kVar != null && !kVar.a().isEmpty() && (this.f47420a.a().get(PostHog.J) instanceof Boolean)) {
                z9 = ((Boolean) this.f47420a.a().get(PostHog.J)).booleanValue();
            }
            if (z9) {
                x c10 = PostHog.this.f47406w.c();
                List<String> d4 = PostHog.this.f47406w.d();
                for (Map.Entry<String, Object> entry : c10.entrySet()) {
                    sVar.D(entry.getKey(), entry.getValue());
                }
                sVar.A(d4);
            }
            PostHog.this.j(new e.a().j(this.f47422c).f(sVar), kVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k f47424a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f47425b;

        f(k kVar, String str) {
            this.f47424a = kVar;
            this.f47425b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            k kVar = this.f47424a;
            if (kVar == null) {
                kVar = PostHog.this.f47388e;
            }
            PostHog.this.j(new a.C0400a().j(this.f47425b), kVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k f47427a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ s f47428b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f47429c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f47430d;

        g(k kVar, s sVar, String str, String str2) {
            this.f47427a = kVar;
            this.f47428b = sVar;
            this.f47429c = str;
            this.f47430d = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            k kVar = this.f47427a;
            if (kVar == null) {
                kVar = PostHog.this.f47388e;
            }
            s sVar = this.f47428b;
            if (sVar == null) {
                sVar = PostHog.F;
            }
            PostHog.this.j(new c.a().l(this.f47429c).j(this.f47430d).k(sVar), kVar);
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.posthog.android.h f47432a;

        h(com.posthog.android.h hVar) {
            this.f47432a = hVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            PostHog.this.I(this.f47432a);
        }
    }

    /* loaded from: classes3.dex */
    static /* synthetic */ class i {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f47434a;

        static {
            int[] iArr = new int[BasePayload.Type.values().length];
            f47434a = iArr;
            try {
                iArr[BasePayload.Type.identify.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f47434a[BasePayload.Type.alias.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f47434a[BasePayload.Type.capture.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f47434a[BasePayload.Type.screen.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f47434a[BasePayload.Type.group.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class j {

        /* renamed from: a  reason: collision with root package name */
        private final Application f47435a;

        /* renamed from: b  reason: collision with root package name */
        private String f47436b;

        /* renamed from: c  reason: collision with root package name */
        private String f47437c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f47438d;

        /* renamed from: e  reason: collision with root package name */
        private int f47439e;

        /* renamed from: f  reason: collision with root package name */
        private long f47440f;

        /* renamed from: g  reason: collision with root package name */
        private k f47441g;

        /* renamed from: h  reason: collision with root package name */
        private String f47442h;

        /* renamed from: i  reason: collision with root package name */
        private LogLevel f47443i;

        /* renamed from: j  reason: collision with root package name */
        private ExecutorService f47444j;

        /* renamed from: k  reason: collision with root package name */
        private ExecutorService f47445k;

        /* renamed from: l  reason: collision with root package name */
        private com.posthog.android.d f47446l;

        /* renamed from: m  reason: collision with root package name */
        private List<com.posthog.android.j> f47447m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f47448n;

        /* renamed from: o  reason: collision with root package name */
        private boolean f47449o;

        /* renamed from: p  reason: collision with root package name */
        private boolean f47450p;

        /* renamed from: q  reason: collision with root package name */
        private com.posthog.android.e f47451q;

        /* renamed from: r  reason: collision with root package name */
        private com.posthog.android.g f47452r;

        public j(Context context, String str) {
            this(context, str, PostHog.C);
        }

        public PostHog a() {
            if (Utils.w(this.f47442h)) {
                this.f47442h = this.f47436b;
            }
            List<String> list = PostHog.D;
            synchronized (list) {
                if (!list.contains(this.f47442h)) {
                    list.add(this.f47442h);
                } else {
                    throw new IllegalStateException("Duplicate posthog client created with tag: " + this.f47442h + ". If you want to use multiple PostHog clients, use a different apiKey or set a tag via the builder during construction.");
                }
            }
            if (this.f47441g == null) {
                this.f47441g = new k();
            }
            if (this.f47443i == null) {
                this.f47443i = LogLevel.NONE;
            }
            if (this.f47444j == null) {
                this.f47444j = new Utils.a();
            }
            if (this.f47446l == null) {
                this.f47446l = new com.posthog.android.d();
            }
            if (this.f47451q == null) {
                this.f47451q = com.posthog.android.e.c();
            }
            v vVar = new v();
            com.posthog.android.b bVar = com.posthog.android.b.f47456c;
            com.posthog.android.c cVar = new com.posthog.android.c(this.f47436b, this.f47437c, this.f47446l);
            com.posthog.android.a aVar = new com.posthog.android.a(Utils.m(this.f47435a, this.f47442h), PostHog.f47383z, false);
            s.a aVar2 = new s.a(this.f47435a, bVar, this.f47442h);
            if (!aVar2.d() || aVar2.c() == null) {
                aVar2.e(s.u());
            }
            m.a aVar3 = new m.a(this.f47435a, bVar, this.f47442h);
            if (!aVar3.d() || aVar3.c() == null) {
                aVar3.e(m.s());
            }
            com.posthog.android.i g4 = com.posthog.android.i.g(this.f47443i);
            o t9 = o.t(this.f47435a, aVar2.c(), this.f47438d);
            CountDownLatch countDownLatch = new CountDownLatch(1);
            t9.s(this.f47435a, countDownLatch, g4);
            List s9 = Utils.s(this.f47447m);
            ExecutorService executorService = this.f47445k;
            if (executorService == null) {
                executorService = Executors.newSingleThreadExecutor();
            }
            return new PostHog(this.f47435a, this.f47444j, vVar, aVar2, aVar3, t9, this.f47441g, g4, this.f47442h, cVar, bVar, this.f47436b, this.f47437c, this.f47439e, this.f47440f, executorService, this.f47448n, countDownLatch, this.f47449o, this.f47450p, aVar, this.f47451q, s9, this.f47452r, null);
        }

        public j b() {
            this.f47448n = true;
            return this;
        }

        public j c() {
            this.f47450p = true;
            return this;
        }

        public j d(boolean z9) {
            this.f47438d = z9;
            return this;
        }

        public j e(com.posthog.android.d dVar) {
            if (dVar != null) {
                this.f47446l = dVar;
                return this;
            }
            throw new IllegalArgumentException("ConnectionFactory must not be null.");
        }

        public j f(com.posthog.android.e eVar) {
            if (eVar != null) {
                this.f47451q = eVar;
                return this;
            }
            throw new IllegalArgumentException("Crypto must not be null.");
        }

        public j g(k kVar) {
            if (kVar != null) {
                this.f47441g = new k();
                for (Map.Entry<String, Object> entry : kVar.a().entrySet()) {
                    this.f47441g.b(entry.getKey(), entry.getValue());
                }
                return this;
            }
            throw new IllegalArgumentException("defaultOptions must not be null.");
        }

        j h(ExecutorService executorService) {
            this.f47445k = (ExecutorService) Utils.a(executorService, "executor");
            return this;
        }

        public j i(long j4, TimeUnit timeUnit) {
            if (timeUnit != null) {
                if (j4 > 0) {
                    this.f47440f = timeUnit.toMillis(j4);
                    return this;
                }
                throw new IllegalArgumentException("flushInterval must be greater than zero.");
            }
            throw new IllegalArgumentException("timeUnit must not be null.");
        }

        public j j(int i4) {
            if (i4 > 0) {
                if (i4 <= 250) {
                    this.f47439e = i4;
                    return this;
                }
                throw new IllegalArgumentException("flushQueueSize must be less than or equal to 250.");
            }
            throw new IllegalArgumentException("flushQueueSize must be greater than zero.");
        }

        public j k(com.posthog.android.g gVar) {
            this.f47452r = (com.posthog.android.g) Utils.a(gVar, "integration");
            return this;
        }

        public j l(LogLevel logLevel) {
            if (logLevel != null) {
                this.f47443i = logLevel;
                return this;
            }
            throw new IllegalArgumentException("LogLevel must not be null.");
        }

        public j m(com.posthog.android.j jVar) {
            Utils.a(jVar, "middleware");
            if (this.f47447m == null) {
                this.f47447m = new ArrayList();
            }
            if (!this.f47447m.contains(jVar)) {
                this.f47447m.add(jVar);
                return this;
            }
            throw new IllegalStateException("Middleware is already registered.");
        }

        public j n(ExecutorService executorService) {
            if (executorService != null) {
                this.f47444j = executorService;
                return this;
            }
            throw new IllegalArgumentException("Executor service must not be null.");
        }

        public j o() {
            this.f47449o = true;
            return this;
        }

        public j p(String str) {
            if (!Utils.w(str)) {
                this.f47442h = str;
                return this;
            }
            throw new IllegalArgumentException("tag must not be null or empty.");
        }

        public j(Context context, String str, String str2) {
            this.f47438d = true;
            this.f47439e = 20;
            this.f47440f = 30000L;
            this.f47448n = false;
            this.f47449o = false;
            this.f47450p = false;
            if (context != null) {
                if (Utils.r(context, "android.permission.INTERNET")) {
                    Application application = (Application) context.getApplicationContext();
                    this.f47435a = application;
                    if (application != null) {
                        if (!Utils.w(str)) {
                            this.f47436b = str;
                            this.f47437c = str2;
                            return;
                        }
                        throw new IllegalArgumentException("apiKey must not be null or empty.");
                    }
                    throw new IllegalArgumentException("Application context must not be null.");
                }
                throw new IllegalArgumentException("INTERNET permission is required.");
            }
            throw new IllegalArgumentException("Context must not be null.");
        }
    }

    PostHog(Application application, ExecutorService executorService, v vVar, s.a aVar, m.a aVar2, o oVar, k kVar, @f0 com.posthog.android.i iVar, String str, com.posthog.android.c cVar, com.posthog.android.b bVar, String str2, String str3, int i4, long j4, ExecutorService executorService2, boolean z9, CountDownLatch countDownLatch, boolean z10, boolean z11, com.posthog.android.a aVar3, com.posthog.android.e eVar, @f0 List<com.posthog.android.j> list, com.posthog.android.g gVar, q qVar) {
        this.f47384a = application;
        this.f47385b = executorService;
        this.f47386c = vVar;
        this.f47389f = aVar;
        this.f47390g = aVar2;
        this.f47391h = oVar;
        this.f47388e = kVar;
        this.f47392i = iVar;
        this.f47393j = str;
        this.f47394k = cVar;
        this.f47395l = bVar;
        this.f47398o = str2;
        this.f47399p = str3;
        this.f47400q = i4;
        this.f47401r = j4;
        this.f47402s = countDownLatch;
        this.f47404u = aVar3;
        this.f47403t = executorService2;
        this.f47396m = eVar;
        this.f47387d = list;
        this.f47405v = gVar != null ? gVar : r.f47590n.b(this);
        this.f47406w = qVar == null ? new q.b().d(this).c(iVar).b(cVar).a() : qVar;
        G();
        iVar.a("Created posthog client for project with tag:%s.", str);
        n a10 = new n.b().d(this).e(executorService2).f(Boolean.valueOf(z9)).b(Boolean.valueOf(z11)).g(Boolean.valueOf(z10)).c(t(application)).a();
        this.f47397n = a10;
        application.registerActivityLifecycleCallbacks(a10);
    }

    private void G() {
        SharedPreferences m9 = Utils.m(this.f47384a, this.f47393j);
        com.posthog.android.a aVar = new com.posthog.android.a(m9, "namespaceSharedPreferences", true);
        if (aVar.a()) {
            Utils.g(this.f47384a.getSharedPreferences("posthog-android", 0), m9);
            aVar.b(false);
        }
    }

    public static void R(PostHog postHog) {
        synchronized (PostHog.class) {
            if (E == null) {
                E = postHog;
            } else {
                throw new IllegalStateException("Singleton instance already exists.");
            }
        }
    }

    private void T() {
        try {
            this.f47402s.await(15L, TimeUnit.SECONDS);
        } catch (InterruptedException e4) {
            this.f47392i.b(e4, "Thread interrupted while waiting for advertising ID.", new Object[0]);
        }
        if (this.f47402s.getCount() == 1) {
            this.f47392i.a("Advertising ID may not be collected because the API did not respond within 15 seconds.", new Object[0]);
        }
    }

    public static PostHog U(Context context) {
        if (E == null) {
            if (context != null) {
                synchronized (PostHog.class) {
                    if (E == null) {
                        j jVar = new j(context, Utils.n(context, A), Utils.n(context, B));
                        try {
                            if ((context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).flags & 2) != 0) {
                                jVar.l(LogLevel.INFO);
                            }
                        } catch (PackageManager.NameNotFoundException unused) {
                        }
                        E = jVar.a();
                    }
                }
            } else {
                throw new IllegalArgumentException("Context must not be null.");
            }
        }
        return E;
    }

    private void d() {
        if (this.f47407x) {
            throw new IllegalStateException("Cannot enqueue messages after client is shutdown.");
        }
    }

    static PackageInfo t(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException unused) {
            throw new AssertionError("Package not found: " + context.getPackageName());
        }
    }

    public void A(@f0 String str, @f0 s sVar) {
        B(str, sVar, null);
    }

    public void B(@g0 String str, @g0 s sVar, @g0 k kVar) {
        d();
        if (Utils.w(str) && Utils.y(sVar)) {
            throw new IllegalArgumentException("Either distinctId or some properties must be provided.");
        }
        this.f47403t.submit(new c(str, sVar, kVar));
        if (this.f47389f.c().w() != str) {
            K();
        }
    }

    public Boolean C(@f0 String str) {
        return E(str, Boolean.FALSE, null);
    }

    public Boolean D(@f0 String str, @g0 Boolean bool) {
        return E(str, bool, null);
    }

    public Boolean E(@f0 String str, @g0 Boolean bool, @g0 Map<String, Object> map) {
        d();
        if (!Utils.w(str)) {
            return this.f47406w.e(str, bool, map);
        }
        throw new IllegalArgumentException("key must not be null or empty.");
    }

    public com.posthog.android.i F(String str) {
        return this.f47392i.e(str);
    }

    public void H(boolean z9) {
        this.f47404u.b(z9);
    }

    void I(com.posthog.android.h hVar) {
        long nanoTime = System.nanoTime();
        hVar.l(this.f47405v);
        long nanoTime2 = System.nanoTime() - nanoTime;
        this.f47386c.c(TimeUnit.NANOSECONDS.toMillis(nanoTime2));
        this.f47392i.a("Ran %s in %d ns.", hVar, Long.valueOf(nanoTime2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void J(Activity activity) {
        PackageManager packageManager = activity.getPackageManager();
        try {
            O(packageManager.getActivityInfo(activity.getComponentName(), 128).loadLabel(packageManager).toString());
        } catch (PackageManager.NameNotFoundException e4) {
            throw new AssertionError("Activity Not Found: " + e4.toString());
        }
    }

    public void K() {
        this.f47406w.h();
    }

    public void L() {
        SharedPreferences.Editor edit = Utils.m(this.f47384a, this.f47393j).edit();
        edit.remove("properties-" + this.f47393j);
        edit.apply();
        this.f47389f.b();
        this.f47389f.e(s.u());
        N(com.posthog.android.h.f47478b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void M(BasePayload basePayload) {
        com.posthog.android.h d4;
        this.f47392i.f("Running payload %s.", basePayload);
        int i4 = i.f47434a[basePayload.A().ordinal()];
        if (i4 == 1) {
            d4 = com.posthog.android.h.d((com.posthog.android.payloads.d) basePayload);
        } else if (i4 == 2) {
            d4 = com.posthog.android.h.a((com.posthog.android.payloads.a) basePayload);
        } else if (i4 == 3) {
            d4 = com.posthog.android.h.b((com.posthog.android.payloads.b) basePayload);
        } else if (i4 == 4) {
            d4 = com.posthog.android.h.m((com.posthog.android.payloads.e) basePayload);
        } else if (i4 == 5) {
            d4 = com.posthog.android.h.c((com.posthog.android.payloads.c) basePayload);
        } else {
            throw new AssertionError("unknown type " + basePayload.A());
        }
        f47382y.post(new h(d4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void N(com.posthog.android.h hVar) {
        if (this.f47407x) {
            return;
        }
        this.f47403t.submit(new b(hVar));
    }

    public void O(@g0 String str) {
        Q(str, null, null);
    }

    public void P(@g0 String str, @g0 s sVar) {
        Q(str, sVar, null);
    }

    public void Q(@g0 String str, @g0 s sVar, @g0 k kVar) {
        d();
        if (!Utils.w(str)) {
            this.f47403t.submit(new e(kVar, sVar, str));
            return;
        }
        throw new IllegalArgumentException("name must be provided.");
    }

    public void S() {
        if (this != E) {
            if (this.f47407x) {
                return;
            }
            this.f47384a.unregisterActivityLifecycleCallbacks(this.f47397n);
            this.f47403t.shutdown();
            ExecutorService executorService = this.f47385b;
            if (executorService instanceof Utils.a) {
                executorService.shutdown();
            }
            this.f47386c.f();
            this.f47407x = true;
            List<String> list = D;
            synchronized (list) {
                list.remove(this.f47393j);
            }
            return;
        }
        throw new UnsupportedOperationException("Default singleton instance cannot be shutdown.");
    }

    public void b(@f0 String str) {
        c(str, null);
    }

    public void c(@f0 String str, @g0 k kVar) {
        d();
        if (!Utils.w(str)) {
            this.f47403t.submit(new f(kVar, str));
            return;
        }
        throw new IllegalArgumentException("newId must not be null or empty.");
    }

    public void e(@f0 String str) {
        g(str, null, null);
    }

    public void f(@f0 String str, @g0 s sVar) {
        g(str, sVar, null);
    }

    public void g(@f0 String str, @g0 s sVar, @g0 k kVar) {
        d();
        if (!Utils.w(str)) {
            this.f47403t.submit(new d(kVar, sVar, str));
            return;
        }
        throw new IllegalArgumentException("event must not be null or empty.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        PackageInfo t9 = t(this.f47384a);
        String str = t9.versionName;
        int i4 = t9.versionCode;
        SharedPreferences m9 = Utils.m(this.f47384a, this.f47393j);
        String string = m9.getString("version", null);
        int i10 = m9.getInt("build", -1);
        if (i10 == -1) {
            f("Application Installed", new s().o("version", str).o("build", Integer.valueOf(i4)));
        } else if (i4 != i10) {
            f("Application Updated", new s().o("version", str).o("build", Integer.valueOf(i4)).o("previous_version", string).o("previous_build", Integer.valueOf(i10)));
        }
        SharedPreferences.Editor edit = m9.edit();
        edit.putString("version", str);
        edit.putInt("build", i4);
        edit.apply();
    }

    void i(BasePayload basePayload) {
        if (this.f47404u.a()) {
            return;
        }
        this.f47392i.f("Created payload %s.", basePayload);
        new u(0, basePayload, this.f47387d, this).b(basePayload);
    }

    void j(BasePayload.a<?, ?> aVar, k kVar) {
        T();
        o oVar = new o(this.f47391h);
        for (Map.Entry<String, Object> entry : kVar.a().entrySet()) {
            oVar.put(entry.getKey(), entry.getValue());
        }
        o F2 = oVar.F();
        s c10 = this.f47389f.c();
        aVar.c(F2);
        aVar.a(c10.t());
        String w9 = c10.w();
        if (!Utils.w(w9)) {
            aVar.d(w9);
        }
        i(aVar.b());
    }

    public void k() {
        if (!this.f47407x) {
            N(com.posthog.android.h.f47477a);
            return;
        }
        throw new IllegalStateException("Cannot enqueue messages after client is shutdown.");
    }

    public String l() {
        return this.f47389f.c().t();
    }

    public Application m() {
        return this.f47384a;
    }

    public Object n(@f0 String str) {
        return p(str, Boolean.FALSE, null);
    }

    public Object o(@f0 String str, @g0 Object obj) {
        return p(str, obj, null);
    }

    public Object p(@f0 String str, @g0 Object obj, @g0 Map<String, Object> map) {
        d();
        if (!Utils.w(str)) {
            return this.f47406w.b(str, obj, map);
        }
        throw new IllegalArgumentException("key must not be null or empty.");
    }

    public x q() {
        x u9 = this.f47390g.c().u();
        return u9 != null ? u9 : new x();
    }

    @Deprecated
    public LogLevel r() {
        return this.f47392i.f47494a;
    }

    public com.posthog.android.i s() {
        return this.f47392i;
    }

    public o u() {
        return this.f47391h;
    }

    public w v() {
        return this.f47386c.a();
    }

    public void w(@f0 String str, @f0 String str2) {
        x(str, str2, null, null);
    }

    public void x(@f0 String str, @f0 String str2, @g0 s sVar, @g0 k kVar) {
        d();
        if (!Utils.w(str) && !Utils.w(str2)) {
            x q9 = q();
            q9.o(str, str2);
            this.f47390g.c().w(q9);
            this.f47403t.submit(new g(kVar, sVar, str, str2));
            if (q9.get(str) != str2) {
                K();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("groupType and groupKey must not be null or empty.");
    }

    public void y(@f0 s sVar) {
        B(null, sVar, null);
    }

    public void z(@f0 String str) {
        B(str, null, null);
    }
}
