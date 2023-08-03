package com.im.freechat.service.music;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MusicService.kt */
@Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\nR\u0014\u0010\r\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, d2 = {"Lcom/im/freechat/service/music/a;", "Landroid/content/BroadcastReceiver;", "", "a", "b", "Landroid/content/Context;", "context", "Landroid/content/Intent;", "intent", "onReceive", "Landroid/content/Context;", "Landroid/content/IntentFilter;", "Landroid/content/IntentFilter;", "noisyIntentFilter", "Landroid/support/v4/media/session/MediaControllerCompat;", "c", "Landroid/support/v4/media/session/MediaControllerCompat;", "controller", "", "d", "Z", "registered", "Landroid/support/v4/media/session/MediaSessionCompat$Token;", "sessionToken", "<init>", "(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a extends BroadcastReceiver {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final Context f42249a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final IntentFilter f42250b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final MediaControllerCompat f42251c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f42252d;

    public a(@g Context context, @g MediaSessionCompat.Token sessionToken) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sessionToken, "sessionToken");
        this.f42249a = context;
        this.f42250b = new IntentFilter("android.media.AUDIO_BECOMING_NOISY");
        this.f42251c = new MediaControllerCompat(context, sessionToken);
    }

    public final void a() {
        if (this.f42252d) {
            return;
        }
        this.f42249a.registerReceiver(this, this.f42250b);
        this.f42252d = true;
    }

    public final void b() {
        if (this.f42252d) {
            this.f42249a.unregisterReceiver(this);
            this.f42252d = false;
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(@g Context context, @g Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (Intrinsics.areEqual(intent.getAction(), "android.media.AUDIO_BECOMING_NOISY")) {
            this.f42251c.v().b();
        }
    }
}
