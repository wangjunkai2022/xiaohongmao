package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.drm.b0;
import java.util.UUID;

/* compiled from: MediaDrmCallback.java */
/* loaded from: classes2.dex */
public interface k0 {
    byte[] a(UUID uuid, b0.h hVar) throws MediaDrmCallbackException;

    byte[] b(UUID uuid, b0.b bVar) throws MediaDrmCallbackException;
}
