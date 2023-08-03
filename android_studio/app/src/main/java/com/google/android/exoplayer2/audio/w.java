package com.google.android.exoplayer2.audio;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.util.z0;

/* compiled from: AudioTimestampPoller.java */
/* loaded from: classes2.dex */
final class w {

    /* renamed from: g  reason: collision with root package name */
    private static final int f21369g = 0;

    /* renamed from: h  reason: collision with root package name */
    private static final int f21370h = 1;

    /* renamed from: i  reason: collision with root package name */
    private static final int f21371i = 2;

    /* renamed from: j  reason: collision with root package name */
    private static final int f21372j = 3;

    /* renamed from: k  reason: collision with root package name */
    private static final int f21373k = 4;

    /* renamed from: l  reason: collision with root package name */
    private static final int f21374l = 10000;

    /* renamed from: m  reason: collision with root package name */
    private static final int f21375m = 10000000;

    /* renamed from: n  reason: collision with root package name */
    private static final int f21376n = 500000;

    /* renamed from: o  reason: collision with root package name */
    private static final int f21377o = 500000;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final a f21378a;

    /* renamed from: b  reason: collision with root package name */
    private int f21379b;

    /* renamed from: c  reason: collision with root package name */
    private long f21380c;

    /* renamed from: d  reason: collision with root package name */
    private long f21381d;

    /* renamed from: e  reason: collision with root package name */
    private long f21382e;

    /* renamed from: f  reason: collision with root package name */
    private long f21383f;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AudioTimestampPoller.java */
    @RequiresApi(19)
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final AudioTrack f21384a;

        /* renamed from: b  reason: collision with root package name */
        private final AudioTimestamp f21385b = new AudioTimestamp();

        /* renamed from: c  reason: collision with root package name */
        private long f21386c;

        /* renamed from: d  reason: collision with root package name */
        private long f21387d;

        /* renamed from: e  reason: collision with root package name */
        private long f21388e;

        public a(AudioTrack audioTrack) {
            this.f21384a = audioTrack;
        }

        public long a() {
            return this.f21388e;
        }

        public long b() {
            return this.f21385b.nanoTime / 1000;
        }

        public boolean c() {
            boolean timestamp = this.f21384a.getTimestamp(this.f21385b);
            if (timestamp) {
                long j4 = this.f21385b.framePosition;
                if (this.f21387d > j4) {
                    this.f21386c++;
                }
                this.f21387d = j4;
                this.f21388e = j4 + (this.f21386c << 32);
            }
            return timestamp;
        }
    }

    public w(AudioTrack audioTrack) {
        if (z0.f27743a >= 19) {
            this.f21378a = new a(audioTrack);
            h();
            return;
        }
        this.f21378a = null;
        i(3);
    }

    private void i(int i4) {
        this.f21379b = i4;
        if (i4 == 0) {
            this.f21382e = 0L;
            this.f21383f = -1L;
            this.f21380c = System.nanoTime() / 1000;
            this.f21381d = 10000L;
        } else if (i4 == 1) {
            this.f21381d = 10000L;
        } else if (i4 == 2 || i4 == 3) {
            this.f21381d = 10000000L;
        } else if (i4 == 4) {
            this.f21381d = 500000L;
        } else {
            throw new IllegalStateException();
        }
    }

    public void a() {
        if (this.f21379b == 4) {
            h();
        }
    }

    @TargetApi(19)
    public long b() {
        a aVar = this.f21378a;
        if (aVar != null) {
            return aVar.a();
        }
        return -1L;
    }

    @TargetApi(19)
    public long c() {
        a aVar = this.f21378a;
        return aVar != null ? aVar.b() : com.google.android.exoplayer2.i.f23649b;
    }

    public boolean d() {
        return this.f21379b == 2;
    }

    public boolean e() {
        int i4 = this.f21379b;
        return i4 == 1 || i4 == 2;
    }

    @TargetApi(19)
    public boolean f(long j4) {
        a aVar = this.f21378a;
        if (aVar == null || j4 - this.f21382e < this.f21381d) {
            return false;
        }
        this.f21382e = j4;
        boolean c10 = aVar.c();
        int i4 = this.f21379b;
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 != 4) {
                            throw new IllegalStateException();
                        }
                    } else if (c10) {
                        h();
                    }
                } else if (!c10) {
                    h();
                }
            } else if (c10) {
                if (this.f21378a.a() > this.f21383f) {
                    i(2);
                }
            } else {
                h();
            }
        } else if (c10) {
            if (this.f21378a.b() < this.f21380c) {
                return false;
            }
            this.f21383f = this.f21378a.a();
            i(1);
        } else if (j4 - this.f21380c > 500000) {
            i(3);
        }
        return c10;
    }

    public void g() {
        i(4);
    }

    public void h() {
        if (this.f21378a != null) {
            i(0);
        }
    }
}
