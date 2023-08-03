package com.google.android.gms.internal.mlkit_language_id_common;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public final class q6 {

    /* renamed from: a  reason: collision with root package name */
    private Long f30826a;

    /* renamed from: b  reason: collision with root package name */
    private zzhu f30827b;

    /* renamed from: c  reason: collision with root package name */
    private Boolean f30828c;

    public final q6 a(Long l10) {
        this.f30826a = Long.valueOf(l10.longValue() & Long.MAX_VALUE);
        return this;
    }

    public final q6 b(zzhu zzhuVar) {
        this.f30827b = zzhuVar;
        return this;
    }

    public final q6 c(Boolean bool) {
        this.f30828c = bool;
        return this;
    }

    public final s6 d() {
        return new s6(this, null);
    }
}
