package com.google.android.gms.internal.mlkit_common;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public enum zzjd implements f0 {
    TYPE_UNKNOWN(0),
    CUSTOM(1),
    AUTOML_IMAGE_LABELING(2),
    BASE_TRANSLATE(3),
    CUSTOM_OBJECT_DETECTION(4),
    CUSTOM_IMAGE_LABELING(5),
    BASE_ENTITY_EXTRACTION(6),
    BASE_DIGITAL_INK(7),
    TOXICITY_DETECTION(8);
    

    /* renamed from: a  reason: collision with root package name */
    private final int f30272a;

    zzjd(int i4) {
        this.f30272a = i4;
    }

    @Override // com.google.android.gms.internal.mlkit_common.f0
    public final int zza() {
        return this.f30272a;
    }
}
