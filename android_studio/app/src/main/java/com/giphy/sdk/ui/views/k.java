package com.giphy.sdk.ui.views;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.Settings;
import android.view.SurfaceView;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import com.giphy.sdk.core.models.Images;
import com.giphy.sdk.core.models.Media;
import com.giphy.sdk.ui.views.m;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.f1;
import com.google.android.exoplayer2.k2;
import com.google.android.exoplayer2.m;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.q0;
import com.google.android.exoplayer2.t1;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.v1;
import com.google.android.exoplayer2.w1;
import com.google.android.gms.common.internal.x;
import io.sentry.clientreport.e;
import io.sentry.protocol.t;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import timber.log.Timber;

/* compiled from: GPHVideoPlayer.kt */
@Metadata(bv = {}, d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b#\u0018\u00002\u00020\u0001B\u001d\u0012\b\u0010x\u001a\u0004\u0018\u00010 \u0012\b\b\u0002\u0010\"\u001a\u00020\u001e¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\rJ\u0010\u0010\u0013\u001a\u00020\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u001e\u0010\u0018\u001a\u00020\u00022\u0016\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00020\u0014j\u0002`\u0016J\u001e\u0010\u0019\u001a\u00020\u00022\u0016\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00020\u0014j\u0002`\u0016J\u000e\u0010\u001a\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\u001b\u001a\u00020\u0002J7\u0010#\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001c2\b\b\u0002\u0010\u001f\u001a\u00020\u001e2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010 2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u001e¢\u0006\u0004\b#\u0010$J\u001a\u0010)\u001a\u00020\u00022\b\u0010&\u001a\u0004\u0018\u00010%2\u0006\u0010(\u001a\u00020'H\u0016J\u0010\u0010+\u001a\u00020\u00022\u0006\u0010*\u001a\u00020'H\u0016J\u0010\u0010-\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\u001eH\u0016J\u0010\u0010/\u001a\u00020\u00022\u0006\u0010.\u001a\u00020\u001eH\u0016J\"\u00104\u001a\u00020\u00022\u0006\u00101\u001a\u0002002\b\u00103\u001a\u0004\u0018\u0001022\u0006\u0010(\u001a\u00020'H\u0016J\u0010\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u000205H\u0016J\u0006\u00108\u001a\u00020\u0002J\u0006\u00109\u001a\u00020\u0002J\u0006\u0010:\u001a\u00020\u0002J\u0006\u0010;\u001a\u00020\u001eR$\u0010C\u001a\u0004\u0018\u00010<8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR*\u0010G\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00020\u0014j\u0002`\u00160D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010FR\u0018\u0010K\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0018\u0010O\u001a\u0004\u0018\u00010L8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u0018\u0010S\u001a\u0004\u0018\u00010P8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\"\u0010\u001d\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010U\u001a\u0004\bV\u0010W\"\u0004\bX\u0010YR\"\u0010_\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bZ\u00109\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^R$\u0010g\u001a\u0004\u0018\u00010`8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\ba\u0010b\u001a\u0004\bc\u0010d\"\u0004\be\u0010fR\u0016\u0010i\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u00109R\u0016\u0010l\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010kR\u0018\u0010n\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010UR\"\u0010q\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u00109\u001a\u0004\bo\u0010\\\"\u0004\bp\u0010^R$\u0010x\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\br\u0010s\u001a\u0004\bt\u0010u\"\u0004\bv\u0010wR\"\u0010\"\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\by\u00109\u001a\u0004\bz\u0010\\\"\u0004\b{\u0010^R\u0011\u0010}\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\bk\u0010|R\u0011\u0010\u007f\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b~\u0010|R\u0012\u0010.\u001a\u00020\u001e8F¢\u0006\u0007\u001a\u0005\b\u0080\u0001\u0010\\¨\u0006\u0083\u0001"}, d2 = {"Lcom/giphy/sdk/ui/views/k;", "Lcom/google/android/exoplayer2/v1$f;", "", "q0", "s0", "r0", "t0", "d0", "", "position", "u0", "b0", "v0", "", "P", "audioVolume", "p0", "Landroid/view/SurfaceView;", "surfaceView", "o0", "Lkotlin/Function1;", "Lcom/giphy/sdk/ui/views/m;", "Lcom/giphy/sdk/ui/views/GPHPlayerStateListener;", x.a.f29212a, "F", "f0", "g0", "c0", "Lcom/giphy/sdk/core/models/Media;", "media", "", "autoPlay", "Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;", "view", "repeatable", ExifInterface.GPS_DIRECTION_TRUE, "(Lcom/giphy/sdk/core/models/Media;ZLcom/giphy/sdk/ui/views/GPHVideoPlayerView;Ljava/lang/Boolean;)V", "Lcom/google/android/exoplayer2/b1;", "mediaItem", "", e.b.f83079a, "B", t.b.f83859d, "l", "isLoading", "v", "isPlaying", ExifInterface.LONGITUDE_EAST, "Lcom/google/android/exoplayer2/s2;", "timeline", "", "manifest", "e0", "Lcom/google/android/exoplayer2/ExoPlaybackException;", com.qennnsad.aknkaksd.data.websocket.b.f47825n, "u", "Y", "Z", ExifInterface.LONGITUDE_WEST, "Q", "Lcom/google/android/exoplayer2/k2;", "a", "Lcom/google/android/exoplayer2/k2;", "M", "()Lcom/google/android/exoplayer2/k2;", "l0", "(Lcom/google/android/exoplayer2/k2;)V", com.ksyun.media.player.d.d.an, "", "b", "Ljava/util/Set;", "listeners", "Ljava/util/Timer;", "c", "Ljava/util/Timer;", "progressTimer", "Ljava/util/TimerTask;", "d", "Ljava/util/TimerTask;", "progressTimerTask", "Landroid/database/ContentObserver;", "e", "Landroid/database/ContentObserver;", "contentObserver", "f", "Lcom/giphy/sdk/core/models/Media;", "K", "()Lcom/giphy/sdk/core/models/Media;", "j0", "(Lcom/giphy/sdk/core/models/Media;)V", "g", "R", "()Z", "i0", "(Z)V", "isDestroyed", "Landroid/media/AudioManager;", "h", "Landroid/media/AudioManager;", "H", "()Landroid/media/AudioManager;", "h0", "(Landroid/media/AudioManager;)V", "audioManager", ContextChain.TAG_INFRA, "isDeviceMuted", "j", "J", "lastProgress", "k", "lastMedia", "L", "k0", "paused", "m", "Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;", "N", "()Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;", "m0", "(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)V", "playerView", "n", "O", "n0", "()J", "duration", "I", "currentPosition", ExifInterface.LATITUDE_SOUTH, "<init>", "(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;Z)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class k implements v1.f {
    @m8.h

    /* renamed from: a */
    private k2 f19185a;

    /* renamed from: b */
    private final Set<Function1<m, Unit>> f19186b;

    /* renamed from: c */
    private Timer f19187c;

    /* renamed from: d */
    private TimerTask f19188d;

    /* renamed from: e */
    private ContentObserver f19189e;
    @m8.g

    /* renamed from: f */
    private Media f19190f;

    /* renamed from: g */
    private boolean f19191g;
    @m8.h

    /* renamed from: h */
    private AudioManager f19192h;

    /* renamed from: i */
    private boolean f19193i;

    /* renamed from: j */
    private long f19194j;

    /* renamed from: k */
    private Media f19195k;

    /* renamed from: l */
    private boolean f19196l;
    @m8.h

    /* renamed from: m */
    private GPHVideoPlayerView f19197m;

    /* renamed from: n */
    private boolean f19198n;

    /* compiled from: GPHVideoPlayer.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"setVolumeValue", "", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class a extends Lambda implements Function0<Unit> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a() {
            super(0);
            k.this = r1;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
            AudioManager H = k.this.H();
            Intrinsics.checkNotNull(H);
            float f10 = H.getStreamVolume(3) > 0 ? 1.0f : 0.0f;
            k.this.f19193i = f10 == 0.0f;
            k.this.p0(f10);
        }
    }

    /* compiled from: GPHVideoPlayer.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/giphy/sdk/ui/views/k$b", "Landroid/database/ContentObserver;", "", "selfChange", "", "onChange", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class b extends ContentObserver {

        /* renamed from: a */
        final /* synthetic */ a f19200a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(a aVar, Handler handler) {
            super(handler);
            this.f19200a = aVar;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z9) {
            super.onChange(z9);
            this.f19200a.invoke2();
        }
    }

    /* compiled from: GPHVideoPlayer.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004"}, d2 = {"com/giphy/sdk/ui/views/k$c", "Ljava/util/TimerTask;", "", "run", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class c extends TimerTask {

        /* compiled from: GPHVideoPlayer.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes2.dex */
        static final class a implements Runnable {
            a() {
                c.this = r1;
            }

            @Override // java.lang.Runnable
            public final void run() {
                k2 M;
                k2 M2 = k.this.M();
                if ((M2 == null || M2.isPlaying()) && (M = k.this.M()) != null) {
                    k.this.u0(M.getCurrentPosition());
                }
            }
        }

        c() {
            k.this = r1;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            new Handler(Looper.getMainLooper()).post(new a());
        }
    }

    public k(@m8.h GPHVideoPlayerView gPHVideoPlayerView, boolean z9) {
        this.f19197m = gPHVideoPlayerView;
        this.f19198n = z9;
        this.f19186b = new LinkedHashSet();
        this.f19190f = new Media("", null, null, null, null, null, null, null, null, null, null, null, null, null, new Images(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1048575, null), null, null, null, null, null, null, null, null, false, false, false, false, false, false, false, false, false, null, null, null, false, null, -16386, 31, null);
        q0();
    }

    public static /* synthetic */ void V(k kVar, Media media, boolean z9, GPHVideoPlayerView gPHVideoPlayerView, Boolean bool, int i4, Object obj) throws Exception {
        if ((i4 & 2) != 0) {
            z9 = true;
        }
        if ((i4 & 4) != 0) {
            gPHVideoPlayerView = null;
        }
        if ((i4 & 8) != 0) {
            bool = null;
        }
        kVar.T(media, z9, gPHVideoPlayerView, bool);
    }

    private final void b0() {
        d0();
        this.f19197m = null;
    }

    private final void d0() {
        t0();
        k2 k2Var = this.f19185a;
        if (k2Var != null) {
            k2Var.release();
        }
        this.f19185a = null;
    }

    private final void q0() {
        if (this.f19197m == null) {
            return;
        }
        a aVar = new a();
        GPHVideoPlayerView gPHVideoPlayerView = this.f19197m;
        Intrinsics.checkNotNull(gPHVideoPlayerView);
        Object systemService = gPHVideoPlayerView.getContext().getSystemService("audio");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.media.AudioManager");
        this.f19192h = (AudioManager) systemService;
        aVar.invoke2();
        this.f19189e = new b(aVar, new Handler(Looper.getMainLooper()));
        GPHVideoPlayerView gPHVideoPlayerView2 = this.f19197m;
        Intrinsics.checkNotNull(gPHVideoPlayerView2);
        Context context = gPHVideoPlayerView2.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "playerView!!.context");
        ContentResolver contentResolver = context.getContentResolver();
        Uri uri = Settings.System.CONTENT_URI;
        ContentObserver contentObserver = this.f19189e;
        Intrinsics.checkNotNull(contentObserver);
        contentResolver.registerContentObserver(uri, true, contentObserver);
    }

    private final void r0() {
        TimerTask timerTask = this.f19188d;
        if (timerTask != null) {
            timerTask.cancel();
        }
        Timer timer = this.f19187c;
        if (timer != null) {
            timer.cancel();
        }
        this.f19188d = new c();
        Timer timer2 = new Timer("VideoProgressTimer");
        this.f19187c = timer2;
        timer2.schedule(this.f19188d, 0L, 40L);
    }

    private final void s0() {
        GPHVideoPlayerView gPHVideoPlayerView = this.f19197m;
        if (gPHVideoPlayerView == null || this.f19189e == null) {
            return;
        }
        Intrinsics.checkNotNull(gPHVideoPlayerView);
        Context context = gPHVideoPlayerView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "playerView!!.context");
        ContentResolver contentResolver = context.getContentResolver();
        ContentObserver contentObserver = this.f19189e;
        Intrinsics.checkNotNull(contentObserver);
        contentResolver.unregisterContentObserver(contentObserver);
        this.f19189e = null;
    }

    private final void t0() {
        Timer timer = this.f19187c;
        if (timer != null) {
            timer.cancel();
        }
    }

    public final void u0(long j4) {
        GPHVideoPlayerView gPHVideoPlayerView = this.f19197m;
        if (gPHVideoPlayerView != null) {
            gPHVideoPlayerView.r(j4);
        }
    }

    private final void v0() {
        k2 k2Var = this.f19185a;
        if (k2Var != null) {
            k2Var.j(this.f19198n ? 2 : 0);
        }
    }

    @Override // com.google.android.exoplayer2.v1.f
    public void B(@m8.h b1 b1Var, int i4) {
        w1.f(this, b1Var, i4);
        if (i4 == 0) {
            Iterator<T> it = this.f19186b.iterator();
            while (it.hasNext()) {
                ((Function1) it.next()).invoke(m.i.f19211a);
            }
        }
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void C(boolean z9, int i4) {
        w1.h(this, z9, i4);
    }

    @Override // com.google.android.exoplayer2.v1.f
    public void E(boolean z9) {
        int c10;
        Timber.e("onIsPlayingChanged " + this.f19190f.getId() + ' ' + z9, new Object[0]);
        if (z9) {
            Iterator<T> it = this.f19186b.iterator();
            while (it.hasNext()) {
                ((Function1) it.next()).invoke(m.g.f19209a);
            }
            GPHVideoPlayerView gPHVideoPlayerView = this.f19197m;
            if (gPHVideoPlayerView != null) {
                gPHVideoPlayerView.setKeepScreenOn(true);
                return;
            }
            return;
        }
        k2 k2Var = this.f19185a;
        if (k2Var != null && (c10 = k2Var.c()) != 4) {
            l(c10);
        }
        GPHVideoPlayerView gPHVideoPlayerView2 = this.f19197m;
        if (gPHVideoPlayerView2 != null) {
            gPHVideoPlayerView2.setKeepScreenOn(false);
        }
    }

    public final void F(@m8.g Function1<? super m, Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f19186b.add(listener);
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void G(boolean z9) {
        w1.e(this, z9);
    }

    @m8.h
    public final AudioManager H() {
        return this.f19192h;
    }

    public final long I() {
        k2 k2Var = this.f19185a;
        if (k2Var != null) {
            return k2Var.getCurrentPosition();
        }
        return 0L;
    }

    public final long J() {
        k2 k2Var = this.f19185a;
        if (k2Var != null) {
            return k2Var.getDuration();
        }
        return 0L;
    }

    @m8.g
    public final Media K() {
        return this.f19190f;
    }

    public final boolean L() {
        return this.f19196l;
    }

    @m8.h
    public final k2 M() {
        return this.f19185a;
    }

    @m8.h
    public final GPHVideoPlayerView N() {
        return this.f19197m;
    }

    public final boolean O() {
        return this.f19198n;
    }

    public final float P() {
        Player.AudioComponent audioComponent;
        k2 k2Var = this.f19185a;
        if (k2Var == null || (audioComponent = k2Var.getAudioComponent()) == null) {
            return 0.0f;
        }
        return audioComponent.getVolume();
    }

    public final boolean Q() {
        return this.f19197m != null;
    }

    public final boolean R() {
        return this.f19191g;
    }

    public final boolean S() {
        k2 k2Var = this.f19185a;
        if (k2Var != null) {
            return k2Var.isPlaying();
        }
        return false;
    }

    public final synchronized void T(@m8.g Media media, boolean z9, @m8.h GPHVideoPlayerView gPHVideoPlayerView, @m8.h Boolean bool) throws Exception {
        GPHVideoPlayerView gPHVideoPlayerView2;
        Intrinsics.checkNotNullParameter(media, "media");
        if (bool != null) {
            this.f19198n = bool.booleanValue();
        }
        if (this.f19191g) {
            Timber.h("Player is already destroyed!", new Object[0]);
            return;
        }
        Timber.e("loadMedia " + media.getId() + ' ' + z9 + ' ' + gPHVideoPlayerView, new Object[0]);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (gPHVideoPlayerView != null) {
            if ((!Intrinsics.areEqual(gPHVideoPlayerView, this.f19197m)) && (gPHVideoPlayerView2 = this.f19197m) != null) {
                gPHVideoPlayerView2.q();
            }
            this.f19197m = gPHVideoPlayerView;
        }
        this.f19190f = media;
        Iterator<T> it = this.f19186b.iterator();
        while (it.hasNext()) {
            ((Function1) it.next()).invoke(new m.e(media));
        }
        d0();
        GPHVideoPlayerView gPHVideoPlayerView3 = this.f19197m;
        if (gPHVideoPlayerView3 != null) {
            this.f19196l = false;
            if (gPHVideoPlayerView3 != null) {
                gPHVideoPlayerView3.setVisibility(0);
            }
            String e4 = com.giphy.sdk.ui.utils.h.e(media);
            Timber.e("load url " + e4, new Object[0]);
            com.google.android.exoplayer2.m a10 = new m.a().f(true).e(500, 5000, 500, 500).a();
            Intrinsics.checkNotNullExpressionValue(a10, "DefaultLoadControl.Build…500\n            ).build()");
            this.f19195k = media;
            this.f19194j = 0L;
            GPHVideoPlayerView gPHVideoPlayerView4 = this.f19197m;
            Intrinsics.checkNotNull(gPHVideoPlayerView4);
            k2.b bVar = new k2.b(gPHVideoPlayerView4.getContext());
            GPHVideoPlayerView gPHVideoPlayerView5 = this.f19197m;
            Intrinsics.checkNotNull(gPHVideoPlayerView5);
            k2 x9 = bVar.O(new DefaultTrackSelector(gPHVideoPlayerView5.getContext())).G(a10).x();
            x9.c1(this);
            x9.l0(z9);
            Unit unit = Unit.INSTANCE;
            this.f19185a = x9;
            GPHVideoPlayerView gPHVideoPlayerView6 = this.f19197m;
            Intrinsics.checkNotNull(gPHVideoPlayerView6);
            gPHVideoPlayerView6.t(media);
            GPHVideoPlayerView gPHVideoPlayerView7 = this.f19197m;
            Intrinsics.checkNotNull(gPHVideoPlayerView7);
            gPHVideoPlayerView7.u(media, this);
            k2 k2Var = this.f19185a;
            if (k2Var != null) {
                k2Var.p(1);
            }
            if (e4 != null) {
                v0();
                r0();
                com.google.android.exoplayer2.extractor.h f10 = new com.google.android.exoplayer2.extractor.h().f(true);
                Intrinsics.checkNotNullExpressionValue(f10, "DefaultExtractorsFactory…trateSeekingEnabled(true)");
                Uri parse = Uri.parse(e4);
                b1 a11 = new b1.c().F(parse).j(parse.buildUpon().clearQuery().build().toString()).a();
                Intrinsics.checkNotNullExpressionValue(a11, "MediaItem.Builder()\n    …\n                .build()");
                q0 c10 = new q0.b(com.giphy.sdk.ui.utils.j.f18934d.d(), f10).c(a11);
                Intrinsics.checkNotNullExpressionValue(c10, "ProgressiveMediaSource.F…ateMediaSource(mediaItem)");
                k2 k2Var2 = this.f19185a;
                if (k2Var2 != null) {
                    k2Var2.V(c10);
                }
                k2 k2Var3 = this.f19185a;
                if (k2Var3 != null) {
                    k2Var3.a();
                }
                s0();
                q0();
            } else {
                ExoPlaybackException createForSource = ExoPlaybackException.createForSource(new IOException("Video url is null"));
                Intrinsics.checkNotNullExpressionValue(createForSource, "ExoPlaybackException.cre…ion(\"Video url is null\"))");
                u(createForSource);
            }
            Timber.e("loadMedia time=" + (SystemClock.elapsedRealtime() - elapsedRealtime), new Object[0]);
            return;
        }
        throw new Exception("playerView must not be null");
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void U(int i4) {
        w1.n(this, i4);
    }

    public final void W() {
        this.f19191g = true;
        s0();
        b0();
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void X() {
        w1.q(this);
    }

    public final void Y() {
        this.f19196l = true;
        k2 k2Var = this.f19185a;
        if (k2Var != null) {
            k2Var.pause();
        }
        GPHVideoPlayerView gPHVideoPlayerView = this.f19197m;
        if (gPHVideoPlayerView != null) {
            gPHVideoPlayerView.q();
        }
        if (this.f19190f.getId().length() > 0) {
            this.f19195k = this.f19190f;
        }
        k2 k2Var2 = this.f19185a;
        this.f19194j = k2Var2 != null ? k2Var2.getCurrentPosition() : 0L;
        d0();
    }

    public final void Z() {
        this.f19196l = false;
        GPHVideoPlayerView gPHVideoPlayerView = this.f19197m;
        if (gPHVideoPlayerView != null) {
            gPHVideoPlayerView.s();
        }
        Media media = this.f19195k;
        if (media != null) {
            V(this, media, false, null, null, 14, null);
        }
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void a0(boolean z9, int i4) {
        w1.m(this, z9, i4);
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void c(t1 t1Var) {
        w1.i(this, t1Var);
    }

    public final void c0() {
        k2 k2Var = this.f19185a;
        if (k2Var != null) {
            k2Var.d();
        }
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void e(v1.l lVar, v1.l lVar2, int i4) {
        w1.o(this, lVar, lVar2, i4);
    }

    @Override // com.google.android.exoplayer2.v1.f
    public void e0(@m8.g s2 timeline, @m8.h Object obj, int i4) {
        Intrinsics.checkNotNullParameter(timeline, "timeline");
        k2 k2Var = this.f19185a;
        if (k2Var != null) {
            long duration = k2Var.getDuration();
            Iterator<T> it = this.f19186b.iterator();
            while (it.hasNext()) {
                ((Function1) it.next()).invoke(new m.j(duration));
            }
            if (duration > 0) {
                if (this.f19190f.getUserDictionary() == null) {
                    this.f19190f.setUserDictionary(new HashMap<>());
                }
                HashMap<String, String> userDictionary = this.f19190f.getUserDictionary();
                if (userDictionary != null) {
                    userDictionary.put(com.giphy.sdk.tracking.f.f17014f, String.valueOf(duration));
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void f(int i4) {
        w1.k(this, i4);
    }

    public final void f0(@m8.g Function1<? super m, Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f19186b.remove(listener);
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void g(List list) {
        w1.s(this, list);
    }

    public final void g0(long j4) {
        k2 k2Var = this.f19185a;
        if (k2Var != null) {
            k2Var.seekTo(j4);
        }
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void h(v1.c cVar) {
        w1.a(this, cVar);
    }

    public final void h0(@m8.h AudioManager audioManager) {
        this.f19192h = audioManager;
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void i(int i4) {
        w1.p(this, i4);
    }

    public final void i0(boolean z9) {
        this.f19191g = z9;
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void j(s2 s2Var, int i4) {
        w1.t(this, s2Var, i4);
    }

    public final void j0(@m8.g Media media) {
        Intrinsics.checkNotNullParameter(media, "<set-?>");
        this.f19190f = media;
    }

    public final void k0(boolean z9) {
        this.f19196l = z9;
    }

    @Override // com.google.android.exoplayer2.v1.f
    public void l(int i4) {
        Object obj;
        String str;
        k2 k2Var;
        w1.j(this, i4);
        if (i4 == 1) {
            obj = m.d.f19206a;
            str = "STATE_IDLE";
        } else if (i4 == 2) {
            obj = m.a.f19203a;
            str = "STATE_BUFFERING";
        } else if (i4 == 3) {
            obj = m.h.f19210a;
            str = "STATE_READY";
        } else if (i4 != 4) {
            obj = m.k.f19213a;
            str = "STATE_UNKNOWN";
        } else {
            obj = m.b.f19204a;
            str = "STATE_ENDED";
        }
        Timber.e("onPlayerStateChanged " + str, new Object[0]);
        if (i4 == 4 && (k2Var = this.f19185a) != null) {
            u0(k2Var.getDuration());
        }
        Iterator<T> it = this.f19186b.iterator();
        while (it.hasNext()) {
            ((Function1) it.next()).invoke(obj);
        }
    }

    public final void l0(@m8.h k2 k2Var) {
        this.f19185a = k2Var;
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void m(f1 f1Var) {
        w1.g(this, f1Var);
    }

    public final void m0(@m8.h GPHVideoPlayerView gPHVideoPlayerView) {
        this.f19197m = gPHVideoPlayerView;
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void n(boolean z9) {
        w1.r(this, z9);
    }

    public final void n0(boolean z9) {
        this.f19198n = z9;
    }

    public final void o0(@m8.h SurfaceView surfaceView) {
        k2 k2Var = this.f19185a;
        if (k2Var != null) {
            k2Var.n(surfaceView);
        }
    }

    public final void p0(float f10) {
        Player.AudioComponent audioComponent;
        if (this.f19193i) {
            f10 = 0.0f;
        }
        k2 k2Var = this.f19185a;
        if (k2Var != null && (audioComponent = k2Var.getAudioComponent()) != null) {
            audioComponent.setVolume(f10);
        }
        Iterator<T> it = this.f19186b.iterator();
        while (it.hasNext()) {
            Function1 function1 = (Function1) it.next();
            boolean z9 = false;
            if (f10 > 0) {
                z9 = true;
            }
            function1.invoke(new m.f(z9));
        }
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void s(TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.m mVar) {
        w1.v(this, trackGroupArray, mVar);
    }

    @Override // com.google.android.exoplayer2.v1.f
    public void u(@m8.g ExoPlaybackException error) {
        Intrinsics.checkNotNullParameter(error, "error");
        w1.l(this, error);
        Iterator<T> it = this.f19186b.iterator();
        while (it.hasNext()) {
            Function1 function1 = (Function1) it.next();
            String localizedMessage = error.getLocalizedMessage();
            if (localizedMessage == null) {
                localizedMessage = "Error occurred";
            }
            function1.invoke(new m.c(localizedMessage));
        }
    }

    @Override // com.google.android.exoplayer2.v1.f
    public void v(boolean z9) {
        w1.c(this, z9);
        Timber.e("onLoadingChanged " + z9, new Object[0]);
        if (!z9 || this.f19194j <= 0) {
            return;
        }
        Timber.e("restore seek " + this.f19194j, new Object[0]);
        k2 k2Var = this.f19185a;
        if (k2Var != null) {
            k2Var.seekTo(this.f19194j);
        }
        this.f19194j = 0L;
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void z(v1 v1Var, v1.g gVar) {
        w1.b(this, v1Var, gVar);
    }

    public /* synthetic */ k(GPHVideoPlayerView gPHVideoPlayerView, boolean z9, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(gPHVideoPlayerView, (i4 & 2) != 0 ? false : z9);
    }
}
