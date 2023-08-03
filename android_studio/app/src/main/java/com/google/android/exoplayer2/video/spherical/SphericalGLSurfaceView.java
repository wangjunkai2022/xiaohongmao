package com.google.android.exoplayer2.video.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.WindowManager;
import androidx.annotation.AnyThread;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.util.z0;
import com.google.android.exoplayer2.video.spherical.d;
import com.google.android.exoplayer2.video.spherical.m;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: classes2.dex */
public final class SphericalGLSurfaceView extends GLSurfaceView {

    /* renamed from: m  reason: collision with root package name */
    private static final int f27995m = 90;

    /* renamed from: n  reason: collision with root package name */
    private static final float f27996n = 0.1f;

    /* renamed from: o  reason: collision with root package name */
    private static final float f27997o = 100.0f;

    /* renamed from: p  reason: collision with root package name */
    private static final float f27998p = 25.0f;

    /* renamed from: q  reason: collision with root package name */
    static final float f27999q = 3.1415927f;

    /* renamed from: a  reason: collision with root package name */
    private final CopyOnWriteArrayList<b> f28000a;

    /* renamed from: b  reason: collision with root package name */
    private final SensorManager f28001b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final Sensor f28002c;

    /* renamed from: d  reason: collision with root package name */
    private final d f28003d;

    /* renamed from: e  reason: collision with root package name */
    private final Handler f28004e;

    /* renamed from: f  reason: collision with root package name */
    private final m f28005f;

    /* renamed from: g  reason: collision with root package name */
    private final i f28006g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private SurfaceTexture f28007h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Surface f28008i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f28009j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f28010k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f28011l;

    @VisibleForTesting
    /* loaded from: classes2.dex */
    final class a implements GLSurfaceView.Renderer, m.a, d.a {

        /* renamed from: a  reason: collision with root package name */
        private final i f28012a;

        /* renamed from: d  reason: collision with root package name */
        private final float[] f28015d;

        /* renamed from: e  reason: collision with root package name */
        private final float[] f28016e;

        /* renamed from: f  reason: collision with root package name */
        private final float[] f28017f;

        /* renamed from: g  reason: collision with root package name */
        private float f28018g;

        /* renamed from: h  reason: collision with root package name */
        private float f28019h;

        /* renamed from: b  reason: collision with root package name */
        private final float[] f28013b = new float[16];

        /* renamed from: c  reason: collision with root package name */
        private final float[] f28014c = new float[16];

        /* renamed from: i  reason: collision with root package name */
        private final float[] f28020i = new float[16];

        /* renamed from: j  reason: collision with root package name */
        private final float[] f28021j = new float[16];

        public a(i iVar) {
            float[] fArr = new float[16];
            this.f28015d = fArr;
            float[] fArr2 = new float[16];
            this.f28016e = fArr2;
            float[] fArr3 = new float[16];
            this.f28017f = fArr3;
            this.f28012a = iVar;
            Matrix.setIdentityM(fArr, 0);
            Matrix.setIdentityM(fArr2, 0);
            Matrix.setIdentityM(fArr3, 0);
            this.f28019h = SphericalGLSurfaceView.f27999q;
        }

        private float c(float f10) {
            if (f10 > 1.0f) {
                return (float) (Math.toDegrees(Math.atan(Math.tan(Math.toRadians(45.0d)) / f10)) * 2.0d);
            }
            return 90.0f;
        }

        @AnyThread
        private void d() {
            Matrix.setRotateM(this.f28016e, 0, -this.f28018g, (float) Math.cos(this.f28019h), (float) Math.sin(this.f28019h), 0.0f);
        }

        @Override // com.google.android.exoplayer2.video.spherical.d.a
        @BinderThread
        public synchronized void a(float[] fArr, float f10) {
            float[] fArr2 = this.f28015d;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            this.f28019h = -f10;
            d();
        }

        @Override // com.google.android.exoplayer2.video.spherical.m.a
        @UiThread
        public synchronized void b(PointF pointF) {
            this.f28018g = pointF.y;
            d();
            Matrix.setRotateM(this.f28017f, 0, -pointF.x, 0.0f, 1.0f, 0.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            synchronized (this) {
                Matrix.multiplyMM(this.f28021j, 0, this.f28015d, 0, this.f28017f, 0);
                Matrix.multiplyMM(this.f28020i, 0, this.f28016e, 0, this.f28021j, 0);
            }
            Matrix.multiplyMM(this.f28014c, 0, this.f28013b, 0, this.f28020i, 0);
            this.f28012a.c(this.f28014c, false);
        }

        @Override // com.google.android.exoplayer2.video.spherical.m.a
        @UiThread
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return SphericalGLSurfaceView.this.performClick();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i4, int i10) {
            GLES20.glViewport(0, 0, i4, i10);
            float f10 = i4 / i10;
            Matrix.perspectiveM(this.f28013b, 0, c(f10), f10, 0.1f, SphericalGLSurfaceView.f27997o);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            SphericalGLSurfaceView.this.g(this.f28012a.d());
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        void J(Surface surface);

        void K(Surface surface);
    }

    public SphericalGLSurfaceView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        Surface surface = this.f28008i;
        if (surface != null) {
            Iterator<b> it = this.f28000a.iterator();
            while (it.hasNext()) {
                it.next().J(surface);
            }
        }
        h(this.f28007h, surface);
        this.f28007h = null;
        this.f28008i = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2 = this.f28007h;
        Surface surface = this.f28008i;
        Surface surface2 = new Surface(surfaceTexture);
        this.f28007h = surfaceTexture;
        this.f28008i = surface2;
        Iterator<b> it = this.f28000a.iterator();
        while (it.hasNext()) {
            it.next().K(surface2);
        }
        h(surfaceTexture2, surface);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(final SurfaceTexture surfaceTexture) {
        this.f28004e.post(new Runnable() { // from class: com.google.android.exoplayer2.video.spherical.k
            @Override // java.lang.Runnable
            public final void run() {
                SphericalGLSurfaceView.this.f(surfaceTexture);
            }
        });
    }

    private static void h(@Nullable SurfaceTexture surfaceTexture, @Nullable Surface surface) {
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
        if (surface != null) {
            surface.release();
        }
    }

    private void j() {
        boolean z9 = this.f28009j && this.f28010k;
        Sensor sensor = this.f28002c;
        if (sensor == null || z9 == this.f28011l) {
            return;
        }
        if (z9) {
            this.f28001b.registerListener(this.f28003d, sensor, 0);
        } else {
            this.f28001b.unregisterListener(this.f28003d);
        }
        this.f28011l = z9;
    }

    public void d(b bVar) {
        this.f28000a.add(bVar);
    }

    public com.google.android.exoplayer2.video.spherical.a getCameraMotionListener() {
        return this.f28006g;
    }

    public com.google.android.exoplayer2.video.j getVideoFrameMetadataListener() {
        return this.f28006g;
    }

    @Nullable
    public Surface getVideoSurface() {
        return this.f28008i;
    }

    public void i(b bVar) {
        this.f28000a.remove(bVar);
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f28004e.post(new Runnable() { // from class: com.google.android.exoplayer2.video.spherical.j
            @Override // java.lang.Runnable
            public final void run() {
                SphericalGLSurfaceView.this.e();
            }
        });
    }

    @Override // android.opengl.GLSurfaceView
    public void onPause() {
        this.f28010k = false;
        j();
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        super.onResume();
        this.f28010k = true;
        j();
    }

    public void setDefaultStereoMode(int i4) {
        this.f28006g.h(i4);
    }

    public void setUseSensorRotation(boolean z9) {
        this.f28009j = z9;
        j();
    }

    public SphericalGLSurfaceView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28000a = new CopyOnWriteArrayList<>();
        this.f28004e = new Handler(Looper.getMainLooper());
        SensorManager sensorManager = (SensorManager) com.google.android.exoplayer2.util.a.g(context.getSystemService("sensor"));
        this.f28001b = sensorManager;
        Sensor defaultSensor = z0.f27743a >= 18 ? sensorManager.getDefaultSensor(15) : null;
        this.f28002c = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        i iVar = new i();
        this.f28006g = iVar;
        a aVar = new a(iVar);
        m mVar = new m(context, aVar, f27998p);
        this.f28005f = mVar;
        this.f28003d = new d(((WindowManager) com.google.android.exoplayer2.util.a.g((WindowManager) context.getSystemService("window"))).getDefaultDisplay(), mVar, aVar);
        this.f28009j = true;
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setOnTouchListener(mVar);
    }
}
