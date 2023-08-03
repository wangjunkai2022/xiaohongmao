package com.google.android.exoplayer2.video.spherical;

import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.opengl.Matrix;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.p;
import com.google.android.exoplayer2.util.t0;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SceneRenderer.java */
/* loaded from: classes2.dex */
public final class i implements com.google.android.exoplayer2.video.j, a {

    /* renamed from: i  reason: collision with root package name */
    private int f28094i;

    /* renamed from: j  reason: collision with root package name */
    private SurfaceTexture f28095j;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private byte[] f28098m;

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f28086a = new AtomicBoolean();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f28087b = new AtomicBoolean(true);

    /* renamed from: c  reason: collision with root package name */
    private final g f28088c = new g();

    /* renamed from: d  reason: collision with root package name */
    private final c f28089d = new c();

    /* renamed from: e  reason: collision with root package name */
    private final t0<Long> f28090e = new t0<>();

    /* renamed from: f  reason: collision with root package name */
    private final t0<e> f28091f = new t0<>();

    /* renamed from: g  reason: collision with root package name */
    private final float[] f28092g = new float[16];

    /* renamed from: h  reason: collision with root package name */
    private final float[] f28093h = new float[16];

    /* renamed from: k  reason: collision with root package name */
    private volatile int f28096k = 0;

    /* renamed from: l  reason: collision with root package name */
    private int f28097l = -1;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(SurfaceTexture surfaceTexture) {
        this.f28086a.set(true);
    }

    private void i(@Nullable byte[] bArr, int i4, long j4) {
        byte[] bArr2 = this.f28098m;
        int i10 = this.f28097l;
        this.f28098m = bArr;
        if (i4 == -1) {
            i4 = this.f28096k;
        }
        this.f28097l = i4;
        if (i10 == i4 && Arrays.equals(bArr2, this.f28098m)) {
            return;
        }
        byte[] bArr3 = this.f28098m;
        e a10 = bArr3 != null ? f.a(bArr3, this.f28097l) : null;
        if (a10 == null || !g.c(a10)) {
            a10 = e.b(this.f28097l);
        }
        this.f28091f.a(j4, a10);
    }

    @Override // com.google.android.exoplayer2.video.j
    public void a(long j4, long j10, Format format, @Nullable MediaFormat mediaFormat) {
        this.f28090e.a(j10, Long.valueOf(j4));
        i(format.projectionData, format.stereoMode, j10);
    }

    public void c(float[] fArr, boolean z9) {
        GLES20.glClear(16384);
        p.c();
        if (this.f28086a.compareAndSet(true, false)) {
            ((SurfaceTexture) com.google.android.exoplayer2.util.a.g(this.f28095j)).updateTexImage();
            p.c();
            if (this.f28087b.compareAndSet(true, false)) {
                Matrix.setIdentityM(this.f28092g, 0);
            }
            long timestamp = this.f28095j.getTimestamp();
            Long g4 = this.f28090e.g(timestamp);
            if (g4 != null) {
                this.f28089d.c(this.f28092g, g4.longValue());
            }
            e j4 = this.f28091f.j(timestamp);
            if (j4 != null) {
                this.f28088c.d(j4);
            }
        }
        Matrix.multiplyMM(this.f28093h, 0, fArr, 0, this.f28092g, 0);
        this.f28088c.a(this.f28094i, this.f28093h, z9);
    }

    public SurfaceTexture d() {
        GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
        p.c();
        this.f28088c.b();
        p.c();
        this.f28094i = p.h();
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f28094i);
        this.f28095j = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: com.google.android.exoplayer2.video.spherical.h
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                i.this.f(surfaceTexture2);
            }
        });
        return this.f28095j;
    }

    @Override // com.google.android.exoplayer2.video.spherical.a
    public void e(long j4, float[] fArr) {
        this.f28089d.e(j4, fArr);
    }

    @Override // com.google.android.exoplayer2.video.spherical.a
    public void g() {
        this.f28090e.c();
        this.f28089d.d();
        this.f28087b.set(true);
    }

    public void h(int i4) {
        this.f28096k = i4;
    }

    public void j() {
        this.f28088c.e();
    }
}
