package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import java.security.MessageDigest;

/* compiled from: Options.java */
/* loaded from: classes.dex */
public final class f implements c {

    /* renamed from: c  reason: collision with root package name */
    private final ArrayMap<e<?>, Object> f9016c = new com.bumptech.glide.util.b();

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> void f(@NonNull e<T> eVar, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        eVar.h(obj, messageDigest);
    }

    @Override // com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        for (int i4 = 0; i4 < this.f9016c.size(); i4++) {
            f(this.f9016c.keyAt(i4), this.f9016c.valueAt(i4), messageDigest);
        }
    }

    @Nullable
    public <T> T c(@NonNull e<T> eVar) {
        return this.f9016c.containsKey(eVar) ? (T) this.f9016c.get(eVar) : eVar.d();
    }

    public void d(@NonNull f fVar) {
        this.f9016c.putAll((SimpleArrayMap<? extends e<?>, ? extends Object>) fVar.f9016c);
    }

    @NonNull
    public <T> f e(@NonNull e<T> eVar, @NonNull T t9) {
        this.f9016c.put(eVar, t9);
        return this;
    }

    @Override // com.bumptech.glide.load.c
    public boolean equals(Object obj) {
        if (obj instanceof f) {
            return this.f9016c.equals(((f) obj).f9016c);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.c
    public int hashCode() {
        return this.f9016c.hashCode();
    }

    public String toString() {
        return "Options{values=" + this.f9016c + '}';
    }
}
