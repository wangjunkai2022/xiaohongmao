package com.google.android.exoplayer2.ext.mediasession;

import android.os.Bundle;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ext.mediasession.b;
import com.google.android.exoplayer2.i;
import com.google.android.exoplayer2.j;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.v1;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;

/* compiled from: TimelineQueueNavigator.java */
/* loaded from: classes2.dex */
public abstract class f implements b.l {

    /* renamed from: g  reason: collision with root package name */
    public static final int f22057g = 10;

    /* renamed from: c  reason: collision with root package name */
    private final MediaSessionCompat f22058c;

    /* renamed from: d  reason: collision with root package name */
    private final s2.d f22059d;

    /* renamed from: e  reason: collision with root package name */
    private final int f22060e;

    /* renamed from: f  reason: collision with root package name */
    private long f22061f;

    public f(MediaSessionCompat mediaSessionCompat) {
        this(mediaSessionCompat, 10);
    }

    private void v(v1 v1Var) {
        s2 A0 = v1Var.A0();
        if (A0.v()) {
            this.f22058c.A(Collections.emptyList());
            this.f22061f = -1L;
            return;
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        int min = Math.min(this.f22060e, A0.u());
        int j02 = v1Var.j0();
        long j4 = j02;
        arrayDeque.add(new MediaSessionCompat.QueueItem(u(v1Var, j02), j4));
        boolean H1 = v1Var.H1();
        int i4 = j02;
        while (true) {
            if ((j02 != -1 || i4 != -1) && arrayDeque.size() < min) {
                if (i4 != -1 && (i4 = A0.i(i4, 0, H1)) != -1) {
                    arrayDeque.add(new MediaSessionCompat.QueueItem(u(v1Var, i4), i4));
                }
                if (j02 != -1 && arrayDeque.size() < min && (j02 = A0.p(j02, 0, H1)) != -1) {
                    arrayDeque.addFirst(new MediaSessionCompat.QueueItem(u(v1Var, j02), j02));
                }
            }
        }
        this.f22058c.A(new ArrayList(arrayDeque));
        this.f22061f = j4;
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.b.l
    public final void a(v1 v1Var) {
        if (this.f22061f != -1 && v1Var.A0().u() <= this.f22060e) {
            if (v1Var.A0().v()) {
                return;
            }
            this.f22061f = v1Var.j0();
            return;
        }
        v(v1Var);
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.b.l
    public void b(v1 v1Var, j jVar, long j4) {
        int i4;
        s2 A0 = v1Var.A0();
        if (A0.v() || v1Var.K() || (i4 = (int) j4) < 0 || i4 >= A0.u()) {
            return;
        }
        jVar.c(v1Var, i4, i.f23649b);
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.b.l
    public final long e(@Nullable v1 v1Var) {
        return this.f22061f;
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.b.l
    public final void l(v1 v1Var) {
        v(v1Var);
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.b.c
    public boolean o(v1 v1Var, j jVar, String str, @Nullable Bundle bundle, @Nullable ResultReceiver resultReceiver) {
        return false;
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.b.l
    public void p(v1 v1Var, j jVar) {
        jVar.k(v1Var);
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.b.l
    public void q(v1 v1Var, j jVar) {
        jVar.j(v1Var);
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.b.l
    public long r(v1 v1Var) {
        boolean z9;
        boolean z10;
        s2 A0 = v1Var.A0();
        if (A0.v() || v1Var.K()) {
            z9 = false;
            z10 = false;
        } else {
            A0.r(v1Var.j0(), this.f22059d);
            boolean z11 = A0.u() > 1;
            z10 = v1Var.t0(4) || !this.f22059d.j() || v1Var.t0(6);
            z9 = (this.f22059d.j() && this.f22059d.f24581i) || v1Var.t0(5);
            r2 = z11;
        }
        long j4 = r2 ? 4096L : 0L;
        if (z10) {
            j4 |= 16;
        }
        return z9 ? j4 | 32 : j4;
    }

    public abstract MediaDescriptionCompat u(v1 v1Var, int i4);

    public f(MediaSessionCompat mediaSessionCompat, int i4) {
        com.google.android.exoplayer2.util.a.i(i4 > 0);
        this.f22058c = mediaSessionCompat;
        this.f22060e = i4;
        this.f22061f = -1L;
        this.f22059d = new s2.d();
    }
}
