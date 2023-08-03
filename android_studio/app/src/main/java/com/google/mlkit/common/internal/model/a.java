package com.google.mlkit.common.internal.model;

import com.google.mlkit.common.internal.model.c;
import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class a extends c.a {

    /* renamed from: a  reason: collision with root package name */
    private final String f35723a;

    /* renamed from: b  reason: collision with root package name */
    private final String f35724b;

    /* renamed from: c  reason: collision with root package name */
    private final String f35725c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, String str2, String str3) {
        Objects.requireNonNull(str, "Null modelType");
        this.f35723a = str;
        Objects.requireNonNull(str2, "Null modelFile");
        this.f35724b = str2;
        Objects.requireNonNull(str3, "Null labelsFile");
        this.f35725c = str3;
    }

    @Override // com.google.mlkit.common.internal.model.c.a
    @u2.a
    public String a() {
        return this.f35725c;
    }

    @Override // com.google.mlkit.common.internal.model.c.a
    @u2.a
    public String b() {
        return this.f35724b;
    }

    @Override // com.google.mlkit.common.internal.model.c.a
    @u2.a
    public String c() {
        return this.f35723a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c.a) {
            c.a aVar = (c.a) obj;
            if (this.f35723a.equals(aVar.c()) && this.f35724b.equals(aVar.b()) && this.f35725c.equals(aVar.a())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f35723a.hashCode() ^ 1000003) * 1000003) ^ this.f35724b.hashCode()) * 1000003) ^ this.f35725c.hashCode();
    }

    public final String toString() {
        String str = this.f35723a;
        String str2 = this.f35724b;
        String str3 = this.f35725c;
        return "AutoMLManifest{modelType=" + str + ", modelFile=" + str2 + ", labelsFile=" + str3 + com.alipay.sdk.util.i.f6967d;
    }
}
