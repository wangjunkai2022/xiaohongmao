package com.ksyun.media.streamer.capture.camera;

import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.SurfaceHolder;
import java.io.IOException;

/* compiled from: CameraManager.java */
/* loaded from: classes3.dex */
public class b {
    private static final int A = 21;
    private static final int B = 22;
    private static final int C = 23;

    /* renamed from: a  reason: collision with root package name */
    private static final String f45823a = "CameraManager";

    /* renamed from: b  reason: collision with root package name */
    private static b f45824b = new b();

    /* renamed from: g  reason: collision with root package name */
    private static final int f45825g = 1;

    /* renamed from: h  reason: collision with root package name */
    private static final int f45826h = 2;

    /* renamed from: i  reason: collision with root package name */
    private static final int f45827i = 3;

    /* renamed from: j  reason: collision with root package name */
    private static final int f45828j = 4;

    /* renamed from: k  reason: collision with root package name */
    private static final int f45829k = 5;

    /* renamed from: l  reason: collision with root package name */
    private static final int f45830l = 6;

    /* renamed from: m  reason: collision with root package name */
    private static final int f45831m = 7;

    /* renamed from: n  reason: collision with root package name */
    private static final int f45832n = 8;

    /* renamed from: o  reason: collision with root package name */
    private static final int f45833o = 9;

    /* renamed from: p  reason: collision with root package name */
    private static final int f45834p = 10;

    /* renamed from: q  reason: collision with root package name */
    private static final int f45835q = 11;

    /* renamed from: r  reason: collision with root package name */
    private static final int f45836r = 12;

    /* renamed from: s  reason: collision with root package name */
    private static final int f45837s = 13;

    /* renamed from: t  reason: collision with root package name */
    private static final int f45838t = 14;

    /* renamed from: u  reason: collision with root package name */
    private static final int f45839u = 15;

    /* renamed from: v  reason: collision with root package name */
    private static final int f45840v = 16;

    /* renamed from: w  reason: collision with root package name */
    private static final int f45841w = 17;

    /* renamed from: x  reason: collision with root package name */
    private static final int f45842x = 18;

    /* renamed from: y  reason: collision with root package name */
    private static final int f45843y = 19;

    /* renamed from: z  reason: collision with root package name */
    private static final int f45844z = 20;
    private Handler D;
    private C0390b E;
    private Camera F;

    /* renamed from: c  reason: collision with root package name */
    private ConditionVariable f45845c = new ConditionVariable();

    /* renamed from: d  reason: collision with root package name */
    private Camera.Parameters f45846d;

    /* renamed from: e  reason: collision with root package name */
    private RuntimeException f45847e;

    /* renamed from: f  reason: collision with root package name */
    private IOException f45848f;

    /* compiled from: CameraManager.java */
    /* loaded from: classes3.dex */
    private class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        private void a(Object obj) {
            try {
                b.this.F.setPreviewTexture((SurfaceTexture) obj);
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message != null && b.this.F != null) {
                try {
                    switch (message.what) {
                        case 1:
                            b.this.F.release();
                            b.this.F = null;
                            b.this.E = null;
                            break;
                        case 2:
                            b.this.f45848f = null;
                            try {
                                b.this.F.reconnect();
                                break;
                            } catch (IOException e4) {
                                b.this.f45848f = e4;
                                break;
                            }
                        case 3:
                            b.this.F.unlock();
                            break;
                        case 4:
                            b.this.F.lock();
                            break;
                        case 5:
                            a(message.obj);
                            return;
                        case 6:
                            b.this.F.startPreview();
                            return;
                        case 7:
                            b.this.F.stopPreview();
                            break;
                        case 8:
                            b.this.F.setPreviewCallbackWithBuffer((Camera.PreviewCallback) message.obj);
                            break;
                        case 9:
                            b.this.F.addCallbackBuffer((byte[]) message.obj);
                            break;
                        case 10:
                            b.this.F.autoFocus((Camera.AutoFocusCallback) message.obj);
                            break;
                        case 11:
                            b.this.F.cancelAutoFocus();
                            break;
                        case 12:
                            b.this.F.setDisplayOrientation(message.arg1);
                            break;
                        case 13:
                            b.this.F.setZoomChangeListener((Camera.OnZoomChangeListener) message.obj);
                            break;
                        case 14:
                            b.this.F.setErrorCallback((Camera.ErrorCallback) message.obj);
                            break;
                        case 15:
                            b.this.f45847e = null;
                            try {
                                b.this.F.setParameters((Camera.Parameters) message.obj);
                                break;
                            } catch (RuntimeException e10) {
                                b.this.f45847e = e10;
                                break;
                            }
                        case 16:
                            b bVar = b.this;
                            bVar.f45846d = bVar.F.getParameters();
                            break;
                        case 17:
                            try {
                                b.this.F.setParameters((Camera.Parameters) message.obj);
                                return;
                            } catch (RuntimeException unused) {
                                Log.e(b.f45823a, "Camera set parameters failed");
                                return;
                            }
                        case 18:
                            break;
                        case 19:
                            try {
                                b.this.F.setPreviewDisplay((SurfaceHolder) message.obj);
                                return;
                            } catch (IOException e11) {
                                throw new RuntimeException(e11);
                            }
                        case 20:
                            b.this.F.setPreviewCallback((Camera.PreviewCallback) message.obj);
                            break;
                        case 21:
                            try {
                                b.this.F.setPreviewDisplay((SurfaceHolder) message.obj);
                                break;
                            } catch (IOException e12) {
                                throw new RuntimeException(e12);
                            }
                        case 22:
                            b.this.F.startPreview();
                            break;
                        case 23:
                            a(message.obj);
                            break;
                        default:
                            throw new RuntimeException("Invalid CameraProxy message=" + message.what);
                    }
                } catch (RuntimeException unused2) {
                    if (message.what != 1 && b.this.F != null) {
                        try {
                            b.this.F.release();
                        } catch (Exception unused3) {
                            Log.e(b.f45823a, "Fail to release the camera.");
                        }
                        b.this.F = null;
                        b.this.E = null;
                    }
                }
                b.this.f45845c.open();
                return;
            }
            b.this.f45845c.open();
        }
    }

    private b() {
        HandlerThread handlerThread = new HandlerThread("Camera Handler Thread");
        handlerThread.start();
        this.D = new a(handlerThread.getLooper());
    }

    /* compiled from: CameraManager.java */
    /* renamed from: com.ksyun.media.streamer.capture.camera.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0390b {
        public C0390b() {
        }

        public void a() {
            b.this.f45845c.close();
            b.this.D.sendEmptyMessage(1);
            b.this.f45845c.block();
        }

        public void b() {
            b.this.f45845c.close();
            b.this.D.sendEmptyMessage(2);
            b.this.f45845c.block();
            if (b.this.f45848f != null) {
                throw b.this.f45848f;
            }
        }

        public void c() {
            b.this.f45845c.close();
            b.this.D.sendEmptyMessage(3);
            b.this.f45845c.block();
        }

        public void d() {
            b.this.f45845c.close();
            b.this.D.sendEmptyMessage(4);
            b.this.f45845c.block();
        }

        public void e() {
            b.this.D.sendEmptyMessage(6);
        }

        public void f() {
            b.this.f45845c.close();
            b.this.D.sendEmptyMessage(22);
            b.this.f45845c.block();
        }

        public void g() {
            b.this.f45845c.close();
            b.this.D.sendEmptyMessage(7);
            b.this.f45845c.block();
        }

        public void h() {
            b.this.f45845c.close();
            b.this.D.sendEmptyMessage(11);
            b.this.f45845c.block();
        }

        public Camera.Parameters i() {
            b.this.f45845c.close();
            b.this.D.sendEmptyMessage(16);
            b.this.f45845c.block();
            Camera.Parameters parameters = b.this.f45846d;
            b.this.f45846d = null;
            return parameters;
        }

        public void a(SurfaceTexture surfaceTexture) {
            b.this.D.obtainMessage(5, surfaceTexture).sendToTarget();
        }

        public void c(Camera.Parameters parameters) {
            b.this.D.removeMessages(17);
            b.this.D.obtainMessage(17, parameters).sendToTarget();
        }

        public void a(SurfaceHolder surfaceHolder) {
            b.this.D.obtainMessage(19, surfaceHolder).sendToTarget();
        }

        public void a(Camera.PreviewCallback previewCallback) {
            b.this.f45845c.close();
            b.this.D.obtainMessage(8, previewCallback).sendToTarget();
            b.this.f45845c.block();
        }

        public void b(SurfaceTexture surfaceTexture) {
            b.this.f45845c.close();
            b.this.D.obtainMessage(23, surfaceTexture).sendToTarget();
            b.this.f45845c.block();
        }

        public void b(SurfaceHolder surfaceHolder) {
            b.this.f45845c.close();
            b.this.D.obtainMessage(21, surfaceHolder).sendToTarget();
            b.this.f45845c.block();
        }

        public void a(byte[] bArr) {
            b.this.f45845c.close();
            b.this.D.obtainMessage(9, bArr).sendToTarget();
            b.this.f45845c.block();
        }

        public boolean b(Camera.Parameters parameters) {
            try {
                a(parameters);
                return true;
            } catch (RuntimeException unused) {
                Log.e(b.f45823a, "Camera set parameters failed");
                return false;
            }
        }

        public void a(Camera.AutoFocusCallback autoFocusCallback) {
            b.this.f45845c.close();
            b.this.D.obtainMessage(10, autoFocusCallback).sendToTarget();
            b.this.f45845c.block();
        }

        public void a(final Camera.ShutterCallback shutterCallback, final Camera.PictureCallback pictureCallback, final Camera.PictureCallback pictureCallback2, final Camera.PictureCallback pictureCallback3) {
            b.this.f45845c.close();
            b.this.D.post(new Runnable() { // from class: com.ksyun.media.streamer.capture.camera.b.b.1
                @Override // java.lang.Runnable
                public void run() {
                    b.this.F.takePicture(shutterCallback, pictureCallback, pictureCallback2, pictureCallback3);
                    b.this.f45845c.open();
                }
            });
            b.this.f45845c.block();
        }

        public void a(int i4) {
            b.this.f45845c.close();
            b.this.D.obtainMessage(12, i4, 0).sendToTarget();
            b.this.f45845c.block();
        }

        public void a(Camera.OnZoomChangeListener onZoomChangeListener) {
            b.this.f45845c.close();
            b.this.D.obtainMessage(13, onZoomChangeListener).sendToTarget();
            b.this.f45845c.block();
        }

        public void a(Camera.ErrorCallback errorCallback) {
            b.this.f45845c.close();
            b.this.D.obtainMessage(14, errorCallback).sendToTarget();
            b.this.f45845c.block();
        }

        public void a(Camera.Parameters parameters) {
            b.this.f45845c.close();
            b.this.D.obtainMessage(15, parameters).sendToTarget();
            b.this.f45845c.block();
            if (b.this.f45847e != null) {
                throw b.this.f45847e;
            }
        }
    }

    public static b a() {
        return f45824b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0390b a(int i4) {
        Camera open = Camera.open(i4);
        this.F = open;
        if (open != null) {
            C0390b c0390b = new C0390b();
            this.E = c0390b;
            return c0390b;
        }
        return null;
    }
}
