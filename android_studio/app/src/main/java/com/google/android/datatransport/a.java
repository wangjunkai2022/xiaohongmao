package com.google.android.datatransport;

import androidx.annotation.Nullable;
import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_Event.java */
/* loaded from: classes2.dex */
public final class a<T> extends d<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Integer f20183a;

    /* renamed from: b  reason: collision with root package name */
    private final T f20184b;

    /* renamed from: c  reason: collision with root package name */
    private final Priority f20185c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(@Nullable Integer num, T t9, Priority priority) {
        this.f20183a = num;
        Objects.requireNonNull(t9, "Null payload");
        this.f20184b = t9;
        Objects.requireNonNull(priority, "Null priority");
        this.f20185c = priority;
    }

    @Override // com.google.android.datatransport.d
    @Nullable
    public Integer a() {
        return this.f20183a;
    }

    @Override // com.google.android.datatransport.d
    public T b() {
        return this.f20184b;
    }

    @Override // com.google.android.datatransport.d
    public Priority c() {
        return this.f20185c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            Integer num = this.f20183a;
            if (num != null ? num.equals(dVar.a()) : dVar.a() == null) {
                if (this.f20184b.equals(dVar.b()) && this.f20185c.equals(dVar.c())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        Integer num = this.f20183a;
        return (((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.f20184b.hashCode()) * 1000003) ^ this.f20185c.hashCode();
    }

    public String toString() {
        return "Event{code=" + this.f20183a + ", payload=" + this.f20184b + ", priority=" + this.f20185c + com.alipay.sdk.util.i.f6967d;
    }
}
