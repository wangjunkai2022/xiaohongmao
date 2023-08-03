package com.im.freechat.service.music;

import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: MediaSessionConnection.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\"\u001d\u0010\u0006\u001a\u00020\u00008\u0006¢\u0006\u0012\n\u0004\b\u0001\u0010\u0002\u0012\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0001\u0010\u0003\"\u001d\u0010\r\u001a\u00020\u00078\u0006¢\u0006\u0012\n\u0004\b\b\u0010\t\u0012\u0004\b\f\u0010\u0005\u001a\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Landroid/support/v4/media/session/PlaybackStateCompat;", "a", "Landroid/support/v4/media/session/PlaybackStateCompat;", "()Landroid/support/v4/media/session/PlaybackStateCompat;", "getEMPTY_PLAYBACK_STATE$annotations", "()V", "EMPTY_PLAYBACK_STATE", "Landroid/support/v4/media/MediaMetadataCompat;", "b", "Landroid/support/v4/media/MediaMetadataCompat;", "c", "()Landroid/support/v4/media/MediaMetadataCompat;", "getNOTHING_PLAYING$annotations", "NOTHING_PLAYING", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c {
    @g

    /* renamed from: a  reason: collision with root package name */
    private static final PlaybackStateCompat f42261a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private static final MediaMetadataCompat f42262b;

    static {
        PlaybackStateCompat c10 = new PlaybackStateCompat.c().j(0, 0L, 0.0f).c();
        Intrinsics.checkNotNullExpressionValue(c10, "Builder()\n    .setState(…NONE, 0, 0f)\n    .build()");
        f42261a = c10;
        MediaMetadataCompat a10 = new MediaMetadataCompat.b().e(MediaMetadataCompat.METADATA_KEY_MEDIA_ID, "").c(MediaMetadataCompat.METADATA_KEY_DURATION, 0L).e(MediaMetadataCompat.METADATA_KEY_MEDIA_URI, "").e(MediaMetadataCompat.METADATA_KEY_DATE, "").a();
        Intrinsics.checkNotNullExpressionValue(a10, "Builder()\n    .putString…EY_DATE, \"\")\n    .build()");
        f42262b = a10;
    }

    @g
    public static final PlaybackStateCompat a() {
        return f42261a;
    }

    public static /* synthetic */ void b() {
    }

    @g
    public static final MediaMetadataCompat c() {
        return f42262b;
    }

    public static /* synthetic */ void d() {
    }
}
