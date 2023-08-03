package com.google.android.gms.internal.mlkit_common;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
final class c0 implements g0 {
    private final int X2;
    private final zzbi Y2;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0(int i4, zzbi zzbiVar) {
        this.X2 = i4;
        this.Y2 = zzbiVar;
    }

    @Override // java.lang.annotation.Annotation
    public final Class annotationType() {
        return g0.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g0) {
            g0 g0Var = (g0) obj;
            return this.X2 == g0Var.zza() && this.Y2.equals(g0Var.zzb());
        }
        return false;
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return (this.X2 ^ 14552422) + (this.Y2.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.X2 + "intEncoding=" + this.Y2 + ')';
    }

    @Override // com.google.android.gms.internal.mlkit_common.g0
    public final int zza() {
        return this.X2;
    }

    @Override // com.google.android.gms.internal.mlkit_common.g0
    public final zzbi zzb() {
        return this.Y2;
    }
}
