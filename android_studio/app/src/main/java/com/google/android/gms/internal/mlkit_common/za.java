package com.google.android.gms.internal.mlkit_common;

import com.google.mlkit.common.sdkinternal.ModelType;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
final class za extends mb {

    /* renamed from: a  reason: collision with root package name */
    private final zzit f30249a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30250b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f30251c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f30252d;

    /* renamed from: e  reason: collision with root package name */
    private final ModelType f30253e;

    /* renamed from: f  reason: collision with root package name */
    private final zziz f30254f;

    /* renamed from: g  reason: collision with root package name */
    private final int f30255g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ za(zzit zzitVar, String str, boolean z9, boolean z10, ModelType modelType, zziz zzizVar, int i4, ya yaVar) {
        this.f30249a = zzitVar;
        this.f30250b = str;
        this.f30251c = z9;
        this.f30252d = z10;
        this.f30253e = modelType;
        this.f30254f = zzizVar;
        this.f30255g = i4;
    }

    @Override // com.google.android.gms.internal.mlkit_common.mb
    public final int a() {
        return this.f30255g;
    }

    @Override // com.google.android.gms.internal.mlkit_common.mb
    public final ModelType b() {
        return this.f30253e;
    }

    @Override // com.google.android.gms.internal.mlkit_common.mb
    public final zzit c() {
        return this.f30249a;
    }

    @Override // com.google.android.gms.internal.mlkit_common.mb
    public final zziz d() {
        return this.f30254f;
    }

    @Override // com.google.android.gms.internal.mlkit_common.mb
    public final String e() {
        return this.f30250b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof mb) {
            mb mbVar = (mb) obj;
            if (this.f30249a.equals(mbVar.c()) && this.f30250b.equals(mbVar.e()) && this.f30251c == mbVar.g() && this.f30252d == mbVar.f() && this.f30253e.equals(mbVar.b()) && this.f30254f.equals(mbVar.d()) && this.f30255g == mbVar.a()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_common.mb
    public final boolean f() {
        return this.f30252d;
    }

    @Override // com.google.android.gms.internal.mlkit_common.mb
    public final boolean g() {
        return this.f30251c;
    }

    public final int hashCode() {
        return ((((((((((((this.f30249a.hashCode() ^ 1000003) * 1000003) ^ this.f30250b.hashCode()) * 1000003) ^ (true != this.f30251c ? 1237 : 1231)) * 1000003) ^ (true == this.f30252d ? 1231 : 1237)) * 1000003) ^ this.f30253e.hashCode()) * 1000003) ^ this.f30254f.hashCode()) * 1000003) ^ this.f30255g;
    }

    public final String toString() {
        String obj = this.f30249a.toString();
        String str = this.f30250b;
        boolean z9 = this.f30251c;
        boolean z10 = this.f30252d;
        String obj2 = this.f30253e.toString();
        String obj3 = this.f30254f.toString();
        int i4 = this.f30255g;
        return "RemoteModelLoggingOptions{errorCode=" + obj + ", tfliteSchemaVersion=" + str + ", shouldLogRoughDownloadTime=" + z9 + ", shouldLogExactDownloadTime=" + z10 + ", modelType=" + obj2 + ", downloadStatus=" + obj3 + ", failureStatusCode=" + i4 + com.alipay.sdk.util.i.f6967d;
    }
}
