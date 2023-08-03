package com.google.android.exoplayer2.ui;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.media.app.NotificationCompat;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.f1;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.t1;
import com.google.android.exoplayer2.u1;
import com.google.android.exoplayer2.ui.q;
import com.google.android.exoplayer2.v1;
import com.google.android.exoplayer2.w1;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: PlayerNotificationManager.java */
/* loaded from: classes2.dex */
public class n {
    public static final String N = "com.google.android.exoplayer.play";
    public static final String O = "com.google.android.exoplayer.pause";
    public static final String P = "com.google.android.exoplayer.prev";
    public static final String Q = "com.google.android.exoplayer.next";
    public static final String R = "com.google.android.exoplayer.ffwd";
    public static final String S = "com.google.android.exoplayer.rewind";
    public static final String T = "com.google.android.exoplayer.stop";
    public static final String U = "INSTANCE_ID";
    private static final String V = "com.google.android.exoplayer.dismiss";
    private static final int W = 0;
    private static final int X = 1;
    private static int Y;
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private int E;
    private boolean F;
    private int G;
    private int H;
    @DrawableRes
    private int I;
    private int J;
    private int K;
    private boolean L;
    @Nullable
    private String M;

    /* renamed from: a  reason: collision with root package name */
    private final Context f26383a;

    /* renamed from: b  reason: collision with root package name */
    private final String f26384b;

    /* renamed from: c  reason: collision with root package name */
    private final int f26385c;

    /* renamed from: d  reason: collision with root package name */
    private final e f26386d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final g f26387e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final d f26388f;

    /* renamed from: g  reason: collision with root package name */
    private final Handler f26389g;

    /* renamed from: h  reason: collision with root package name */
    private final NotificationManagerCompat f26390h;

    /* renamed from: i  reason: collision with root package name */
    private final IntentFilter f26391i;

    /* renamed from: j  reason: collision with root package name */
    private final v1.f f26392j;

    /* renamed from: k  reason: collision with root package name */
    private final f f26393k;

    /* renamed from: l  reason: collision with root package name */
    private final Map<String, NotificationCompat.Action> f26394l;

    /* renamed from: m  reason: collision with root package name */
    private final Map<String, NotificationCompat.Action> f26395m;

    /* renamed from: n  reason: collision with root package name */
    private final PendingIntent f26396n;

    /* renamed from: o  reason: collision with root package name */
    private final int f26397o;

    /* renamed from: p  reason: collision with root package name */
    private final s2.d f26398p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private NotificationCompat.Builder f26399q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private List<NotificationCompat.Action> f26400r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private v1 f26401s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private u1 f26402t;

    /* renamed from: u  reason: collision with root package name */
    private com.google.android.exoplayer2.j f26403u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f26404v;

    /* renamed from: w  reason: collision with root package name */
    private int f26405w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private MediaSessionCompat.Token f26406x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f26407y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f26408z;

    /* compiled from: PlayerNotificationManager.java */
    /* loaded from: classes2.dex */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f26409a;

        public void a(Bitmap bitmap) {
            if (bitmap != null) {
                n.this.y(bitmap, this.f26409a);
            }
        }

        private b(int i4) {
            this.f26409a = i4;
        }
    }

    /* compiled from: PlayerNotificationManager.java */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final Context f26411a;

        /* renamed from: b  reason: collision with root package name */
        private final int f26412b;

        /* renamed from: c  reason: collision with root package name */
        private final String f26413c;

        /* renamed from: d  reason: collision with root package name */
        private final e f26414d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private g f26415e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private d f26416f;

        /* renamed from: g  reason: collision with root package name */
        private int f26417g;

        /* renamed from: h  reason: collision with root package name */
        private int f26418h;

        /* renamed from: i  reason: collision with root package name */
        private int f26419i;

        /* renamed from: j  reason: collision with root package name */
        private int f26420j;

        /* renamed from: k  reason: collision with root package name */
        private int f26421k;

        /* renamed from: l  reason: collision with root package name */
        private int f26422l;

        /* renamed from: m  reason: collision with root package name */
        private int f26423m;

        /* renamed from: n  reason: collision with root package name */
        private int f26424n;

        /* renamed from: o  reason: collision with root package name */
        private int f26425o;

        /* renamed from: p  reason: collision with root package name */
        private int f26426p;

        /* renamed from: q  reason: collision with root package name */
        private int f26427q;
        @Nullable

        /* renamed from: r  reason: collision with root package name */
        private String f26428r;

        public c(Context context, int i4, String str, e eVar) {
            com.google.android.exoplayer2.util.a.a(i4 > 0);
            this.f26411a = context;
            this.f26412b = i4;
            this.f26413c = str;
            this.f26414d = eVar;
            this.f26419i = 2;
            this.f26420j = q.e.f26569c0;
            this.f26422l = q.e.Z;
            this.f26423m = q.e.Y;
            this.f26424n = q.e.f26571d0;
            this.f26421k = q.e.f26567b0;
            this.f26425o = q.e.W;
            this.f26426p = q.e.f26565a0;
            this.f26427q = q.e.X;
        }

        public n a() {
            int i4 = this.f26417g;
            if (i4 != 0) {
                com.google.android.exoplayer2.util.f0.a(this.f26411a, this.f26413c, i4, this.f26418h, this.f26419i);
            }
            return new n(this.f26411a, this.f26413c, this.f26412b, this.f26414d, this.f26415e, this.f26416f, this.f26420j, this.f26422l, this.f26423m, this.f26424n, this.f26421k, this.f26425o, this.f26426p, this.f26427q, this.f26428r);
        }

        public c b(int i4) {
            this.f26418h = i4;
            return this;
        }

        public c c(int i4) {
            this.f26419i = i4;
            return this;
        }

        public c d(int i4) {
            this.f26417g = i4;
            return this;
        }

        public c e(d dVar) {
            this.f26416f = dVar;
            return this;
        }

        public c f(int i4) {
            this.f26425o = i4;
            return this;
        }

        public c g(String str) {
            this.f26428r = str;
            return this;
        }

        public c h(int i4) {
            this.f26427q = i4;
            return this;
        }

        public c i(g gVar) {
            this.f26415e = gVar;
            return this;
        }

        public c j(int i4) {
            this.f26423m = i4;
            return this;
        }

        public c k(int i4) {
            this.f26422l = i4;
            return this;
        }

        public c l(int i4) {
            this.f26426p = i4;
            return this;
        }

        public c m(int i4) {
            this.f26421k = i4;
            return this;
        }

        public c n(int i4) {
            this.f26420j = i4;
            return this;
        }

        public c o(int i4) {
            this.f26424n = i4;
            return this;
        }
    }

    /* compiled from: PlayerNotificationManager.java */
    /* loaded from: classes2.dex */
    public interface d {
        List<String> a(v1 v1Var);

        Map<String, NotificationCompat.Action> b(Context context, int i4);

        void c(v1 v1Var, String str, Intent intent);
    }

    /* compiled from: PlayerNotificationManager.java */
    /* loaded from: classes2.dex */
    public interface e {
        @Nullable
        PendingIntent a(v1 v1Var);

        CharSequence b(v1 v1Var);

        @Nullable
        CharSequence c(v1 v1Var);

        @Nullable
        Bitmap d(v1 v1Var, b bVar);

        @Nullable
        CharSequence e(v1 v1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PlayerNotificationManager.java */
    /* loaded from: classes2.dex */
    public class f extends BroadcastReceiver {
        private f() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            v1 v1Var = n.this.f26401s;
            if (v1Var != null && n.this.f26404v && intent.getIntExtra(n.U, n.this.f26397o) == n.this.f26397o) {
                String action = intent.getAction();
                if (n.N.equals(action)) {
                    if (v1Var.c() == 1) {
                        if (n.this.f26402t != null) {
                            n.this.f26402t.a();
                        } else {
                            n.this.f26403u.i(v1Var);
                        }
                    } else if (v1Var.c() == 4) {
                        n.this.f26403u.c(v1Var, v1Var.j0(), com.google.android.exoplayer2.i.f23649b);
                    }
                    n.this.f26403u.m(v1Var, true);
                } else if (n.O.equals(action)) {
                    n.this.f26403u.m(v1Var, false);
                } else if (n.P.equals(action)) {
                    n.this.f26403u.j(v1Var);
                } else if (n.S.equals(action)) {
                    n.this.f26403u.b(v1Var);
                } else if (n.R.equals(action)) {
                    n.this.f26403u.g(v1Var);
                } else if (n.Q.equals(action)) {
                    n.this.f26403u.k(v1Var);
                } else if (n.T.equals(action)) {
                    n.this.f26403u.f(v1Var, true);
                } else if (n.V.equals(action)) {
                    n.this.Y(true);
                } else if (action == null || n.this.f26388f == null || !n.this.f26395m.containsKey(action)) {
                } else {
                    n.this.f26388f.c(v1Var, action, intent);
                }
            }
        }
    }

    /* compiled from: PlayerNotificationManager.java */
    /* loaded from: classes2.dex */
    public interface g {
        void a(int i4, Notification notification, boolean z9);

        void b(int i4, boolean z9);
    }

    /* compiled from: PlayerNotificationManager.java */
    /* loaded from: classes2.dex */
    private class h implements v1.f {
        private h() {
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void B(b1 b1Var, int i4) {
            w1.f(this, b1Var, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void C(boolean z9, int i4) {
            w1.h(this, z9, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void E(boolean z9) {
            w1.d(this, z9);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void G(boolean z9) {
            w1.e(this, z9);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void U(int i4) {
            w1.n(this, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void X() {
            w1.q(this);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void a0(boolean z9, int i4) {
            w1.m(this, z9, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void c(t1 t1Var) {
            w1.i(this, t1Var);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void e(v1.l lVar, v1.l lVar2, int i4) {
            w1.o(this, lVar, lVar2, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void e0(s2 s2Var, Object obj, int i4) {
            w1.u(this, s2Var, obj, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void f(int i4) {
            w1.k(this, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void g(List list) {
            w1.s(this, list);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void h(v1.c cVar) {
            w1.a(this, cVar);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void i(int i4) {
            w1.p(this, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void j(s2 s2Var, int i4) {
            w1.t(this, s2Var, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void l(int i4) {
            w1.j(this, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void m(f1 f1Var) {
            w1.g(this, f1Var);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void n(boolean z9) {
            w1.r(this, z9);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void s(TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.m mVar) {
            w1.v(this, trackGroupArray, mVar);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void u(ExoPlaybackException exoPlaybackException) {
            w1.l(this, exoPlaybackException);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void v(boolean z9) {
            w1.c(this, z9);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public void z(v1 v1Var, v1.g gVar) {
            if (gVar.b(5, 6, 8, 0, 13, 12, 9, 10)) {
                n.this.x();
            }
        }
    }

    /* compiled from: PlayerNotificationManager.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface i {
    }

    /* compiled from: PlayerNotificationManager.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface j {
    }

    private static void F(NotificationCompat.Builder builder, @Nullable Bitmap bitmap) {
        builder.setLargeIcon(bitmap);
    }

    private boolean W(v1 v1Var) {
        return (v1Var.c() == 4 || v1Var.c() == 1 || !v1Var.Q0()) ? false : true;
    }

    private void X(v1 v1Var, @Nullable Bitmap bitmap) {
        boolean u9 = u(v1Var);
        NotificationCompat.Builder m9 = m(v1Var, this.f26399q, u9, bitmap);
        this.f26399q = m9;
        boolean z9 = false;
        if (m9 == null) {
            Y(false);
            return;
        }
        Notification build = m9.build();
        this.f26390h.notify(this.f26385c, build);
        if (!this.f26404v) {
            this.f26383a.registerReceiver(this.f26393k, this.f26391i);
        }
        g gVar = this.f26387e;
        if (gVar != null) {
            gVar.a(this.f26385c, build, (u9 || !this.f26404v) ? true : true);
        }
        this.f26404v = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y(boolean z9) {
        if (this.f26404v) {
            this.f26404v = false;
            this.f26389g.removeMessages(0);
            this.f26390h.cancel(this.f26385c);
            this.f26383a.unregisterReceiver(this.f26393k);
            g gVar = this.f26387e;
            if (gVar != null) {
                gVar.b(this.f26385c, z9);
            }
        }
    }

    private static PendingIntent l(String str, Context context, int i4) {
        Intent intent = new Intent(str).setPackage(context.getPackageName());
        intent.putExtra(U, i4);
        return PendingIntent.getBroadcast(context, i4, intent, com.google.android.exoplayer2.util.z0.f27743a >= 23 ? 201326592 : 134217728);
    }

    private static Map<String, NotificationCompat.Action> n(Context context, int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        HashMap hashMap = new HashMap();
        hashMap.put(N, new NotificationCompat.Action(i10, context.getString(q.k.f26738l), l(N, context, i4)));
        hashMap.put(O, new NotificationCompat.Action(i11, context.getString(q.k.f26737k), l(O, context, i4)));
        hashMap.put(T, new NotificationCompat.Action(i12, context.getString(q.k.f26751y), l(T, context, i4)));
        hashMap.put(S, new NotificationCompat.Action(i13, context.getString(q.k.f26745s), l(S, context, i4)));
        hashMap.put(R, new NotificationCompat.Action(i14, context.getString(q.k.f26730d), l(R, context, i4)));
        hashMap.put(P, new NotificationCompat.Action(i15, context.getString(q.k.f26741o), l(P, context, i4)));
        hashMap.put(Q, new NotificationCompat.Action(i16, context.getString(q.k.f26734h), l(Q, context, i4)));
        return hashMap;
    }

    @Deprecated
    public static n o(Context context, String str, @StringRes int i4, @StringRes int i10, int i11, e eVar) {
        com.google.android.exoplayer2.util.f0.a(context, str, i4, i10, 2);
        return new n(context, str, i11, eVar);
    }

    @Deprecated
    public static n p(Context context, String str, @StringRes int i4, @StringRes int i10, int i11, e eVar, @Nullable g gVar) {
        com.google.android.exoplayer2.util.f0.a(context, str, i4, i10, 2);
        return new n(context, str, i11, eVar, gVar);
    }

    @Deprecated
    public static n q(Context context, String str, @StringRes int i4, int i10, e eVar) {
        return o(context, str, i4, 0, i10, eVar);
    }

    @Deprecated
    public static n r(Context context, String str, @StringRes int i4, int i10, e eVar, @Nullable g gVar) {
        return p(context, str, i4, 0, i10, eVar, gVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean v(Message message) {
        int i4 = message.what;
        if (i4 == 0) {
            v1 v1Var = this.f26401s;
            if (v1Var != null) {
                X(v1Var, null);
            }
        } else if (i4 != 1) {
            return false;
        } else {
            v1 v1Var2 = this.f26401s;
            if (v1Var2 != null && this.f26404v && this.f26405w == message.arg1) {
                X(v1Var2, (Bitmap) message.obj);
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        if (this.f26389g.hasMessages(0)) {
            return;
        }
        this.f26389g.sendEmptyMessage(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(Bitmap bitmap, int i4) {
        this.f26389g.obtainMessage(1, i4, -1, bitmap).sendToTarget();
    }

    public final void A(int i4) {
        if (this.H != i4) {
            this.H = i4;
            w();
        }
    }

    public final void B(boolean z9) {
        if (this.F != z9) {
            this.F = z9;
            w();
        }
    }

    public final void C(com.google.android.exoplayer2.j jVar) {
        if (this.f26403u != jVar) {
            this.f26403u = jVar;
            w();
        }
    }

    public final void D(int i4) {
        if (this.G != i4) {
            this.G = i4;
            w();
        }
    }

    @Deprecated
    public final void E(long j4) {
        com.google.android.exoplayer2.j jVar = this.f26403u;
        if (jVar instanceof com.google.android.exoplayer2.k) {
            ((com.google.android.exoplayer2.k) jVar).q(j4);
            w();
        }
    }

    public final void G(MediaSessionCompat.Token token) {
        if (com.google.android.exoplayer2.util.z0.c(this.f26406x, token)) {
            return;
        }
        this.f26406x = token;
        w();
    }

    @Deprecated
    public void H(@Nullable u1 u1Var) {
        this.f26402t = u1Var;
    }

    public final void I(@Nullable v1 v1Var) {
        boolean z9 = true;
        com.google.android.exoplayer2.util.a.i(Looper.myLooper() == Looper.getMainLooper());
        if (v1Var != null && v1Var.B0() != Looper.getMainLooper()) {
            z9 = false;
        }
        com.google.android.exoplayer2.util.a.a(z9);
        v1 v1Var2 = this.f26401s;
        if (v1Var2 == v1Var) {
            return;
        }
        if (v1Var2 != null) {
            v1Var2.g0(this.f26392j);
            if (v1Var == null) {
                Y(false);
            }
        }
        this.f26401s = v1Var;
        if (v1Var != null) {
            v1Var.c1(this.f26392j);
            x();
        }
    }

    public final void J(int i4) {
        if (this.K == i4) {
            return;
        }
        if (i4 != -2 && i4 != -1 && i4 != 0 && i4 != 1 && i4 != 2) {
            throw new IllegalArgumentException();
        }
        this.K = i4;
        w();
    }

    @Deprecated
    public final void K(long j4) {
        com.google.android.exoplayer2.j jVar = this.f26403u;
        if (jVar instanceof com.google.android.exoplayer2.k) {
            ((com.google.android.exoplayer2.k) jVar).r(j4);
            w();
        }
    }

    public final void L(@DrawableRes int i4) {
        if (this.I != i4) {
            this.I = i4;
            w();
        }
    }

    public final void M(boolean z9) {
        if (this.L != z9) {
            this.L = z9;
            w();
        }
    }

    @Deprecated
    public final void N(boolean z9) {
        P(z9);
        S(z9);
    }

    @Deprecated
    public final void O(boolean z9) {
        Q(z9);
        T(z9);
    }

    public void P(boolean z9) {
        if (this.f26408z != z9) {
            this.f26408z = z9;
            w();
        }
    }

    public void Q(boolean z9) {
        if (this.B != z9) {
            this.B = z9;
            w();
        }
    }

    public final void R(boolean z9) {
        if (this.C != z9) {
            this.C = z9;
            w();
        }
    }

    public void S(boolean z9) {
        if (this.f26407y != z9) {
            this.f26407y = z9;
            w();
        }
    }

    public void T(boolean z9) {
        if (this.A != z9) {
            this.A = z9;
            w();
        }
    }

    public final void U(boolean z9) {
        if (this.D == z9) {
            return;
        }
        this.D = z9;
        w();
    }

    public final void V(int i4) {
        if (this.J == i4) {
            return;
        }
        if (i4 != -1 && i4 != 0 && i4 != 1) {
            throw new IllegalStateException();
        }
        this.J = i4;
        w();
    }

    @Nullable
    protected NotificationCompat.Builder m(v1 v1Var, @Nullable NotificationCompat.Builder builder, boolean z9, @Nullable Bitmap bitmap) {
        NotificationCompat.Action action;
        if (v1Var.c() == 1 && v1Var.A0().v()) {
            this.f26400r = null;
            return null;
        }
        List<String> t9 = t(v1Var);
        ArrayList arrayList = new ArrayList(t9.size());
        for (int i4 = 0; i4 < t9.size(); i4++) {
            String str = t9.get(i4);
            if (this.f26394l.containsKey(str)) {
                action = this.f26394l.get(str);
            } else {
                action = this.f26395m.get(str);
            }
            if (action != null) {
                arrayList.add(action);
            }
        }
        if (builder == null || !arrayList.equals(this.f26400r)) {
            builder = new NotificationCompat.Builder(this.f26383a, this.f26384b);
            this.f26400r = arrayList;
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                builder.addAction((NotificationCompat.Action) arrayList.get(i10));
            }
        }
        NotificationCompat.MediaStyle mediaStyle = new NotificationCompat.MediaStyle();
        MediaSessionCompat.Token token = this.f26406x;
        if (token != null) {
            mediaStyle.setMediaSession(token);
        }
        mediaStyle.setShowActionsInCompactView(s(t9, v1Var));
        mediaStyle.setShowCancelButton(!z9);
        mediaStyle.setCancelButtonIntent(this.f26396n);
        builder.setStyle(mediaStyle);
        builder.setDeleteIntent(this.f26396n);
        builder.setBadgeIconType(this.E).setOngoing(z9).setColor(this.H).setColorized(this.F).setSmallIcon(this.I).setVisibility(this.J).setPriority(this.K).setDefaults(this.G);
        if (com.google.android.exoplayer2.util.z0.f27743a >= 21 && this.L && v1Var.isPlaying() && !v1Var.K() && !v1Var.b0() && v1Var.e().f25300a == 1.0f) {
            builder.setWhen(System.currentTimeMillis() - v1Var.o1()).setShowWhen(true).setUsesChronometer(true);
        } else {
            builder.setShowWhen(false).setUsesChronometer(false);
        }
        builder.setContentTitle(this.f26386d.b(v1Var));
        builder.setContentText(this.f26386d.c(v1Var));
        builder.setSubText(this.f26386d.e(v1Var));
        if (bitmap == null) {
            e eVar = this.f26386d;
            int i11 = this.f26405w + 1;
            this.f26405w = i11;
            bitmap = eVar.d(v1Var, new b(i11));
        }
        F(builder, bitmap);
        builder.setContentIntent(this.f26386d.a(v1Var));
        String str2 = this.M;
        if (str2 != null) {
            builder.setGroup(str2);
        }
        builder.setOnlyAlertOnce(true);
        return builder;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected int[] s(java.util.List<java.lang.String> r7, com.google.android.exoplayer2.v1 r8) {
        /*
            r6 = this;
            java.lang.String r0 = "com.google.android.exoplayer.pause"
            int r0 = r7.indexOf(r0)
            java.lang.String r1 = "com.google.android.exoplayer.play"
            int r1 = r7.indexOf(r1)
            boolean r2 = r6.A
            r3 = -1
            if (r2 == 0) goto L18
            java.lang.String r2 = "com.google.android.exoplayer.prev"
            int r2 = r7.indexOf(r2)
            goto L19
        L18:
            r2 = -1
        L19:
            boolean r4 = r6.B
            if (r4 == 0) goto L24
            java.lang.String r4 = "com.google.android.exoplayer.next"
            int r7 = r7.indexOf(r4)
            goto L25
        L24:
            r7 = -1
        L25:
            r4 = 3
            int[] r4 = new int[r4]
            r5 = 0
            if (r2 == r3) goto L2e
            r4[r5] = r2
            r5 = 1
        L2e:
            boolean r8 = r6.W(r8)
            if (r0 == r3) goto L3c
            if (r8 == 0) goto L3c
            int r8 = r5 + 1
            r4[r5] = r0
        L3a:
            r5 = r8
            goto L45
        L3c:
            if (r1 == r3) goto L45
            if (r8 != 0) goto L45
            int r8 = r5 + 1
            r4[r5] = r1
            goto L3a
        L45:
            if (r7 == r3) goto L4c
            int r8 = r5 + 1
            r4[r5] = r7
            r5 = r8
        L4c:
            int[] r7 = java.util.Arrays.copyOf(r4, r5)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.n.s(java.util.List, com.google.android.exoplayer2.v1):int[]");
    }

    protected List<String> t(v1 v1Var) {
        boolean z9;
        boolean z10;
        boolean z11;
        s2 A0 = v1Var.A0();
        if (A0.v() || v1Var.K()) {
            z9 = false;
            z10 = false;
            z11 = false;
        } else {
            boolean t02 = v1Var.t0(4);
            A0.r(v1Var.j0(), this.f26398p);
            boolean z12 = t02 || !this.f26398p.j() || v1Var.t0(6);
            z11 = t02 && this.f26403u.h();
            z10 = t02 && this.f26403u.l();
            z9 = (this.f26398p.j() && this.f26398p.f24581i) || v1Var.t0(5);
            r2 = z12;
        }
        ArrayList arrayList = new ArrayList();
        if (this.f26407y && r2) {
            arrayList.add(P);
        }
        if (z11) {
            arrayList.add(S);
        }
        if (this.C) {
            if (W(v1Var)) {
                arrayList.add(O);
            } else {
                arrayList.add(N);
            }
        }
        if (z10) {
            arrayList.add(R);
        }
        if (this.f26408z && z9) {
            arrayList.add(Q);
        }
        d dVar = this.f26388f;
        if (dVar != null) {
            arrayList.addAll(dVar.a(v1Var));
        }
        if (this.D) {
            arrayList.add(T);
        }
        return arrayList;
    }

    protected boolean u(v1 v1Var) {
        int c10 = v1Var.c();
        return (c10 == 2 || c10 == 3) && v1Var.Q0();
    }

    public void w() {
        if (this.f26404v) {
            x();
        }
    }

    public final void z(int i4) {
        if (this.E == i4) {
            return;
        }
        if (i4 != 0 && i4 != 1 && i4 != 2) {
            throw new IllegalArgumentException();
        }
        this.E = i4;
        w();
    }

    @Deprecated
    public n(Context context, String str, int i4, e eVar) {
        this(context, str, i4, eVar, null, null);
    }

    @Deprecated
    public n(Context context, String str, int i4, e eVar, @Nullable g gVar) {
        this(context, str, i4, eVar, gVar, null);
    }

    @Deprecated
    public n(Context context, String str, int i4, e eVar, @Nullable d dVar) {
        this(context, str, i4, eVar, null, dVar);
    }

    @Deprecated
    public n(Context context, String str, int i4, e eVar, @Nullable g gVar, @Nullable d dVar) {
        this(context, str, i4, eVar, gVar, dVar, q.e.f26569c0, q.e.Z, q.e.Y, q.e.f26571d0, q.e.f26567b0, q.e.W, q.e.f26565a0, q.e.X, null);
    }

    private n(Context context, String str, int i4, e eVar, @Nullable g gVar, @Nullable d dVar, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, @Nullable String str2) {
        Map<String, NotificationCompat.Action> emptyMap;
        Context applicationContext = context.getApplicationContext();
        this.f26383a = applicationContext;
        this.f26384b = str;
        this.f26385c = i4;
        this.f26386d = eVar;
        this.f26387e = gVar;
        this.f26388f = dVar;
        this.I = i10;
        this.M = str2;
        this.f26403u = new com.google.android.exoplayer2.k();
        this.f26398p = new s2.d();
        int i18 = Y;
        Y = i18 + 1;
        this.f26397o = i18;
        this.f26389g = com.google.android.exoplayer2.util.z0.y(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.exoplayer2.ui.m
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean v9;
                v9 = n.this.v(message);
                return v9;
            }
        });
        this.f26390h = NotificationManagerCompat.from(applicationContext);
        this.f26392j = new h();
        this.f26393k = new f();
        this.f26391i = new IntentFilter();
        this.f26407y = true;
        this.f26408z = true;
        this.C = true;
        this.F = true;
        this.L = true;
        this.H = 0;
        this.G = 0;
        this.K = -1;
        this.E = 1;
        this.J = 1;
        Map<String, NotificationCompat.Action> n9 = n(applicationContext, i18, i11, i12, i13, i14, i15, i16, i17);
        this.f26394l = n9;
        for (String str3 : n9.keySet()) {
            this.f26391i.addAction(str3);
        }
        if (dVar != null) {
            emptyMap = dVar.b(applicationContext, this.f26397o);
        } else {
            emptyMap = Collections.emptyMap();
        }
        this.f26395m = emptyMap;
        for (String str4 : emptyMap.keySet()) {
            this.f26391i.addAction(str4);
        }
        this.f26396n = l(V, applicationContext, this.f26397o);
        this.f26391i.addAction(V);
    }
}
