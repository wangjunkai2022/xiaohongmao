package com.google.android.exoplayer2.drm;

import androidx.annotation.Nullable;

/* compiled from: DrmSession.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class k {
    public static boolean a(DrmSession drmSession) {
        return false;
    }

    public static void b(@Nullable DrmSession drmSession, @Nullable DrmSession drmSession2) {
        if (drmSession == drmSession2) {
            return;
        }
        if (drmSession2 != null) {
            drmSession2.f(null);
        }
        if (drmSession != null) {
            drmSession.g(null);
        }
    }
}
