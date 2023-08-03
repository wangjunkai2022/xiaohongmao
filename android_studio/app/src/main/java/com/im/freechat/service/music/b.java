package com.im.freechat.service.music;

import android.content.ComponentName;
import android.content.Context;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.lifecycle.MutableLiveData;
import io.sentry.protocol.t;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: MediaSessionConnection.kt */
@Metadata(bv = {}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0005B\u0017\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!R%\u0010\t\u001a\u0010\u0012\f\u0012\n \u0004*\u0004\u0018\u00010\u00030\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR%\u0010\r\u001a\u0010\u0012\f\u0012\n \u0004*\u0004\u0018\u00010\n0\n0\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0006\u001a\u0004\b\f\u0010\bR\u0018\u0010\u0011\u001a\u00060\u000eR\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0013R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\u0016R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a¨\u0006\""}, d2 = {"Lcom/im/freechat/service/music/b;", "", "Landroidx/lifecycle/MutableLiveData;", "Landroid/support/v4/media/session/PlaybackStateCompat;", "kotlin.jvm.PlatformType", "a", "Landroidx/lifecycle/MutableLiveData;", "e", "()Landroidx/lifecycle/MutableLiveData;", "playbackState", "Landroid/support/v4/media/MediaMetadataCompat;", "b", "d", "nowPlaying", "Lcom/im/freechat/service/music/b$a;", "c", "Lcom/im/freechat/service/music/b$a;", "mediaBrowserConnectionCallback", "Landroid/support/v4/media/MediaBrowserCompat;", "Landroid/support/v4/media/MediaBrowserCompat;", "mediaBrowser", "Landroid/support/v4/media/session/MediaControllerCompat;", "Landroid/support/v4/media/session/MediaControllerCompat;", "mediaController", "Landroid/support/v4/media/session/MediaControllerCompat$e;", "f", "()Landroid/support/v4/media/session/MediaControllerCompat$e;", "transportControls", "Landroid/content/Context;", "context", "Landroid/content/ComponentName;", "serviceComponent", "<init>", "(Landroid/content/Context;Landroid/content/ComponentName;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final MutableLiveData<PlaybackStateCompat> f42253a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final MutableLiveData<MediaMetadataCompat> f42254b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final a f42255c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private final MediaBrowserCompat f42256d;
    @h

    /* renamed from: e  reason: collision with root package name */
    private MediaControllerCompat f42257e;

    /* compiled from: MediaSessionConnection.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0082\u0004\u0018\u00002\u00020\u0001:\u0001\u0005B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/im/freechat/service/music/b$a;", "Landroid/support/v4/media/MediaBrowserCompat$b;", "", "onConnected", "Landroid/content/Context;", "a", "Landroid/content/Context;", "context", "<init>", "(Lcom/im/freechat/service/music/b;Landroid/content/Context;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    private final class a extends MediaBrowserCompat.b {
        @g

        /* renamed from: a  reason: collision with root package name */
        private final Context f42258a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f42259b;

        /* compiled from: MediaSessionConnection.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\t\u001a\u00020\u0004H\u0016¨\u0006\f"}, d2 = {"Lcom/im/freechat/service/music/b$a$a;", "Landroid/support/v4/media/session/MediaControllerCompat$a;", "Landroid/support/v4/media/session/PlaybackStateCompat;", t.b.f83859d, "", "f", "Landroid/support/v4/media/MediaMetadataCompat;", com.google.android.exoplayer2.text.ttml.d.f25744y, "e", "j", "<init>", "(Lcom/im/freechat/service/music/b$a;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
        /* renamed from: com.im.freechat.service.music.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        private final class C0343a extends MediaControllerCompat.a {
            public C0343a() {
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a
            public void e(@h MediaMetadataCompat mediaMetadataCompat) {
                MutableLiveData<MediaMetadataCompat> d4 = a.this.f42259b.d();
                if (mediaMetadataCompat == null) {
                    mediaMetadataCompat = c.c();
                }
                d4.postValue(mediaMetadataCompat);
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a
            public void f(@h PlaybackStateCompat playbackStateCompat) {
                MutableLiveData<PlaybackStateCompat> e4 = a.this.f42259b.e();
                if (playbackStateCompat == null) {
                    playbackStateCompat = c.a();
                }
                e4.postValue(playbackStateCompat);
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a
            public void j() {
                a.this.f42259b.f42255c.onConnectionSuspended();
            }
        }

        public a(@g b bVar, Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            this.f42259b = bVar;
            this.f42258a = context;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b
        public void onConnected() {
            b bVar = this.f42259b;
            MediaControllerCompat mediaControllerCompat = new MediaControllerCompat(this.f42258a, bVar.f42256d.h());
            mediaControllerCompat.y(new C0343a());
            bVar.f42257e = mediaControllerCompat;
        }
    }

    public b(@g Context context, @g ComponentName serviceComponent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(serviceComponent, "serviceComponent");
        this.f42253a = new MutableLiveData<>(c.a());
        this.f42254b = new MutableLiveData<>(c.c());
        a aVar = new a(this, context);
        this.f42255c = aVar;
        MediaBrowserCompat mediaBrowserCompat = new MediaBrowserCompat(context, serviceComponent, aVar, null);
        mediaBrowserCompat.a();
        this.f42256d = mediaBrowserCompat;
    }

    @g
    public final MutableLiveData<MediaMetadataCompat> d() {
        return this.f42254b;
    }

    @g
    public final MutableLiveData<PlaybackStateCompat> e() {
        return this.f42253a;
    }

    @h
    public final MediaControllerCompat.e f() {
        MediaControllerCompat mediaControllerCompat = this.f42257e;
        if (mediaControllerCompat != null) {
            return mediaControllerCompat.v();
        }
        return null;
    }
}
