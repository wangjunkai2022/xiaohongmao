package com.google.android.exoplayer2.ext.mediasession;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media.utils.MediaConstants;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.f1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.t1;
import com.google.android.exoplayer2.u0;
import com.google.android.exoplayer2.util.z0;
import com.google.android.exoplayer2.v1;
import com.google.android.exoplayer2.video.b0;
import com.google.android.exoplayer2.w1;
import com.google.android.exoplayer2.x1;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* compiled from: MediaSessionConnector.java */
/* loaded from: classes2.dex */
public final class b {
    private static final int A = 7;
    private static final MediaMetadataCompat B;

    /* renamed from: u  reason: collision with root package name */
    public static final long f21848u = 4194304;

    /* renamed from: v  reason: collision with root package name */
    public static final long f21849v = 6554447;

    /* renamed from: w  reason: collision with root package name */
    public static final long f21850w = 2360143;

    /* renamed from: x  reason: collision with root package name */
    public static final String f21851x = "EXO_SPEED";

    /* renamed from: y  reason: collision with root package name */
    private static final long f21852y = 6554119;

    /* renamed from: z  reason: collision with root package name */
    private static final int f21853z = 3;

    /* renamed from: a  reason: collision with root package name */
    public final MediaSessionCompat f21854a;

    /* renamed from: b  reason: collision with root package name */
    private final Looper f21855b;

    /* renamed from: c  reason: collision with root package name */
    private final d f21856c;

    /* renamed from: d  reason: collision with root package name */
    private final ArrayList<c> f21857d;

    /* renamed from: e  reason: collision with root package name */
    private final ArrayList<c> f21858e;

    /* renamed from: f  reason: collision with root package name */
    private com.google.android.exoplayer2.j f21859f;

    /* renamed from: g  reason: collision with root package name */
    private e[] f21860g;

    /* renamed from: h  reason: collision with root package name */
    private Map<String, e> f21861h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private h f21862i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private v1 f21863j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private com.google.android.exoplayer2.util.k<? super ExoPlaybackException> f21864k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private Pair<Integer, CharSequence> f21865l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private Bundle f21866m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private j f21867n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private l f21868o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private k f21869p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private m f21870q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private InterfaceC0159b f21871r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private g f21872s;

    /* renamed from: t  reason: collision with root package name */
    private long f21873t;

    /* compiled from: MediaSessionConnector.java */
    /* renamed from: com.google.android.exoplayer2.ext.mediasession.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0159b extends c {
        boolean d(v1 v1Var);

        void n(v1 v1Var, boolean z9);
    }

    /* compiled from: MediaSessionConnector.java */
    /* loaded from: classes2.dex */
    public interface c {
        boolean o(v1 v1Var, com.google.android.exoplayer2.j jVar, String str, @Nullable Bundle bundle, @Nullable ResultReceiver resultReceiver);
    }

    /* compiled from: MediaSessionConnector.java */
    /* loaded from: classes2.dex */
    private class d extends MediaSessionCompat.b implements v1.h {

        /* renamed from: f  reason: collision with root package name */
        private int f21874f;

        /* renamed from: g  reason: collision with root package name */
        private int f21875g;

        private d() {
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.audio.i
        public /* synthetic */ void A(com.google.android.exoplayer2.audio.e eVar) {
            x1.a(this, eVar);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void B(b1 b1Var, int i4) {
            x1.j(this, b1Var, i4);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void C(boolean z9, int i4) {
            x1.m(this, z9, i4);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.device.d
        public /* synthetic */ void D(com.google.android.exoplayer2.device.b bVar) {
            x1.e(this, bVar);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void E(boolean z9) {
            x1.i(this, z9);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void F(String str, @Nullable Bundle bundle, @Nullable ResultReceiver resultReceiver) {
            if (b.this.f21863j != null) {
                for (int i4 = 0; i4 < b.this.f21857d.size(); i4++) {
                    if (((c) b.this.f21857d.get(i4)).o(b.this.f21863j, b.this.f21859f, str, bundle, resultReceiver)) {
                        return;
                    }
                }
                for (int i10 = 0; i10 < b.this.f21858e.size() && !((c) b.this.f21858e.get(i10)).o(b.this.f21863j, b.this.f21859f, str, bundle, resultReceiver); i10++) {
                }
            }
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void G(boolean z9) {
            w1.e(this, z9);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void H(String str, @Nullable Bundle bundle) {
            if (b.this.f21863j == null || !b.this.f21861h.containsKey(str)) {
                return;
            }
            ((e) b.this.f21861h.get(str)).a(b.this.f21863j, b.this.f21859f, str, bundle);
            b.this.F();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void I() {
            if (b.this.x(64L)) {
                b.this.f21859f.g(b.this.f21863j);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public boolean J(Intent intent) {
            return (b.this.w() && b.this.f21872s.a(b.this.f21863j, b.this.f21859f, intent)) || super.J(intent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void K() {
            if (b.this.x(2L)) {
                b.this.f21859f.m(b.this.f21863j, false);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void L() {
            if (b.this.x(4L)) {
                if (b.this.f21863j.c() == 1) {
                    if (b.this.f21867n != null) {
                        b.this.f21867n.g(true);
                    } else {
                        b.this.f21859f.i(b.this.f21863j);
                    }
                } else if (b.this.f21863j.c() == 4) {
                    b bVar = b.this;
                    bVar.J(bVar.f21863j, b.this.f21863j.j0(), com.google.android.exoplayer2.i.f23649b);
                }
                b.this.f21859f.m((v1) com.google.android.exoplayer2.util.a.g(b.this.f21863j), true);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void M(String str, @Nullable Bundle bundle) {
            if (b.this.B(1024L)) {
                b.this.f21867n.t(str, true, bundle);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void N(String str, @Nullable Bundle bundle) {
            if (b.this.B(2048L)) {
                b.this.f21867n.c(str, true, bundle);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void O(Uri uri, @Nullable Bundle bundle) {
            if (b.this.B(8192L)) {
                b.this.f21867n.j(uri, true, bundle);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void P() {
            if (b.this.B(16384L)) {
                b.this.f21867n.g(false);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void Q(String str, @Nullable Bundle bundle) {
            if (b.this.B(32768L)) {
                b.this.f21867n.t(str, false, bundle);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void R(String str, @Nullable Bundle bundle) {
            if (b.this.B(65536L)) {
                b.this.f21867n.c(str, false, bundle);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void S(Uri uri, @Nullable Bundle bundle) {
            if (b.this.B(131072L)) {
                b.this.f21867n.j(uri, false, bundle);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void T(MediaDescriptionCompat mediaDescriptionCompat) {
            if (b.this.y()) {
                b.this.f21869p.s(b.this.f21863j, mediaDescriptionCompat);
            }
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void U(int i4) {
            w1.n(this, i4);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void W() {
            if (b.this.x(8L)) {
                b.this.f21859f.b(b.this.f21863j);
            }
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void X() {
            w1.q(this);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void Y(long j4) {
            if (b.this.x(256L)) {
                b bVar = b.this;
                bVar.J(bVar.f21863j, b.this.f21863j.j0(), j4);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void Z(boolean z9) {
            if (b.this.z()) {
                b.this.f21871r.n(b.this.f21863j, z9);
            }
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.audio.i, com.google.android.exoplayer2.audio.u
        public /* synthetic */ void a(boolean z9) {
            x1.v(this, z9);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void a0(boolean z9, int i4) {
            w1.m(this, z9, i4);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.video.n, com.google.android.exoplayer2.video.z
        public /* synthetic */ void b(b0 b0Var) {
            x1.A(this, b0Var);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void b0(float f10) {
            if (!b.this.x(b.f21848u) || f10 <= 0.0f) {
                return;
            }
            b.this.f21859f.a(b.this.f21863j, b.this.f21863j.e().e(f10));
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void c(t1 t1Var) {
            x1.n(this, t1Var);
        }

        @Override // com.google.android.exoplayer2.video.n
        public /* synthetic */ void c0(int i4, int i10, int i11, float f10) {
            com.google.android.exoplayer2.video.m.c(this, i4, i10, i11, f10);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void d0(RatingCompat ratingCompat) {
            if (b.this.A()) {
                b.this.f21870q.f(b.this.f21863j, ratingCompat);
            }
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void e(v1.l lVar, v1.l lVar2, int i4) {
            x1.r(this, lVar, lVar2, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void e0(s2 s2Var, Object obj, int i4) {
            w1.u(this, s2Var, obj, i4);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void f(int i4) {
            x1.p(this, i4);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void f0(RatingCompat ratingCompat, @Nullable Bundle bundle) {
            if (b.this.A()) {
                b.this.f21870q.k(b.this.f21863j, ratingCompat, bundle);
            }
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void g(List list) {
            x1.w(this, list);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void g0(int i4) {
            if (b.this.x(PlaybackStateCompat.ACTION_SET_REPEAT_MODE)) {
                int i10 = 2;
                if (i4 == 1) {
                    i10 = 1;
                } else if (i4 != 2 && i4 != 3) {
                    i10 = 0;
                }
                b.this.f21859f.e(b.this.f21863j, i10);
            }
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void h(v1.c cVar) {
            x1.c(this, cVar);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void h0(int i4) {
            if (b.this.x(PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE)) {
                boolean z9 = true;
                if (i4 != 1 && i4 != 2) {
                    z9 = false;
                }
                b.this.f21859f.d(b.this.f21863j, z9);
            }
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void i(int i4) {
            x1.t(this, i4);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void i0() {
            if (b.this.C(32L)) {
                b.this.f21868o.p(b.this.f21863j, b.this.f21859f);
            }
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void j(s2 s2Var, int i4) {
            x1.y(this, s2Var, i4);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void j0() {
            if (b.this.C(16L)) {
                b.this.f21868o.q(b.this.f21863j, b.this.f21859f);
            }
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.audio.i
        public /* synthetic */ void k(int i4) {
            x1.b(this, i4);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void k0(long j4) {
            if (b.this.C(4096L)) {
                b.this.f21868o.b(b.this.f21863j, b.this.f21859f, j4);
            }
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void l(int i4) {
            x1.o(this, i4);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void l0() {
            if (b.this.x(1L)) {
                b.this.f21859f.f(b.this.f21863j, true);
            }
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void m(f1 f1Var) {
            x1.k(this, f1Var);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void n(boolean z9) {
            x1.u(this, z9);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.metadata.e
        public /* synthetic */ void o(Metadata metadata) {
            x1.l(this, metadata);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.device.d
        public /* synthetic */ void p(int i4, boolean z9) {
            x1.f(this, i4, z9);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.video.n
        public /* synthetic */ void q() {
            x1.s(this);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.text.j
        public /* synthetic */ void r(List list) {
            x1.d(this, list);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void s(TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.m mVar) {
            x1.z(this, trackGroupArray, mVar);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.video.n
        public /* synthetic */ void t(int i4, int i10) {
            x1.x(this, i4, i10);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void u(ExoPlaybackException exoPlaybackException) {
            x1.q(this, exoPlaybackException);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void v(boolean z9) {
            x1.h(this, z9);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.audio.i
        public /* synthetic */ void w(float f10) {
            x1.B(this, f10);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void x(MediaDescriptionCompat mediaDescriptionCompat) {
            if (b.this.y()) {
                b.this.f21869p.i(b.this.f21863j, mediaDescriptionCompat);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void y(MediaDescriptionCompat mediaDescriptionCompat, int i4) {
            if (b.this.y()) {
                b.this.f21869p.m(b.this.f21863j, mediaDescriptionCompat, i4);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0055, code lost:
            if (r6.f21874f == r4) goto L16;
         */
        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void z(com.google.android.exoplayer2.v1 r7, com.google.android.exoplayer2.v1.g r8) {
            /*
                r6 = this;
                r0 = 12
                boolean r0 = r8.a(r0)
                r1 = 0
                r2 = 1
                if (r0 == 0) goto L28
                int r0 = r6.f21874f
                int r3 = r7.j0()
                if (r0 == r3) goto L25
                com.google.android.exoplayer2.ext.mediasession.b r0 = com.google.android.exoplayer2.ext.mediasession.b.this
                com.google.android.exoplayer2.ext.mediasession.b$l r0 = com.google.android.exoplayer2.ext.mediasession.b.l(r0)
                if (r0 == 0) goto L23
                com.google.android.exoplayer2.ext.mediasession.b r0 = com.google.android.exoplayer2.ext.mediasession.b.this
                com.google.android.exoplayer2.ext.mediasession.b$l r0 = com.google.android.exoplayer2.ext.mediasession.b.l(r0)
                r0.a(r7)
            L23:
                r0 = 1
                goto L26
            L25:
                r0 = 0
            L26:
                r3 = 1
                goto L2a
            L28:
                r0 = 0
                r3 = 0
            L2a:
                boolean r4 = r8.a(r1)
                if (r4 == 0) goto L5b
                com.google.android.exoplayer2.s2 r0 = r7.A0()
                int r0 = r0.u()
                int r4 = r7.j0()
                com.google.android.exoplayer2.ext.mediasession.b r5 = com.google.android.exoplayer2.ext.mediasession.b.this
                com.google.android.exoplayer2.ext.mediasession.b$l r5 = com.google.android.exoplayer2.ext.mediasession.b.l(r5)
                if (r5 == 0) goto L4f
                com.google.android.exoplayer2.ext.mediasession.b r3 = com.google.android.exoplayer2.ext.mediasession.b.this
                com.google.android.exoplayer2.ext.mediasession.b$l r3 = com.google.android.exoplayer2.ext.mediasession.b.l(r3)
                r3.l(r7)
            L4d:
                r3 = 1
                goto L58
            L4f:
                int r5 = r6.f21875g
                if (r5 != r0) goto L4d
                int r5 = r6.f21874f
                if (r5 == r4) goto L58
                goto L4d
            L58:
                r6.f21875g = r0
                r0 = 1
            L5b:
                int r7 = r7.j0()
                r6.f21874f = r7
                r7 = 5
                int[] r7 = new int[r7]
                r7 = {x0090: FILL_ARRAY_DATA  , data: [5, 6, 8, 9, 13} // fill-array
                boolean r7 = r8.b(r7)
                if (r7 == 0) goto L6e
                r3 = 1
            L6e:
                int[] r7 = new int[r2]
                r4 = 10
                r7[r1] = r4
                boolean r7 = r8.b(r7)
                if (r7 == 0) goto L80
                com.google.android.exoplayer2.ext.mediasession.b r7 = com.google.android.exoplayer2.ext.mediasession.b.this
                r7.G()
                goto L81
            L80:
                r2 = r3
            L81:
                if (r2 == 0) goto L88
                com.google.android.exoplayer2.ext.mediasession.b r7 = com.google.android.exoplayer2.ext.mediasession.b.this
                r7.F()
            L88:
                if (r0 == 0) goto L8f
                com.google.android.exoplayer2.ext.mediasession.b r7 = com.google.android.exoplayer2.ext.mediasession.b.this
                r7.E()
            L8f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ext.mediasession.b.d.z(com.google.android.exoplayer2.v1, com.google.android.exoplayer2.v1$g):void");
        }
    }

    /* compiled from: MediaSessionConnector.java */
    /* loaded from: classes2.dex */
    public interface e {
        void a(v1 v1Var, com.google.android.exoplayer2.j jVar, String str, @Nullable Bundle bundle);

        @Nullable
        PlaybackStateCompat.CustomAction b(v1 v1Var);
    }

    /* compiled from: MediaSessionConnector.java */
    /* loaded from: classes2.dex */
    public static final class f implements h {

        /* renamed from: a  reason: collision with root package name */
        private final MediaControllerCompat f21877a;

        /* renamed from: b  reason: collision with root package name */
        private final String f21878b;

        public f(MediaControllerCompat mediaControllerCompat, @Nullable String str) {
            this.f21877a = mediaControllerCompat;
            this.f21878b = str == null ? "" : str;
        }

        @Override // com.google.android.exoplayer2.ext.mediasession.b.h
        public MediaMetadataCompat a(v1 v1Var) {
            if (v1Var.A0().v()) {
                return b.B;
            }
            MediaMetadataCompat.b bVar = new MediaMetadataCompat.b();
            if (v1Var.K()) {
                bVar.c(MediaMetadataCompat.METADATA_KEY_ADVERTISEMENT, 1L);
            }
            bVar.c(MediaMetadataCompat.METADATA_KEY_DURATION, (v1Var.b0() || v1Var.getDuration() == com.google.android.exoplayer2.i.f23649b) ? -1L : v1Var.getDuration());
            long activeQueueItemId = this.f21877a.l().getActiveQueueItemId();
            if (activeQueueItemId != -1) {
                List<MediaSessionCompat.QueueItem> m9 = this.f21877a.m();
                int i4 = 0;
                while (true) {
                    if (m9 == null || i4 >= m9.size()) {
                        break;
                    }
                    MediaSessionCompat.QueueItem queueItem = m9.get(i4);
                    if (queueItem.getQueueId() == activeQueueItemId) {
                        MediaDescriptionCompat description = queueItem.getDescription();
                        Bundle extras = description.getExtras();
                        if (extras != null) {
                            for (String str : extras.keySet()) {
                                Object obj = extras.get(str);
                                if (obj instanceof String) {
                                    String valueOf = String.valueOf(this.f21878b);
                                    String valueOf2 = String.valueOf(str);
                                    bVar.e(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), (String) obj);
                                } else if (obj instanceof CharSequence) {
                                    String valueOf3 = String.valueOf(this.f21878b);
                                    String valueOf4 = String.valueOf(str);
                                    bVar.f(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3), (CharSequence) obj);
                                } else if (obj instanceof Long) {
                                    String valueOf5 = String.valueOf(this.f21878b);
                                    String valueOf6 = String.valueOf(str);
                                    bVar.c(valueOf6.length() != 0 ? valueOf5.concat(valueOf6) : new String(valueOf5), ((Long) obj).longValue());
                                } else if (obj instanceof Integer) {
                                    String valueOf7 = String.valueOf(this.f21878b);
                                    String valueOf8 = String.valueOf(str);
                                    bVar.c(valueOf8.length() != 0 ? valueOf7.concat(valueOf8) : new String(valueOf7), ((Integer) obj).intValue());
                                } else if (obj instanceof Bitmap) {
                                    String valueOf9 = String.valueOf(this.f21878b);
                                    String valueOf10 = String.valueOf(str);
                                    bVar.b(valueOf10.length() != 0 ? valueOf9.concat(valueOf10) : new String(valueOf9), (Bitmap) obj);
                                } else if (obj instanceof RatingCompat) {
                                    String valueOf11 = String.valueOf(this.f21878b);
                                    String valueOf12 = String.valueOf(str);
                                    bVar.d(valueOf12.length() != 0 ? valueOf11.concat(valueOf12) : new String(valueOf11), (RatingCompat) obj);
                                }
                            }
                        }
                        CharSequence title = description.getTitle();
                        if (title != null) {
                            String valueOf13 = String.valueOf(title);
                            bVar.e(MediaMetadataCompat.METADATA_KEY_TITLE, valueOf13);
                            bVar.e(MediaMetadataCompat.METADATA_KEY_DISPLAY_TITLE, valueOf13);
                        }
                        CharSequence subtitle = description.getSubtitle();
                        if (subtitle != null) {
                            bVar.e(MediaMetadataCompat.METADATA_KEY_DISPLAY_SUBTITLE, String.valueOf(subtitle));
                        }
                        CharSequence description2 = description.getDescription();
                        if (description2 != null) {
                            bVar.e(MediaMetadataCompat.METADATA_KEY_DISPLAY_DESCRIPTION, String.valueOf(description2));
                        }
                        Bitmap iconBitmap = description.getIconBitmap();
                        if (iconBitmap != null) {
                            bVar.b(MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON, iconBitmap);
                        }
                        Uri iconUri = description.getIconUri();
                        if (iconUri != null) {
                            bVar.e(MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON_URI, String.valueOf(iconUri));
                        }
                        String mediaId = description.getMediaId();
                        if (mediaId != null) {
                            bVar.e(MediaMetadataCompat.METADATA_KEY_MEDIA_ID, mediaId);
                        }
                        Uri mediaUri = description.getMediaUri();
                        if (mediaUri != null) {
                            bVar.e(MediaMetadataCompat.METADATA_KEY_MEDIA_URI, String.valueOf(mediaUri));
                        }
                    } else {
                        i4++;
                    }
                }
            }
            return bVar.a();
        }
    }

    /* compiled from: MediaSessionConnector.java */
    /* loaded from: classes2.dex */
    public interface g {
        boolean a(v1 v1Var, com.google.android.exoplayer2.j jVar, Intent intent);
    }

    /* compiled from: MediaSessionConnector.java */
    /* loaded from: classes2.dex */
    public interface h {
        MediaMetadataCompat a(v1 v1Var);
    }

    /* compiled from: MediaSessionConnector.java */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface i {
    }

    /* compiled from: MediaSessionConnector.java */
    /* loaded from: classes2.dex */
    public interface j extends c {

        /* renamed from: a  reason: collision with root package name */
        public static final long f21879a = 257024;

        void c(String str, boolean z9, @Nullable Bundle bundle);

        void g(boolean z9);

        long h();

        void j(Uri uri, boolean z9, @Nullable Bundle bundle);

        void t(String str, boolean z9, @Nullable Bundle bundle);
    }

    /* compiled from: MediaSessionConnector.java */
    /* loaded from: classes2.dex */
    public interface k extends c {
        void i(v1 v1Var, MediaDescriptionCompat mediaDescriptionCompat);

        void m(v1 v1Var, MediaDescriptionCompat mediaDescriptionCompat, int i4);

        void s(v1 v1Var, MediaDescriptionCompat mediaDescriptionCompat);
    }

    /* compiled from: MediaSessionConnector.java */
    /* loaded from: classes2.dex */
    public interface l extends c {

        /* renamed from: b  reason: collision with root package name */
        public static final long f21880b = 4144;

        void a(v1 v1Var);

        void b(v1 v1Var, com.google.android.exoplayer2.j jVar, long j4);

        long e(@Nullable v1 v1Var);

        void l(v1 v1Var);

        void p(v1 v1Var, com.google.android.exoplayer2.j jVar);

        void q(v1 v1Var, com.google.android.exoplayer2.j jVar);

        long r(v1 v1Var);
    }

    /* compiled from: MediaSessionConnector.java */
    /* loaded from: classes2.dex */
    public interface m extends c {
        void f(v1 v1Var, RatingCompat ratingCompat);

        void k(v1 v1Var, RatingCompat ratingCompat, @Nullable Bundle bundle);
    }

    static {
        u0.a("goog.exo.mediasession");
        B = new MediaMetadataCompat.b().a();
    }

    public b(MediaSessionCompat mediaSessionCompat) {
        this.f21854a = mediaSessionCompat;
        Looper X = z0.X();
        this.f21855b = X;
        d dVar = new d();
        this.f21856c = dVar;
        this.f21857d = new ArrayList<>();
        this.f21858e = new ArrayList<>();
        this.f21859f = new com.google.android.exoplayer2.k();
        this.f21860g = new e[0];
        this.f21861h = Collections.emptyMap();
        this.f21862i = new f(mediaSessionCompat.f(), null);
        this.f21873t = f21850w;
        mediaSessionCompat.u(3);
        mediaSessionCompat.r(dVar, new Handler(X));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @EnsuresNonNullIf(expression = {com.ksyun.media.player.d.d.an, "ratingCallback"}, result = true)
    public boolean A() {
        return (this.f21863j == null || this.f21870q == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @EnsuresNonNullIf(expression = {"playbackPreparer"}, result = true)
    public boolean B(long j4) {
        j jVar = this.f21867n;
        return (jVar == null || (j4 & jVar.h()) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @EnsuresNonNullIf(expression = {com.ksyun.media.player.d.d.an, "queueNavigator"}, result = true)
    public boolean C(long j4) {
        l lVar;
        v1 v1Var = this.f21863j;
        return (v1Var == null || (lVar = this.f21868o) == null || (j4 & lVar.r(v1Var)) == 0) ? false : true;
    }

    private static int D(int i4, boolean z9) {
        return i4 != 2 ? i4 != 3 ? i4 != 4 ? 0 : 1 : z9 ? 3 : 2 : z9 ? 6 : 2;
    }

    private void H(@Nullable c cVar) {
        if (cVar == null || this.f21857d.contains(cVar)) {
            return;
        }
        this.f21857d.add(cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J(v1 v1Var, int i4, long j4) {
        this.f21859f.c(v1Var, i4, j4);
    }

    private void b0(@Nullable c cVar) {
        if (cVar != null) {
            this.f21857d.remove(cVar);
        }
    }

    private long u(v1 v1Var) {
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13 = false;
        if (v1Var.A0().v() || v1Var.K()) {
            z9 = false;
            z10 = false;
            z11 = false;
            z12 = false;
        } else {
            boolean U = v1Var.U();
            z10 = U && this.f21859f.h();
            z11 = U && this.f21859f.l();
            z12 = this.f21870q != null;
            InterfaceC0159b interfaceC0159b = this.f21871r;
            if (interfaceC0159b != null && interfaceC0159b.d(v1Var)) {
                z13 = true;
            }
            boolean z14 = z13;
            z13 = U;
            z9 = z14;
        }
        long j4 = f21852y;
        if (z13) {
            j4 = 6554375;
        }
        if (z11) {
            j4 |= 64;
        }
        if (z10) {
            j4 |= 8;
        }
        long j10 = this.f21873t & j4;
        l lVar = this.f21868o;
        if (lVar != null) {
            j10 |= lVar.r(v1Var) & l.f21880b;
        }
        if (z12) {
            j10 |= 128;
        }
        return z9 ? j10 | 1048576 : j10;
    }

    private long v() {
        j jVar = this.f21867n;
        if (jVar == null) {
            return 0L;
        }
        return jVar.h() & j.f21879a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @EnsuresNonNullIf(expression = {com.ksyun.media.player.d.d.an, "mediaButtonEventHandler"}, result = true)
    public boolean w() {
        return (this.f21863j == null || this.f21872s == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @EnsuresNonNullIf(expression = {com.ksyun.media.player.d.d.an}, result = true)
    public boolean x(long j4) {
        return (this.f21863j == null || (j4 & this.f21873t) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @EnsuresNonNullIf(expression = {com.ksyun.media.player.d.d.an, "queueEditor"}, result = true)
    public boolean y() {
        return (this.f21863j == null || this.f21869p == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @EnsuresNonNullIf(expression = {com.ksyun.media.player.d.d.an, "captionCallback"}, result = true)
    public boolean z() {
        return (this.f21863j == null || this.f21871r == null) ? false : true;
    }

    public final void E() {
        MediaMetadataCompat mediaMetadataCompat;
        v1 v1Var;
        h hVar = this.f21862i;
        if (hVar != null && (v1Var = this.f21863j) != null) {
            mediaMetadataCompat = hVar.a(v1Var);
        } else {
            mediaMetadataCompat = B;
        }
        this.f21854a.w(mediaMetadataCompat);
    }

    public final void F() {
        e[] eVarArr;
        com.google.android.exoplayer2.util.k<? super ExoPlaybackException> kVar;
        PlaybackStateCompat.c cVar = new PlaybackStateCompat.c();
        v1 v1Var = this.f21863j;
        int i4 = 0;
        if (v1Var == null) {
            cVar.d(v()).k(0, 0L, 0.0f, SystemClock.elapsedRealtime());
            this.f21854a.D(0);
            this.f21854a.F(0);
            this.f21854a.x(cVar.c());
            return;
        }
        HashMap hashMap = new HashMap();
        for (e eVar : this.f21860g) {
            PlaybackStateCompat.CustomAction b10 = eVar.b(v1Var);
            if (b10 != null) {
                hashMap.put(b10.getAction(), eVar);
                cVar.a(b10);
            }
        }
        this.f21861h = Collections.unmodifiableMap(hashMap);
        Bundle bundle = new Bundle();
        ExoPlaybackException k02 = v1Var.k0();
        int D = k02 != null || this.f21865l != null ? 7 : D(v1Var.c(), v1Var.Q0());
        Pair<Integer, CharSequence> pair = this.f21865l;
        if (pair != null) {
            cVar.g(((Integer) pair.first).intValue(), (CharSequence) this.f21865l.second);
            Bundle bundle2 = this.f21866m;
            if (bundle2 != null) {
                bundle.putAll(bundle2);
            }
        } else if (k02 != null && (kVar = this.f21864k) != null) {
            Pair<Integer, String> a10 = kVar.a(k02);
            cVar.g(((Integer) a10.first).intValue(), (CharSequence) a10.second);
        }
        l lVar = this.f21868o;
        long e4 = lVar != null ? lVar.e(v1Var) : -1L;
        float f10 = v1Var.e().f25300a;
        bundle.putFloat(f21851x, f10);
        float f11 = v1Var.isPlaying() ? f10 : 0.0f;
        b1 N = v1Var.N();
        if (N != null && !"".equals(N.f21438a)) {
            bundle.putString(MediaConstants.PLAYBACK_STATE_EXTRAS_KEY_MEDIA_ID, N.f21438a);
        }
        cVar.d(v() | u(v1Var)).e(e4).f(v1Var.s1()).k(D, v1Var.getCurrentPosition(), f11, SystemClock.elapsedRealtime()).i(bundle);
        int k10 = v1Var.k();
        MediaSessionCompat mediaSessionCompat = this.f21854a;
        if (k10 == 1) {
            i4 = 1;
        } else if (k10 == 2) {
            i4 = 2;
        }
        mediaSessionCompat.D(i4);
        this.f21854a.F(v1Var.H1() ? 1 : 0);
        this.f21854a.x(cVar.c());
    }

    public final void G() {
        v1 v1Var;
        l lVar = this.f21868o;
        if (lVar == null || (v1Var = this.f21863j) == null) {
            return;
        }
        lVar.l(v1Var);
    }

    public void I(@Nullable c cVar) {
        if (cVar == null || this.f21858e.contains(cVar)) {
            return;
        }
        this.f21858e.add(cVar);
    }

    public void K(@Nullable InterfaceC0159b interfaceC0159b) {
        InterfaceC0159b interfaceC0159b2 = this.f21871r;
        if (interfaceC0159b2 != interfaceC0159b) {
            b0(interfaceC0159b2);
            this.f21871r = interfaceC0159b;
            H(interfaceC0159b);
        }
    }

    public void L(com.google.android.exoplayer2.j jVar) {
        if (this.f21859f != jVar) {
            this.f21859f = jVar;
            F();
        }
    }

    public void M(@Nullable e... eVarArr) {
        if (eVarArr == null) {
            eVarArr = new e[0];
        }
        this.f21860g = eVarArr;
        F();
    }

    public void N(@Nullable CharSequence charSequence) {
        O(charSequence, charSequence == null ? 0 : 1);
    }

    public void O(@Nullable CharSequence charSequence, int i4) {
        P(charSequence, i4, null);
    }

    public void P(@Nullable CharSequence charSequence, int i4, @Nullable Bundle bundle) {
        this.f21865l = charSequence == null ? null : new Pair<>(Integer.valueOf(i4), charSequence);
        if (charSequence == null) {
            bundle = null;
        }
        this.f21866m = bundle;
        F();
    }

    public void Q(long j4) {
        long j10 = j4 & f21849v;
        if (this.f21873t != j10) {
            this.f21873t = j10;
            F();
        }
    }

    public void R(@Nullable com.google.android.exoplayer2.util.k<? super ExoPlaybackException> kVar) {
        if (this.f21864k != kVar) {
            this.f21864k = kVar;
            F();
        }
    }

    @Deprecated
    public void S(int i4) {
        com.google.android.exoplayer2.j jVar = this.f21859f;
        if (jVar instanceof com.google.android.exoplayer2.k) {
            ((com.google.android.exoplayer2.k) jVar).q(i4);
            F();
        }
    }

    public void T(@Nullable g gVar) {
        this.f21872s = gVar;
    }

    public void U(@Nullable h hVar) {
        if (this.f21862i != hVar) {
            this.f21862i = hVar;
            E();
        }
    }

    public void V(@Nullable j jVar) {
        j jVar2 = this.f21867n;
        if (jVar2 != jVar) {
            b0(jVar2);
            this.f21867n = jVar;
            H(jVar);
            F();
        }
    }

    public void W(@Nullable v1 v1Var) {
        com.google.android.exoplayer2.util.a.a(v1Var == null || v1Var.B0() == this.f21855b);
        v1 v1Var2 = this.f21863j;
        if (v1Var2 != null) {
            v1Var2.W(this.f21856c);
        }
        this.f21863j = v1Var;
        if (v1Var != null) {
            v1Var.p1(this.f21856c);
        }
        F();
        E();
    }

    public void X(@Nullable k kVar) {
        k kVar2 = this.f21869p;
        if (kVar2 != kVar) {
            b0(kVar2);
            this.f21869p = kVar;
            H(kVar);
            this.f21854a.u(kVar == null ? 3 : 7);
        }
    }

    public void Y(@Nullable l lVar) {
        l lVar2 = this.f21868o;
        if (lVar2 != lVar) {
            b0(lVar2);
            this.f21868o = lVar;
            H(lVar);
        }
    }

    public void Z(@Nullable m mVar) {
        m mVar2 = this.f21870q;
        if (mVar2 != mVar) {
            b0(mVar2);
            this.f21870q = mVar;
            H(mVar);
        }
    }

    @Deprecated
    public void a0(int i4) {
        com.google.android.exoplayer2.j jVar = this.f21859f;
        if (jVar instanceof com.google.android.exoplayer2.k) {
            ((com.google.android.exoplayer2.k) jVar).r(i4);
            F();
        }
    }

    public void c0(@Nullable c cVar) {
        if (cVar != null) {
            this.f21858e.remove(cVar);
        }
    }
}
