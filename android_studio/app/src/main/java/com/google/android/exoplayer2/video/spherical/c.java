package com.google.android.exoplayer2.video.spherical;

import android.opengl.Matrix;
import com.google.android.exoplayer2.util.t0;

/* compiled from: FrameRotationQueue.java */
/* loaded from: classes2.dex */
final class c {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f28030a = new float[16];

    /* renamed from: b  reason: collision with root package name */
    private final float[] f28031b = new float[16];

    /* renamed from: c  reason: collision with root package name */
    private final t0<float[]> f28032c = new t0<>();

    /* renamed from: d  reason: collision with root package name */
    private boolean f28033d;

    public static void a(float[] fArr, float[] fArr2) {
        Matrix.setIdentityM(fArr, 0);
        float sqrt = (float) Math.sqrt((fArr2[10] * fArr2[10]) + (fArr2[8] * fArr2[8]));
        fArr[0] = fArr2[10] / sqrt;
        fArr[2] = fArr2[8] / sqrt;
        fArr[8] = (-fArr2[8]) / sqrt;
        fArr[10] = fArr2[10] / sqrt;
    }

    private static void b(float[] fArr, float[] fArr2) {
        float f10 = fArr2[0];
        float f11 = -fArr2[1];
        float f12 = -fArr2[2];
        float length = Matrix.length(f10, f11, f12);
        if (length != 0.0f) {
            Matrix.setRotateM(fArr, 0, (float) Math.toDegrees(length), f10 / length, f11 / length, f12 / length);
        } else {
            Matrix.setIdentityM(fArr, 0);
        }
    }

    public boolean c(float[] fArr, long j4) {
        float[] j10 = this.f28032c.j(j4);
        if (j10 == null) {
            return false;
        }
        b(this.f28031b, j10);
        if (!this.f28033d) {
            a(this.f28030a, this.f28031b);
            this.f28033d = true;
        }
        Matrix.multiplyMM(fArr, 0, this.f28030a, 0, this.f28031b, 0);
        return true;
    }

    public void d() {
        this.f28032c.c();
        this.f28033d = false;
    }

    public void e(long j4, float[] fArr) {
        this.f28032c.a(j4, fArr);
    }
}
