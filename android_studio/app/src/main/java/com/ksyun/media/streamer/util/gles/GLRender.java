package com.ksyun.media.streamer.util.gles;

import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
import android.view.TextureView;
import com.ksyun.media.streamer.logstats.StatsConstant;
import com.ksyun.media.streamer.logstats.StatsLogReport;
import io.sentry.protocol.y;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.atomic.AtomicInteger;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: classes3.dex */
public class GLRender {
    public static final int STATE_IDLE = 0;
    public static final int STATE_READY = 1;
    public static final int STATE_RELEASED = 2;
    public static final int VIEW_TYPE_GLSURFACEVIEW = 1;
    public static final int VIEW_TYPE_NONE = 0;
    public static final int VIEW_TYPE_OFFSCREEN = 3;
    public static final int VIEW_TYPE_TEXTUREVIEW = 2;

    /* renamed from: a  reason: collision with root package name */
    private static final String f46802a = "GLRender";

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f46803b = true;

    /* renamed from: c  reason: collision with root package name */
    private static final int f46804c = 0;

    /* renamed from: d  reason: collision with root package name */
    private static final int f46805d = 1;

    /* renamed from: e  reason: collision with root package name */
    private static final int f46806e = 2;

    /* renamed from: f  reason: collision with root package name */
    private static final int f46807f = 3;
    private Runnable A;
    private GLSurfaceView.EGLContextFactory B;
    private GLSurfaceView.EGLConfigChooser C;
    private GLSurfaceView.Renderer D;
    private TextureView.SurfaceTextureListener E;

    /* renamed from: g  reason: collision with root package name */
    private TextureView f46808g;

    /* renamed from: h  reason: collision with root package name */
    private final Object f46809h;

    /* renamed from: i  reason: collision with root package name */
    private HandlerThread f46810i;

    /* renamed from: j  reason: collision with root package name */
    private Handler f46811j;

    /* renamed from: k  reason: collision with root package name */
    private a f46812k;

    /* renamed from: l  reason: collision with root package name */
    private c f46813l;

    /* renamed from: m  reason: collision with root package name */
    private EGLContext f46814m;

    /* renamed from: n  reason: collision with root package name */
    private EGLContext f46815n;

    /* renamed from: o  reason: collision with root package name */
    private android.opengl.EGLContext f46816o;

    /* renamed from: p  reason: collision with root package name */
    private AtomicInteger f46817p;

    /* renamed from: q  reason: collision with root package name */
    private long f46818q;

    /* renamed from: r  reason: collision with root package name */
    private GLSurfaceView f46819r;

    /* renamed from: s  reason: collision with root package name */
    private final LinkedList<GLRenderListener> f46820s;

    /* renamed from: t  reason: collision with root package name */
    private final LinkedList<OnReadyListener> f46821t;

    /* renamed from: u  reason: collision with root package name */
    private final LinkedList<OnSizeChangedListener> f46822u;

    /* renamed from: v  reason: collision with root package name */
    private final LinkedList<OnDrawFrameListener> f46823v;

    /* renamed from: w  reason: collision with root package name */
    private final LinkedList<OnReleasedListener> f46824w;

    /* renamed from: x  reason: collision with root package name */
    private final LinkedList<Runnable> f46825x;

    /* renamed from: y  reason: collision with root package name */
    private final LinkedList<Runnable> f46826y;

    /* renamed from: z  reason: collision with root package name */
    private FboManager f46827z;

    @Deprecated
    /* loaded from: classes3.dex */
    public interface GLRenderListener {
        void onDrawFrame();

        void onReady();

        void onReleased();

        void onSizeChanged(int i4, int i10);
    }

    /* loaded from: classes3.dex */
    public interface OnDrawFrameListener {
        void onDrawFrame();
    }

    /* loaded from: classes3.dex */
    public interface OnReadyListener {
        void onReady();
    }

    /* loaded from: classes3.dex */
    public interface OnReleasedListener {
        void onReleased();
    }

    /* loaded from: classes3.dex */
    public interface OnSizeChangedListener {
        void onSizeChanged(int i4, int i10);
    }

    /* loaded from: classes3.dex */
    public interface ScreenShotListener {
        void onBitmapAvailable(Bitmap bitmap);
    }

    public GLRender() {
        this.f46809h = new Object();
        this.A = new Runnable() { // from class: com.ksyun.media.streamer.util.gles.GLRender.6
            @Override // java.lang.Runnable
            public void run() {
                GLRender.this.d();
            }
        };
        this.B = new GLSurfaceView.EGLContextFactory() { // from class: com.ksyun.media.streamer.util.gles.GLRender.7
            @Override // android.opengl.GLSurfaceView.EGLContextFactory
            public EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
                return egl10.eglCreateContext(eGLDisplay, eGLConfig, GLRender.this.f46814m, new int[]{12440, 2, 12344});
            }

            @Override // android.opengl.GLSurfaceView.EGLContextFactory
            public void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
                egl10.eglDestroyContext(eGLDisplay, eGLContext);
                GLRender.this.f46815n = EGL10.EGL_NO_CONTEXT;
            }
        };
        this.C = new GLSurfaceView.EGLConfigChooser() { // from class: com.ksyun.media.streamer.util.gles.GLRender.8
            @Override // android.opengl.GLSurfaceView.EGLConfigChooser
            public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                if (egl10.eglChooseConfig(eGLDisplay, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, 4, 12344}, eGLConfigArr, 1, new int[1])) {
                    return eGLConfigArr[0];
                }
                Log.w(GLRender.f46802a, "unable to find RGB8888 / 2 EGLConfig");
                return null;
            }
        };
        this.D = new GLSurfaceView.Renderer() { // from class: com.ksyun.media.streamer.util.gles.GLRender.9
            @Override // android.opengl.GLSurfaceView.Renderer
            public void onDrawFrame(GL10 gl10) {
                GLRender.this.b();
            }

            @Override // android.opengl.GLSurfaceView.Renderer
            public void onSurfaceChanged(GL10 gl10, int i4, int i10) {
                GLRender.this.a(i4, i10);
            }

            @Override // android.opengl.GLSurfaceView.Renderer
            public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
                GLRender.this.a();
            }
        };
        this.E = new TextureView.SurfaceTextureListener() { // from class: com.ksyun.media.streamer.util.gles.GLRender.2
            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i4, int i10) {
                Log.d(GLRender.f46802a, "onSurfaceTextureAvailable " + i4 + y.b.f83919g + i10);
                if (GLRender.this.f46808g == null || GLRender.this.f46810i != null) {
                    return;
                }
                GLRender.this.e();
                GLRender.this.f46811j.sendMessage(Message.obtain(GLRender.this.f46811j, 0, surfaceTexture));
                GLRender.this.f46811j.sendMessage(Message.obtain(GLRender.this.f46811j, 1, i4, i10));
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                Log.d(GLRender.f46802a, "onSurfaceTextureDestroyed");
                if (GLRender.this.f46808g != null && surfaceTexture == GLRender.this.f46808g.getSurfaceTexture()) {
                    GLRender.this.b(surfaceTexture);
                    return false;
                }
                surfaceTexture.release();
                return false;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i4, int i10) {
                Log.d(GLRender.f46802a, "onSurfaceTextureSizeChanged " + i4 + y.b.f83919g + i10);
                if (GLRender.this.f46808g == null || surfaceTexture != GLRender.this.f46808g.getSurfaceTexture()) {
                    return;
                }
                GLRender.this.f46811j.sendMessage(Message.obtain(GLRender.this.f46811j, 1, i4, i10));
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }
        };
        this.f46817p = new AtomicInteger(2);
        this.f46820s = new LinkedList<>();
        this.f46821t = new LinkedList<>();
        this.f46822u = new LinkedList<>();
        this.f46823v = new LinkedList<>();
        this.f46824w = new LinkedList<>();
        this.f46825x = new LinkedList<>();
        this.f46826y = new LinkedList<>();
        EGLContext eGLContext = EGL10.EGL_NO_CONTEXT;
        this.f46814m = eGLContext;
        this.f46815n = eGLContext;
        this.f46816o = EGL14.EGL_NO_CONTEXT;
        this.f46827z = new FboManager();
    }

    @Deprecated
    public void addListener(final GLRenderListener gLRenderListener) {
        synchronized (this.f46820s) {
            if (!this.f46820s.contains(gLRenderListener)) {
                if (this.f46817p.get() == 1) {
                    queueEvent(new Runnable() { // from class: com.ksyun.media.streamer.util.gles.GLRender.1
                        @Override // java.lang.Runnable
                        public void run() {
                            gLRenderListener.onReady();
                        }
                    });
                }
                this.f46820s.add(gLRenderListener);
            }
        }
    }

    public Object getCurrentView() {
        GLSurfaceView gLSurfaceView = this.f46819r;
        if (gLSurfaceView != null) {
            return gLSurfaceView;
        }
        TextureView textureView = this.f46808g;
        if (textureView != null) {
            return textureView;
        }
        return null;
    }

    public EGLContext getEGL10Context() {
        return this.f46815n;
    }

    public android.opengl.EGLContext getEGLContext() {
        return this.f46816o;
    }

    public FboManager getFboManager() {
        return this.f46827z;
    }

    public int getState() {
        return this.f46817p.get();
    }

    public int getViewType() {
        GLSurfaceView gLSurfaceView = this.f46819r;
        if (gLSurfaceView == null && this.f46808g == null && this.f46810i == null) {
            return 0;
        }
        if (gLSurfaceView != null) {
            return 1;
        }
        return this.f46808g != null ? 2 : 3;
    }

    public void init(int i4, int i10) {
        release();
        this.f46817p.set(0);
        e();
        this.f46811j.sendMessage(Message.obtain(this.f46811j, 0, i4, i10));
        this.f46811j.sendMessage(Message.obtain(this.f46811j, 1, i4, i10));
    }

    public boolean isGLRenderThread() {
        return this.f46818q == Thread.currentThread().getId();
    }

    public void onPause() {
        if (this.f46819r != null) {
            this.f46817p.set(2);
            this.f46819r.queueEvent(new Runnable() { // from class: com.ksyun.media.streamer.util.gles.GLRender.4
                @Override // java.lang.Runnable
                public void run() {
                    GLRender.this.c();
                }
            });
            this.f46819r.onPause();
        }
    }

    public void onResume() {
        if (this.f46817p.get() == 2) {
            this.f46817p.set(0);
        }
        GLSurfaceView gLSurfaceView = this.f46819r;
        if (gLSurfaceView != null) {
            gLSurfaceView.onResume();
        }
    }

    public void queueDrawFrameAppends(Runnable runnable) {
        if (this.f46817p.get() == 1) {
            synchronized (this.f46826y) {
                this.f46826y.add(runnable);
            }
        }
    }

    public void queueEvent(Runnable runnable) {
        if (this.f46817p.get() == 0) {
            Log.d(f46802a, "glContext not ready, queue event:" + runnable);
            synchronized (this.f46825x) {
                this.f46825x.add(runnable);
            }
        } else if (this.f46817p.get() == 1) {
            GLSurfaceView gLSurfaceView = this.f46819r;
            if (gLSurfaceView != null) {
                gLSurfaceView.queueEvent(runnable);
                this.f46819r.queueEvent(this.A);
                return;
            }
            Handler handler = this.f46811j;
            if (handler != null) {
                handler.post(runnable);
                this.f46811j.post(this.A);
            }
        } else {
            Log.d(f46802a, "glContext lost, drop event:" + runnable);
        }
    }

    public void release() {
        if (this.f46819r != null && this.f46817p.get() == 1) {
            this.f46819r.queueEvent(new Runnable() { // from class: com.ksyun.media.streamer.util.gles.GLRender.5
                @Override // java.lang.Runnable
                public void run() {
                    GLRender.this.c();
                }
            });
            this.f46819r.onPause();
        }
        this.f46819r = null;
        this.f46808g = null;
        this.f46817p.set(2);
        b((SurfaceTexture) null);
    }

    @Deprecated
    public void removeListener(GLRenderListener gLRenderListener) {
        synchronized (this.f46820s) {
            this.f46820s.remove(gLRenderListener);
        }
    }

    public void requestRender() {
        if (this.f46817p.get() != 1) {
            return;
        }
        GLSurfaceView gLSurfaceView = this.f46819r;
        if (gLSurfaceView != null) {
            gLSurfaceView.requestRender();
        }
        Handler handler = this.f46811j;
        if (handler != null) {
            handler.sendEmptyMessage(2);
        }
    }

    public void setInitEGL10Context(EGLContext eGLContext) {
        this.f46814m = eGLContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.f46816o = EGL14.EGL_NO_CONTEXT;
        this.f46817p.set(2);
        synchronized (this.f46820s) {
            Iterator<GLRenderListener> it = this.f46820s.iterator();
            while (it.hasNext()) {
                it.next().onReleased();
            }
        }
        synchronized (this.f46824w) {
            Iterator<OnReleasedListener> it2 = this.f46824w.iterator();
            while (it2.hasNext()) {
                it2.next().onReleased();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        Runnable first;
        while (true) {
            synchronized (this.f46826y) {
                if (this.f46826y.isEmpty()) {
                    return;
                }
                first = this.f46826y.getFirst();
                this.f46826y.removeFirst();
            }
            first.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        synchronized (this.f46809h) {
            if (this.f46810i == null) {
                HandlerThread handlerThread = new HandlerThread("GLThread");
                this.f46810i = handlerThread;
                handlerThread.start();
                this.f46811j = new Handler(this.f46810i.getLooper(), new Handler.Callback() { // from class: com.ksyun.media.streamer.util.gles.GLRender.10
                    @Override // android.os.Handler.Callback
                    public boolean handleMessage(Message message) {
                        int i4 = message.what;
                        if (i4 == 0) {
                            GLRender.this.a((SurfaceTexture) message.obj, message.arg1, message.arg2);
                            GLRender.this.a();
                        } else if (i4 == 1) {
                            GLRender.this.a(message.arg1, message.arg2);
                        } else if (i4 == 2) {
                            GLRender.this.b();
                            GLRender.this.f46813l.e();
                        } else if (i4 == 3) {
                            GLRender.this.c();
                            GLRender.this.a((SurfaceTexture) message.obj);
                            GLRender.this.f46810i.quit();
                        }
                        return true;
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        synchronized (this.f46825x) {
            Iterator<Runnable> it = this.f46825x.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
            this.f46825x.clear();
        }
        synchronized (this.f46820s) {
            Iterator<GLRenderListener> it2 = this.f46820s.iterator();
            while (it2.hasNext()) {
                it2.next().onDrawFrame();
            }
        }
        synchronized (this.f46823v) {
            Iterator<OnDrawFrameListener> it3 = this.f46823v.iterator();
            while (it3.hasNext()) {
                it3.next().onDrawFrame();
            }
        }
        d();
    }

    public void removeListener(OnReadyListener onReadyListener) {
        synchronized (this.f46821t) {
            this.f46821t.remove(onReadyListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.f46818q = Thread.currentThread().getId();
        this.f46827z.init();
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        this.f46815n = ((EGL10) EGLContext.getEGL()).eglGetCurrentContext();
        this.f46816o = EGL14.eglGetCurrentContext();
        this.f46817p.set(1);
        synchronized (this.f46820s) {
            Iterator<GLRenderListener> it = this.f46820s.iterator();
            while (it.hasNext()) {
                it.next().onReady();
            }
        }
        synchronized (this.f46821t) {
            Iterator<OnReadyListener> it2 = this.f46821t.iterator();
            while (it2.hasNext()) {
                it2.next().onReady();
            }
        }
    }

    public void addListener(final OnReadyListener onReadyListener) {
        synchronized (this.f46821t) {
            if (!this.f46821t.contains(onReadyListener)) {
                if (this.f46817p.get() == 1) {
                    queueEvent(new Runnable() { // from class: com.ksyun.media.streamer.util.gles.GLRender.3
                        @Override // java.lang.Runnable
                        public void run() {
                            onReadyListener.onReady();
                        }
                    });
                }
                this.f46821t.add(onReadyListener);
            }
        }
    }

    public void removeListener(OnSizeChangedListener onSizeChangedListener) {
        synchronized (this.f46822u) {
            this.f46822u.remove(onSizeChangedListener);
        }
    }

    public void init(GLSurfaceView gLSurfaceView) {
        if (gLSurfaceView == this.f46819r) {
            return;
        }
        release();
        this.f46817p.set(0);
        try {
            gLSurfaceView.setEGLConfigChooser(this.C);
            gLSurfaceView.setEGLContextFactory(this.B);
            gLSurfaceView.setEGLContextClientVersion(2);
            gLSurfaceView.setRenderer(this.D);
            gLSurfaceView.setRenderMode(0);
        } catch (Exception unused) {
        }
        this.f46819r = gLSurfaceView;
        StatsLogReport.getInstance().updateFunctionPoint(StatsConstant.FUNCTION_GLSURFACE);
    }

    public void removeListener(OnDrawFrameListener onDrawFrameListener) {
        synchronized (this.f46823v) {
            this.f46823v.remove(onDrawFrameListener);
        }
    }

    public void addListener(OnSizeChangedListener onSizeChangedListener) {
        synchronized (this.f46822u) {
            if (!this.f46822u.contains(onSizeChangedListener)) {
                this.f46822u.add(onSizeChangedListener);
            }
        }
    }

    public void removeListener(OnReleasedListener onReleasedListener) {
        synchronized (this.f46824w) {
            this.f46824w.remove(onReleasedListener);
        }
    }

    public void addListener(OnDrawFrameListener onDrawFrameListener) {
        synchronized (this.f46823v) {
            if (!this.f46823v.contains(onDrawFrameListener)) {
                this.f46823v.add(onDrawFrameListener);
            }
        }
    }

    public void init(TextureView textureView) {
        if (textureView == this.f46808g) {
            return;
        }
        release();
        this.f46817p.set(0);
        textureView.setSurfaceTextureListener(this.E);
        this.f46808g = textureView;
        if (textureView.getSurfaceTexture() != null) {
            Log.d(f46802a, "TextureView already initialized");
            e();
            this.f46811j.sendMessage(Message.obtain(this.f46811j, 0, textureView.getSurfaceTexture()));
            this.f46811j.sendMessage(Message.obtain(this.f46811j, 1, textureView.getWidth(), textureView.getHeight()));
        }
        StatsLogReport.getInstance().updateFunctionPoint(StatsConstant.FUNCTION_TEXTUREVIEW);
    }

    public GLRender(EGLContext eGLContext) {
        this();
        this.f46814m = eGLContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(SurfaceTexture surfaceTexture) {
        synchronized (this.f46809h) {
            if (this.f46810i != null) {
                this.f46811j.removeCallbacksAndMessages(null);
                this.f46811j.sendMessage(Message.obtain(this.f46811j, 3, surfaceTexture));
                try {
                    this.f46810i.join();
                    this.f46810i = null;
                } catch (InterruptedException unused) {
                    Log.d(f46802a, "GLThread Interrupted!");
                    this.f46810i = null;
                }
                this.f46811j = null;
            } else if (surfaceTexture != null) {
                surfaceTexture.release();
            }
        }
    }

    public void addListener(OnReleasedListener onReleasedListener) {
        synchronized (this.f46824w) {
            if (!this.f46824w.contains(onReleasedListener)) {
                this.f46824w.add(onReleasedListener);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i4, int i10) {
        GLES20.glViewport(0, 0, i4, i10);
        synchronized (this.f46820s) {
            Iterator<GLRenderListener> it = this.f46820s.iterator();
            while (it.hasNext()) {
                it.next().onSizeChanged(i4, i10);
            }
        }
        synchronized (this.f46822u) {
            Iterator<OnSizeChangedListener> it2 = this.f46822u.iterator();
            while (it2.hasNext()) {
                it2.next().onSizeChanged(i4, i10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SurfaceTexture surfaceTexture, int i4, int i10) {
        a aVar = new a(this.f46814m, 0);
        this.f46812k = aVar;
        if (surfaceTexture != null) {
            this.f46813l = new c(aVar, surfaceTexture);
        } else {
            this.f46813l = new c(aVar, i4, i10);
        }
        this.f46813l.d();
        GLES20.glViewport(0, 0, this.f46813l.a(), this.f46813l.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SurfaceTexture surfaceTexture) {
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
        c cVar = this.f46813l;
        if (cVar != null) {
            cVar.f();
            this.f46813l = null;
        }
        a aVar = this.f46812k;
        if (aVar != null) {
            aVar.a();
            this.f46812k = null;
        }
    }
}
