package com.google.android.exoplayer2.offline;

import android.app.Notification;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import com.google.android.exoplayer2.offline.r;
import com.google.android.exoplayer2.offline.v;
import com.google.android.exoplayer2.scheduler.Requirements;
import com.google.android.exoplayer2.util.z0;
import java.util.HashMap;
import java.util.List;

/* compiled from: DownloadService.java */
/* loaded from: classes2.dex */
public abstract class v extends Service {
    private static final String A = "DownloadService";
    private static final HashMap<Class<? extends v>, b> B = new HashMap<>();

    /* renamed from: k  reason: collision with root package name */
    public static final String f24431k = "com.google.android.exoplayer.downloadService.action.INIT";

    /* renamed from: l  reason: collision with root package name */
    private static final String f24432l = "com.google.android.exoplayer.downloadService.action.RESTART";

    /* renamed from: m  reason: collision with root package name */
    public static final String f24433m = "com.google.android.exoplayer.downloadService.action.ADD_DOWNLOAD";

    /* renamed from: n  reason: collision with root package name */
    public static final String f24434n = "com.google.android.exoplayer.downloadService.action.REMOVE_DOWNLOAD";

    /* renamed from: o  reason: collision with root package name */
    public static final String f24435o = "com.google.android.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS";

    /* renamed from: p  reason: collision with root package name */
    public static final String f24436p = "com.google.android.exoplayer.downloadService.action.RESUME_DOWNLOADS";

    /* renamed from: q  reason: collision with root package name */
    public static final String f24437q = "com.google.android.exoplayer.downloadService.action.PAUSE_DOWNLOADS";

    /* renamed from: r  reason: collision with root package name */
    public static final String f24438r = "com.google.android.exoplayer.downloadService.action.SET_STOP_REASON";

    /* renamed from: s  reason: collision with root package name */
    public static final String f24439s = "com.google.android.exoplayer.downloadService.action.SET_REQUIREMENTS";

    /* renamed from: t  reason: collision with root package name */
    public static final String f24440t = "download_request";

    /* renamed from: u  reason: collision with root package name */
    public static final String f24441u = "content_id";

    /* renamed from: v  reason: collision with root package name */
    public static final String f24442v = "stop_reason";

    /* renamed from: w  reason: collision with root package name */
    public static final String f24443w = "requirements";

    /* renamed from: x  reason: collision with root package name */
    public static final String f24444x = "foreground";

    /* renamed from: y  reason: collision with root package name */
    public static final int f24445y = 0;

    /* renamed from: z  reason: collision with root package name */
    public static final long f24446z = 1000;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final c f24447a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f24448b;
    @StringRes

    /* renamed from: c  reason: collision with root package name */
    private final int f24449c;
    @StringRes

    /* renamed from: d  reason: collision with root package name */
    private final int f24450d;

    /* renamed from: e  reason: collision with root package name */
    private r f24451e;

    /* renamed from: f  reason: collision with root package name */
    private int f24452f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f24453g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f24454h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f24455i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f24456j;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DownloadService.java */
    /* loaded from: classes2.dex */
    public static final class b implements r.d {

        /* renamed from: a  reason: collision with root package name */
        private final Context f24457a;

        /* renamed from: b  reason: collision with root package name */
        private final r f24458b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f24459c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final com.google.android.exoplayer2.scheduler.e f24460d;

        /* renamed from: e  reason: collision with root package name */
        private final Class<? extends v> f24461e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private v f24462f;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void l(v vVar) {
            vVar.A(this.f24458b.g());
        }

        private void m() {
            if (this.f24459c) {
                z0.o1(this.f24457a, v.s(this.f24457a, this.f24461e, v.f24432l));
                return;
            }
            try {
                this.f24457a.startService(v.s(this.f24457a, this.f24461e, v.f24431k));
            } catch (IllegalStateException unused) {
                com.google.android.exoplayer2.util.w.n(v.A, "Failed to restart DownloadService (process is idle).");
            }
        }

        private boolean n() {
            v vVar = this.f24462f;
            return vVar == null || vVar.w();
        }

        private void o() {
            if (this.f24460d == null) {
                return;
            }
            if (this.f24458b.q()) {
                String packageName = this.f24457a.getPackageName();
                if (this.f24460d.a(this.f24458b.m(), packageName, v.f24432l)) {
                    return;
                }
                com.google.android.exoplayer2.util.w.d(v.A, "Scheduling downloads failed.");
                return;
            }
            this.f24460d.cancel();
        }

        @Override // com.google.android.exoplayer2.offline.r.d
        public void a(r rVar, boolean z9) {
            if (!z9 && !rVar.i() && n()) {
                List<e> g4 = rVar.g();
                int i4 = 0;
                while (true) {
                    if (i4 >= g4.size()) {
                        break;
                    } else if (g4.get(i4).f24331b == 0) {
                        m();
                        break;
                    } else {
                        i4++;
                    }
                }
            }
            o();
        }

        @Override // com.google.android.exoplayer2.offline.r.d
        public void b(r rVar, e eVar, @Nullable Exception exc) {
            v vVar = this.f24462f;
            if (vVar != null) {
                vVar.y(eVar);
            }
            if (n() && v.x(eVar.f24331b)) {
                com.google.android.exoplayer2.util.w.n(v.A, "DownloadService wasn't running. Restarting.");
                m();
            }
        }

        @Override // com.google.android.exoplayer2.offline.r.d
        public void c(r rVar, e eVar) {
            v vVar = this.f24462f;
            if (vVar != null) {
                vVar.z(eVar);
            }
        }

        @Override // com.google.android.exoplayer2.offline.r.d
        public /* synthetic */ void d(r rVar, boolean z9) {
            t.c(this, rVar, z9);
        }

        @Override // com.google.android.exoplayer2.offline.r.d
        public /* synthetic */ void e(r rVar, Requirements requirements, int i4) {
            t.f(this, rVar, requirements, i4);
        }

        @Override // com.google.android.exoplayer2.offline.r.d
        public final void f(r rVar) {
            v vVar = this.f24462f;
            if (vVar != null) {
                vVar.O();
            }
        }

        @Override // com.google.android.exoplayer2.offline.r.d
        public void g(r rVar) {
            v vVar = this.f24462f;
            if (vVar != null) {
                vVar.A(rVar.g());
            }
        }

        public void j(final v vVar) {
            com.google.android.exoplayer2.util.a.i(this.f24462f == null);
            this.f24462f = vVar;
            if (this.f24458b.p()) {
                z0.B().postAtFrontOfQueue(new Runnable() { // from class: com.google.android.exoplayer2.offline.w
                    @Override // java.lang.Runnable
                    public final void run() {
                        v.b.this.l(vVar);
                    }
                });
            }
        }

        public void k(v vVar) {
            com.google.android.exoplayer2.util.a.i(this.f24462f == vVar);
            this.f24462f = null;
            if (this.f24460d == null || this.f24458b.q()) {
                return;
            }
            this.f24460d.cancel();
        }

        private b(Context context, r rVar, boolean z9, @Nullable com.google.android.exoplayer2.scheduler.e eVar, Class<? extends v> cls) {
            this.f24457a = context;
            this.f24458b = rVar;
            this.f24459c = z9;
            this.f24460d = eVar;
            this.f24461e = cls;
            rVar.e(this);
            o();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DownloadService.java */
    /* loaded from: classes2.dex */
    public final class c {

        /* renamed from: a  reason: collision with root package name */
        private final int f24463a;

        /* renamed from: b  reason: collision with root package name */
        private final long f24464b;

        /* renamed from: c  reason: collision with root package name */
        private final Handler f24465c = new Handler(Looper.getMainLooper());

        /* renamed from: d  reason: collision with root package name */
        private boolean f24466d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f24467e;

        public c(int i4, long j4) {
            this.f24463a = i4;
            this.f24464b = j4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f() {
            List<e> g4 = ((r) com.google.android.exoplayer2.util.a.g(v.this.f24451e)).g();
            v vVar = v.this;
            vVar.startForeground(this.f24463a, vVar.r(g4));
            this.f24467e = true;
            if (this.f24466d) {
                this.f24465c.removeCallbacksAndMessages(null);
                this.f24465c.postDelayed(new Runnable() { // from class: com.google.android.exoplayer2.offline.x
                    @Override // java.lang.Runnable
                    public final void run() {
                        v.c.this.f();
                    }
                }, this.f24464b);
            }
        }

        public void b() {
            if (this.f24467e) {
                f();
            }
        }

        public void c() {
            if (this.f24467e) {
                return;
            }
            f();
        }

        public void d() {
            this.f24466d = true;
            f();
        }

        public void e() {
            this.f24466d = false;
            this.f24465c.removeCallbacksAndMessages(null);
        }
    }

    protected v(int i4) {
        this(i4, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(List<e> list) {
        if (this.f24447a != null) {
            for (int i4 = 0; i4 < list.size(); i4++) {
                if (x(list.get(i4).f24331b)) {
                    this.f24447a.d();
                    return;
                }
            }
        }
    }

    public static void D(Context context, Class<? extends v> cls, DownloadRequest downloadRequest, int i4, boolean z9) {
        N(context, i(context, cls, downloadRequest, i4, z9), z9);
    }

    public static void E(Context context, Class<? extends v> cls, DownloadRequest downloadRequest, boolean z9) {
        N(context, j(context, cls, downloadRequest, z9), z9);
    }

    public static void F(Context context, Class<? extends v> cls, boolean z9) {
        N(context, k(context, cls, z9), z9);
    }

    public static void G(Context context, Class<? extends v> cls, boolean z9) {
        N(context, l(context, cls, z9), z9);
    }

    public static void H(Context context, Class<? extends v> cls, String str, boolean z9) {
        N(context, m(context, cls, str, z9), z9);
    }

    public static void I(Context context, Class<? extends v> cls, boolean z9) {
        N(context, n(context, cls, z9), z9);
    }

    public static void J(Context context, Class<? extends v> cls, Requirements requirements, boolean z9) {
        N(context, o(context, cls, requirements, z9), z9);
    }

    public static void K(Context context, Class<? extends v> cls, @Nullable String str, int i4, boolean z9) {
        N(context, p(context, cls, str, i4, z9), z9);
    }

    public static void L(Context context, Class<? extends v> cls) {
        context.startService(s(context, cls, f24431k));
    }

    public static void M(Context context, Class<? extends v> cls) {
        z0.o1(context, t(context, cls, f24431k, true));
    }

    private static void N(Context context, Intent intent, boolean z9) {
        if (z9) {
            z0.o1(context, intent);
        } else {
            context.startService(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        c cVar = this.f24447a;
        if (cVar != null) {
            cVar.e();
        }
        if (z0.f27743a < 28 && this.f24454h) {
            stopSelf();
            this.f24455i = true;
            return;
        }
        this.f24455i |= stopSelfResult(this.f24452f);
    }

    public static Intent i(Context context, Class<? extends v> cls, DownloadRequest downloadRequest, int i4, boolean z9) {
        return t(context, cls, f24433m, z9).putExtra(f24440t, downloadRequest).putExtra(f24442v, i4);
    }

    public static Intent j(Context context, Class<? extends v> cls, DownloadRequest downloadRequest, boolean z9) {
        return i(context, cls, downloadRequest, 0, z9);
    }

    public static Intent k(Context context, Class<? extends v> cls, boolean z9) {
        return t(context, cls, f24437q, z9);
    }

    public static Intent l(Context context, Class<? extends v> cls, boolean z9) {
        return t(context, cls, f24435o, z9);
    }

    public static Intent m(Context context, Class<? extends v> cls, String str, boolean z9) {
        return t(context, cls, f24434n, z9).putExtra(f24441u, str);
    }

    public static Intent n(Context context, Class<? extends v> cls, boolean z9) {
        return t(context, cls, f24436p, z9);
    }

    public static Intent o(Context context, Class<? extends v> cls, Requirements requirements, boolean z9) {
        return t(context, cls, f24439s, z9).putExtra(f24443w, requirements);
    }

    public static Intent p(Context context, Class<? extends v> cls, @Nullable String str, int i4, boolean z9) {
        return t(context, cls, f24438r, z9).putExtra(f24441u, str).putExtra(f24442v, i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Intent s(Context context, Class<? extends v> cls, String str) {
        return new Intent(context, cls).setAction(str);
    }

    private static Intent t(Context context, Class<? extends v> cls, String str, boolean z9) {
        return s(context, cls, str).putExtra(f24444x, z9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean w() {
        return this.f24455i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean x(int i4) {
        return i4 == 2 || i4 == 5 || i4 == 7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(e eVar) {
        B(eVar);
        if (this.f24447a != null) {
            if (x(eVar.f24331b)) {
                this.f24447a.d();
            } else {
                this.f24447a.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z(e eVar) {
        C(eVar);
        c cVar = this.f24447a;
        if (cVar != null) {
            cVar.b();
        }
    }

    @Deprecated
    protected void B(e eVar) {
    }

    @Deprecated
    protected void C(e eVar) {
    }

    @Override // android.app.Service
    @Nullable
    public final IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Service
    public void onCreate() {
        String str = this.f24448b;
        if (str != null) {
            com.google.android.exoplayer2.util.f0.a(this, str, this.f24449c, this.f24450d, 2);
        }
        Class<?> cls = getClass();
        HashMap<Class<? extends v>, b> hashMap = B;
        b bVar = (b) hashMap.get(cls);
        if (bVar == null) {
            boolean z9 = this.f24447a != null;
            com.google.android.exoplayer2.scheduler.e u9 = z9 ? u() : null;
            r q9 = q();
            this.f24451e = q9;
            q9.C();
            bVar = new b(getApplicationContext(), this.f24451e, z9, u9, cls);
            hashMap.put(cls, bVar);
        } else {
            this.f24451e = bVar.f24458b;
        }
        bVar.j(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f24456j = true;
        ((b) com.google.android.exoplayer2.util.a.g(B.get(getClass()))).k(this);
        c cVar = this.f24447a;
        if (cVar != null) {
            cVar.e();
        }
    }

    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int i4, int i10) {
        String str;
        c cVar;
        this.f24452f = i10;
        this.f24454h = false;
        String str2 = null;
        if (intent != null) {
            str2 = intent.getAction();
            str = intent.getStringExtra(f24441u);
            this.f24453g |= intent.getBooleanExtra(f24444x, false) || f24432l.equals(str2);
        } else {
            str = null;
        }
        if (str2 == null) {
            str2 = f24431k;
        }
        r rVar = (r) com.google.android.exoplayer2.util.a.g(this.f24451e);
        char c10 = 65535;
        switch (str2.hashCode()) {
            case -1931239035:
                if (str2.equals(f24433m)) {
                    c10 = 0;
                    break;
                }
                break;
            case -932047176:
                if (str2.equals(f24436p)) {
                    c10 = 1;
                    break;
                }
                break;
            case -871181424:
                if (str2.equals(f24432l)) {
                    c10 = 2;
                    break;
                }
                break;
            case -650547439:
                if (str2.equals(f24435o)) {
                    c10 = 3;
                    break;
                }
                break;
            case -119057172:
                if (str2.equals(f24439s)) {
                    c10 = 4;
                    break;
                }
                break;
            case 191112771:
                if (str2.equals(f24437q)) {
                    c10 = 5;
                    break;
                }
                break;
            case 671523141:
                if (str2.equals(f24438r)) {
                    c10 = 6;
                    break;
                }
                break;
            case 1015676687:
                if (str2.equals(f24431k)) {
                    c10 = 7;
                    break;
                }
                break;
            case 1547520644:
                if (str2.equals(f24434n)) {
                    c10 = '\b';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                DownloadRequest downloadRequest = (DownloadRequest) ((Intent) com.google.android.exoplayer2.util.a.g(intent)).getParcelableExtra(f24440t);
                if (downloadRequest == null) {
                    com.google.android.exoplayer2.util.w.d(A, "Ignored ADD_DOWNLOAD: Missing download_request extra");
                    break;
                } else {
                    rVar.d(downloadRequest, intent.getIntExtra(f24442v, 0));
                    break;
                }
            case 1:
                rVar.C();
                break;
            case 2:
            case 7:
                break;
            case 3:
                rVar.z();
                break;
            case 4:
                Requirements requirements = (Requirements) ((Intent) com.google.android.exoplayer2.util.a.g(intent)).getParcelableExtra(f24443w);
                if (requirements == null) {
                    com.google.android.exoplayer2.util.w.d(A, "Ignored SET_REQUIREMENTS: Missing requirements extra");
                    break;
                } else {
                    com.google.android.exoplayer2.scheduler.e u9 = u();
                    if (u9 != null) {
                        Requirements b10 = u9.b(requirements);
                        if (!b10.equals(requirements)) {
                            StringBuilder sb = new StringBuilder(65);
                            sb.append("Ignoring requirements not supported by the Scheduler: ");
                            sb.append(requirements.getRequirements() ^ b10.getRequirements());
                            com.google.android.exoplayer2.util.w.n(A, sb.toString());
                            requirements = b10;
                        }
                    }
                    rVar.G(requirements);
                    break;
                }
            case 5:
                rVar.x();
                break;
            case 6:
                if (!((Intent) com.google.android.exoplayer2.util.a.g(intent)).hasExtra(f24442v)) {
                    com.google.android.exoplayer2.util.w.d(A, "Ignored SET_STOP_REASON: Missing stop_reason extra");
                    break;
                } else {
                    rVar.H(str, intent.getIntExtra(f24442v, 0));
                    break;
                }
            case '\b':
                if (str == null) {
                    com.google.android.exoplayer2.util.w.d(A, "Ignored REMOVE_DOWNLOAD: Missing content_id extra");
                    break;
                } else {
                    rVar.A(str);
                    break;
                }
            default:
                com.google.android.exoplayer2.util.w.d(A, str2.length() != 0 ? "Ignored unrecognized action: ".concat(str2) : new String("Ignored unrecognized action: "));
                break;
        }
        if (z0.f27743a >= 26 && this.f24453g && (cVar = this.f24447a) != null) {
            cVar.c();
        }
        this.f24455i = false;
        if (rVar.o()) {
            O();
        }
        return 1;
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        this.f24454h = true;
    }

    protected abstract r q();

    protected abstract Notification r(List<e> list);

    @Nullable
    protected abstract com.google.android.exoplayer2.scheduler.e u();

    protected final void v() {
        c cVar = this.f24447a;
        if (cVar == null || this.f24456j) {
            return;
        }
        cVar.b();
    }

    protected v(int i4, long j4) {
        this(i4, j4, null, 0, 0);
    }

    @Deprecated
    protected v(int i4, long j4, @Nullable String str, @StringRes int i10) {
        this(i4, j4, str, i10, 0);
    }

    protected v(int i4, long j4, @Nullable String str, @StringRes int i10, @StringRes int i11) {
        if (i4 == 0) {
            this.f24447a = null;
            this.f24448b = null;
            this.f24449c = 0;
            this.f24450d = 0;
            return;
        }
        this.f24447a = new c(i4, j4);
        this.f24448b = str;
        this.f24449c = i10;
        this.f24450d = i11;
    }
}
