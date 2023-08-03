package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.util.m;
import java.security.MessageDigest;

/* compiled from: Option.java */
/* loaded from: classes.dex */
public final class e<T> {

    /* renamed from: e  reason: collision with root package name */
    private static final b<Object> f8591e = new a();

    /* renamed from: a  reason: collision with root package name */
    private final T f8592a;

    /* renamed from: b  reason: collision with root package name */
    private final b<T> f8593b;

    /* renamed from: c  reason: collision with root package name */
    private final String f8594c;

    /* renamed from: d  reason: collision with root package name */
    private volatile byte[] f8595d;

    /* compiled from: Option.java */
    /* loaded from: classes.dex */
    class a implements b<Object> {
        a() {
        }

        @Override // com.bumptech.glide.load.e.b
        public void a(@NonNull byte[] bArr, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        }
    }

    /* compiled from: Option.java */
    /* loaded from: classes.dex */
    public interface b<T> {
        void a(@NonNull byte[] bArr, @NonNull T t9, @NonNull MessageDigest messageDigest);
    }

    private e(@NonNull String str, @Nullable T t9, @NonNull b<T> bVar) {
        this.f8594c = m.b(str);
        this.f8592a = t9;
        this.f8593b = (b) m.d(bVar);
    }

    @NonNull
    public static <T> e<T> a(@NonNull String str, @NonNull b<T> bVar) {
        return new e<>(str, null, bVar);
    }

    @NonNull
    public static <T> e<T> b(@NonNull String str, @Nullable T t9, @NonNull b<T> bVar) {
        return new e<>(str, t9, bVar);
    }

    @NonNull
    private static <T> b<T> c() {
        return (b<T>) f8591e;
    }

    @NonNull
    private byte[] e() {
        if (this.f8595d == null) {
            this.f8595d = this.f8594c.getBytes(c.f8527b);
        }
        return this.f8595d;
    }

    @NonNull
    public static <T> e<T> f(@NonNull String str) {
        return new e<>(str, null, c());
    }

    @NonNull
    public static <T> e<T> g(@NonNull String str, @NonNull T t9) {
        return new e<>(str, t9, c());
    }

    @Nullable
    public T d() {
        return this.f8592a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof e) {
            return this.f8594c.equals(((e) obj).f8594c);
        }
        return false;
    }

    public void h(@NonNull T t9, @NonNull MessageDigest messageDigest) {
        this.f8593b.a(e(), t9, messageDigest);
    }

    public int hashCode() {
        return this.f8594c.hashCode();
    }

    public String toString() {
        return "Option{key='" + this.f8594c + "'}";
    }
}
