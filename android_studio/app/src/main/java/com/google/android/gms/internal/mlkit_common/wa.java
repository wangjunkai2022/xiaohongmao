package com.google.android.gms.internal.mlkit_common;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
final class wa extends db {

    /* renamed from: a  reason: collision with root package name */
    private final String f30142a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f30143b;

    /* renamed from: c  reason: collision with root package name */
    private final int f30144c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ wa(String str, boolean z9, int i4, va vaVar) {
        this.f30142a = str;
        this.f30143b = z9;
        this.f30144c = i4;
    }

    @Override // com.google.android.gms.internal.mlkit_common.db
    public final int a() {
        return this.f30144c;
    }

    @Override // com.google.android.gms.internal.mlkit_common.db
    public final String b() {
        return this.f30142a;
    }

    @Override // com.google.android.gms.internal.mlkit_common.db
    public final boolean c() {
        return this.f30143b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof db) {
            db dbVar = (db) obj;
            if (this.f30142a.equals(dbVar.b()) && this.f30143b == dbVar.c() && this.f30144c == dbVar.a()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f30142a.hashCode() ^ 1000003) * 1000003) ^ (true != this.f30143b ? 1237 : 1231)) * 1000003) ^ this.f30144c;
    }

    public final String toString() {
        String str = this.f30142a;
        boolean z9 = this.f30143b;
        int i4 = this.f30144c;
        return "MLKitLoggingOptions{libraryName=" + str + ", enableFirelog=" + z9 + ", firelogEventType=" + i4 + com.alipay.sdk.util.i.f6967d;
    }
}
