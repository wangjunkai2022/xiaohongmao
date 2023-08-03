package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.drm.b0;
import java.util.UUID;

/* compiled from: LocalMediaDrmCallback.java */
/* loaded from: classes2.dex */
public final class j0 implements k0 {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f21790a;

    public j0(byte[] bArr) {
        this.f21790a = (byte[]) com.google.android.exoplayer2.util.a.g(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.k0
    public byte[] a(UUID uuid, b0.h hVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.exoplayer2.drm.k0
    public byte[] b(UUID uuid, b0.b bVar) {
        return this.f21790a;
    }
}
