package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.util.z0;
import java.util.UUID;

/* compiled from: FrameworkMediaCrypto.java */
/* loaded from: classes2.dex */
public final class c0 implements a0 {

    /* renamed from: d  reason: collision with root package name */
    public static final boolean f21753d;

    /* renamed from: a  reason: collision with root package name */
    public final UUID f21754a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f21755b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f21756c;

    static {
        boolean z9;
        if ("Amazon".equals(z0.f27745c)) {
            String str = z0.f27746d;
            if ("AFTM".equals(str) || "AFTB".equals(str)) {
                z9 = true;
                f21753d = z9;
            }
        }
        z9 = false;
        f21753d = z9;
    }

    public c0(UUID uuid, byte[] bArr, boolean z9) {
        this.f21754a = uuid;
        this.f21755b = bArr;
        this.f21756c = z9;
    }
}
