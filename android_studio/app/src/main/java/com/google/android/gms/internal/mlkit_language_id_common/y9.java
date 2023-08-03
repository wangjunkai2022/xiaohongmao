package com.google.android.gms.internal.mlkit_language_id_common;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
final class y9 extends ca {

    /* renamed from: a  reason: collision with root package name */
    private String f31036a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f31037b;

    /* renamed from: c  reason: collision with root package name */
    private int f31038c;

    /* renamed from: d  reason: collision with root package name */
    private byte f31039d;

    @Override // com.google.android.gms.internal.mlkit_language_id_common.ca
    public final ca a(boolean z9) {
        this.f31037b = true;
        this.f31039d = (byte) (1 | this.f31039d);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.ca
    public final ca b(int i4) {
        this.f31038c = 1;
        this.f31039d = (byte) (this.f31039d | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.ca
    public final da c() {
        String str;
        if (this.f31039d == 3 && (str = this.f31036a) != null) {
            return new aa(str, this.f31037b, this.f31038c, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f31036a == null) {
            sb.append(" libraryName");
        }
        if ((this.f31039d & 1) == 0) {
            sb.append(" enableFirelog");
        }
        if ((this.f31039d & 2) == 0) {
            sb.append(" firelogEventType");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    public final ca d(String str) {
        this.f31036a = str;
        return this;
    }
}
