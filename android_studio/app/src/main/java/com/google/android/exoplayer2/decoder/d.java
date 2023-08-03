package com.google.android.exoplayer2.decoder;

/* compiled from: DecoderCounters.java */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public int f21591a;

    /* renamed from: b  reason: collision with root package name */
    public int f21592b;

    /* renamed from: c  reason: collision with root package name */
    public int f21593c;

    /* renamed from: d  reason: collision with root package name */
    public int f21594d;

    /* renamed from: e  reason: collision with root package name */
    public int f21595e;

    /* renamed from: f  reason: collision with root package name */
    public int f21596f;

    /* renamed from: g  reason: collision with root package name */
    public int f21597g;

    /* renamed from: h  reason: collision with root package name */
    public int f21598h;

    /* renamed from: i  reason: collision with root package name */
    public int f21599i;

    /* renamed from: j  reason: collision with root package name */
    public long f21600j;

    /* renamed from: k  reason: collision with root package name */
    public int f21601k;

    private void b(long j4, int i4) {
        this.f21600j += j4;
        this.f21601k += i4;
    }

    public void a(long j4) {
        b(j4, 1);
    }

    public synchronized void c() {
    }

    public void d(d dVar) {
        this.f21591a += dVar.f21591a;
        this.f21592b += dVar.f21592b;
        this.f21593c += dVar.f21593c;
        this.f21594d += dVar.f21594d;
        this.f21595e += dVar.f21595e;
        this.f21596f += dVar.f21596f;
        this.f21597g += dVar.f21597g;
        this.f21598h = Math.max(this.f21598h, dVar.f21598h);
        this.f21599i += dVar.f21599i;
        b(dVar.f21600j, dVar.f21601k);
    }
}
