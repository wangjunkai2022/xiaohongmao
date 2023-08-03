package com.facebook.fresco.animation.frame;

import androidx.annotation.VisibleForTesting;
import com.facebook.fresco.animation.backend.d;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: DropFramesFrameScheduler.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class a implements b {

    /* renamed from: e  reason: collision with root package name */
    private static final int f11771e = -1;

    /* renamed from: c  reason: collision with root package name */
    private final d f11772c;

    /* renamed from: d  reason: collision with root package name */
    private long f11773d = -1;

    public a(d animationInformation) {
        this.f11772c = animationInformation;
    }

    @Override // com.facebook.fresco.animation.frame.b
    public long a(int frameNumber) {
        long j4 = 0;
        for (int i4 = 0; i4 < frameNumber; i4++) {
            j4 += this.f11772c.j(frameNumber);
        }
        return j4;
    }

    @Override // com.facebook.fresco.animation.frame.b
    public long b(long animationTimeMs) {
        long e4 = e();
        long j4 = 0;
        if (e4 == 0) {
            return -1L;
        }
        if (d() || animationTimeMs / e() < this.f11772c.c()) {
            long j10 = animationTimeMs % e4;
            int a10 = this.f11772c.a();
            for (int i4 = 0; i4 < a10 && j4 <= j10; i4++) {
                j4 += this.f11772c.j(i4);
            }
            return animationTimeMs + (j4 - j10);
        }
        return -1L;
    }

    @Override // com.facebook.fresco.animation.frame.b
    public int c(long animationTimeMs, long lastFrameTimeMs) {
        long e4 = e();
        if (e4 == 0) {
            return f(0L);
        }
        if (d() || animationTimeMs / e4 < this.f11772c.c()) {
            return f(animationTimeMs % e4);
        }
        return -1;
    }

    @Override // com.facebook.fresco.animation.frame.b
    public boolean d() {
        return this.f11772c.c() == 0;
    }

    @Override // com.facebook.fresco.animation.frame.b
    public long e() {
        long j4 = this.f11773d;
        if (j4 != -1) {
            return j4;
        }
        this.f11773d = 0L;
        int a10 = this.f11772c.a();
        for (int i4 = 0; i4 < a10; i4++) {
            this.f11773d += this.f11772c.j(i4);
        }
        return this.f11773d;
    }

    @VisibleForTesting
    int f(long timeInCurrentLoopMs) {
        int i4 = 0;
        long j4 = 0;
        do {
            j4 += this.f11772c.j(i4);
            i4++;
        } while (timeInCurrentLoopMs >= j4);
        return i4 - 1;
    }
}
