package com.google.android.gms.internal.mlkit_common;

import java.io.UnsupportedEncodingException;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class nb implements ab {

    /* renamed from: a  reason: collision with root package name */
    private final w7 f29859a;

    /* renamed from: b  reason: collision with root package name */
    private w9 f29860b = new w9();

    private nb(w7 w7Var, int i4) {
        this.f29859a = w7Var;
        yb.a();
    }

    public static ab f(w7 w7Var) {
        return new nb(w7Var, 0);
    }

    public static ab g() {
        return new nb(new w7(), 0);
    }

    @Override // com.google.android.gms.internal.mlkit_common.ab
    public final byte[] a(int i4, boolean z9) {
        this.f29860b.f(Boolean.valueOf(1 == (i4 ^ 1)));
        this.f29860b.e(Boolean.FALSE);
        this.f29859a.j(this.f29860b.m());
        try {
            yb.a();
            if (i4 == 0) {
                return new com.google.firebase.encoders.json.e().h(i6.f29720a).i(true).g().a(this.f29859a.k()).getBytes("utf-8");
            }
            y7 k10 = this.f29859a.k();
            k0 k0Var = new k0();
            i6.f29720a.a(k0Var);
            return k0Var.c().a(k10);
        } catch (UnsupportedEncodingException e4) {
            throw new UnsupportedOperationException("Failed to covert logging to UTF-8 byte array", e4);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.ab
    public final String b() {
        y9 f10 = this.f29859a.k().f();
        return (f10 == null || e.c(f10.k())) ? "NA" : (String) com.google.android.gms.common.internal.u.k(f10.k());
    }

    @Override // com.google.android.gms.internal.mlkit_common.ab
    public final ab c(w9 w9Var) {
        this.f29860b = w9Var;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.ab
    public final ab d(zziu zziuVar) {
        this.f29859a.f(zziuVar);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.ab
    public final ab e(c8 c8Var) {
        this.f29859a.i(c8Var);
        return this;
    }
}
