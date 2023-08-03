package com.google.android.gms.internal.mlkit_common;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
final class ua extends cb {

    /* renamed from: a  reason: collision with root package name */
    private String f30062a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f30063b;

    /* renamed from: c  reason: collision with root package name */
    private int f30064c;

    /* renamed from: d  reason: collision with root package name */
    private byte f30065d;

    @Override // com.google.android.gms.internal.mlkit_common.cb
    public final cb a(boolean z9) {
        this.f30063b = true;
        this.f30065d = (byte) (1 | this.f30065d);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.cb
    public final cb b(int i4) {
        this.f30064c = 1;
        this.f30065d = (byte) (this.f30065d | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.cb
    public final db c() {
        String str;
        if (this.f30065d == 3 && (str = this.f30062a) != null) {
            return new wa(str, this.f30063b, this.f30064c, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f30062a == null) {
            sb.append(" libraryName");
        }
        if ((this.f30065d & 1) == 0) {
            sb.append(" enableFirelog");
        }
        if ((this.f30065d & 2) == 0) {
            sb.append(" firelogEventType");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    public final cb d(String str) {
        this.f30062a = "common";
        return this;
    }
}
