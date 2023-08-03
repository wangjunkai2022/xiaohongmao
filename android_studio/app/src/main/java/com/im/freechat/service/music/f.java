package com.im.freechat.service.music;

import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.session.MediaSessionCompat;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.v1;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: MusicService.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u0010"}, d2 = {"Lcom/im/freechat/service/music/f;", "Lcom/google/android/exoplayer2/ext/mediasession/f;", "Lcom/google/android/exoplayer2/v1;", com.ksyun.media.player.d.d.an, "", "windowIndex", "Landroid/support/v4/media/MediaDescriptionCompat;", "u", "Lcom/google/android/exoplayer2/s2$d;", "h", "Lcom/google/android/exoplayer2/s2$d;", "window", "Landroid/support/v4/media/session/MediaSessionCompat;", "mediaSession", "<init>", "(Landroid/support/v4/media/session/MediaSessionCompat;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
final class f extends com.google.android.exoplayer2.ext.mediasession.f {
    @g

    /* renamed from: h  reason: collision with root package name */
    private final s2.d f42266h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(@g MediaSessionCompat mediaSession) {
        super(mediaSession);
        Intrinsics.checkNotNullParameter(mediaSession, "mediaSession");
        this.f42266h = new s2.d();
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.f
    @g
    public MediaDescriptionCompat u(@g v1 player, int i4) {
        Intrinsics.checkNotNullParameter(player, "player");
        Object obj = player.A0().t(i4, this.f42266h, true).f24574b;
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type android.support.v4.media.MediaDescriptionCompat");
        return (MediaDescriptionCompat) obj;
    }
}
