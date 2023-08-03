package com.google.android.gms.internal.mlkit_common;

import com.google.mlkit.common.sdkinternal.ModelType;
import java.util.Objects;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
final class xa extends lb {

    /* renamed from: a  reason: collision with root package name */
    private zzit f30167a;

    /* renamed from: b  reason: collision with root package name */
    private String f30168b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f30169c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f30170d;

    /* renamed from: e  reason: collision with root package name */
    private ModelType f30171e;

    /* renamed from: f  reason: collision with root package name */
    private zziz f30172f;

    /* renamed from: g  reason: collision with root package name */
    private int f30173g;

    /* renamed from: h  reason: collision with root package name */
    private byte f30174h;

    @Override // com.google.android.gms.internal.mlkit_common.lb
    public final lb a(zziz zzizVar) {
        Objects.requireNonNull(zzizVar, "Null downloadStatus");
        this.f30172f = zzizVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.lb
    public final lb b(zzit zzitVar) {
        Objects.requireNonNull(zzitVar, "Null errorCode");
        this.f30167a = zzitVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.lb
    public final lb c(int i4) {
        this.f30173g = i4;
        this.f30174h = (byte) (this.f30174h | 4);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.lb
    public final lb d(ModelType modelType) {
        Objects.requireNonNull(modelType, "Null modelType");
        this.f30171e = modelType;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.lb
    public final lb e(boolean z9) {
        this.f30170d = z9;
        this.f30174h = (byte) (this.f30174h | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.lb
    public final lb f(boolean z9) {
        this.f30169c = z9;
        this.f30174h = (byte) (this.f30174h | 1);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.lb
    public final mb g() {
        zzit zzitVar;
        String str;
        ModelType modelType;
        zziz zzizVar;
        if (this.f30174h == 7 && (zzitVar = this.f30167a) != null && (str = this.f30168b) != null && (modelType = this.f30171e) != null && (zzizVar = this.f30172f) != null) {
            return new za(zzitVar, str, this.f30169c, this.f30170d, modelType, zzizVar, this.f30173g, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f30167a == null) {
            sb.append(" errorCode");
        }
        if (this.f30168b == null) {
            sb.append(" tfliteSchemaVersion");
        }
        if ((this.f30174h & 1) == 0) {
            sb.append(" shouldLogRoughDownloadTime");
        }
        if ((this.f30174h & 2) == 0) {
            sb.append(" shouldLogExactDownloadTime");
        }
        if (this.f30171e == null) {
            sb.append(" modelType");
        }
        if (this.f30172f == null) {
            sb.append(" downloadStatus");
        }
        if ((this.f30174h & 4) == 0) {
            sb.append(" failureStatusCode");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    public final lb h(String str) {
        this.f30168b = "NA";
        return this;
    }
}
