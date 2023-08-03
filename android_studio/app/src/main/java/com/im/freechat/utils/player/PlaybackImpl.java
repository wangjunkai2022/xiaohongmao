package com.im.freechat.utils.player;

import android.content.Context;
import android.net.Uri;
import android.support.v4.media.MediaMetadataCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import b4.b;
import com.facebook.common.callercontext.ContextChain;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.audio.e;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.f1;
import com.google.android.exoplayer2.k2;
import com.google.android.exoplayer2.m;
import com.google.android.exoplayer2.o;
import com.google.android.exoplayer2.q;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.q0;
import com.google.android.exoplayer2.source.z;
import com.google.android.exoplayer2.t1;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.ui.PlayerView;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.b;
import com.google.android.exoplayer2.upstream.p;
import com.google.android.exoplayer2.util.z0;
import com.google.android.exoplayer2.v1;
import com.google.android.exoplayer2.video.b0;
import com.google.android.exoplayer2.w1;
import com.google.android.exoplayer2.x1;
import com.koushikdutta.async.http.cache.ResponseCacheMiddleware;
import com.ksyun.media.player.d.d;
import io.sentry.clientreport.e;
import io.sentry.protocol.t;
import io.sentry.protocol.y;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import p4.a;

/* compiled from: PlaybackImpl.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0017\u0012\u0006\u0010,\u001a\u00020)\u0012\u0006\u0010\\\u001a\u00020[¢\u0006\u0004\b]\u0010^J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\bH\u0002J\b\u0010\n\u001a\u00020\bH\u0016J\b\u0010\u000b\u001a\u00020\bH\u0016J\n\u0010\r\u001a\u0004\u0018\u00010\fH\u0016J\u0018\u0010\u0012\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0016\u0010\u0016\u001a\u00020\b2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0016J\u0010\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0018\u001a\u00020\bH\u0016J\b\u0010\u0019\u001a\u00020\bH\u0016J\u0010\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016J\u0010\u0010\u001f\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J\u0018\u0010\"\u001a\u00020\b2\u0006\u0010!\u001a\u00020 2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J\u0010\u0010$\u001a\u00020\b2\u0006\u0010#\u001a\u00020 H\u0016J\u0010\u0010&\u001a\u00020\b2\u0006\u0010%\u001a\u00020 H\u0016J\b\u0010'\u001a\u00020\bH\u0017J\b\u0010(\u001a\u00020\bH\u0017R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00103\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u000bR3\u0010:\u001a\u001f\u0012\u0013\u0012\u00110 ¢\u0006\f\b5\u0012\b\b6\u0012\u0004\b\b(7\u0012\u0004\u0012\u00020\b\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R?\u0010A\u001a\u001f\u0012\u0013\u0012\u00110 ¢\u0006\f\b5\u0012\b\b6\u0012\u0004\b\b(;\u0012\u0004\u0012\u00020\b\u0018\u0001048\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b<\u00109\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u0018\u0010D\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0016\u0010F\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010\u000bR\u0016\u0010H\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010?R\u0014\u0010L\u001a\u00020I8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010KR\u0014\u0010P\u001a\u00020M8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010OR\u0014\u0010S\u001a\u00020Q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010RR\u0014\u0010V\u001a\u00020\u001d8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bT\u0010UR\u0014\u0010X\u001a\u00020\u001d8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bW\u0010UR\u0014\u0010Y\u001a\u00020\u001a8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bY\u0010Z¨\u0006_"}, d2 = {"Lcom/im/freechat/utils/player/PlaybackImpl;", "Lp4/a;", "Landroidx/lifecycle/LifecycleObserver;", "Lcom/google/android/exoplayer2/v1$h;", "Landroid/net/Uri;", "uri", "Lcom/google/android/exoplayer2/source/z;", "O", "", "P", "L", "I", "Lcom/google/android/exoplayer2/v1;", "H", "Lcom/google/android/exoplayer2/ui/PlayerView;", "playerView", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "K", "", "Landroid/support/v4/media/MediaMetadataCompat;", "list", "M", "F", "d", "pause", "", "reset", y.b.f83920h, "", "position", "seekTo", "", "windowIndex", y.b.f83919g, t.b.f83859d, "l", e.b.f83079a, "U", "onStart", "onStop", "Landroid/content/Context;", "a", "Landroid/content/Context;", "context", "Lcom/google/android/exoplayer2/q;", "b", "Lcom/google/android/exoplayer2/q;", d.an, "c", "Lcom/google/android/exoplayer2/ui/PlayerView;", "lastPlaylistIndex", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "index", "e", "Lkotlin/jvm/functions/Function1;", "playlistIndexListener", "playbackState", "f", "N", "()Lkotlin/jvm/functions/Function1;", "J", "(Lkotlin/jvm/functions/Function1;)V", "onStateChangeListener", "g", "Lcom/google/android/exoplayer2/source/z;", "mediaSource", "h", "currentWindow", ContextChain.TAG_INFRA, "playbackPosition", "Lcom/google/android/exoplayer2/audio/e;", "j", "Lcom/google/android/exoplayer2/audio/e;", "uAmpAudioAttributes", "", "k", "Ljava/lang/String;", "userAgent", "Lcom/google/android/exoplayer2/upstream/cache/b$d;", "Lcom/google/android/exoplayer2/upstream/cache/b$d;", "cacheDataSourceFactory", "getCurrentPosition", "()J", "currentPosition", "getDuration", "duration", "isPlaying", "()Z", "Lcom/google/android/exoplayer2/upstream/cache/Cache;", ResponseCacheMiddleware.f44810o, "<init>", "(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/cache/Cache;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class PlaybackImpl implements a, LifecycleObserver, v1.h {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final Context f43813a;
    @h

    /* renamed from: b  reason: collision with root package name */
    private q f43814b;
    @h

    /* renamed from: c  reason: collision with root package name */
    private PlayerView f43815c;

    /* renamed from: d  reason: collision with root package name */
    private int f43816d;
    @h

    /* renamed from: e  reason: collision with root package name */
    private Function1<? super Integer, Unit> f43817e;
    @h

    /* renamed from: f  reason: collision with root package name */
    private Function1<? super Integer, Unit> f43818f;
    @h

    /* renamed from: g  reason: collision with root package name */
    private z f43819g;

    /* renamed from: h  reason: collision with root package name */
    private int f43820h;

    /* renamed from: i  reason: collision with root package name */
    private long f43821i;
    @g

    /* renamed from: j  reason: collision with root package name */
    private final com.google.android.exoplayer2.audio.e f43822j;
    @g

    /* renamed from: k  reason: collision with root package name */
    private final String f43823k;
    @g

    /* renamed from: l  reason: collision with root package name */
    private final b.d f43824l;

    public PlaybackImpl(@g Context context, @g Cache cache) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(cache, "cache");
        this.f43813a = context;
        this.f43816d = -1;
        com.google.android.exoplayer2.audio.e a10 = new e.b().c(2).e(1).a();
        Intrinsics.checkNotNullExpressionValue(a10, "Builder()\n        .setCo…E_MEDIA)\n        .build()");
        this.f43822j = a10;
        String t02 = z0.t0(context, context.getString(b.s.B2));
        Intrinsics.checkNotNullExpressionValue(t02, "getUserAgent(context, co…tring(R.string.app_name))");
        this.f43823k = t02;
        b.d q9 = new b.d().k(cache).q(new com.google.android.exoplayer2.upstream.t(context, t02));
        Intrinsics.checkNotNullExpressionValue(q9, "Factory()\n        .setCa…tory(context, userAgent))");
        this.f43824l = q9;
    }

    private final z O(Uri uri) {
        q0 c10 = new q0.b(this.f43824l).c(b1.d(uri));
        Intrinsics.checkNotNullExpressionValue(c10, "Factory(cacheDataSourceF…e(MediaItem.fromUri(uri))");
        return c10;
    }

    private final void P() {
        L();
        d();
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

    @Override // p4.a
    public void F(@g Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        this.f43819g = O(uri);
        d();
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void G(boolean z9) {
        w1.e(this, z9);
    }

    @Override // p4.a
    @h
    public v1 H() {
        return this.f43814b;
    }

    @Override // p4.a
    public void I() {
        q qVar = this.f43814b;
        this.f43820h = qVar != null ? qVar.j0() : 0;
        q qVar2 = this.f43814b;
        this.f43821i = qVar2 != null ? qVar2.getCurrentPosition() : 0L;
        q qVar3 = this.f43814b;
        if (qVar3 != null) {
            qVar3.release();
        }
        PlayerView playerView = this.f43815c;
        if (playerView != null) {
            playerView.setPlayer(null);
        }
        this.f43814b = null;
    }

    @Override // p4.a
    public void J(@h Function1<? super Integer, Unit> function1) {
        this.f43818f = function1;
    }

    @Override // p4.a
    public void K(@g PlayerView playerView, @g Lifecycle lifecycle) {
        Intrinsics.checkNotNullParameter(playerView, "playerView");
        Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
        this.f43815c = playerView;
        lifecycle.addObserver(this);
    }

    @Override // p4.a
    public void L() {
        if (this.f43814b != null) {
            return;
        }
        m a10 = new m.a().d(24000, true).c(new p(true, 65536)).a();
        Intrinsics.checkNotNullExpressionValue(a10, "Builder()\n            .s…ZE))\n            .build()");
        Context context = this.f43813a;
        k2 x9 = new k2.b(context, new o(context)).G(a10).O(new DefaultTrackSelector(this.f43813a)).A(this.f43822j, true).x();
        this.f43814b = x9;
        PlayerView playerView = this.f43815c;
        if (playerView != null) {
            playerView.setPlayer(x9);
        }
        q qVar = this.f43814b;
        if (qVar != null) {
            qVar.p1(this);
        }
    }

    @Override // p4.a
    public void M(@g List<MediaMetadataCompat> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.f43819g = com.im.freechat.extend.o.n(list, this.f43824l);
        d();
    }

    @Override // p4.a
    @h
    public Function1<Integer, Unit> N() {
        return this.f43818f;
    }

    @Override // com.google.android.exoplayer2.v1.f
    public void U(int i4) {
        q qVar = this.f43814b;
        Integer valueOf = qVar != null ? Integer.valueOf(qVar.j0()) : null;
        int i10 = this.f43816d;
        if (valueOf != null && valueOf.intValue() == i10) {
            return;
        }
        int intValue = valueOf != null ? valueOf.intValue() : this.f43820h;
        this.f43816d = intValue;
        Function1<? super Integer, Unit> function1 = this.f43817e;
        if (function1 != null) {
            function1.invoke(Integer.valueOf(intValue));
        }
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void X() {
        w1.q(this);
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

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public /* synthetic */ void c(t1 t1Var) {
        x1.n(this, t1Var);
    }

    @Override // com.google.android.exoplayer2.video.n
    public /* synthetic */ void c0(int i4, int i10, int i11, float f10) {
        com.google.android.exoplayer2.video.m.c(this, i4, i10, i11, f10);
    }

    @Override // p4.a
    public void d() {
        q qVar;
        z zVar = this.f43819g;
        if (zVar == null || (qVar = this.f43814b) == null) {
            return;
        }
        Intrinsics.checkNotNull(zVar);
        qVar.V(zVar);
        qVar.a();
        qVar.l0(true);
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

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public /* synthetic */ void g(List list) {
        x1.w(this, list);
    }

    @Override // p4.a
    public long getCurrentPosition() {
        q qVar = this.f43814b;
        return qVar != null ? qVar.getCurrentPosition() : this.f43821i;
    }

    @Override // p4.a
    public long getDuration() {
        q qVar = this.f43814b;
        if (qVar != null) {
            return qVar.getDuration();
        }
        return 0L;
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public /* synthetic */ void h(v1.c cVar) {
        x1.c(this, cVar);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public /* synthetic */ void i(int i4) {
        x1.t(this, i4);
    }

    @Override // p4.a
    public boolean isPlaying() {
        q qVar = this.f43814b;
        return qVar != null && qVar.Q0();
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public /* synthetic */ void j(s2 s2Var, int i4) {
        x1.y(this, s2Var, i4);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.audio.i
    public /* synthetic */ void k(int i4) {
        x1.b(this, i4);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public void l(int i4) {
        x1.o(this, i4);
        Function1<Integer, Unit> N = N();
        if (N != null) {
            N.invoke(Integer.valueOf(i4));
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
    public /* synthetic */ void o(com.google.android.exoplayer2.metadata.Metadata metadata) {
        x1.l(this, metadata);
    }

    @Override // p4.a
    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    public void onStart() {
        P();
    }

    @Override // p4.a
    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public void onStop() {
        I();
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.device.d
    public /* synthetic */ void p(int i4, boolean z9) {
        x1.f(this, i4, z9);
    }

    @Override // p4.a
    public void pause() {
        q qVar = this.f43814b;
        if (qVar == null) {
            return;
        }
        qVar.l0(false);
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

    @Override // p4.a
    public void seekTo(long j4) {
        q qVar = this.f43814b;
        if (qVar != null) {
            qVar.seekTo(j4);
        }
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

    @Override // p4.a
    public void x(int i4, long j4) {
        q qVar = this.f43814b;
        if (qVar != null) {
            qVar.x(i4, j4);
        }
    }

    @Override // p4.a
    public void y(boolean z9) {
        q qVar;
        q qVar2 = this.f43814b;
        if (qVar2 != null) {
            qVar2.stop();
        }
        if (!z9 || (qVar = this.f43814b) == null) {
            return;
        }
        qVar.M();
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public /* synthetic */ void z(v1 v1Var, v1.g gVar) {
        x1.g(this, v1Var, gVar);
    }
}
