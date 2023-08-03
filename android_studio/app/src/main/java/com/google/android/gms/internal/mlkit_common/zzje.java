package com.google.android.gms.internal.mlkit_common;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public enum zzje implements f0 {
    SOURCE_UNKNOWN(0),
    APP_ASSET(1),
    LOCAL(2),
    CLOUD(3),
    SDK_BUILT_IN(4),
    URI(5);
    

    /* renamed from: a  reason: collision with root package name */
    private final int f30274a;

    zzje(int i4) {
        this.f30274a = i4;
    }

    @Override // com.google.android.gms.internal.mlkit_common.f0
    public final int zza() {
        return this.f30274a;
    }
}
