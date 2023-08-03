package com.google.mlkit.nl.languageid;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.apps.common.proguard.UsedByNative;
import com.google.android.gms.internal.mlkit_language_id_common.d3;
import com.google.android.gms.internal.mlkit_language_id_common.e4;
import com.google.android.gms.internal.mlkit_language_id_common.f5;
import java.util.Arrays;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
@UsedByNative("language_id_jni.cc")
/* loaded from: classes2.dex */
public final class IdentifiedLanguage {

    /* renamed from: a  reason: collision with root package name */
    private final String f35922a;

    /* renamed from: b  reason: collision with root package name */
    private final float f35923b;

    @u2.a
    @UsedByNative("language_id_jni.cc")
    public IdentifiedLanguage(@NonNull String str, float f10) {
        this.f35922a = str;
        this.f35923b = f10;
    }

    public float a() {
        return this.f35923b;
    }

    @NonNull
    public String b() {
        return this.f35922a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof IdentifiedLanguage) {
            IdentifiedLanguage identifiedLanguage = (IdentifiedLanguage) obj;
            return Float.compare(identifiedLanguage.f35923b, this.f35923b) == 0 && f5.a(this.f35922a, identifiedLanguage.f35922a);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f35922a, Float.valueOf(this.f35923b)});
    }

    @NonNull
    public String toString() {
        d3 a10 = e4.a(this);
        a10.b("languageTag", this.f35922a);
        a10.a("confidence", this.f35923b);
        return a10.toString();
    }
}
