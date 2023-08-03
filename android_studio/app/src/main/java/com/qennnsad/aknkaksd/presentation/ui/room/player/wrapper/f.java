package com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.exifinterface.media.ExifInterface;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.ksyun.media.player.IMediaPlayer;
import com.ksyun.media.player.KSYMediaPlayer;
import com.ksyun.media.player.KSYTextureView;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity;
import com.qennnsad.aknkaksd.util.o0;
import io.sentry.protocol.Device;
import java.lang.ref.WeakReference;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.u0;
import m8.h;

/* compiled from: KsyPlayerWrapper.kt */
@Metadata(bv = {}, d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010Q\u001a\u00020N\u0012\b\b\u0001\u0010R\u001a\u00020\u0013\u0012\n\b\u0002\u0010S\u001a\u0004\u0018\u00010$¢\u0006\u0004\bT\u0010UJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0003H\u0002J\u0010\u0010\f\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0003H\u0016J\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\rH\u0016J\b\u0010\u0012\u001a\u00020\u0005H\u0016J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0013H\u0016J\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0003H\u0016J\b\u0010\u001a\u001a\u00020\u0005H\u0016J\b\u0010\u001b\u001a\u00020\u0005H\u0016J\b\u0010\u001c\u001a\u00020\u0005H\u0016J`\u0010#\u001a\u00020\u00052\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u001d2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u001d2\u0018\u0010!\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050 2\u0014\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u001dH\u0016J\b\u0010%\u001a\u0004\u0018\u00010$R\u0014\u0010'\u001a\u00020\r8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0019\u0010&R$\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010(R$\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010(R*\u0010!\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0005\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010)R$\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010(R\u0016\u0010,\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u0010/\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010.R\u0014\u00102\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u00101R\u0014\u00105\u001a\u0002038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u00104R\u0014\u00108\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u00107R\u0014\u0010<\u001a\u0002098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R\u001a\u0010@\u001a\u00020\u00138\u0006X\u0086D¢\u0006\f\n\u0004\b=\u0010+\u001a\u0004\b>\u0010?R!\u0010F\u001a\b\u0012\u0004\u0012\u00020\u00020A8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010ER\"\u0010I\u001a\u00020\u00038\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bG\u0010H\u001a\u0004\bI\u0010J\"\u0004\b*\u0010KR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bL\u0010MR\u0016\u0010Q\u001a\u0004\u0018\u00010N8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bO\u0010P¨\u0006V"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;", "Lcom/ksyun/media/player/KSYTextureView;", "", "canReconnect", "", "C", "view", ExifInterface.LONGITUDE_EAST, "B", "visible", "D", "setVisible", "", "url", "g", "newUrl", ContextChain.TAG_INFRA, "b", "", "mode", "d", Device.b.f83600k, "j", u0.f86831d, "a", "e", "c", "destroy", "Lkotlin/Function1;", "onPlayBegin", com.ksyun.media.player.d.d.ar, "Lkotlin/Function2;", "onPlayError", "onResolution", "h", "Lcom/ksyun/media/player/KSYMediaPlayer;", "r", "Ljava/lang/String;", "TAG", "Lkotlin/jvm/functions/Function1;", "Lkotlin/jvm/functions/Function2;", "f", "I", "reloadAttemts", "Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;", "Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;", "mOnCompletionListener", "Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;", "Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;", "mOnPreparedListener", "Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;", "Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;", "mOnVideoSizeChangeListener", "Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;", "Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;", "mOnErrorListener", "Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;", "k", "Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;", "mOnInfoListener", "l", "s", "()I", "RELOAD_ATTEMTS_MAX", "Ljava/lang/ref/WeakReference;", "m", "Lkotlin/Lazy;", "v", "()Ljava/lang/ref/WeakReference;", "viewRef", "n", "Z", "isDestroyed", "()Z", "(Z)V", "u", "()Lcom/ksyun/media/player/KSYTextureView;", "Landroid/view/ViewGroup;", "t", "()Landroid/view/ViewGroup;", "root", "id", "primaryPlayer", "<init>", "(Landroid/view/ViewGroup;ILcom/ksyun/media/player/KSYMediaPlayer;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class f implements g<KSYTextureView> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final String f54050a;
    @h

    /* renamed from: b  reason: collision with root package name */
    private Function1<? super KSYTextureView, Unit> f54051b;
    @h

    /* renamed from: c  reason: collision with root package name */
    private Function1<? super KSYTextureView, Unit> f54052c;
    @h

    /* renamed from: d  reason: collision with root package name */
    private Function2<? super KSYTextureView, ? super Boolean, Unit> f54053d;
    @h

    /* renamed from: e  reason: collision with root package name */
    private Function1<? super String, Unit> f54054e;

    /* renamed from: f  reason: collision with root package name */
    private int f54055f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final IMediaPlayer.OnCompletionListener f54056g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final IMediaPlayer.OnPreparedListener f54057h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final IMediaPlayer.OnVideoSizeChangedListener f54058i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final IMediaPlayer.OnErrorListener f54059j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final IMediaPlayer.OnInfoListener f54060k;

    /* renamed from: l  reason: collision with root package name */
    private final int f54061l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final Lazy f54062m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f54063n;

    /* compiled from: KsyPlayerWrapper.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Ljava/lang/ref/WeakReference;", "Lcom/ksyun/media/player/KSYTextureView;", "a", "()Ljava/lang/ref/WeakReference;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function0<WeakReference<KSYTextureView>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ViewGroup f54064a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f54065b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ KSYMediaPlayer f54066c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ f f54067d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(ViewGroup viewGroup, int i4, KSYMediaPlayer kSYMediaPlayer, f fVar) {
            super(0);
            this.f54064a = viewGroup;
            this.f54065b = i4;
            this.f54066c = kSYMediaPlayer;
            this.f54067d = fVar;
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final WeakReference<KSYTextureView> invoke() {
            KSYTextureView kSYTextureView = (KSYTextureView) this.f54064a.findViewById(this.f54065b);
            if (kSYTextureView != null) {
                KSYMediaPlayer kSYMediaPlayer = this.f54066c;
                f fVar = this.f54067d;
                if (kSYMediaPlayer != null) {
                    kSYTextureView.getMediaPlayer().addMasterClock(kSYMediaPlayer);
                }
                fVar.E(kSYTextureView);
                String str = fVar.f54050a;
                o0.a(str, "KSYTextureView inflated: " + kSYTextureView);
            } else {
                kSYTextureView = null;
            }
            return new WeakReference<>(kSYTextureView);
        }
    }

    public f(@m8.g ViewGroup root, @IdRes int i4, @h KSYMediaPlayer kSYMediaPlayer) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(root, "root");
        this.f54050a = "KsyPlayerWrapper";
        this.f54056g = new IMediaPlayer.OnCompletionListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.a
            @Override // com.ksyun.media.player.IMediaPlayer.OnCompletionListener
            public final void onCompletion(IMediaPlayer iMediaPlayer) {
                f.w(f.this, iMediaPlayer);
            }
        };
        this.f54057h = new IMediaPlayer.OnPreparedListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.d
            @Override // com.ksyun.media.player.IMediaPlayer.OnPreparedListener
            public final void onPrepared(IMediaPlayer iMediaPlayer) {
                f.z(f.this, iMediaPlayer);
            }
        };
        this.f54058i = new IMediaPlayer.OnVideoSizeChangedListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.e
            @Override // com.ksyun.media.player.IMediaPlayer.OnVideoSizeChangedListener
            public final void onVideoSizeChanged(IMediaPlayer iMediaPlayer, int i10, int i11, int i12, int i13) {
                f.A(f.this, iMediaPlayer, i10, i11, i12, i13);
            }
        };
        this.f54059j = new IMediaPlayer.OnErrorListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.b
            @Override // com.ksyun.media.player.IMediaPlayer.OnErrorListener
            public final boolean onError(IMediaPlayer iMediaPlayer, int i10, int i11) {
                boolean x9;
                x9 = f.x(f.this, iMediaPlayer, i10, i11);
                return x9;
            }
        };
        this.f54060k = new IMediaPlayer.OnInfoListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.c
            @Override // com.ksyun.media.player.IMediaPlayer.OnInfoListener
            public final boolean onInfo(IMediaPlayer iMediaPlayer, int i10, int i11) {
                boolean y9;
                y9 = f.y(f.this, iMediaPlayer, i10, i11);
                return y9;
            }
        };
        this.f54061l = 5;
        lazy = LazyKt__LazyJVMKt.lazy(new a(root, i4, kSYMediaPlayer, this));
        this.f54062m = lazy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(f this$0, IMediaPlayer iMediaPlayer, int i4, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function1<? super String, Unit> function1 = this$0.f54054e;
        if (function1 != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(i4);
            sb.append('x');
            sb.append(i10);
            function1.invoke(sb.toString());
        }
    }

    private final void B() {
        KSYTextureView u9 = u();
        if (u9 != null) {
            o0.a(this.f54050a, "qqq Reloading...");
            u9.reload(u9.getDataSource(), false);
        }
    }

    private final void C(boolean z9) {
        KSYTextureView u9 = u();
        if (u9 != null) {
            this.f54055f++;
            String str = z9 ? "RECONNECTING" : "RELOADING";
            o0.g(this.f54050a, str + " STREAM... Attempt: " + this.f54055f);
            if (this.f54055f >= this.f54061l) {
                o0.n(this.f54050a, "Stream Attempts too much. Returning error to request new stream url...");
                this.f54055f = 0;
                Function2<? super KSYTextureView, ? super Boolean, Unit> function2 = this.f54053d;
                if (function2 != null) {
                    function2.invoke(u9, Boolean.TRUE);
                    return;
                }
                return;
            }
            D(true);
            if (z9) {
                String dataSource = u9.getDataSource();
                Intrinsics.checkNotNullExpressionValue(dataSource, "dataSource");
                i(dataSource);
                return;
            }
            B();
        }
    }

    private final void D(boolean z9) {
        ViewGroup t9 = t();
        View findViewById = t9 != null ? t9.findViewById(R.id.tv_opponent_loading) : null;
        if (findViewById == null) {
            return;
        }
        findViewById.setVisibility(z9 ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E(KSYTextureView kSYTextureView) {
        kSYTextureView.setVideoScalingMode(2);
        kSYTextureView.setOnCompletionListener(this.f54056g);
        kSYTextureView.setOnPreparedListener(this.f54057h);
        kSYTextureView.setOnInfoListener(this.f54060k);
        kSYTextureView.setOnVideoSizeChangedListener(this.f54058i);
        kSYTextureView.setOnErrorListener(this.f54059j);
        kSYTextureView.setBufferTimeMax(2.0f);
        kSYTextureView.setTimeout(5, 30);
    }

    private final ViewGroup t() {
        KSYTextureView u9 = u();
        return (ViewGroup) (u9 != null ? u9.getParent() : null);
    }

    private final KSYTextureView u() {
        return v().get();
    }

    private final WeakReference<KSYTextureView> v() {
        return (WeakReference) this.f54062m.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(f this$0, IMediaPlayer iMediaPlayer) {
        Function1<? super KSYTextureView, Unit> function1;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        KSYTextureView u9 = this$0.u();
        if (u9 != null) {
            u9.stop();
            u9.release();
            KSYTextureView u10 = this$0.u();
            if (u10 == null || (function1 = this$0.f54052c) == null) {
                return;
            }
            function1.invoke(u10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean x(f this$0, IMediaPlayer iMediaPlayer, int i4, int i10) {
        Function2<? super KSYTextureView, ? super Boolean, Unit> function2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i4 != -10004 && i4 != -10002 && i4 != -1004 && i4 != 1) {
            KSYTextureView u9 = this$0.u();
            if (u9 != null && (function2 = this$0.f54053d) != null) {
                function2.invoke(u9, Boolean.FALSE);
            }
        } else {
            this$0.C(true);
        }
        String str = this$0.f54050a;
        o0.n(str, "ERROR: " + i4 + '|' + i10);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean y(f this$0, IMediaPlayer iMediaPlayer, int i4, int i10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String str = this$0.f54050a;
        o0.g(str, "INFO: " + i4 + '|' + i10);
        if (i4 == 3) {
            KSYTextureView u9 = this$0.u();
            if (u9 != null) {
                this$0.D(false);
                Function1<? super KSYTextureView, Unit> function1 = this$0.f54051b;
                if (function1 != null) {
                    function1.invoke(u9);
                }
            }
            this$0.f54055f = 0;
            o0.g(this$0.f54050a, "START RENDERING VIDEO");
        } else if (i4 == 10002) {
            o0.a(this$0.f54050a, "START PLAYING AUDIO");
        } else if (i4 == 40020) {
            o0.g(this$0.f54050a, "RELOAD REQUIRED..");
            this$0.C(false);
        } else if (i4 == 50001) {
            o0.g(this$0.f54050a, "RELOAD SUCCESSFUL!");
        } else if (i4 == 701) {
            o0.a(this$0.f54050a, "START BUFFERING DATA");
        } else if (i4 == 702) {
            o0.a(this$0.f54050a, "DATA BUFFERING COMPLETE");
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(f this$0, IMediaPlayer iMediaPlayer) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        o0.a(this$0.f54050a, "On Prepared");
        this$0.b();
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g
    public void a(boolean z9) {
        KSYTextureView u9 = u();
        if (u9 != null) {
            u9.setPlayerMute(z9 ? 1 : 0);
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g
    public void b() {
        KSYTextureView u9 = u();
        if (u9 != null) {
            boolean isPlaying = u9.isPlaying();
            String str = this.f54050a;
            o0.a(str, "xxx Try starting play. Is playing now: " + isPlaying);
            if (isPlaying) {
                return;
            }
            u9.setVideoScalingMode(2);
            u9.start();
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g
    public void c() {
        if (isDestroyed() || u() == null) {
            return;
        }
        String str = this.f54050a;
        o0.a(str, "Stopping..." + this);
        this.f54055f = 0;
        KSYTextureView u9 = u();
        if (u9 != null) {
            String str2 = this.f54050a;
            o0.a(str2, "IsPlaing:" + u9.isPlaying());
            if (u9.isPlaying()) {
                u9.stop();
            }
            o0.a(this.f54050a, "Resetting");
            u9.reset();
        }
        o0.a(this.f54050a, "Stopped...");
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g
    public void d(int i4) {
        KSYTextureView u9 = u();
        if (u9 != null) {
            if (i4 == 1) {
                u9.setVideoScalingMode(2);
            } else {
                u9.setVideoScalingMode(1);
            }
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g
    public void destroy() {
        if (isDestroyed() || u() == null) {
            return;
        }
        KSYTextureView u9 = u();
        Context context = u9 != null ? u9.getContext() : null;
        PlayerActivity playerActivity = context instanceof PlayerActivity ? (PlayerActivity) context : null;
        String K1 = playerActivity != null ? playerActivity.K1() : null;
        KSYTextureView u10 = u();
        if (u10 != null) {
            u10.release();
        }
        v().clear();
        f(true);
        String str = this.f54050a;
        o0.a(str, "Destroyed in Anchor " + K1);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g
    public void e() {
        KSYTextureView u9 = u();
        if (u9 != null) {
            if (u9.isPlaying()) {
                u9.pause();
            } else {
                u9.start();
            }
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g
    public void f(boolean z9) {
        this.f54063n = z9;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g
    public void g(@m8.g String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        KSYTextureView u9 = u();
        if (u9 != null) {
            String str = this.f54050a;
            o0.a(str, "xxx Setting URL: " + url);
            u9.setDataSource(url);
            u9.prepareAsync();
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g
    public void h(@m8.g Function1<? super KSYTextureView, Unit> onPlayBegin, @m8.g Function1<? super KSYTextureView, Unit> onPlayEnd, @m8.g Function2<? super KSYTextureView, ? super Boolean, Unit> onPlayError, @h Function1<? super String, Unit> function1) {
        Intrinsics.checkNotNullParameter(onPlayBegin, "onPlayBegin");
        Intrinsics.checkNotNullParameter(onPlayEnd, "onPlayEnd");
        Intrinsics.checkNotNullParameter(onPlayError, "onPlayError");
        this.f54051b = onPlayBegin;
        this.f54052c = onPlayEnd;
        this.f54053d = onPlayError;
        this.f54054e = function1;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g
    public void i(@m8.g String newUrl) {
        Intrinsics.checkNotNullParameter(newUrl, "newUrl");
        KSYTextureView u9 = u();
        if (u9 != null) {
            String str = this.f54050a;
            o0.a(str, "qqq Reconnecting... URL: " + newUrl);
            u9.stop();
            u9.reset();
            E(u9);
            u9.setDataSource(newUrl);
            u9.prepareAsync();
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g
    public boolean isDestroyed() {
        return this.f54063n;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g
    public void j(int i4) {
    }

    @h
    public final KSYMediaPlayer r() {
        KSYTextureView u9 = u();
        if (u9 != null) {
            return u9.getMediaPlayer();
        }
        return null;
    }

    public final int s() {
        return this.f54061l;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g
    public void setVisible(boolean z9) {
        KSYTextureView u9 = u();
        if (u9 != null) {
            u9.setVisibility(z9 ? 0 : 8);
        }
        D(z9);
    }

    public /* synthetic */ f(ViewGroup viewGroup, int i4, KSYMediaPlayer kSYMediaPlayer, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(viewGroup, i4, (i10 & 4) != 0 ? null : kSYMediaPlayer);
    }
}
