package com.google.android.exoplayer2.drm;

import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.s;

/* compiled from: DrmSessionManager.java */
/* loaded from: classes2.dex */
public interface u {

    /* renamed from: a  reason: collision with root package name */
    public static final u f21818a;
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    public static final u f21819b;

    /* compiled from: DrmSessionManager.java */
    /* loaded from: classes2.dex */
    class a implements u {
        a() {
        }

        @Override // com.google.android.exoplayer2.drm.u
        public /* synthetic */ void a() {
            t.b(this);
        }

        @Override // com.google.android.exoplayer2.drm.u
        @Nullable
        public DrmSession b(Looper looper, @Nullable s.a aVar, Format format) {
            if (format.drmInitData == null) {
                return null;
            }
            return new z(new DrmSession.DrmSessionException(new UnsupportedDrmException(1)));
        }

        @Override // com.google.android.exoplayer2.drm.u
        public /* synthetic */ b c(Looper looper, s.a aVar, Format format) {
            return t.a(this, looper, aVar, format);
        }

        @Override // com.google.android.exoplayer2.drm.u
        @Nullable
        public Class<m0> d(Format format) {
            if (format.drmInitData != null) {
                return m0.class;
            }
            return null;
        }

        @Override // com.google.android.exoplayer2.drm.u
        public /* synthetic */ void release() {
            t.c(this);
        }
    }

    /* compiled from: DrmSessionManager.java */
    /* loaded from: classes2.dex */
    public interface b {

        /* renamed from: a  reason: collision with root package name */
        public static final b f21820a = v.f21821b;

        void release();
    }

    static {
        a aVar = new a();
        f21818a = aVar;
        f21819b = aVar;
    }

    void a();

    @Nullable
    DrmSession b(Looper looper, @Nullable s.a aVar, Format format);

    b c(Looper looper, @Nullable s.a aVar, Format format);

    @Nullable
    Class<? extends a0> d(Format format);

    void release();
}
