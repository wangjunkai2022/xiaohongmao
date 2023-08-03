package com.google.android.exoplayer2.drm;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.s;
import java.util.Map;
import java.util.UUID;

/* compiled from: ErrorStateDrmSession.java */
/* loaded from: classes2.dex */
public final class z implements DrmSession {

    /* renamed from: f  reason: collision with root package name */
    private final DrmSession.DrmSessionException f21822f;

    public z(DrmSession.DrmSessionException drmSessionException) {
        this.f21822f = (DrmSession.DrmSessionException) com.google.android.exoplayer2.util.a.g(drmSessionException);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public DrmSession.DrmSessionException e() {
        return this.f21822f;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public void f(@Nullable s.a aVar) {
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public void g(@Nullable s.a aVar) {
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public int getState() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final UUID h() {
        return com.google.android.exoplayer2.i.I1;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public boolean i() {
        return false;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public a0 j() {
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public byte[] k() {
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public Map<String, String> l() {
        return null;
    }
}
