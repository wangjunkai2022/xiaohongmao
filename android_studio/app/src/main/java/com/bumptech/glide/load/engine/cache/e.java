package com.bumptech.glide.load.engine.cache;

import android.util.Log;
import com.bumptech.glide.disklrucache.a;
import com.bumptech.glide.load.engine.cache.a;
import java.io.File;
import java.io.IOException;

/* compiled from: DiskLruCacheWrapper.java */
/* loaded from: classes.dex */
public class e implements a {

    /* renamed from: f  reason: collision with root package name */
    private static final String f8705f = "DiskLruCacheWrapper";

    /* renamed from: g  reason: collision with root package name */
    private static final int f8706g = 1;

    /* renamed from: h  reason: collision with root package name */
    private static final int f8707h = 1;

    /* renamed from: i  reason: collision with root package name */
    private static e f8708i;

    /* renamed from: b  reason: collision with root package name */
    private final File f8710b;

    /* renamed from: c  reason: collision with root package name */
    private final long f8711c;

    /* renamed from: e  reason: collision with root package name */
    private com.bumptech.glide.disklrucache.a f8713e;

    /* renamed from: d  reason: collision with root package name */
    private final c f8712d = new c();

    /* renamed from: a  reason: collision with root package name */
    private final m f8709a = new m();

    @Deprecated
    protected e(File file, long j4) {
        this.f8710b = file;
        this.f8711c = j4;
    }

    public static a d(File file, long j4) {
        return new e(file, j4);
    }

    @Deprecated
    public static synchronized a e(File file, long j4) {
        e eVar;
        synchronized (e.class) {
            if (f8708i == null) {
                f8708i = new e(file, j4);
            }
            eVar = f8708i;
        }
        return eVar;
    }

    private synchronized com.bumptech.glide.disklrucache.a f() throws IOException {
        if (this.f8713e == null) {
            this.f8713e = com.bumptech.glide.disklrucache.a.b0(this.f8710b, 1, 1, this.f8711c);
        }
        return this.f8713e;
    }

    private synchronized void g() {
        this.f8713e = null;
    }

    @Override // com.bumptech.glide.load.engine.cache.a
    public void a(com.bumptech.glide.load.c cVar, a.b bVar) {
        com.bumptech.glide.disklrucache.a f10;
        String b10 = this.f8709a.b(cVar);
        this.f8712d.a(b10);
        try {
            if (Log.isLoggable(f8705f, 2)) {
                Log.v(f8705f, "Put: Obtained: " + b10 + " for for Key: " + cVar);
            }
            try {
                f10 = f();
            } catch (IOException e4) {
                if (Log.isLoggable(f8705f, 5)) {
                    Log.w(f8705f, "Unable to put to disk cache", e4);
                }
            }
            if (f10.K(b10) != null) {
                return;
            }
            a.c H = f10.H(b10);
            if (H != null) {
                try {
                    if (bVar.a(H.f(0))) {
                        H.e();
                    }
                    H.b();
                    return;
                } catch (Throwable th) {
                    H.b();
                    throw th;
                }
            }
            throw new IllegalStateException("Had two simultaneous puts for: " + b10);
        } finally {
            this.f8712d.b(b10);
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.a
    public File b(com.bumptech.glide.load.c cVar) {
        String b10 = this.f8709a.b(cVar);
        if (Log.isLoggable(f8705f, 2)) {
            Log.v(f8705f, "Get: Obtained: " + b10 + " for for Key: " + cVar);
        }
        try {
            a.e K = f().K(b10);
            if (K != null) {
                return K.b(0);
            }
            return null;
        } catch (IOException e4) {
            if (Log.isLoggable(f8705f, 5)) {
                Log.w(f8705f, "Unable to get from disk cache", e4);
                return null;
            }
            return null;
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.a
    public void c(com.bumptech.glide.load.c cVar) {
        try {
            f().n0(this.f8709a.b(cVar));
        } catch (IOException e4) {
            if (Log.isLoggable(f8705f, 5)) {
                Log.w(f8705f, "Unable to delete from disk cache", e4);
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.a
    public synchronized void clear() {
        try {
            f().E();
        } catch (IOException e4) {
            if (Log.isLoggable(f8705f, 5)) {
                Log.w(f8705f, "Unable to clear disk cache or disk cache cleared externally", e4);
            }
        }
        g();
    }
}
