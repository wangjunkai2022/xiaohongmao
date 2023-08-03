package com.google.android.gms.internal.mlkit_common;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public enum zzip implements f0 {
    UNKNOWN(0),
    TRANSLATE(1);
    

    /* renamed from: a  reason: collision with root package name */
    private final int f30264a;

    zzip(int i4) {
        this.f30264a = i4;
    }

    public static zzip zzb(int i4) {
        zzip[] values;
        for (zzip zzipVar : values()) {
            if (zzipVar.f30264a == i4) {
                return zzipVar;
            }
        }
        return UNKNOWN;
    }

    @Override // com.google.android.gms.internal.mlkit_common.f0
    public final int zza() {
        return this.f30264a;
    }
}
