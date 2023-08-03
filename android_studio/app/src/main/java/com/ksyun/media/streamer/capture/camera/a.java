package com.ksyun.media.streamer.capture.camera;

import android.hardware.Camera;
import android.util.Log;
import com.ksyun.media.streamer.capture.camera.b;
import java.io.IOException;

/* compiled from: CameraHolder.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f45814a = "CameraHolder";

    /* renamed from: i  reason: collision with root package name */
    private static a f45815i;

    /* renamed from: b  reason: collision with root package name */
    private b.C0390b f45816b;

    /* renamed from: c  reason: collision with root package name */
    private final int f45817c;

    /* renamed from: d  reason: collision with root package name */
    private int f45818d = -1;

    /* renamed from: e  reason: collision with root package name */
    private int f45819e;

    /* renamed from: f  reason: collision with root package name */
    private int f45820f;

    /* renamed from: g  reason: collision with root package name */
    private final Camera.CameraInfo[] f45821g;

    /* renamed from: h  reason: collision with root package name */
    private Camera.Parameters f45822h;

    private a() {
        this.f45819e = -1;
        this.f45820f = -1;
        if (Camera.getNumberOfCameras() < 0) {
            this.f45817c = 0;
        } else {
            this.f45817c = Camera.getNumberOfCameras();
        }
        this.f45821g = new Camera.CameraInfo[this.f45817c];
        for (int i4 = 0; i4 < this.f45817c; i4++) {
            this.f45821g[i4] = new Camera.CameraInfo();
            try {
                Camera.getCameraInfo(i4, this.f45821g[i4]);
            } catch (Exception unused) {
                Log.w(f45814a, "Failed to getCameraInfo");
            }
        }
        for (int i10 = 0; i10 < this.f45817c; i10++) {
            if (this.f45819e == -1 && this.f45821g[i10].facing == 0) {
                this.f45819e = i10;
            } else if (this.f45820f == -1 && this.f45821g[i10].facing == 1) {
                this.f45820f = i10;
            }
        }
    }

    public static synchronized a a() {
        a aVar;
        synchronized (a.class) {
            if (f45815i == null) {
                f45815i = new a();
            }
            aVar = f45815i;
        }
        return aVar;
    }

    public synchronized void b() {
        b.C0390b c0390b = this.f45816b;
        if (c0390b == null) {
            return;
        }
        c0390b.a();
        this.f45816b = null;
        this.f45822h = null;
        this.f45818d = -1;
    }

    public int c() {
        return this.f45819e;
    }

    public int d() {
        return this.f45820f;
    }

    public synchronized b.C0390b a(int i4) {
        b.C0390b c0390b = this.f45816b;
        if (c0390b != null && this.f45818d != i4) {
            c0390b.a();
            this.f45816b = null;
            this.f45818d = -1;
        }
        b.C0390b c0390b2 = this.f45816b;
        if (c0390b2 == null) {
            try {
                Log.v(f45814a, "open camera " + i4);
                b.C0390b a10 = b.a().a(i4);
                this.f45816b = a10;
                this.f45818d = i4;
                if (a10 != null) {
                    this.f45822h = a10.i();
                }
                if (this.f45822h == null) {
                    throw new CameraDisabledException();
                }
            } catch (RuntimeException e4) {
                Log.e(f45814a, "fail to connect Camera", e4);
                throw new CameraHardwareException(e4);
            }
        } else {
            try {
                c0390b2.b();
                this.f45816b.a(this.f45822h);
            } catch (IOException e10) {
                Log.e(f45814a, "reconnect failed.");
                throw new CameraHardwareException(e10);
            }
        }
        return this.f45816b;
    }
}
