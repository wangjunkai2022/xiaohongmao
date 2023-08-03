package com.google.firebase.encoders;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.alipay.sdk.util.i;
import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: FieldDescriptor.java */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final String f35485a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, Object> f35486b;

    /* compiled from: FieldDescriptor.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f35487a;

        /* renamed from: b  reason: collision with root package name */
        private Map<Class<?>, Object> f35488b = null;

        b(String str) {
            this.f35487a = str;
        }

        @NonNull
        public c a() {
            Map unmodifiableMap;
            String str = this.f35487a;
            if (this.f35488b == null) {
                unmodifiableMap = Collections.emptyMap();
            } else {
                unmodifiableMap = Collections.unmodifiableMap(new HashMap(this.f35488b));
            }
            return new c(str, unmodifiableMap);
        }

        @NonNull
        public <T extends Annotation> b b(@NonNull T t9) {
            if (this.f35488b == null) {
                this.f35488b = new HashMap();
            }
            this.f35488b.put(t9.annotationType(), t9);
            return this;
        }
    }

    @NonNull
    public static b a(@NonNull String str) {
        return new b(str);
    }

    @NonNull
    public static c d(@NonNull String str) {
        return new c(str, Collections.emptyMap());
    }

    @NonNull
    public String b() {
        return this.f35485a;
    }

    @Nullable
    public <T extends Annotation> T c(@NonNull Class<T> cls) {
        return (T) this.f35486b.get(cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            return this.f35485a.equals(cVar.f35485a) && this.f35486b.equals(cVar.f35486b);
        }
        return false;
    }

    public int hashCode() {
        return (this.f35485a.hashCode() * 31) + this.f35486b.hashCode();
    }

    @NonNull
    public String toString() {
        return "FieldDescriptor{name=" + this.f35485a + ", properties=" + this.f35486b.values() + i.f6967d;
    }

    private c(String str, Map<Class<?>, Object> map) {
        this.f35485a = str;
        this.f35486b = map;
    }
}
