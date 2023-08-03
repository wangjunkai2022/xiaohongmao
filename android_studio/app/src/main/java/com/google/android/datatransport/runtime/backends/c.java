package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import androidx.annotation.NonNull;
import java.util.Objects;

/* compiled from: AutoValue_CreationContext.java */
/* loaded from: classes2.dex */
final class c extends h {

    /* renamed from: b  reason: collision with root package name */
    private final Context f20380b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f20381c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f20382d;

    /* renamed from: e  reason: collision with root package name */
    private final String f20383e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context, com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2, String str) {
        Objects.requireNonNull(context, "Null applicationContext");
        this.f20380b = context;
        Objects.requireNonNull(aVar, "Null wallClock");
        this.f20381c = aVar;
        Objects.requireNonNull(aVar2, "Null monotonicClock");
        this.f20382d = aVar2;
        Objects.requireNonNull(str, "Null backendName");
        this.f20383e = str;
    }

    @Override // com.google.android.datatransport.runtime.backends.h
    public Context c() {
        return this.f20380b;
    }

    @Override // com.google.android.datatransport.runtime.backends.h
    @NonNull
    public String d() {
        return this.f20383e;
    }

    @Override // com.google.android.datatransport.runtime.backends.h
    public com.google.android.datatransport.runtime.time.a e() {
        return this.f20382d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            return this.f20380b.equals(hVar.c()) && this.f20381c.equals(hVar.f()) && this.f20382d.equals(hVar.e()) && this.f20383e.equals(hVar.d());
        }
        return false;
    }

    @Override // com.google.android.datatransport.runtime.backends.h
    public com.google.android.datatransport.runtime.time.a f() {
        return this.f20381c;
    }

    public int hashCode() {
        return ((((((this.f20380b.hashCode() ^ 1000003) * 1000003) ^ this.f20381c.hashCode()) * 1000003) ^ this.f20382d.hashCode()) * 1000003) ^ this.f20383e.hashCode();
    }

    public String toString() {
        return "CreationContext{applicationContext=" + this.f20380b + ", wallClock=" + this.f20381c + ", monotonicClock=" + this.f20382d + ", backendName=" + this.f20383e + com.alipay.sdk.util.i.f6967d;
    }
}
