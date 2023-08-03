package com.google.android.gms.internal.mlkit_language_id_common;

import java.io.UnsupportedEncodingException;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public final class na implements ba {

    /* renamed from: a  reason: collision with root package name */
    private final a7 f30755a;

    /* renamed from: b  reason: collision with root package name */
    private c9 f30756b = new c9();

    /* renamed from: c  reason: collision with root package name */
    private final int f30757c;

    private na(a7 a7Var, int i4) {
        this.f30755a = a7Var;
        wa.a();
        this.f30757c = i4;
    }

    public static ba e(a7 a7Var) {
        return new na(a7Var, 0);
    }

    public static ba f(a7 a7Var, int i4) {
        return new na(a7Var, 1);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.ba
    public final byte[] a(int i4, boolean z9) {
        this.f30756b.f(Boolean.valueOf(1 == (i4 ^ 1)));
        this.f30756b.e(Boolean.FALSE);
        this.f30755a.f(this.f30756b.m());
        try {
            wa.a();
            if (i4 == 0) {
                return new com.google.firebase.encoders.json.e().h(o5.f30781a).i(true).g().a(this.f30755a.g()).getBytes("utf-8");
            }
            c7 g4 = this.f30755a.g();
            q qVar = new q();
            o5.f30781a.a(qVar);
            return qVar.c().a(g4);
        } catch (UnsupportedEncodingException e4) {
            throw new UnsupportedOperationException("Failed to covert logging to UTF-8 byte array", e4);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.ba
    public final String b() {
        e9 d4 = this.f30755a.g().d();
        return (d4 == null || ha.b(d4.k())) ? "NA" : (String) com.google.android.gms.common.internal.u.k(d4.k());
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.ba
    public final ba c(c9 c9Var) {
        this.f30756b = c9Var;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.ba
    public final ba d(zzhv zzhvVar) {
        this.f30755a.d(zzhvVar);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.ba
    public final int zza() {
        return this.f30757c;
    }
}
