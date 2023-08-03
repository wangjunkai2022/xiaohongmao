package com.im.freechat.service.music;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media.MediaBrowserServiceCompat;
import com.google.android.exoplayer2.v1;
import io.sentry.protocol.t;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: MusicService.kt */
@Metadata(bv = {}, d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000 )2\u00020\u0001:\u0002\u0017\u001bB\u0007¢\u0006\u0004\b0\u00101J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0002H\u0016J$\u0010\u000e\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0012\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0\nH\u0016J$\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b#\u0010$R\u001b\u0010+\u001a\u00020&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.¨\u00062"}, d2 = {"Lcom/im/freechat/service/music/MusicService;", "Landroidx/media/MediaBrowserServiceCompat;", "", "onCreate", "Landroid/content/Intent;", "rootIntent", "onTaskRemoved", "onDestroy", "", "parentId", "Landroidx/media/MediaBrowserServiceCompat$Result;", "", "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;", "result", "onLoadChildren", "clientPackageName", "", "clientUid", "Landroid/os/Bundle;", "rootHints", "Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;", "onGetRoot", "Lcom/im/freechat/service/music/a;", "a", "Lcom/im/freechat/service/music/a;", "becomingNoisyReceiver", "Landroid/support/v4/media/session/MediaSessionCompat;", "b", "Landroid/support/v4/media/session/MediaSessionCompat;", "mediaSession", "Landroid/support/v4/media/session/MediaControllerCompat;", "c", "Landroid/support/v4/media/session/MediaControllerCompat;", "mediaController", "Lcom/google/android/exoplayer2/ext/mediasession/b;", "d", "Lcom/google/android/exoplayer2/ext/mediasession/b;", "mediaSessionConnector", "Lp4/a;", "e", "Lkotlin/Lazy;", "g", "()Lp4/a;", "playback", "", "f", "Z", "isServiceStarted", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class MusicService extends MediaBrowserServiceCompat {
    @g

    /* renamed from: g  reason: collision with root package name */
    public static final a f42237g = new a(null);
    @h

    /* renamed from: h  reason: collision with root package name */
    private static v1 f42238h;

    /* renamed from: a  reason: collision with root package name */
    private com.im.freechat.service.music.a f42239a;

    /* renamed from: b  reason: collision with root package name */
    private MediaSessionCompat f42240b;

    /* renamed from: c  reason: collision with root package name */
    private MediaControllerCompat f42241c;

    /* renamed from: d  reason: collision with root package name */
    private com.google.android.exoplayer2.ext.mediasession.b f42242d;
    @g

    /* renamed from: e  reason: collision with root package name */
    private final Lazy f42243e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f42244f;

    /* compiled from: MusicService.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/im/freechat/service/music/MusicService$a;", "", "Lcom/google/android/exoplayer2/v1;", com.ksyun.media.player.d.d.an, "Lcom/google/android/exoplayer2/v1;", "a", "()Lcom/google/android/exoplayer2/v1;", "b", "(Lcom/google/android/exoplayer2/v1;)V", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @h
        public final v1 a() {
            return MusicService.f42238h;
        }

        public final void b(@h v1 v1Var) {
            MusicService.f42238h = v1Var;
        }
    }

    /* compiled from: MusicService.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\t\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\f"}, d2 = {"Lcom/im/freechat/service/music/MusicService$b;", "Landroid/support/v4/media/session/MediaControllerCompat$a;", "Landroid/support/v4/media/session/PlaybackStateCompat;", t.b.f83859d, "", "p", "Landroid/support/v4/media/MediaMetadataCompat;", com.google.android.exoplayer2.text.ttml.d.f25744y, "e", "f", "<init>", "(Lcom/im/freechat/service/music/MusicService;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    private final class b extends MediaControllerCompat.a {
        public b() {
        }

        private final void p(PlaybackStateCompat playbackStateCompat) {
            int state = playbackStateCompat.getState();
            com.im.freechat.service.music.a aVar = null;
            if (state != 3 && state != 6) {
                com.im.freechat.service.music.a aVar2 = MusicService.this.f42239a;
                if (aVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("becomingNoisyReceiver");
                } else {
                    aVar = aVar2;
                }
                aVar.b();
                if (MusicService.this.f42244f) {
                    MusicService.this.stopForeground(true);
                    MusicService.this.f42244f = false;
                    if (playbackStateCompat.getState() == 0) {
                        MusicService.this.stopSelf();
                        return;
                    }
                    return;
                }
                return;
            }
            com.im.freechat.service.music.a aVar3 = MusicService.this.f42239a;
            if (aVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("becomingNoisyReceiver");
            } else {
                aVar = aVar3;
            }
            aVar.a();
            if (MusicService.this.f42244f) {
                return;
            }
            MusicService.this.startService(new Intent(MusicService.this.getApplicationContext(), b.class));
            MusicService.this.f42244f = true;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public void e(@h MediaMetadataCompat mediaMetadataCompat) {
            MediaControllerCompat mediaControllerCompat = MusicService.this.f42241c;
            if (mediaControllerCompat == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mediaController");
                mediaControllerCompat = null;
            }
            PlaybackStateCompat l10 = mediaControllerCompat.l();
            if (l10 != null) {
                p(l10);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public void f(@h PlaybackStateCompat playbackStateCompat) {
            if (playbackStateCompat != null) {
                p(playbackStateCompat);
            }
        }
    }

    public MusicService() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, (Function0) new MusicService$special$$inlined$inject$default$1(this, null, null));
        this.f42243e = lazy;
    }

    private final p4.a g() {
        return (p4.a) this.f42243e.getValue();
    }

    @Override // androidx.media.MediaBrowserServiceCompat, android.app.Service
    public void onCreate() {
        super.onCreate();
        g().L();
        MediaSessionCompat mediaSessionCompat = new MediaSessionCompat(this, MusicService.class.getSimpleName());
        mediaSessionCompat.p(true);
        this.f42240b = mediaSessionCompat;
        setSessionToken(mediaSessionCompat.j());
        MediaSessionCompat mediaSessionCompat2 = this.f42240b;
        MediaSessionCompat mediaSessionCompat3 = null;
        if (mediaSessionCompat2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mediaSession");
            mediaSessionCompat2 = null;
        }
        MediaControllerCompat mediaControllerCompat = new MediaControllerCompat(this, mediaSessionCompat2);
        mediaControllerCompat.y(new b());
        this.f42241c = mediaControllerCompat;
        MediaSessionCompat mediaSessionCompat4 = this.f42240b;
        if (mediaSessionCompat4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mediaSession");
            mediaSessionCompat4 = null;
        }
        MediaSessionCompat.Token j4 = mediaSessionCompat4.j();
        Intrinsics.checkNotNullExpressionValue(j4, "mediaSession.sessionToken");
        this.f42239a = new com.im.freechat.service.music.a(this, j4);
        MediaSessionCompat mediaSessionCompat5 = this.f42240b;
        if (mediaSessionCompat5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mediaSession");
            mediaSessionCompat5 = null;
        }
        com.google.android.exoplayer2.ext.mediasession.b bVar = new com.google.android.exoplayer2.ext.mediasession.b(mediaSessionCompat5);
        bVar.W(g().H());
        bVar.V(new e(g()));
        MediaSessionCompat mediaSessionCompat6 = this.f42240b;
        if (mediaSessionCompat6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mediaSession");
        } else {
            mediaSessionCompat3 = mediaSessionCompat6;
        }
        bVar.Y(new f(mediaSessionCompat3));
        this.f42242d = bVar;
        f42238h = g().H();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        MediaSessionCompat mediaSessionCompat = this.f42240b;
        if (mediaSessionCompat == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mediaSession");
            mediaSessionCompat = null;
        }
        mediaSessionCompat.p(false);
        mediaSessionCompat.m();
        com.google.android.exoplayer2.ext.mediasession.b bVar = this.f42242d;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mediaSessionConnector");
            bVar = null;
        }
        bVar.W(null);
        g().I();
    }

    @Override // androidx.media.MediaBrowserServiceCompat
    @h
    public MediaBrowserServiceCompat.BrowserRoot onGetRoot(@g String clientPackageName, int i4, @h Bundle bundle) {
        Intrinsics.checkNotNullParameter(clientPackageName, "clientPackageName");
        return new MediaBrowserServiceCompat.BrowserRoot("empty_root", bundle);
    }

    @Override // androidx.media.MediaBrowserServiceCompat
    public void onLoadChildren(@g String parentId, @g MediaBrowserServiceCompat.Result<List<MediaBrowserCompat.MediaItem>> result) {
        Intrinsics.checkNotNullParameter(parentId, "parentId");
        Intrinsics.checkNotNullParameter(result, "result");
        result.sendResult(null);
    }

    @Override // android.app.Service
    public void onTaskRemoved(@h Intent intent) {
        super.onTaskRemoved(intent);
        g().y(true);
    }
}
