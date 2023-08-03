package com.google.mlkit.common.model;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.internal.mlkit_common.jc;
import com.google.android.gms.internal.mlkit_common.kc;
import com.google.mlkit.common.sdkinternal.ModelType;
import com.google.mlkit.common.sdkinternal.model.BaseModel;
import java.util.EnumMap;
import java.util.Map;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public abstract class d {

    /* renamed from: e  reason: collision with root package name */
    private static final Map f35757e = new EnumMap(BaseModel.class);
    @NonNull
    @VisibleForTesting

    /* renamed from: f  reason: collision with root package name */
    public static final Map f35758f = new EnumMap(BaseModel.class);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f35759a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final BaseModel f35760b;

    /* renamed from: c  reason: collision with root package name */
    private final ModelType f35761c;

    /* renamed from: d  reason: collision with root package name */
    private String f35762d;

    /* JADX INFO: Access modifiers changed from: protected */
    @u2.a
    public d(@Nullable String str, @Nullable BaseModel baseModel, @NonNull ModelType modelType) {
        u.b(TextUtils.isEmpty(str) == (baseModel != null), "One of cloud model name and base model cannot be empty");
        this.f35759a = str;
        this.f35760b = baseModel;
        this.f35761c = modelType;
    }

    @u2.a
    public boolean a(@NonNull String str) {
        BaseModel baseModel = this.f35760b;
        if (baseModel == null) {
            return false;
        }
        return str.equals(f35757e.get(baseModel));
    }

    @NonNull
    @u2.a
    public String b() {
        return this.f35762d;
    }

    @Nullable
    @u2.a
    public String c() {
        return this.f35759a;
    }

    @NonNull
    @u2.a
    public String d() {
        String str = this.f35759a;
        return str != null ? str : (String) f35758f.get(this.f35760b);
    }

    @NonNull
    @u2.a
    public ModelType e() {
        return this.f35761c;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            return s.b(this.f35759a, dVar.f35759a) && s.b(this.f35760b, dVar.f35760b) && s.b(this.f35761c, dVar.f35761c);
        }
        return false;
    }

    @NonNull
    @u2.a
    public String f() {
        String str = this.f35759a;
        return str != null ? str : "COM.GOOGLE.BASE_".concat(String.valueOf((String) f35758f.get(this.f35760b)));
    }

    @u2.a
    public boolean g() {
        return this.f35760b != null;
    }

    @u2.a
    public void h(@NonNull String str) {
        this.f35762d = str;
    }

    public int hashCode() {
        return s.c(this.f35759a, this.f35760b, this.f35761c);
    }

    @NonNull
    public String toString() {
        jc b10 = kc.b("RemoteModel");
        b10.a("modelName", this.f35759a);
        b10.a("baseModel", this.f35760b);
        b10.a("modelType", this.f35761c);
        return b10.toString();
    }
}
