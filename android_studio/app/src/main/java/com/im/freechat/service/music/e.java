package com.im.freechat.service.music;

import android.net.Uri;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import com.google.android.exoplayer2.ext.mediasession.b;
import com.google.android.exoplayer2.j;
import com.google.android.exoplayer2.v1;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: PlaybackPreparer.kt */
@Metadata(bv = {}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ4\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\fH\u0016J\"\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\f2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016J\"\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\f2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016J\"\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0010\u001a\u00020\f2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u001e"}, d2 = {"Lcom/im/freechat/service/music/e;", "Lcom/google/android/exoplayer2/ext/mediasession/b$j;", "Lcom/google/android/exoplayer2/v1;", com.ksyun.media.player.d.d.an, "Lcom/google/android/exoplayer2/j;", "controlDispatcher", "", "command", "Landroid/os/Bundle;", "extras", "Landroid/os/ResultReceiver;", "cb", "", "o", "", "h", "playWhenReady", "", "g", "mediaId", "t", s2.d.f93273b, "c", "Landroid/net/Uri;", "uri", "j", "Lp4/a;", "playback", "<init>", "(Lp4/a;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class e implements b.j {
    @g

    /* renamed from: c  reason: collision with root package name */
    private final p4.a f42265c;

    public e(@g p4.a playback) {
        Intrinsics.checkNotNullParameter(playback, "playback");
        this.f42265c = playback;
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.b.j
    public void c(@g String query, boolean z9, @h Bundle bundle) {
        Intrinsics.checkNotNullParameter(query, "query");
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.b.j
    public void g(boolean z9) {
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.b.j
    public long h() {
        return 33792L;
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.b.j
    public void j(@g Uri uri, boolean z9, @h Bundle bundle) {
        Intrinsics.checkNotNullParameter(uri, "uri");
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.b.c
    public boolean o(@g v1 player, @g j controlDispatcher, @g String command, @h Bundle bundle, @h ResultReceiver resultReceiver) {
        Intrinsics.checkNotNullParameter(player, "player");
        Intrinsics.checkNotNullParameter(controlDispatcher, "controlDispatcher");
        Intrinsics.checkNotNullParameter(command, "command");
        return false;
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.b.j
    public void t(@g String mediaId, boolean z9, @h Bundle bundle) {
        Object obj;
        Intrinsics.checkNotNullParameter(mediaId, "mediaId");
        if (bundle != null) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(d.f42263a);
            if (parcelableArrayList != null) {
                Iterator it = parcelableArrayList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it.next();
                    MediaMetadataCompat it2 = (MediaMetadataCompat) obj;
                    Intrinsics.checkNotNullExpressionValue(it2, "it");
                    if (Intrinsics.areEqual(it2.getString(MediaMetadataCompat.METADATA_KEY_MEDIA_ID), mediaId)) {
                        break;
                    }
                }
                int indexOf = parcelableArrayList.indexOf((MediaMetadataCompat) obj);
                this.f42265c.M(parcelableArrayList);
                if (indexOf == -1) {
                    return;
                }
                this.f42265c.x(indexOf, 0L);
                return;
            }
            throw new IllegalStateException("no datasource".toString());
        }
        throw new IllegalStateException("Required value was null.".toString());
    }
}
