package com.google.android.exoplayer2.video;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.util.EGLSurfaceTexture;

@RequiresApi(17)
/* loaded from: classes2.dex */
public final class DummySurface extends Surface {
    private static final String TAG = "DummySurface";
    private static int secureMode;
    private static boolean secureModeInitialized;
    public final boolean secure;
    private final b thread;
    private boolean threadReleased;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class b extends HandlerThread implements Handler.Callback {

        /* renamed from: f  reason: collision with root package name */
        private static final int f27827f = 1;

        /* renamed from: g  reason: collision with root package name */
        private static final int f27828g = 2;

        /* renamed from: a  reason: collision with root package name */
        private EGLSurfaceTexture f27829a;

        /* renamed from: b  reason: collision with root package name */
        private Handler f27830b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private Error f27831c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private RuntimeException f27832d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private DummySurface f27833e;

        public b() {
            super("ExoPlayer:DummySurface");
        }

        private void b(int i4) {
            com.google.android.exoplayer2.util.a.g(this.f27829a);
            this.f27829a.h(i4);
            this.f27833e = new DummySurface(this, this.f27829a.g(), i4 != 0);
        }

        private void d() {
            com.google.android.exoplayer2.util.a.g(this.f27829a);
            this.f27829a.i();
        }

        public DummySurface a(int i4) {
            boolean z9;
            start();
            this.f27830b = new Handler(getLooper(), this);
            this.f27829a = new EGLSurfaceTexture(this.f27830b);
            synchronized (this) {
                z9 = false;
                this.f27830b.obtainMessage(1, i4, 0).sendToTarget();
                while (this.f27833e == null && this.f27832d == null && this.f27831c == null) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                        z9 = true;
                    }
                }
            }
            if (z9) {
                Thread.currentThread().interrupt();
            }
            RuntimeException runtimeException = this.f27832d;
            if (runtimeException == null) {
                Error error = this.f27831c;
                if (error == null) {
                    return (DummySurface) com.google.android.exoplayer2.util.a.g(this.f27833e);
                }
                throw error;
            }
            throw runtimeException;
        }

        public void c() {
            com.google.android.exoplayer2.util.a.g(this.f27830b);
            this.f27830b.sendEmptyMessage(2);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i4 = message.what;
            try {
                if (i4 != 1) {
                    if (i4 != 2) {
                        return true;
                    }
                    try {
                        d();
                    } finally {
                        try {
                            return true;
                        } finally {
                        }
                    }
                    return true;
                }
                try {
                    b(message.arg1);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e4) {
                    com.google.android.exoplayer2.util.w.e(DummySurface.TAG, "Failed to initialize dummy surface", e4);
                    this.f27831c = e4;
                    synchronized (this) {
                        notify();
                    }
                } catch (RuntimeException e10) {
                    com.google.android.exoplayer2.util.w.e(DummySurface.TAG, "Failed to initialize dummy surface", e10);
                    this.f27832d = e10;
                    synchronized (this) {
                        notify();
                    }
                }
                return true;
            } catch (Throwable th) {
                synchronized (this) {
                    notify();
                    throw th;
                }
            }
        }
    }

    private static int getSecureMode(Context context) {
        if (com.google.android.exoplayer2.util.p.k(context)) {
            return com.google.android.exoplayer2.util.p.l() ? 1 : 2;
        }
        return 0;
    }

    public static synchronized boolean isSecureSupported(Context context) {
        boolean z9;
        synchronized (DummySurface.class) {
            if (!secureModeInitialized) {
                secureMode = getSecureMode(context);
                secureModeInitialized = true;
            }
            z9 = secureMode != 0;
        }
        return z9;
    }

    public static DummySurface newInstanceV17(Context context, boolean z9) {
        com.google.android.exoplayer2.util.a.i(!z9 || isSecureSupported(context));
        return new b().a(z9 ? secureMode : 0);
    }

    @Override // android.view.Surface
    public void release() {
        super.release();
        synchronized (this.thread) {
            if (!this.threadReleased) {
                this.thread.c();
                this.threadReleased = true;
            }
        }
    }

    private DummySurface(b bVar, SurfaceTexture surfaceTexture, boolean z9) {
        super(surfaceTexture);
        this.thread = bVar;
        this.secure = z9;
    }
}
