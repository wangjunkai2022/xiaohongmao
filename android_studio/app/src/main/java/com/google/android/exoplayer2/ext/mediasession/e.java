package com.google.android.exoplayer2.ext.mediasession;

import android.os.Bundle;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.ext.mediasession.b;
import com.google.android.exoplayer2.j;
import com.google.android.exoplayer2.util.z0;
import com.google.android.exoplayer2.v1;
import java.util.List;

/* compiled from: TimelineQueueEditor.java */
/* loaded from: classes2.dex */
public final class e implements b.k, b.c {

    /* renamed from: g  reason: collision with root package name */
    public static final String f22050g = "exo_move_window";

    /* renamed from: h  reason: collision with root package name */
    public static final String f22051h = "from_index";

    /* renamed from: i  reason: collision with root package name */
    public static final String f22052i = "to_index";

    /* renamed from: c  reason: collision with root package name */
    private final MediaControllerCompat f22053c;

    /* renamed from: d  reason: collision with root package name */
    private final d f22054d;

    /* renamed from: e  reason: collision with root package name */
    private final a f22055e;

    /* renamed from: f  reason: collision with root package name */
    private final b f22056f;

    /* compiled from: TimelineQueueEditor.java */
    /* loaded from: classes2.dex */
    public interface a {
        @Nullable
        b1 a(MediaDescriptionCompat mediaDescriptionCompat);
    }

    /* compiled from: TimelineQueueEditor.java */
    /* loaded from: classes2.dex */
    interface b {
        boolean a(MediaDescriptionCompat mediaDescriptionCompat, MediaDescriptionCompat mediaDescriptionCompat2);
    }

    /* compiled from: TimelineQueueEditor.java */
    /* loaded from: classes2.dex */
    public static final class c implements b {
        @Override // com.google.android.exoplayer2.ext.mediasession.e.b
        public boolean a(MediaDescriptionCompat mediaDescriptionCompat, MediaDescriptionCompat mediaDescriptionCompat2) {
            return z0.c(mediaDescriptionCompat.getMediaId(), mediaDescriptionCompat2.getMediaId());
        }
    }

    /* compiled from: TimelineQueueEditor.java */
    /* loaded from: classes2.dex */
    public interface d {
        void a(int i4, MediaDescriptionCompat mediaDescriptionCompat);

        void b(int i4, int i10);

        void remove(int i4);
    }

    public e(MediaControllerCompat mediaControllerCompat, d dVar, a aVar) {
        this(mediaControllerCompat, dVar, aVar, new c());
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.b.k
    public void i(v1 v1Var, MediaDescriptionCompat mediaDescriptionCompat) {
        m(v1Var, mediaDescriptionCompat, v1Var.A0().u());
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.b.k
    public void m(v1 v1Var, MediaDescriptionCompat mediaDescriptionCompat, int i4) {
        b1 a10 = this.f22055e.a(mediaDescriptionCompat);
        if (a10 != null) {
            this.f22054d.a(i4, mediaDescriptionCompat);
            v1Var.M1(i4, a10);
        }
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.b.c
    public boolean o(v1 v1Var, j jVar, String str, @Nullable Bundle bundle, @Nullable ResultReceiver resultReceiver) {
        if (!f22050g.equals(str) || bundle == null) {
            return false;
        }
        int i4 = bundle.getInt(f22051h, -1);
        int i10 = bundle.getInt(f22052i, -1);
        if (i4 == -1 || i10 == -1) {
            return true;
        }
        this.f22054d.b(i4, i10);
        v1Var.z1(i4, i10);
        return true;
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.b.k
    public void s(v1 v1Var, MediaDescriptionCompat mediaDescriptionCompat) {
        List<MediaSessionCompat.QueueItem> m9 = this.f22053c.m();
        for (int i4 = 0; i4 < m9.size(); i4++) {
            if (this.f22056f.a(m9.get(i4).getDescription(), mediaDescriptionCompat)) {
                this.f22054d.remove(i4);
                v1Var.d0(i4);
                return;
            }
        }
    }

    public e(MediaControllerCompat mediaControllerCompat, d dVar, a aVar, b bVar) {
        this.f22053c = mediaControllerCompat;
        this.f22054d = dVar;
        this.f22055e = aVar;
        this.f22056f = bVar;
    }
}
