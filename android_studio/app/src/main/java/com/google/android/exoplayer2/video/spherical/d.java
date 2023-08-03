package com.google.android.exoplayer2.video.spherical;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;
import androidx.annotation.BinderThread;
import com.google.android.exoplayer2.extractor.ts.h0;

/* compiled from: OrientationListener.java */
/* loaded from: classes2.dex */
final class d implements SensorEventListener {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f28034a = new float[16];

    /* renamed from: b  reason: collision with root package name */
    private final float[] f28035b = new float[16];

    /* renamed from: c  reason: collision with root package name */
    private final float[] f28036c = new float[16];

    /* renamed from: d  reason: collision with root package name */
    private final float[] f28037d = new float[3];

    /* renamed from: e  reason: collision with root package name */
    private final Display f28038e;

    /* renamed from: f  reason: collision with root package name */
    private final a[] f28039f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f28040g;

    /* compiled from: OrientationListener.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(float[] fArr, float f10);
    }

    public d(Display display, a... aVarArr) {
        this.f28038e = display;
        this.f28039f = aVarArr;
    }

    private float a(float[] fArr) {
        SensorManager.remapCoordinateSystem(fArr, 1, 131, this.f28035b);
        SensorManager.getOrientation(this.f28035b, this.f28037d);
        return this.f28037d[2];
    }

    private void b(float[] fArr, float f10) {
        for (a aVar : this.f28039f) {
            aVar.a(fArr, f10);
        }
    }

    private void c(float[] fArr) {
        if (!this.f28040g) {
            c.a(this.f28036c, fArr);
            this.f28040g = true;
        }
        float[] fArr2 = this.f28035b;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        Matrix.multiplyMM(fArr, 0, this.f28035b, 0, this.f28036c, 0);
    }

    private void d(float[] fArr, int i4) {
        if (i4 != 0) {
            int i10 = h0.I;
            int i11 = h0.G;
            if (i4 == 1) {
                i10 = 2;
            } else if (i4 == 2) {
                i10 = h0.G;
                i11 = h0.I;
            } else if (i4 != 3) {
                throw new IllegalStateException();
            } else {
                i11 = 1;
            }
            float[] fArr2 = this.f28035b;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            SensorManager.remapCoordinateSystem(this.f28035b, i10, i11, fArr);
        }
    }

    private static void e(float[] fArr) {
        Matrix.rotateM(fArr, 0, 90.0f, 1.0f, 0.0f, 0.0f);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i4) {
    }

    @Override // android.hardware.SensorEventListener
    @BinderThread
    public void onSensorChanged(SensorEvent sensorEvent) {
        SensorManager.getRotationMatrixFromVector(this.f28034a, sensorEvent.values);
        d(this.f28034a, this.f28038e.getRotation());
        float a10 = a(this.f28034a);
        e(this.f28034a);
        c(this.f28034a);
        b(this.f28034a, a10);
    }
}
