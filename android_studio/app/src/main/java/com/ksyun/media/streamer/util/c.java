package com.ksyun.media.streamer.util;

/* compiled from: FpsLimiter.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46757a = "FpsLimiter";

    /* renamed from: b  reason: collision with root package name */
    private static final int f46758b = 15;

    /* renamed from: c  reason: collision with root package name */
    private float f46759c;

    /* renamed from: d  reason: collision with root package name */
    private long f46760d;

    /* renamed from: e  reason: collision with root package name */
    private int f46761e;

    public void a(float f10, long j4) {
        this.f46759c = f10;
        this.f46760d = j4;
        this.f46761e = 0;
    }

    public boolean a(long j4) {
        float f10 = this.f46759c;
        long j10 = (this.f46761e * 1000) / f10;
        if (((float) (j4 - this.f46760d)) > ((float) j10) + (1000.0f / f10)) {
            this.f46760d = j4;
            this.f46761e = 0;
            j10 = 0;
        }
        if (j4 - this.f46760d < j10 - 15) {
            return true;
        }
        this.f46761e++;
        return false;
    }
}
