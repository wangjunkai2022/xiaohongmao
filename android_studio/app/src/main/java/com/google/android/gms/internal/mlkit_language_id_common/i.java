package com.google.android.gms.internal.mlkit_language_id_common;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
final class i implements m {
    private final int X2;
    private final zzal Y2;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(int i4, zzal zzalVar) {
        this.X2 = i4;
        this.Y2 = zzalVar;
    }

    @Override // java.lang.annotation.Annotation
    public final Class annotationType() {
        return m.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof m) {
            m mVar = (m) obj;
            return this.X2 == mVar.zza() && this.Y2.equals(mVar.zzb());
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

    @Override // com.google.android.gms.internal.mlkit_language_id_common.m
    public final int zza() {
        return this.X2;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.m
    public final zzal zzb() {
        return this.Y2;
    }
}
