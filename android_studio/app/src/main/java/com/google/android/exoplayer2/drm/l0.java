package com.google.android.exoplayer2.drm;

import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.b0;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.source.z;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import java.util.Map;
import java.util.UUID;

/* compiled from: OfflineLicenseHelper.java */
@RequiresApi(18)
/* loaded from: classes2.dex */
public final class l0 {

    /* renamed from: e  reason: collision with root package name */
    private static final Format f21791e = new Format.b().L(new DrmInitData(new DrmInitData.SchemeData[0])).E();

    /* renamed from: a  reason: collision with root package name */
    private final ConditionVariable f21792a;

    /* renamed from: b  reason: collision with root package name */
    private final DefaultDrmSessionManager f21793b;

    /* renamed from: c  reason: collision with root package name */
    private final HandlerThread f21794c;

    /* renamed from: d  reason: collision with root package name */
    private final s.a f21795d;

    /* compiled from: OfflineLicenseHelper.java */
    /* loaded from: classes2.dex */
    class a implements s {
        a() {
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void N(int i4, @Nullable z.a aVar) {
            l0.this.f21792a.open();
        }

        @Override // com.google.android.exoplayer2.drm.s
        public /* synthetic */ void O(int i4, z.a aVar) {
            l.d(this, i4, aVar);
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void Y(int i4, @Nullable z.a aVar, Exception exc) {
            l0.this.f21792a.open();
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void g0(int i4, @Nullable z.a aVar) {
            l0.this.f21792a.open();
        }

        @Override // com.google.android.exoplayer2.drm.s
        public /* synthetic */ void k0(int i4, z.a aVar, int i10) {
            l.e(this, i4, aVar, i10);
        }

        @Override // com.google.android.exoplayer2.drm.s
        public /* synthetic */ void l0(int i4, z.a aVar) {
            l.g(this, i4, aVar);
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void p0(int i4, @Nullable z.a aVar) {
            l0.this.f21792a.open();
        }
    }

    @Deprecated
    public l0(UUID uuid, b0.g gVar, k0 k0Var, @Nullable Map<String, String> map, s.a aVar) {
        this(new DefaultDrmSessionManager.b().h(uuid, gVar).b(map).a(k0Var), aVar);
    }

    private byte[] b(int i4, @Nullable byte[] bArr, Format format) throws DrmSession.DrmSessionException {
        this.f21793b.a();
        DrmSession h4 = h(i4, bArr, format);
        DrmSession.DrmSessionException e4 = h4.e();
        byte[] k10 = h4.k();
        h4.g(this.f21795d);
        this.f21793b.release();
        if (e4 == null) {
            return (byte[]) com.google.android.exoplayer2.util.a.g(k10);
        }
        throw e4;
    }

    public static l0 e(String str, HttpDataSource.b bVar, s.a aVar) {
        return f(str, false, bVar, aVar);
    }

    public static l0 f(String str, boolean z9, HttpDataSource.b bVar, s.a aVar) {
        return g(str, z9, bVar, null, aVar);
    }

    public static l0 g(String str, boolean z9, HttpDataSource.b bVar, @Nullable Map<String, String> map, s.a aVar) {
        return new l0(new DefaultDrmSessionManager.b().b(map).a(new i0(str, z9, bVar)), aVar);
    }

    private DrmSession h(int i4, @Nullable byte[] bArr, Format format) {
        com.google.android.exoplayer2.util.a.g(format.drmInitData);
        this.f21793b.D(i4, bArr);
        this.f21792a.close();
        DrmSession b10 = this.f21793b.b(this.f21794c.getLooper(), this.f21795d, format);
        this.f21792a.block();
        return (DrmSession) com.google.android.exoplayer2.util.a.g(b10);
    }

    public synchronized byte[] c(Format format) throws DrmSession.DrmSessionException {
        com.google.android.exoplayer2.util.a.a(format.drmInitData != null);
        return b(2, null, format);
    }

    public synchronized Pair<Long, Long> d(byte[] bArr) throws DrmSession.DrmSessionException {
        com.google.android.exoplayer2.util.a.g(bArr);
        this.f21793b.a();
        DrmSession h4 = h(1, bArr, f21791e);
        DrmSession.DrmSessionException e4 = h4.e();
        Pair<Long, Long> b10 = n0.b(h4);
        h4.g(this.f21795d);
        this.f21793b.release();
        if (e4 != null) {
            if (e4.getCause() instanceof KeysExpiredException) {
                return Pair.create(0L, 0L);
            }
            throw e4;
        }
        return (Pair) com.google.android.exoplayer2.util.a.g(b10);
    }

    public void i() {
        this.f21794c.quit();
    }

    public synchronized void j(byte[] bArr) throws DrmSession.DrmSessionException {
        com.google.android.exoplayer2.util.a.g(bArr);
        b(3, bArr, f21791e);
    }

    public synchronized byte[] k(byte[] bArr) throws DrmSession.DrmSessionException {
        com.google.android.exoplayer2.util.a.g(bArr);
        return b(2, bArr, f21791e);
    }

    public l0(DefaultDrmSessionManager defaultDrmSessionManager, s.a aVar) {
        this.f21793b = defaultDrmSessionManager;
        this.f21795d = aVar;
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:OfflineLicenseHelper");
        this.f21794c = handlerThread;
        handlerThread.start();
        this.f21792a = new ConditionVariable();
        aVar.g(new Handler(handlerThread.getLooper()), new a());
    }
}
