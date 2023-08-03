package com.google.android.exoplayer2.offline;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.SparseIntArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.e2;
import com.google.android.exoplayer2.g2;
import com.google.android.exoplayer2.i2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.offline.DownloadHelper;
import com.google.android.exoplayer2.offline.DownloadRequest;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.w;
import com.google.android.exoplayer2.source.z;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.g;
import com.google.android.exoplayer2.trackselection.i;
import com.google.android.exoplayer2.upstream.e;
import com.google.android.exoplayer2.upstream.m;
import com.google.android.exoplayer2.upstream.p0;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes2.dex */
public final class DownloadHelper {

    /* renamed from: o  reason: collision with root package name */
    public static final DefaultTrackSelector.Parameters f24232o;
    @Deprecated

    /* renamed from: p  reason: collision with root package name */
    public static final DefaultTrackSelector.Parameters f24233p;
    @Deprecated

    /* renamed from: q  reason: collision with root package name */
    public static final DefaultTrackSelector.Parameters f24234q;

    /* renamed from: a  reason: collision with root package name */
    private final b1.g f24235a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.source.z f24236b;

    /* renamed from: c  reason: collision with root package name */
    private final DefaultTrackSelector f24237c;

    /* renamed from: d  reason: collision with root package name */
    private final g2[] f24238d;

    /* renamed from: e  reason: collision with root package name */
    private final SparseIntArray f24239e;

    /* renamed from: f  reason: collision with root package name */
    private final Handler f24240f;

    /* renamed from: g  reason: collision with root package name */
    private final s2.d f24241g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f24242h;

    /* renamed from: i  reason: collision with root package name */
    private c f24243i;

    /* renamed from: j  reason: collision with root package name */
    private f f24244j;

    /* renamed from: k  reason: collision with root package name */
    private TrackGroupArray[] f24245k;

    /* renamed from: l  reason: collision with root package name */
    private i.a[] f24246l;

    /* renamed from: m  reason: collision with root package name */
    private List<com.google.android.exoplayer2.trackselection.g>[][] f24247m;

    /* renamed from: n  reason: collision with root package name */
    private List<com.google.android.exoplayer2.trackselection.g>[][] f24248n;

    /* loaded from: classes2.dex */
    public static class LiveContentUnsupportedException extends IOException {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements com.google.android.exoplayer2.video.z {
        a() {
        }

        @Override // com.google.android.exoplayer2.video.z
        public /* synthetic */ void F(String str, long j4, long j10) {
            com.google.android.exoplayer2.video.o.d(this, str, j4, j10);
        }

        @Override // com.google.android.exoplayer2.video.z
        public /* synthetic */ void P(Format format) {
            com.google.android.exoplayer2.video.o.i(this, format);
        }

        @Override // com.google.android.exoplayer2.video.z
        public /* synthetic */ void Q(Format format, com.google.android.exoplayer2.decoder.e eVar) {
            com.google.android.exoplayer2.video.o.j(this, format, eVar);
        }

        @Override // com.google.android.exoplayer2.video.z
        public /* synthetic */ void S(Exception exc) {
            com.google.android.exoplayer2.video.o.c(this, exc);
        }

        @Override // com.google.android.exoplayer2.video.z
        public /* synthetic */ void T(com.google.android.exoplayer2.decoder.d dVar) {
            com.google.android.exoplayer2.video.o.f(this, dVar);
        }

        @Override // com.google.android.exoplayer2.video.z
        public /* synthetic */ void Z(int i4, long j4) {
            com.google.android.exoplayer2.video.o.a(this, i4, j4);
        }

        @Override // com.google.android.exoplayer2.video.z
        public /* synthetic */ void b(com.google.android.exoplayer2.video.b0 b0Var) {
            com.google.android.exoplayer2.video.o.k(this, b0Var);
        }

        @Override // com.google.android.exoplayer2.video.z
        public /* synthetic */ void d0(Object obj, long j4) {
            com.google.android.exoplayer2.video.o.b(this, obj, j4);
        }

        @Override // com.google.android.exoplayer2.video.z
        public /* synthetic */ void f0(com.google.android.exoplayer2.decoder.d dVar) {
            com.google.android.exoplayer2.video.o.g(this, dVar);
        }

        @Override // com.google.android.exoplayer2.video.z
        public /* synthetic */ void o0(long j4, int i4) {
            com.google.android.exoplayer2.video.o.h(this, j4, i4);
        }

        @Override // com.google.android.exoplayer2.video.z
        public /* synthetic */ void x(String str) {
            com.google.android.exoplayer2.video.o.e(this, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements com.google.android.exoplayer2.audio.u {
        b() {
        }

        @Override // com.google.android.exoplayer2.audio.u
        public /* synthetic */ void L(String str) {
            com.google.android.exoplayer2.audio.j.c(this, str);
        }

        @Override // com.google.android.exoplayer2.audio.u
        public /* synthetic */ void M(String str, long j4, long j10) {
            com.google.android.exoplayer2.audio.j.b(this, str, j4, j10);
        }

        @Override // com.google.android.exoplayer2.audio.u
        public /* synthetic */ void R(long j4) {
            com.google.android.exoplayer2.audio.j.h(this, j4);
        }

        @Override // com.google.android.exoplayer2.audio.u
        public /* synthetic */ void V(com.google.android.exoplayer2.decoder.d dVar) {
            com.google.android.exoplayer2.audio.j.d(this, dVar);
        }

        @Override // com.google.android.exoplayer2.audio.u
        public /* synthetic */ void a(boolean z9) {
            com.google.android.exoplayer2.audio.j.k(this, z9);
        }

        @Override // com.google.android.exoplayer2.audio.u
        public /* synthetic */ void b0(Format format, com.google.android.exoplayer2.decoder.e eVar) {
            com.google.android.exoplayer2.audio.j.g(this, format, eVar);
        }

        @Override // com.google.android.exoplayer2.audio.u
        public /* synthetic */ void d(Exception exc) {
            com.google.android.exoplayer2.audio.j.i(this, exc);
        }

        @Override // com.google.android.exoplayer2.audio.u
        public /* synthetic */ void h0(Exception exc) {
            com.google.android.exoplayer2.audio.j.a(this, exc);
        }

        @Override // com.google.android.exoplayer2.audio.u
        public /* synthetic */ void i0(Format format) {
            com.google.android.exoplayer2.audio.j.f(this, format);
        }

        @Override // com.google.android.exoplayer2.audio.u
        public /* synthetic */ void m0(int i4, long j4, long j10) {
            com.google.android.exoplayer2.audio.j.j(this, i4, j4, j10);
        }

        @Override // com.google.android.exoplayer2.audio.u
        public /* synthetic */ void y(com.google.android.exoplayer2.decoder.d dVar) {
            com.google.android.exoplayer2.audio.j.e(this, dVar);
        }
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a(DownloadHelper downloadHelper);

        void b(DownloadHelper downloadHelper, IOException iOException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class d extends com.google.android.exoplayer2.trackselection.c {

        /* loaded from: classes2.dex */
        private static final class a implements g.b {
            private a() {
            }

            @Override // com.google.android.exoplayer2.trackselection.g.b
            public com.google.android.exoplayer2.trackselection.g[] a(g.a[] aVarArr, com.google.android.exoplayer2.upstream.e eVar, z.a aVar, s2 s2Var) {
                com.google.android.exoplayer2.trackselection.g[] gVarArr = new com.google.android.exoplayer2.trackselection.g[aVarArr.length];
                for (int i4 = 0; i4 < aVarArr.length; i4++) {
                    gVarArr[i4] = aVarArr[i4] == null ? null : new d(aVarArr[i4].f26034a, aVarArr[i4].f26035b);
                }
                return gVarArr;
            }

            /* synthetic */ a(a aVar) {
                this();
            }
        }

        public d(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
        }

        @Override // com.google.android.exoplayer2.trackselection.g
        public int a() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.trackselection.g
        @Nullable
        public Object i() {
            return null;
        }

        @Override // com.google.android.exoplayer2.trackselection.g
        public void q(long j4, long j10, long j11, List<? extends com.google.android.exoplayer2.source.chunk.n> list, com.google.android.exoplayer2.source.chunk.o[] oVarArr) {
        }

        @Override // com.google.android.exoplayer2.trackselection.g
        public int t() {
            return 0;
        }
    }

    /* loaded from: classes2.dex */
    private static final class e implements com.google.android.exoplayer2.upstream.e {
        private e() {
        }

        @Override // com.google.android.exoplayer2.upstream.e
        public /* synthetic */ long a() {
            return com.google.android.exoplayer2.upstream.c.a(this);
        }

        @Override // com.google.android.exoplayer2.upstream.e
        @Nullable
        public p0 c() {
            return null;
        }

        @Override // com.google.android.exoplayer2.upstream.e
        public void d(e.a aVar) {
        }

        @Override // com.google.android.exoplayer2.upstream.e
        public long e() {
            return 0L;
        }

        @Override // com.google.android.exoplayer2.upstream.e
        public void g(Handler handler, e.a aVar) {
        }

        /* synthetic */ e(a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class f implements z.b, w.a, Handler.Callback {

        /* renamed from: k  reason: collision with root package name */
        private static final int f24249k = 0;

        /* renamed from: l  reason: collision with root package name */
        private static final int f24250l = 1;

        /* renamed from: m  reason: collision with root package name */
        private static final int f24251m = 2;

        /* renamed from: n  reason: collision with root package name */
        private static final int f24252n = 3;

        /* renamed from: o  reason: collision with root package name */
        private static final int f24253o = 0;

        /* renamed from: p  reason: collision with root package name */
        private static final int f24254p = 1;

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.source.z f24255a;

        /* renamed from: b  reason: collision with root package name */
        private final DownloadHelper f24256b;

        /* renamed from: c  reason: collision with root package name */
        private final com.google.android.exoplayer2.upstream.b f24257c = new com.google.android.exoplayer2.upstream.p(true, 65536);

        /* renamed from: d  reason: collision with root package name */
        private final ArrayList<com.google.android.exoplayer2.source.w> f24258d = new ArrayList<>();

        /* renamed from: e  reason: collision with root package name */
        private final Handler f24259e = z0.C(new Handler.Callback() { // from class: com.google.android.exoplayer2.offline.n
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean c10;
                c10 = DownloadHelper.f.this.c(message);
                return c10;
            }
        });

        /* renamed from: f  reason: collision with root package name */
        private final HandlerThread f24260f;

        /* renamed from: g  reason: collision with root package name */
        private final Handler f24261g;

        /* renamed from: h  reason: collision with root package name */
        public s2 f24262h;

        /* renamed from: i  reason: collision with root package name */
        public com.google.android.exoplayer2.source.w[] f24263i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f24264j;

        public f(com.google.android.exoplayer2.source.z zVar, DownloadHelper downloadHelper) {
            this.f24255a = zVar;
            this.f24256b = downloadHelper;
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DownloadHelper");
            this.f24260f = handlerThread;
            handlerThread.start();
            Handler y9 = z0.y(handlerThread.getLooper(), this);
            this.f24261g = y9;
            y9.sendEmptyMessage(0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean c(Message message) {
            if (this.f24264j) {
                return false;
            }
            int i4 = message.what;
            if (i4 == 0) {
                this.f24256b.V();
                return true;
            } else if (i4 != 1) {
                return false;
            } else {
                e();
                this.f24256b.U((IOException) z0.k(message.obj));
                return true;
            }
        }

        @Override // com.google.android.exoplayer2.source.z.b
        public void a(com.google.android.exoplayer2.source.z zVar, s2 s2Var) {
            com.google.android.exoplayer2.source.w[] wVarArr;
            if (this.f24262h != null) {
                return;
            }
            if (s2Var.r(0, new s2.d()).j()) {
                this.f24259e.obtainMessage(1, new LiveContentUnsupportedException()).sendToTarget();
                return;
            }
            this.f24262h = s2Var;
            this.f24263i = new com.google.android.exoplayer2.source.w[s2Var.m()];
            int i4 = 0;
            while (true) {
                wVarArr = this.f24263i;
                if (i4 >= wVarArr.length) {
                    break;
                }
                com.google.android.exoplayer2.source.w a10 = this.f24255a.a(new z.a(s2Var.q(i4)), this.f24257c, 0L);
                this.f24263i[i4] = a10;
                this.f24258d.add(a10);
                i4++;
            }
            for (com.google.android.exoplayer2.source.w wVar : wVarArr) {
                wVar.n(this, 0L);
            }
        }

        @Override // com.google.android.exoplayer2.source.y0.a
        /* renamed from: d */
        public void f(com.google.android.exoplayer2.source.w wVar) {
            if (this.f24258d.contains(wVar)) {
                this.f24261g.obtainMessage(2, wVar).sendToTarget();
            }
        }

        public void e() {
            if (this.f24264j) {
                return;
            }
            this.f24264j = true;
            this.f24261g.sendEmptyMessage(3);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i4 = message.what;
            if (i4 == 0) {
                this.f24255a.h(this, null);
                this.f24261g.sendEmptyMessage(1);
                return true;
            }
            int i10 = 0;
            if (i4 == 1) {
                try {
                    if (this.f24263i == null) {
                        this.f24255a.n();
                    } else {
                        while (i10 < this.f24258d.size()) {
                            this.f24258d.get(i10).s();
                            i10++;
                        }
                    }
                    this.f24261g.sendEmptyMessageDelayed(1, 100L);
                } catch (IOException e4) {
                    this.f24259e.obtainMessage(1, e4).sendToTarget();
                }
                return true;
            } else if (i4 == 2) {
                com.google.android.exoplayer2.source.w wVar = (com.google.android.exoplayer2.source.w) message.obj;
                if (this.f24258d.contains(wVar)) {
                    wVar.e(0L);
                }
                return true;
            } else if (i4 != 3) {
                return false;
            } else {
                com.google.android.exoplayer2.source.w[] wVarArr = this.f24263i;
                if (wVarArr != null) {
                    int length = wVarArr.length;
                    while (i10 < length) {
                        this.f24255a.g(wVarArr[i10]);
                        i10++;
                    }
                }
                this.f24255a.b(this);
                this.f24261g.removeCallbacksAndMessages(null);
                this.f24260f.quit();
                return true;
            }
        }

        @Override // com.google.android.exoplayer2.source.w.a
        public void i(com.google.android.exoplayer2.source.w wVar) {
            this.f24258d.remove(wVar);
            if (this.f24258d.isEmpty()) {
                this.f24261g.removeMessages(1);
                this.f24259e.sendEmptyMessage(0);
            }
        }
    }

    static {
        DefaultTrackSelector.Parameters a10 = DefaultTrackSelector.Parameters.DEFAULT_WITHOUT_CONTEXT.buildUpon().C(true).a();
        f24232o = a10;
        f24233p = a10;
        f24234q = a10;
    }

    public DownloadHelper(b1 b1Var, @Nullable com.google.android.exoplayer2.source.z zVar, DefaultTrackSelector.Parameters parameters, g2[] g2VarArr) {
        this.f24235a = (b1.g) com.google.android.exoplayer2.util.a.g(b1Var.f21439b);
        this.f24236b = zVar;
        DefaultTrackSelector defaultTrackSelector = new DefaultTrackSelector(parameters, new d.a(null));
        this.f24237c = defaultTrackSelector;
        this.f24238d = g2VarArr;
        this.f24239e = new SparseIntArray();
        defaultTrackSelector.b(j.f24367a, new e(null));
        this.f24240f = z0.B();
        this.f24241g = new s2.d();
    }

    @Deprecated
    public static DownloadHelper A(Context context, Uri uri, @Nullable String str) {
        return v(context, new b1.c().F(uri).j(str).a());
    }

    @Deprecated
    public static DownloadHelper B(Context context, Uri uri, m.a aVar, i2 i2Var) {
        return D(uri, aVar, i2Var, null, E(context));
    }

    @Deprecated
    public static DownloadHelper C(Uri uri, m.a aVar, i2 i2Var) {
        return D(uri, aVar, i2Var, null, f24232o);
    }

    @Deprecated
    public static DownloadHelper D(Uri uri, m.a aVar, i2 i2Var, @Nullable com.google.android.exoplayer2.drm.u uVar, DefaultTrackSelector.Parameters parameters) {
        return y(new b1.c().F(uri).B(com.google.android.exoplayer2.util.a0.f27454l0).a(), parameters, i2Var, aVar, uVar);
    }

    public static DefaultTrackSelector.Parameters E(Context context) {
        return DefaultTrackSelector.Parameters.getDefaults(context).buildUpon().C(true).a();
    }

    public static g2[] K(i2 i2Var) {
        e2[] a10 = i2Var.a(z0.B(), new a(), new b(), i.f24366a, h.f24365a);
        g2[] g2VarArr = new g2[a10.length];
        for (int i4 = 0; i4 < a10.length; i4++) {
            g2VarArr[i4] = a10[i4].n();
        }
        return g2VarArr;
    }

    private static boolean N(b1.g gVar) {
        return z0.z0(gVar.f21502a, gVar.f21503b) == 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void O(List list) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void P(Metadata metadata) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void Q() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R(IOException iOException) {
        ((c) com.google.android.exoplayer2.util.a.g(this.f24243i)).b(this, iOException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S() {
        ((c) com.google.android.exoplayer2.util.a.g(this.f24243i)).a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T(c cVar) {
        cVar.a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U(final IOException iOException) {
        ((Handler) com.google.android.exoplayer2.util.a.g(this.f24240f)).post(new Runnable() { // from class: com.google.android.exoplayer2.offline.m
            @Override // java.lang.Runnable
            public final void run() {
                DownloadHelper.this.R(iOException);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V() {
        com.google.android.exoplayer2.util.a.g(this.f24244j);
        com.google.android.exoplayer2.util.a.g(this.f24244j.f24263i);
        com.google.android.exoplayer2.util.a.g(this.f24244j.f24262h);
        int length = this.f24244j.f24263i.length;
        int length2 = this.f24238d.length;
        this.f24247m = (List[][]) Array.newInstance(List.class, length, length2);
        this.f24248n = (List[][]) Array.newInstance(List.class, length, length2);
        for (int i4 = 0; i4 < length; i4++) {
            for (int i10 = 0; i10 < length2; i10++) {
                this.f24247m[i4][i10] = new ArrayList();
                this.f24248n[i4][i10] = Collections.unmodifiableList(this.f24247m[i4][i10]);
            }
        }
        this.f24245k = new TrackGroupArray[length];
        this.f24246l = new i.a[length];
        for (int i11 = 0; i11 < length; i11++) {
            this.f24245k[i11] = this.f24244j.f24263i[i11].u();
            this.f24237c.d(Z(i11).f26065d);
            this.f24246l[i11] = (i.a) com.google.android.exoplayer2.util.a.g(this.f24237c.g());
        }
        a0();
        ((Handler) com.google.android.exoplayer2.util.a.g(this.f24240f)).post(new Runnable() { // from class: com.google.android.exoplayer2.offline.k
            @Override // java.lang.Runnable
            public final void run() {
                DownloadHelper.this.S();
            }
        });
    }

    @RequiresNonNull({"trackGroupArrays", "trackSelectionsByPeriodAndRenderer", "mediaPreparer", "mediaPreparer.timeline"})
    private com.google.android.exoplayer2.trackselection.p Z(int i4) {
        boolean z9;
        try {
            com.google.android.exoplayer2.trackselection.p e4 = this.f24237c.e(this.f24238d, this.f24245k[i4], new z.a(this.f24244j.f24262h.q(i4)), this.f24244j.f24262h);
            for (int i10 = 0; i10 < e4.f26062a; i10++) {
                com.google.android.exoplayer2.trackselection.g gVar = e4.f26064c[i10];
                if (gVar != null) {
                    List<com.google.android.exoplayer2.trackselection.g> list = this.f24247m[i4][i10];
                    int i11 = 0;
                    while (true) {
                        if (i11 >= list.size()) {
                            z9 = false;
                            break;
                        }
                        com.google.android.exoplayer2.trackselection.g gVar2 = list.get(i11);
                        if (gVar2.l() == gVar.l()) {
                            this.f24239e.clear();
                            for (int i12 = 0; i12 < gVar2.length(); i12++) {
                                this.f24239e.put(gVar2.g(i12), 0);
                            }
                            for (int i13 = 0; i13 < gVar.length(); i13++) {
                                this.f24239e.put(gVar.g(i13), 0);
                            }
                            int[] iArr = new int[this.f24239e.size()];
                            for (int i14 = 0; i14 < this.f24239e.size(); i14++) {
                                iArr[i14] = this.f24239e.keyAt(i14);
                            }
                            list.set(i11, new d(gVar2.l(), iArr));
                            z9 = true;
                        } else {
                            i11++;
                        }
                    }
                    if (!z9) {
                        list.add(gVar);
                    }
                }
            }
            return e4;
        } catch (ExoPlaybackException e10) {
            throw new UnsupportedOperationException(e10);
        }
    }

    @RequiresNonNull({"trackGroupArrays", "mappedTrackInfos", "trackSelectionsByPeriodAndRenderer", "immutableTrackSelectionsByPeriodAndRenderer", "mediaPreparer", "mediaPreparer.timeline", "mediaPreparer.mediaPeriods"})
    private void a0() {
        this.f24242h = true;
    }

    @EnsuresNonNull({"trackGroupArrays", "mappedTrackInfos", "trackSelectionsByPeriodAndRenderer", "immutableTrackSelectionsByPeriodAndRenderer", "mediaPreparer", "mediaPreparer.timeline", "mediaPreparer.mediaPeriods"})
    private void m() {
        com.google.android.exoplayer2.util.a.i(this.f24242h);
    }

    public static com.google.android.exoplayer2.source.z o(DownloadRequest downloadRequest, m.a aVar) {
        return p(downloadRequest, aVar, null);
    }

    public static com.google.android.exoplayer2.source.z p(DownloadRequest downloadRequest, m.a aVar, @Nullable com.google.android.exoplayer2.drm.u uVar) {
        return q(downloadRequest.toMediaItem(), aVar, uVar);
    }

    private static com.google.android.exoplayer2.source.z q(b1 b1Var, m.a aVar, @Nullable com.google.android.exoplayer2.drm.u uVar) {
        return new com.google.android.exoplayer2.source.k(aVar, com.google.android.exoplayer2.extractor.q.f22946a).i(uVar).c(b1Var);
    }

    @Deprecated
    public static DownloadHelper r(Context context, Uri uri, m.a aVar, i2 i2Var) {
        return s(uri, aVar, i2Var, null, E(context));
    }

    @Deprecated
    public static DownloadHelper s(Uri uri, m.a aVar, i2 i2Var, @Nullable com.google.android.exoplayer2.drm.u uVar, DefaultTrackSelector.Parameters parameters) {
        return y(new b1.c().F(uri).B(com.google.android.exoplayer2.util.a0.f27450j0).a(), parameters, i2Var, aVar, uVar);
    }

    @Deprecated
    public static DownloadHelper t(Context context, Uri uri, m.a aVar, i2 i2Var) {
        return u(uri, aVar, i2Var, null, E(context));
    }

    @Deprecated
    public static DownloadHelper u(Uri uri, m.a aVar, i2 i2Var, @Nullable com.google.android.exoplayer2.drm.u uVar, DefaultTrackSelector.Parameters parameters) {
        return y(new b1.c().F(uri).B(com.google.android.exoplayer2.util.a0.f27452k0).a(), parameters, i2Var, aVar, uVar);
    }

    public static DownloadHelper v(Context context, b1 b1Var) {
        com.google.android.exoplayer2.util.a.a(N((b1.g) com.google.android.exoplayer2.util.a.g(b1Var.f21439b)));
        return y(b1Var, E(context), null, null, null);
    }

    public static DownloadHelper w(Context context, b1 b1Var, @Nullable i2 i2Var, @Nullable m.a aVar) {
        return y(b1Var, E(context), i2Var, aVar, null);
    }

    public static DownloadHelper x(b1 b1Var, DefaultTrackSelector.Parameters parameters, @Nullable i2 i2Var, @Nullable m.a aVar) {
        return y(b1Var, parameters, i2Var, aVar, null);
    }

    public static DownloadHelper y(b1 b1Var, DefaultTrackSelector.Parameters parameters, @Nullable i2 i2Var, @Nullable m.a aVar, @Nullable com.google.android.exoplayer2.drm.u uVar) {
        boolean N = N((b1.g) com.google.android.exoplayer2.util.a.g(b1Var.f21439b));
        com.google.android.exoplayer2.util.a.a(N || aVar != null);
        return new DownloadHelper(b1Var, N ? null : q(b1Var, (m.a) z0.k(aVar), uVar), parameters, i2Var != null ? K(i2Var) : new g2[0]);
    }

    @Deprecated
    public static DownloadHelper z(Context context, Uri uri) {
        return v(context, new b1.c().F(uri).a());
    }

    public DownloadRequest F(String str, @Nullable byte[] bArr) {
        DownloadRequest.b e4 = new DownloadRequest.b(str, this.f24235a.f21502a).e(this.f24235a.f21503b);
        b1.e eVar = this.f24235a.f21504c;
        DownloadRequest.b c10 = e4.d(eVar != null ? eVar.a() : null).b(this.f24235a.f21507f).c(bArr);
        if (this.f24236b == null) {
            return c10.a();
        }
        m();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int length = this.f24247m.length;
        for (int i4 = 0; i4 < length; i4++) {
            arrayList2.clear();
            int length2 = this.f24247m[i4].length;
            for (int i10 = 0; i10 < length2; i10++) {
                arrayList2.addAll(this.f24247m[i4][i10]);
            }
            arrayList.addAll(this.f24244j.f24263i[i4].j(arrayList2));
        }
        return c10.f(arrayList).a();
    }

    public DownloadRequest G(@Nullable byte[] bArr) {
        return F(this.f24235a.f21502a.toString(), bArr);
    }

    @Nullable
    public Object H() {
        if (this.f24236b == null) {
            return null;
        }
        m();
        if (this.f24244j.f24262h.u() > 0) {
            return this.f24244j.f24262h.r(0, this.f24241g).f24576d;
        }
        return null;
    }

    public i.a I(int i4) {
        m();
        return this.f24246l[i4];
    }

    public int J() {
        if (this.f24236b == null) {
            return 0;
        }
        m();
        return this.f24245k.length;
    }

    public TrackGroupArray L(int i4) {
        m();
        return this.f24245k[i4];
    }

    public List<com.google.android.exoplayer2.trackselection.g> M(int i4, int i10) {
        m();
        return this.f24248n[i4][i10];
    }

    public void W(final c cVar) {
        com.google.android.exoplayer2.util.a.i(this.f24243i == null);
        this.f24243i = cVar;
        com.google.android.exoplayer2.source.z zVar = this.f24236b;
        if (zVar != null) {
            this.f24244j = new f(zVar, this);
        } else {
            this.f24240f.post(new Runnable() { // from class: com.google.android.exoplayer2.offline.l
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadHelper.this.T(cVar);
                }
            });
        }
    }

    public void X() {
        f fVar = this.f24244j;
        if (fVar != null) {
            fVar.e();
        }
    }

    public void Y(int i4, DefaultTrackSelector.Parameters parameters) {
        n(i4);
        k(i4, parameters);
    }

    public void i(String... strArr) {
        m();
        for (int i4 = 0; i4 < this.f24246l.length; i4++) {
            DefaultTrackSelector.d buildUpon = f24232o.buildUpon();
            i.a aVar = this.f24246l[i4];
            int c10 = aVar.c();
            for (int i10 = 0; i10 < c10; i10++) {
                if (aVar.f(i10) != 1) {
                    buildUpon.Z(i10, true);
                }
            }
            for (String str : strArr) {
                buildUpon.c(str);
                k(i4, buildUpon.a());
            }
        }
    }

    public void j(boolean z9, String... strArr) {
        m();
        for (int i4 = 0; i4 < this.f24246l.length; i4++) {
            DefaultTrackSelector.d buildUpon = f24232o.buildUpon();
            i.a aVar = this.f24246l[i4];
            int c10 = aVar.c();
            for (int i10 = 0; i10 < c10; i10++) {
                if (aVar.f(i10) != 3) {
                    buildUpon.Z(i10, true);
                }
            }
            buildUpon.k(z9);
            for (String str : strArr) {
                buildUpon.f(str);
                k(i4, buildUpon.a());
            }
        }
    }

    public void k(int i4, DefaultTrackSelector.Parameters parameters) {
        m();
        this.f24237c.M(parameters);
        Z(i4);
    }

    public void l(int i4, int i10, DefaultTrackSelector.Parameters parameters, List<DefaultTrackSelector.SelectionOverride> list) {
        m();
        DefaultTrackSelector.d buildUpon = parameters.buildUpon();
        int i11 = 0;
        while (i11 < this.f24246l[i4].c()) {
            buildUpon.Z(i11, i11 != i10);
            i11++;
        }
        if (list.isEmpty()) {
            k(i4, buildUpon.a());
            return;
        }
        TrackGroupArray g4 = this.f24246l[i4].g(i10);
        for (int i12 = 0; i12 < list.size(); i12++) {
            buildUpon.b0(i10, g4, list.get(i12));
            k(i4, buildUpon.a());
        }
    }

    public void n(int i4) {
        m();
        for (int i10 = 0; i10 < this.f24238d.length; i10++) {
            this.f24247m[i4][i10].clear();
        }
    }
}
