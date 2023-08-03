package com.google.android.exoplayer2.offline;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.offline.y;
import com.google.android.exoplayer2.scheduler.Requirements;
import com.google.android.exoplayer2.scheduler.b;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.b;
import com.google.android.exoplayer2.upstream.m;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;

/* compiled from: DownloadManager.java */
/* loaded from: classes2.dex */
public final class r {
    private static final int A = 4;
    private static final int B = 5;
    private static final int C = 6;
    private static final int D = 7;
    private static final int E = 8;
    private static final int F = 9;
    private static final int G = 10;
    private static final int H = 11;
    private static final int I = 12;
    private static final String J = "DownloadManager";

    /* renamed from: q  reason: collision with root package name */
    public static final int f24376q = 3;

    /* renamed from: r  reason: collision with root package name */
    public static final int f24377r = 5;

    /* renamed from: s  reason: collision with root package name */
    public static final Requirements f24378s = new Requirements(1);

    /* renamed from: t  reason: collision with root package name */
    private static final int f24379t = 0;

    /* renamed from: u  reason: collision with root package name */
    private static final int f24380u = 1;

    /* renamed from: v  reason: collision with root package name */
    private static final int f24381v = 2;

    /* renamed from: w  reason: collision with root package name */
    private static final int f24382w = 0;

    /* renamed from: x  reason: collision with root package name */
    private static final int f24383x = 1;

    /* renamed from: y  reason: collision with root package name */
    private static final int f24384y = 2;

    /* renamed from: z  reason: collision with root package name */
    private static final int f24385z = 3;

    /* renamed from: a  reason: collision with root package name */
    private final Context f24386a;

    /* renamed from: b  reason: collision with root package name */
    private final f0 f24387b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f24388c;

    /* renamed from: d  reason: collision with root package name */
    private final c f24389d;

    /* renamed from: e  reason: collision with root package name */
    private final b.c f24390e;

    /* renamed from: f  reason: collision with root package name */
    private final CopyOnWriteArraySet<d> f24391f;

    /* renamed from: g  reason: collision with root package name */
    private int f24392g;

    /* renamed from: h  reason: collision with root package name */
    private int f24393h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f24394i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f24395j;

    /* renamed from: k  reason: collision with root package name */
    private int f24396k;

    /* renamed from: l  reason: collision with root package name */
    private int f24397l;

    /* renamed from: m  reason: collision with root package name */
    private int f24398m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f24399n;

    /* renamed from: o  reason: collision with root package name */
    private List<com.google.android.exoplayer2.offline.e> f24400o;

    /* renamed from: p  reason: collision with root package name */
    private com.google.android.exoplayer2.scheduler.b f24401p;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DownloadManager.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final com.google.android.exoplayer2.offline.e f24402a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f24403b;

        /* renamed from: c  reason: collision with root package name */
        public final List<com.google.android.exoplayer2.offline.e> f24404c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final Exception f24405d;

        public b(com.google.android.exoplayer2.offline.e eVar, boolean z9, List<com.google.android.exoplayer2.offline.e> list, @Nullable Exception exc) {
            this.f24402a = eVar;
            this.f24403b = z9;
            this.f24404c = list;
            this.f24405d = exc;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DownloadManager.java */
    /* loaded from: classes2.dex */
    public static final class c extends Handler {

        /* renamed from: m  reason: collision with root package name */
        private static final int f24406m = 5000;

        /* renamed from: a  reason: collision with root package name */
        public boolean f24407a;

        /* renamed from: b  reason: collision with root package name */
        private final HandlerThread f24408b;

        /* renamed from: c  reason: collision with root package name */
        private final f0 f24409c;

        /* renamed from: d  reason: collision with root package name */
        private final z f24410d;

        /* renamed from: e  reason: collision with root package name */
        private final Handler f24411e;

        /* renamed from: f  reason: collision with root package name */
        private final ArrayList<com.google.android.exoplayer2.offline.e> f24412f;

        /* renamed from: g  reason: collision with root package name */
        private final HashMap<String, e> f24413g;

        /* renamed from: h  reason: collision with root package name */
        private int f24414h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f24415i;

        /* renamed from: j  reason: collision with root package name */
        private int f24416j;

        /* renamed from: k  reason: collision with root package name */
        private int f24417k;

        /* renamed from: l  reason: collision with root package name */
        private int f24418l;

        public c(HandlerThread handlerThread, f0 f0Var, z zVar, Handler handler, int i4, int i10, boolean z9) {
            super(handlerThread.getLooper());
            this.f24408b = handlerThread;
            this.f24409c = f0Var;
            this.f24410d = zVar;
            this.f24411e = handler;
            this.f24416j = i4;
            this.f24417k = i10;
            this.f24415i = z9;
            this.f24412f = new ArrayList<>();
            this.f24413g = new HashMap<>();
        }

        private void A(@Nullable e eVar) {
            if (eVar != null) {
                com.google.android.exoplayer2.util.a.i(!eVar.f24422d);
                eVar.f(false);
            }
        }

        private void B() {
            int i4 = 0;
            for (int i10 = 0; i10 < this.f24412f.size(); i10++) {
                com.google.android.exoplayer2.offline.e eVar = this.f24412f.get(i10);
                e eVar2 = this.f24413g.get(eVar.f24330a.id);
                int i11 = eVar.f24331b;
                if (i11 == 0) {
                    eVar2 = y(eVar2, eVar);
                } else if (i11 == 1) {
                    A(eVar2);
                } else if (i11 == 2) {
                    com.google.android.exoplayer2.util.a.g(eVar2);
                    x(eVar2, eVar, i4);
                } else if (i11 != 5 && i11 != 7) {
                    throw new IllegalStateException();
                } else {
                    z(eVar2, eVar);
                }
                if (eVar2 != null && !eVar2.f24422d) {
                    i4++;
                }
            }
        }

        private void C() {
            for (int i4 = 0; i4 < this.f24412f.size(); i4++) {
                com.google.android.exoplayer2.offline.e eVar = this.f24412f.get(i4);
                if (eVar.f24331b == 2) {
                    try {
                        this.f24409c.h(eVar);
                    } catch (IOException e4) {
                        com.google.android.exoplayer2.util.w.e(r.J, "Failed to update index.", e4);
                    }
                }
            }
            sendEmptyMessageDelayed(11, 5000L);
        }

        private void b(DownloadRequest downloadRequest, int i4) {
            com.google.android.exoplayer2.offline.e f10 = f(downloadRequest.id, true);
            long currentTimeMillis = System.currentTimeMillis();
            if (f10 != null) {
                m(r.r(f10, downloadRequest, i4, currentTimeMillis));
            } else {
                m(new com.google.android.exoplayer2.offline.e(downloadRequest, i4 != 0 ? 1 : 0, currentTimeMillis, currentTimeMillis, -1L, i4, 0));
            }
            B();
        }

        private boolean c() {
            return !this.f24415i && this.f24414h == 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int d(com.google.android.exoplayer2.offline.e eVar, com.google.android.exoplayer2.offline.e eVar2) {
            return z0.r(eVar.f24332c, eVar2.f24332c);
        }

        private static com.google.android.exoplayer2.offline.e e(com.google.android.exoplayer2.offline.e eVar, int i4, int i10) {
            return new com.google.android.exoplayer2.offline.e(eVar.f24330a, i4, eVar.f24332c, System.currentTimeMillis(), eVar.f24334e, i10, 0, eVar.f24337h);
        }

        @Nullable
        private com.google.android.exoplayer2.offline.e f(String str, boolean z9) {
            int g4 = g(str);
            if (g4 != -1) {
                return this.f24412f.get(g4);
            }
            if (z9) {
                try {
                    return this.f24409c.g(str);
                } catch (IOException e4) {
                    String valueOf = String.valueOf(str);
                    com.google.android.exoplayer2.util.w.e(r.J, valueOf.length() != 0 ? "Failed to load download: ".concat(valueOf) : new String("Failed to load download: "), e4);
                    return null;
                }
            }
            return null;
        }

        private int g(String str) {
            for (int i4 = 0; i4 < this.f24412f.size(); i4++) {
                if (this.f24412f.get(i4).f24330a.id.equals(str)) {
                    return i4;
                }
            }
            return -1;
        }

        private void h(int i4) {
            this.f24414h = i4;
            g gVar = null;
            try {
                try {
                    this.f24409c.f();
                    gVar = this.f24409c.d(0, 1, 2, 5, 7);
                    while (gVar.moveToNext()) {
                        this.f24412f.add(gVar.N());
                    }
                } catch (IOException e4) {
                    com.google.android.exoplayer2.util.w.e(r.J, "Failed to load index.", e4);
                    this.f24412f.clear();
                }
                z0.q(gVar);
                this.f24411e.obtainMessage(0, new ArrayList(this.f24412f)).sendToTarget();
                B();
            } catch (Throwable th) {
                z0.q(gVar);
                throw th;
            }
        }

        private void i(e eVar, long j4) {
            com.google.android.exoplayer2.offline.e eVar2 = (com.google.android.exoplayer2.offline.e) com.google.android.exoplayer2.util.a.g(f(eVar.f24419a.id, false));
            if (j4 == eVar2.f24334e || j4 == -1) {
                return;
            }
            m(new com.google.android.exoplayer2.offline.e(eVar2.f24330a, eVar2.f24331b, eVar2.f24332c, System.currentTimeMillis(), j4, eVar2.f24335f, eVar2.f24336g, eVar2.f24337h));
        }

        private void j(com.google.android.exoplayer2.offline.e eVar, @Nullable Exception exc) {
            com.google.android.exoplayer2.offline.e eVar2 = new com.google.android.exoplayer2.offline.e(eVar.f24330a, exc == null ? 3 : 4, eVar.f24332c, System.currentTimeMillis(), eVar.f24334e, eVar.f24335f, exc == null ? 0 : 1, eVar.f24337h);
            this.f24412f.remove(g(eVar2.f24330a.id));
            try {
                this.f24409c.h(eVar2);
            } catch (IOException e4) {
                com.google.android.exoplayer2.util.w.e(r.J, "Failed to update index.", e4);
            }
            this.f24411e.obtainMessage(2, new b(eVar2, false, new ArrayList(this.f24412f), exc)).sendToTarget();
        }

        private void k(com.google.android.exoplayer2.offline.e eVar) {
            if (eVar.f24331b == 7) {
                int i4 = eVar.f24335f;
                n(eVar, i4 == 0 ? 0 : 1, i4);
                B();
                return;
            }
            this.f24412f.remove(g(eVar.f24330a.id));
            try {
                this.f24409c.b(eVar.f24330a.id);
            } catch (IOException unused) {
                com.google.android.exoplayer2.util.w.d(r.J, "Failed to remove from database");
            }
            this.f24411e.obtainMessage(2, new b(eVar, true, new ArrayList(this.f24412f), null)).sendToTarget();
        }

        private void l(e eVar) {
            String str = eVar.f24419a.id;
            this.f24413g.remove(str);
            boolean z9 = eVar.f24422d;
            if (!z9) {
                int i4 = this.f24418l - 1;
                this.f24418l = i4;
                if (i4 == 0) {
                    removeMessages(11);
                }
            }
            if (eVar.f24425g) {
                B();
                return;
            }
            Exception exc = eVar.f24426h;
            if (exc != null) {
                String valueOf = String.valueOf(eVar.f24419a);
                StringBuilder sb = new StringBuilder(valueOf.length() + 20);
                sb.append("Task failed: ");
                sb.append(valueOf);
                sb.append(", ");
                sb.append(z9);
                com.google.android.exoplayer2.util.w.e(r.J, sb.toString(), exc);
            }
            com.google.android.exoplayer2.offline.e eVar2 = (com.google.android.exoplayer2.offline.e) com.google.android.exoplayer2.util.a.g(f(str, false));
            int i10 = eVar2.f24331b;
            if (i10 == 2) {
                com.google.android.exoplayer2.util.a.i(!z9);
                j(eVar2, exc);
            } else if (i10 != 5 && i10 != 7) {
                throw new IllegalStateException();
            } else {
                com.google.android.exoplayer2.util.a.i(z9);
                k(eVar2);
            }
            B();
        }

        private com.google.android.exoplayer2.offline.e m(com.google.android.exoplayer2.offline.e eVar) {
            int i4 = eVar.f24331b;
            com.google.android.exoplayer2.util.a.i((i4 == 3 || i4 == 4) ? false : true);
            int g4 = g(eVar.f24330a.id);
            if (g4 == -1) {
                this.f24412f.add(eVar);
                Collections.sort(this.f24412f, s.f24428a);
            } else {
                boolean z9 = eVar.f24332c != this.f24412f.get(g4).f24332c;
                this.f24412f.set(g4, eVar);
                if (z9) {
                    Collections.sort(this.f24412f, s.f24428a);
                }
            }
            try {
                this.f24409c.h(eVar);
            } catch (IOException e4) {
                com.google.android.exoplayer2.util.w.e(r.J, "Failed to update index.", e4);
            }
            this.f24411e.obtainMessage(2, new b(eVar, false, new ArrayList(this.f24412f), null)).sendToTarget();
            return eVar;
        }

        private com.google.android.exoplayer2.offline.e n(com.google.android.exoplayer2.offline.e eVar, int i4, int i10) {
            com.google.android.exoplayer2.util.a.i((i4 == 3 || i4 == 4) ? false : true);
            return m(e(eVar, i4, i10));
        }

        private void o() {
            for (e eVar : this.f24413g.values()) {
                eVar.f(true);
            }
            try {
                this.f24409c.f();
            } catch (IOException e4) {
                com.google.android.exoplayer2.util.w.e(r.J, "Failed to update index.", e4);
            }
            this.f24412f.clear();
            this.f24408b.quit();
            synchronized (this) {
                this.f24407a = true;
                notifyAll();
            }
        }

        private void p() {
            ArrayList arrayList = new ArrayList();
            try {
                g d4 = this.f24409c.d(3, 4);
                while (d4.moveToNext()) {
                    arrayList.add(d4.N());
                }
                d4.close();
            } catch (IOException unused) {
                com.google.android.exoplayer2.util.w.d(r.J, "Failed to load downloads.");
            }
            for (int i4 = 0; i4 < this.f24412f.size(); i4++) {
                ArrayList<com.google.android.exoplayer2.offline.e> arrayList2 = this.f24412f;
                arrayList2.set(i4, e(arrayList2.get(i4), 5, 0));
            }
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                this.f24412f.add(e((com.google.android.exoplayer2.offline.e) arrayList.get(i10), 5, 0));
            }
            Collections.sort(this.f24412f, s.f24428a);
            try {
                this.f24409c.e();
            } catch (IOException e4) {
                com.google.android.exoplayer2.util.w.e(r.J, "Failed to update index.", e4);
            }
            ArrayList arrayList3 = new ArrayList(this.f24412f);
            for (int i11 = 0; i11 < this.f24412f.size(); i11++) {
                this.f24411e.obtainMessage(2, new b(this.f24412f.get(i11), false, arrayList3, null)).sendToTarget();
            }
            B();
        }

        private void q(String str) {
            com.google.android.exoplayer2.offline.e f10 = f(str, true);
            if (f10 == null) {
                String valueOf = String.valueOf(str);
                com.google.android.exoplayer2.util.w.d(r.J, valueOf.length() != 0 ? "Failed to remove nonexistent download: ".concat(valueOf) : new String("Failed to remove nonexistent download: "));
                return;
            }
            n(f10, 5, 0);
            B();
        }

        private void r(boolean z9) {
            this.f24415i = z9;
            B();
        }

        private void s(int i4) {
            this.f24416j = i4;
            B();
        }

        private void t(int i4) {
            this.f24417k = i4;
        }

        private void u(int i4) {
            this.f24414h = i4;
            B();
        }

        private void v(com.google.android.exoplayer2.offline.e eVar, int i4) {
            if (i4 == 0) {
                if (eVar.f24331b == 1) {
                    n(eVar, 0, 0);
                }
            } else if (i4 != eVar.f24335f) {
                int i10 = eVar.f24331b;
                m(new com.google.android.exoplayer2.offline.e(eVar.f24330a, (i10 == 0 || i10 == 2) ? 1 : 1, eVar.f24332c, System.currentTimeMillis(), eVar.f24334e, i4, 0, eVar.f24337h));
            }
        }

        private void w(@Nullable String str, int i4) {
            if (str == null) {
                for (int i10 = 0; i10 < this.f24412f.size(); i10++) {
                    v(this.f24412f.get(i10), i4);
                }
                try {
                    this.f24409c.c(i4);
                } catch (IOException e4) {
                    com.google.android.exoplayer2.util.w.e(r.J, "Failed to set manual stop reason", e4);
                }
            } else {
                com.google.android.exoplayer2.offline.e f10 = f(str, false);
                if (f10 != null) {
                    v(f10, i4);
                } else {
                    try {
                        this.f24409c.a(str, i4);
                    } catch (IOException e10) {
                        com.google.android.exoplayer2.util.w.e(r.J, str.length() != 0 ? "Failed to set manual stop reason: ".concat(str) : new String("Failed to set manual stop reason: "), e10);
                    }
                }
            }
            B();
        }

        private void x(e eVar, com.google.android.exoplayer2.offline.e eVar2, int i4) {
            com.google.android.exoplayer2.util.a.i(!eVar.f24422d);
            if (!c() || i4 >= this.f24416j) {
                n(eVar2, 0, 0);
                eVar.f(false);
            }
        }

        @Nullable
        @CheckResult
        private e y(@Nullable e eVar, com.google.android.exoplayer2.offline.e eVar2) {
            if (eVar != null) {
                com.google.android.exoplayer2.util.a.i(!eVar.f24422d);
                eVar.f(false);
                return eVar;
            } else if (!c() || this.f24418l >= this.f24416j) {
                return null;
            } else {
                com.google.android.exoplayer2.offline.e n9 = n(eVar2, 2, 0);
                e eVar3 = new e(n9.f24330a, this.f24410d.a(n9.f24330a), n9.f24337h, false, this.f24417k, this);
                this.f24413g.put(n9.f24330a.id, eVar3);
                int i4 = this.f24418l;
                this.f24418l = i4 + 1;
                if (i4 == 0) {
                    sendEmptyMessageDelayed(11, 5000L);
                }
                eVar3.start();
                return eVar3;
            }
        }

        private void z(@Nullable e eVar, com.google.android.exoplayer2.offline.e eVar2) {
            if (eVar != null) {
                if (eVar.f24422d) {
                    return;
                }
                eVar.f(false);
                return;
            }
            e eVar3 = new e(eVar2.f24330a, this.f24410d.a(eVar2.f24330a), eVar2.f24337h, true, this.f24417k, this);
            this.f24413g.put(eVar2.f24330a.id, eVar3);
            eVar3.start();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i4 = 0;
            switch (message.what) {
                case 0:
                    h(message.arg1);
                    i4 = 1;
                    break;
                case 1:
                    r(message.arg1 != 0);
                    i4 = 1;
                    break;
                case 2:
                    u(message.arg1);
                    i4 = 1;
                    break;
                case 3:
                    w((String) message.obj, message.arg1);
                    i4 = 1;
                    break;
                case 4:
                    s(message.arg1);
                    i4 = 1;
                    break;
                case 5:
                    t(message.arg1);
                    i4 = 1;
                    break;
                case 6:
                    b((DownloadRequest) message.obj, message.arg1);
                    i4 = 1;
                    break;
                case 7:
                    q((String) message.obj);
                    i4 = 1;
                    break;
                case 8:
                    p();
                    i4 = 1;
                    break;
                case 9:
                    l((e) message.obj);
                    break;
                case 10:
                    i((e) message.obj, z0.t1(message.arg1, message.arg2));
                    return;
                case 11:
                    C();
                    return;
                case 12:
                    o();
                    return;
                default:
                    throw new IllegalStateException();
            }
            this.f24411e.obtainMessage(1, i4, this.f24413g.size()).sendToTarget();
        }
    }

    /* compiled from: DownloadManager.java */
    /* loaded from: classes2.dex */
    public interface d {
        void a(r rVar, boolean z9);

        void b(r rVar, com.google.android.exoplayer2.offline.e eVar, @Nullable Exception exc);

        void c(r rVar, com.google.android.exoplayer2.offline.e eVar);

        void d(r rVar, boolean z9);

        void e(r rVar, Requirements requirements, int i4);

        void f(r rVar);

        void g(r rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DownloadManager.java */
    /* loaded from: classes2.dex */
    public static class e extends Thread implements y.a {

        /* renamed from: a  reason: collision with root package name */
        private final DownloadRequest f24419a;

        /* renamed from: b  reason: collision with root package name */
        private final y f24420b;

        /* renamed from: c  reason: collision with root package name */
        private final u f24421c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f24422d;

        /* renamed from: e  reason: collision with root package name */
        private final int f24423e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private volatile c f24424f;

        /* renamed from: g  reason: collision with root package name */
        private volatile boolean f24425g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private Exception f24426h;

        /* renamed from: i  reason: collision with root package name */
        private long f24427i;

        private static int g(int i4) {
            return Math.min((i4 - 1) * 1000, 5000);
        }

        @Override // com.google.android.exoplayer2.offline.y.a
        public void a(long j4, long j10, float f10) {
            this.f24421c.f24429a = j10;
            this.f24421c.f24430b = f10;
            if (j4 != this.f24427i) {
                this.f24427i = j4;
                c cVar = this.f24424f;
                if (cVar != null) {
                    cVar.obtainMessage(10, (int) (j4 >> 32), (int) j4, this).sendToTarget();
                }
            }
        }

        public void f(boolean z9) {
            if (z9) {
                this.f24424f = null;
            }
            if (this.f24425g) {
                return;
            }
            this.f24425g = true;
            this.f24420b.cancel();
            interrupt();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                if (this.f24422d) {
                    this.f24420b.remove();
                } else {
                    long j4 = -1;
                    int i4 = 0;
                    while (!this.f24425g) {
                        try {
                            this.f24420b.a(this);
                            break;
                        } catch (IOException e4) {
                            if (!this.f24425g) {
                                long j10 = this.f24421c.f24429a;
                                if (j10 != j4) {
                                    j4 = j10;
                                    i4 = 0;
                                }
                                i4++;
                                if (i4 <= this.f24423e) {
                                    Thread.sleep(g(i4));
                                } else {
                                    throw e4;
                                }
                            }
                        }
                    }
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (Exception e10) {
                this.f24426h = e10;
            }
            c cVar = this.f24424f;
            if (cVar != null) {
                cVar.obtainMessage(9, this).sendToTarget();
            }
        }

        private e(DownloadRequest downloadRequest, y yVar, u uVar, boolean z9, int i4, c cVar) {
            this.f24419a = downloadRequest;
            this.f24420b = yVar;
            this.f24421c = uVar;
            this.f24422d = z9;
            this.f24423e = i4;
            this.f24424f = cVar;
            this.f24427i = -1L;
        }
    }

    @Deprecated
    public r(Context context, com.google.android.exoplayer2.database.a aVar, Cache cache, m.a aVar2) {
        this(context, aVar, cache, aVar2, androidx.window.layout.d.f657a);
    }

    private void D(boolean z9) {
        if (this.f24395j == z9) {
            return;
        }
        this.f24395j = z9;
        this.f24392g++;
        this.f24389d.obtainMessage(1, z9 ? 1 : 0, 0).sendToTarget();
        boolean I2 = I();
        Iterator<d> it = this.f24391f.iterator();
        while (it.hasNext()) {
            it.next().d(this, z9);
        }
        if (I2) {
            s();
        }
    }

    private boolean I() {
        boolean z9;
        if (!this.f24395j && this.f24398m != 0) {
            for (int i4 = 0; i4 < this.f24400o.size(); i4++) {
                if (this.f24400o.get(i4).f24331b == 0) {
                    z9 = true;
                    break;
                }
            }
        }
        z9 = false;
        boolean z10 = this.f24399n != z9;
        this.f24399n = z9;
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n(Message message) {
        int i4 = message.what;
        if (i4 == 0) {
            u((List) message.obj);
        } else if (i4 == 1) {
            v(message.arg1, message.arg2);
        } else if (i4 == 2) {
            t((b) message.obj);
        } else {
            throw new IllegalStateException();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.google.android.exoplayer2.offline.e r(com.google.android.exoplayer2.offline.e eVar, DownloadRequest downloadRequest, int i4, long j4) {
        int i10 = eVar.f24331b;
        return new com.google.android.exoplayer2.offline.e(eVar.f24330a.copyWithMergedRequest(downloadRequest), (i10 == 5 || i10 == 7) ? 7 : i4 != 0 ? 1 : 0, (i10 == 5 || eVar.c()) ? j4 : eVar.f24332c, j4, -1L, i4, 0);
    }

    private void s() {
        Iterator<d> it = this.f24391f.iterator();
        while (it.hasNext()) {
            it.next().a(this, this.f24399n);
        }
    }

    private void t(b bVar) {
        this.f24400o = Collections.unmodifiableList(bVar.f24404c);
        com.google.android.exoplayer2.offline.e eVar = bVar.f24402a;
        boolean I2 = I();
        if (bVar.f24403b) {
            Iterator<d> it = this.f24391f.iterator();
            while (it.hasNext()) {
                it.next().c(this, eVar);
            }
        } else {
            Iterator<d> it2 = this.f24391f.iterator();
            while (it2.hasNext()) {
                it2.next().b(this, eVar, bVar.f24405d);
            }
        }
        if (I2) {
            s();
        }
    }

    private void u(List<com.google.android.exoplayer2.offline.e> list) {
        this.f24394i = true;
        this.f24400o = Collections.unmodifiableList(list);
        boolean I2 = I();
        Iterator<d> it = this.f24391f.iterator();
        while (it.hasNext()) {
            it.next().g(this);
        }
        if (I2) {
            s();
        }
    }

    private void v(int i4, int i10) {
        this.f24392g -= i4;
        this.f24393h = i10;
        if (o()) {
            Iterator<d> it = this.f24391f.iterator();
            while (it.hasNext()) {
                it.next().f(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(com.google.android.exoplayer2.scheduler.b bVar, int i4) {
        Requirements f10 = bVar.f();
        if (this.f24398m != i4) {
            this.f24398m = i4;
            this.f24392g++;
            this.f24389d.obtainMessage(2, i4, 0).sendToTarget();
        }
        boolean I2 = I();
        Iterator<d> it = this.f24391f.iterator();
        while (it.hasNext()) {
            it.next().e(this, f10, i4);
        }
        if (I2) {
            s();
        }
    }

    public void A(String str) {
        this.f24392g++;
        this.f24389d.obtainMessage(7, str).sendToTarget();
    }

    public void B(d dVar) {
        this.f24391f.remove(dVar);
    }

    public void C() {
        D(false);
    }

    public void E(int i4) {
        com.google.android.exoplayer2.util.a.a(i4 > 0);
        if (this.f24396k == i4) {
            return;
        }
        this.f24396k = i4;
        this.f24392g++;
        this.f24389d.obtainMessage(4, i4, 0).sendToTarget();
    }

    public void F(int i4) {
        com.google.android.exoplayer2.util.a.a(i4 >= 0);
        if (this.f24397l == i4) {
            return;
        }
        this.f24397l = i4;
        this.f24392g++;
        this.f24389d.obtainMessage(5, i4, 0).sendToTarget();
    }

    public void G(Requirements requirements) {
        if (requirements.equals(this.f24401p.f())) {
            return;
        }
        this.f24401p.j();
        com.google.android.exoplayer2.scheduler.b bVar = new com.google.android.exoplayer2.scheduler.b(this.f24386a, this.f24390e, requirements);
        this.f24401p = bVar;
        w(this.f24401p, bVar.i());
    }

    public void H(@Nullable String str, int i4) {
        this.f24392g++;
        this.f24389d.obtainMessage(3, i4, 0, str).sendToTarget();
    }

    public void c(DownloadRequest downloadRequest) {
        d(downloadRequest, 0);
    }

    public void d(DownloadRequest downloadRequest, int i4) {
        this.f24392g++;
        this.f24389d.obtainMessage(6, i4, 0, downloadRequest).sendToTarget();
    }

    public void e(d dVar) {
        com.google.android.exoplayer2.util.a.g(dVar);
        this.f24391f.add(dVar);
    }

    public Looper f() {
        return this.f24388c.getLooper();
    }

    public List<com.google.android.exoplayer2.offline.e> g() {
        return this.f24400o;
    }

    public o h() {
        return this.f24387b;
    }

    public boolean i() {
        return this.f24395j;
    }

    public int j() {
        return this.f24396k;
    }

    public int k() {
        return this.f24397l;
    }

    public int l() {
        return this.f24398m;
    }

    public Requirements m() {
        return this.f24401p.f();
    }

    public boolean o() {
        return this.f24393h == 0 && this.f24392g == 0;
    }

    public boolean p() {
        return this.f24394i;
    }

    public boolean q() {
        return this.f24399n;
    }

    public void x() {
        D(true);
    }

    public void y() {
        synchronized (this.f24389d) {
            c cVar = this.f24389d;
            if (cVar.f24407a) {
                return;
            }
            cVar.sendEmptyMessage(12);
            boolean z9 = false;
            while (true) {
                c cVar2 = this.f24389d;
                if (cVar2.f24407a) {
                    break;
                }
                try {
                    cVar2.wait();
                } catch (InterruptedException unused) {
                    z9 = true;
                }
            }
            if (z9) {
                Thread.currentThread().interrupt();
            }
            this.f24388c.removeCallbacksAndMessages(null);
            this.f24400o = Collections.emptyList();
            this.f24392g = 0;
            this.f24393h = 0;
            this.f24394i = false;
            this.f24398m = 0;
            this.f24399n = false;
        }
    }

    public void z() {
        this.f24392g++;
        this.f24389d.obtainMessage(8).sendToTarget();
    }

    public r(Context context, com.google.android.exoplayer2.database.a aVar, Cache cache, m.a aVar2, Executor executor) {
        this(context, new com.google.android.exoplayer2.offline.c(aVar), new com.google.android.exoplayer2.offline.d(new b.d().k(cache).q(aVar2), executor));
    }

    public r(Context context, f0 f0Var, z zVar) {
        this.f24386a = context.getApplicationContext();
        this.f24387b = f0Var;
        this.f24396k = 3;
        this.f24397l = 5;
        this.f24395j = true;
        this.f24400o = Collections.emptyList();
        this.f24391f = new CopyOnWriteArraySet<>();
        Handler C2 = z0.C(new Handler.Callback() { // from class: com.google.android.exoplayer2.offline.p
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean n9;
                n9 = r.this.n(message);
                return n9;
            }
        });
        this.f24388c = C2;
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:DownloadManager");
        handlerThread.start();
        c cVar = new c(handlerThread, f0Var, zVar, C2, this.f24396k, this.f24397l, this.f24395j);
        this.f24389d = cVar;
        b.c cVar2 = new b.c() { // from class: com.google.android.exoplayer2.offline.q
            @Override // com.google.android.exoplayer2.scheduler.b.c
            public final void a(com.google.android.exoplayer2.scheduler.b bVar, int i4) {
                r.this.w(bVar, i4);
            }
        };
        this.f24390e = cVar2;
        com.google.android.exoplayer2.scheduler.b bVar = new com.google.android.exoplayer2.scheduler.b(context, cVar2, f24378s);
        this.f24401p = bVar;
        int i4 = bVar.i();
        this.f24398m = i4;
        this.f24392g = 1;
        cVar.obtainMessage(0, i4, 0).sendToTarget();
    }
}
