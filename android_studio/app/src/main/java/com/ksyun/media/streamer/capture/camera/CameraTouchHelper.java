package com.ksyun.media.streamer.capture.camera;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.Camera;
import android.os.Handler;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.imagepipeline.common.e;
import com.ksyun.media.streamer.capture.CameraCapture;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public class CameraTouchHelper implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    private static final String f45785a = "CameraTouchHelper";

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f45786b = true;

    /* renamed from: c  reason: collision with root package name */
    private CameraCapture f45787c;

    /* renamed from: d  reason: collision with root package name */
    private ICameraHintView f45788d;

    /* renamed from: l  reason: collision with root package name */
    private int f45796l;

    /* renamed from: m  reason: collision with root package name */
    private int f45797m;

    /* renamed from: q  reason: collision with root package name */
    private boolean f45801q;

    /* renamed from: r  reason: collision with root package name */
    private int f45802r;

    /* renamed from: s  reason: collision with root package name */
    private int f45803s;

    /* renamed from: v  reason: collision with root package name */
    private boolean f45806v;

    /* renamed from: w  reason: collision with root package name */
    private int f45807w;

    /* renamed from: x  reason: collision with root package name */
    private float f45808x;

    /* renamed from: y  reason: collision with root package name */
    private long f45809y;

    /* renamed from: z  reason: collision with root package name */
    private int f45810z;

    /* renamed from: e  reason: collision with root package name */
    private float f45789e = 0.083333336f;

    /* renamed from: f  reason: collision with root package name */
    private boolean f45790f = true;

    /* renamed from: g  reason: collision with root package name */
    private boolean f45791g = true;

    /* renamed from: h  reason: collision with root package name */
    private int f45792h = 5000;

    /* renamed from: i  reason: collision with root package name */
    private float f45793i = 4.0f;

    /* renamed from: j  reason: collision with root package name */
    private float f45794j = 1.0f;

    /* renamed from: t  reason: collision with root package name */
    private Rect f45804t = new Rect();

    /* renamed from: u  reason: collision with root package name */
    private Rect f45805u = new Rect();

    /* renamed from: n  reason: collision with root package name */
    private Handler f45798n = new Handler();

    /* renamed from: o  reason: collision with root package name */
    private Runnable f45799o = new Runnable() { // from class: com.ksyun.media.streamer.capture.camera.CameraTouchHelper.1
        @Override // java.lang.Runnable
        public void run() {
            if (CameraTouchHelper.this.f45787c == null) {
                return;
            }
            Log.d(CameraTouchHelper.f45785a, "Reset focus mode");
            Camera.Parameters cameraParameters = CameraTouchHelper.this.f45787c.getCameraParameters();
            if (cameraParameters == null) {
                return;
            }
            c.a(cameraParameters);
            ArrayList arrayList = new ArrayList();
            arrayList.add(new Camera.Area(new Rect(0, 0, 1000, 1000), 1000));
            cameraParameters.setMeteringAreas(arrayList);
            CameraTouchHelper.this.f45787c.setCameraParameters(cameraParameters);
        }
    };

    /* renamed from: p  reason: collision with root package name */
    private Runnable f45800p = new Runnable() { // from class: com.ksyun.media.streamer.capture.camera.CameraTouchHelper.2
        @Override // java.lang.Runnable
        public void run() {
            CameraTouchHelper.this.f45788d.setFocused(CameraTouchHelper.this.f45801q);
        }
    };

    /* renamed from: k  reason: collision with root package name */
    private List<OnTouchListener> f45795k = new LinkedList();

    /* loaded from: classes3.dex */
    public interface OnTouchListener {
        boolean onTouch(View view, MotionEvent motionEvent);
    }

    private int a(int i4, int i10, int i11, int i12) {
        int i13 = i10 + i12;
        if (i4 < i13) {
            return i13;
        }
        int i14 = i11 - i12;
        return i4 > i14 ? i14 : i4;
    }

    public synchronized void addTouchListener(OnTouchListener onTouchListener) {
        if (!this.f45795k.contains(onTouchListener)) {
            this.f45795k.add(onTouchListener);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        this.f45796l = view.getWidth();
        this.f45797m = view.getHeight();
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f45806v = false;
            this.f45807w = 1;
        } else if (action == 5) {
            this.f45806v = true;
            int i4 = this.f45807w + 1;
            this.f45807w = i4;
            if (i4 == 2) {
                this.f45808x = a(motionEvent);
                a(0, true);
            }
        } else if (action == 6) {
            this.f45807w--;
        } else if (action == 2) {
            if (this.f45807w >= 2) {
                a((int) (a(motionEvent) - this.f45808x), false);
            }
        } else if (action == 1) {
            if (!this.f45806v) {
                a(motionEvent.getX(), motionEvent.getY());
            }
            this.f45806v = false;
            this.f45807w = 0;
        }
        a(view, motionEvent);
        return true;
    }

    public synchronized void removeAllTouchListener() {
        this.f45795k.clear();
    }

    public synchronized void removeTouchListener(OnTouchListener onTouchListener) {
        if (this.f45795k.contains(onTouchListener)) {
            this.f45795k.remove(onTouchListener);
        }
    }

    public void setCameraCapture(CameraCapture cameraCapture) {
        this.f45787c = cameraCapture;
    }

    public void setCameraHintView(ICameraHintView iCameraHintView) {
        this.f45788d = iCameraHintView;
    }

    public void setEnableTouchFocus(boolean z9) {
        this.f45790f = z9;
    }

    public void setEnableZoom(boolean z9) {
        this.f45791g = z9;
    }

    public void setFocusAreaRadius(float f10) {
        if (f10 > 0.0f && f10 <= 0.5f) {
            this.f45789e = f10;
            return;
        }
        throw new IllegalArgumentException("radius must be > 0 && < 0.5");
    }

    public void setMaxZoomRatio(float f10) {
        if (f10 < 1.0f) {
            f10 = 1.0f;
        }
        this.f45793i = f10;
    }

    public void setRefocusDelay(int i4) {
        this.f45792h = i4;
    }

    public void setZoomSpeed(float f10) {
        if (f10 < 0.1f) {
            f10 = 0.1f;
        } else if (f10 > 10.0f) {
            f10 = 10.0f;
        }
        this.f45794j = f10;
    }

    private void b(float f10, float f11) {
        int i4 = this.f45796l;
        int i10 = this.f45797m;
        int i11 = (int) ((i4 < i10 ? i4 : i10) * this.f45789e);
        int a10 = a((int) f10, 0, i4, i11);
        int a11 = a((int) f11, 0, this.f45797m, i11);
        this.f45805u.set(a10 - i11, a11 - i11, a10 + i11, a11 + i11);
    }

    private float a(MotionEvent motionEvent) {
        float x9 = motionEvent.getX(0) - motionEvent.getX(1);
        float y9 = motionEvent.getY(0) - motionEvent.getY(1);
        return (float) Math.sqrt((x9 * x9) + (y9 * y9));
    }

    private boolean a(int i4, boolean z9) {
        CameraCapture cameraCapture;
        Camera.Parameters cameraParameters;
        if (!this.f45791g || (cameraCapture = this.f45787c) == null || (cameraParameters = cameraCapture.getCameraParameters()) == null || !cameraParameters.isZoomSupported()) {
            return false;
        }
        if (z9) {
            this.f45810z = cameraParameters.getZoom();
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f45809y < 40) {
            return false;
        }
        this.f45809y = currentTimeMillis;
        int i10 = this.f45796l;
        int i11 = this.f45797m;
        if (i10 >= i11) {
            i10 = i11;
        }
        int i12 = i10 / 2;
        int maxZoom = cameraParameters.getMaxZoom();
        List<Integer> zoomRatios = cameraParameters.getZoomRatios();
        int i13 = (int) (this.f45793i * 100.0f);
        int i14 = maxZoom;
        while (true) {
            if (i14 < 0) {
                break;
            } else if (i13 >= zoomRatios.get(i14).intValue()) {
                maxZoom = i14;
                break;
            } else {
                i14--;
            }
        }
        if (i14 < 0) {
            maxZoom = 0;
        }
        int i15 = this.f45810z;
        int i16 = ((int) (((this.f45794j * i4) * maxZoom) / i12)) + i15;
        int i17 = i16 >= 0 ? i16 > maxZoom ? maxZoom : i16 : 0;
        if (i17 != i15) {
            cameraParameters.setZoom(i17);
            this.f45787c.setCameraParameters(cameraParameters);
        }
        if (this.f45788d != null) {
            this.f45788d.updateZoomRatio(zoomRatios.get(i17).intValue() / 100.0f);
            return true;
        }
        return true;
    }

    private boolean a(float f10, float f11) {
        CameraCapture cameraCapture;
        Camera.Parameters cameraParameters;
        List<String> supportedFocusModes;
        if (!this.f45790f || (cameraCapture = this.f45787c) == null || (cameraParameters = cameraCapture.getCameraParameters()) == null || (supportedFocusModes = cameraParameters.getSupportedFocusModes()) == null || !supportedFocusModes.contains("auto")) {
            return false;
        }
        b(f10, f11);
        Camera.Size previewSize = cameraParameters.getPreviewSize();
        int cameraDisplayOrientation = this.f45787c.getCameraDisplayOrientation();
        a(previewSize, cameraDisplayOrientation);
        a(cameraDisplayOrientation);
        Log.d(f45785a, "touchRect: " + this.f45805u.toString() + " focusRect: " + this.f45804t.toString());
        cameraParameters.setFocusMode("auto");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Camera.Area(this.f45804t, 1000));
        cameraParameters.setFocusAreas(arrayList);
        cameraParameters.setMeteringAreas(arrayList);
        this.f45787c.setCameraParameters(cameraParameters);
        this.f45787c.cancelAutoFocus();
        this.f45787c.autoFocus(new Camera.AutoFocusCallback() { // from class: com.ksyun.media.streamer.capture.camera.CameraTouchHelper.3
            @Override // android.hardware.Camera.AutoFocusCallback
            public void onAutoFocus(boolean z9, Camera camera) {
                CameraTouchHelper.this.f45787c.cancelAutoFocus();
                if (CameraTouchHelper.this.f45792h > 0) {
                    CameraTouchHelper.this.f45798n.postDelayed(CameraTouchHelper.this.f45799o, CameraTouchHelper.this.f45792h);
                }
                if (CameraTouchHelper.this.f45788d != null) {
                    CameraTouchHelper.this.f45801q = z9;
                    CameraTouchHelper.this.f45798n.post(CameraTouchHelper.this.f45800p);
                }
            }
        });
        if (this.f45788d != null) {
            this.f45798n.removeCallbacks(this.f45800p);
            this.f45798n.removeCallbacks(this.f45799o);
            this.f45788d.startFocus(this.f45805u);
            return true;
        }
        return true;
    }

    private void a(Camera.Size size, int i4) {
        float f10 = this.f45796l / this.f45797m;
        if (i4 % e.f12205e == 0) {
            int i10 = size.width;
            int i11 = size.height;
            if (f10 > i10 / i11) {
                this.f45803s = (int) (((i10 / f10) / i11) * 1000.0f);
                this.f45802r = 1000;
                return;
            }
            this.f45803s = 1000;
            this.f45802r = (int) (((i11 * f10) / i10) * 1000.0f);
            return;
        }
        int i12 = size.height;
        int i13 = size.width;
        if (f10 > i12 / i13) {
            this.f45803s = (int) (((i12 / f10) / i13) * 1000.0f);
            this.f45802r = 1000;
            return;
        }
        this.f45803s = 1000;
        this.f45802r = (int) (((i13 * f10) / i12) * 1000.0f);
    }

    private void a(int i4) {
        Rect rect = this.f45805u;
        int i10 = this.f45796l;
        float f10 = rect.left / i10;
        int i11 = this.f45802r;
        int i12 = this.f45797m;
        float f11 = rect.top / i12;
        int i13 = this.f45803s;
        RectF rectF = new RectF(((f10 * i11) * 2.0f) - i11, ((f11 * i13) * 2.0f) - i13, (((rect.right / i10) * i11) * 2.0f) - i11, (((rect.bottom / i12) * i13) * 2.0f) - i13);
        Matrix matrix = new Matrix();
        matrix.postRotate(360 - i4, 0.0f, 0.0f);
        matrix.mapRect(rectF);
        rectF.round(this.f45804t);
    }

    private synchronized void a(View view, MotionEvent motionEvent) {
        if (this.f45795k != null) {
            for (int i4 = 0; i4 < this.f45795k.size(); i4++) {
                this.f45795k.get(i4).onTouch(view, motionEvent);
            }
        }
    }
}
