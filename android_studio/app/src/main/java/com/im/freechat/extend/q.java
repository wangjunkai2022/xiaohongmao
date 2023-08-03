package com.im.freechat.extend;

import android.os.SystemClock;
import android.support.v4.media.session.PlaybackStateCompat;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PlaybackStateCompatExtentions.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\"\u0016\u0010\u0004\u001a\u00020\u0001*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0003\"\u0016\u0010\u0006\u001a\u00020\u0001*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0003\"\u0016\u0010\b\u001a\u00020\u0001*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0003\"\u0016\u0010\n\u001a\u00020\u0001*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b\t\u0010\u0003\"\u0016\u0010\u000e\u001a\u00020\u000b*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b\f\u0010\r\"\u0016\u0010\u0012\u001a\u00020\u000f*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Landroid/support/v4/media/session/PlaybackStateCompat;", "", "e", "(Landroid/support/v4/media/session/PlaybackStateCompat;)Z", "isPrepared", "d", "isPlaying", "c", "isPlayEnabled", "f", "isStopped", "", "b", "(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/lang/String;", "stateName", "", "a", "(Landroid/support/v4/media/session/PlaybackStateCompat;)J", "currentPlayBackPosition", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class q {
    public static final long a(@m8.g PlaybackStateCompat playbackStateCompat) {
        Intrinsics.checkNotNullParameter(playbackStateCompat, "<this>");
        if (playbackStateCompat.getState() == 3) {
            return ((float) playbackStateCompat.getPosition()) + (((float) (SystemClock.elapsedRealtime() - playbackStateCompat.getLastPositionUpdateTime())) * playbackStateCompat.getPlaybackSpeed());
        }
        return playbackStateCompat.getPosition();
    }

    @m8.g
    public static final String b(@m8.g PlaybackStateCompat playbackStateCompat) {
        Intrinsics.checkNotNullParameter(playbackStateCompat, "<this>");
        switch (playbackStateCompat.getState()) {
            case 0:
                return "STATE_NONE";
            case 1:
                return "STATE_STOPPED";
            case 2:
                return "STATE_PAUSED";
            case 3:
                return "STATE_PLAYING";
            case 4:
                return "STATE_FAST_FORWARDING";
            case 5:
                return "STATE_REWINDING";
            case 6:
                return "STATE_BUFFERING";
            case 7:
                return "STATE_ERROR";
            default:
                return "UNKNOWN_STATE";
        }
    }

    public static final boolean c(@m8.g PlaybackStateCompat playbackStateCompat) {
        Intrinsics.checkNotNullParameter(playbackStateCompat, "<this>");
        return n.b(playbackStateCompat.getActions(), 4L) || (n.b(playbackStateCompat.getActions(), 512L) && playbackStateCompat.getState() == 2);
    }

    public static final boolean d(@m8.g PlaybackStateCompat playbackStateCompat) {
        Intrinsics.checkNotNullParameter(playbackStateCompat, "<this>");
        return playbackStateCompat.getState() == 6 || playbackStateCompat.getState() == 3;
    }

    public static final boolean e(@m8.g PlaybackStateCompat playbackStateCompat) {
        boolean contains;
        Intrinsics.checkNotNullParameter(playbackStateCompat, "<this>");
        contains = ArraysKt___ArraysKt.contains(new Integer[]{6, 3, 2}, Integer.valueOf(playbackStateCompat.getState()));
        return contains;
    }

    public static final boolean f(@m8.g PlaybackStateCompat playbackStateCompat) {
        Intrinsics.checkNotNullParameter(playbackStateCompat, "<this>");
        return playbackStateCompat.getState() == 1;
    }
}
