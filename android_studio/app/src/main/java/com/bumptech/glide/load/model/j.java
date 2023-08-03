package com.bumptech.glide.load.model;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: LazyHeaders.java */
/* loaded from: classes.dex */
public final class j implements h {

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, List<i>> f9056c;

    /* renamed from: d  reason: collision with root package name */
    private volatile Map<String, String> f9057d;

    /* compiled from: LazyHeaders.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: d  reason: collision with root package name */
        private static final String f9058d = "User-Agent";

        /* renamed from: e  reason: collision with root package name */
        private static final String f9059e;

        /* renamed from: f  reason: collision with root package name */
        private static final Map<String, List<i>> f9060f;

        /* renamed from: a  reason: collision with root package name */
        private boolean f9061a = true;

        /* renamed from: b  reason: collision with root package name */
        private Map<String, List<i>> f9062b = f9060f;

        /* renamed from: c  reason: collision with root package name */
        private boolean f9063c = true;

        static {
            String g4 = g();
            f9059e = g4;
            HashMap hashMap = new HashMap(2);
            if (!TextUtils.isEmpty(g4)) {
                hashMap.put("User-Agent", Collections.singletonList(new b(g4)));
            }
            f9060f = Collections.unmodifiableMap(hashMap);
        }

        private Map<String, List<i>> d() {
            HashMap hashMap = new HashMap(this.f9062b.size());
            for (Map.Entry<String, List<i>> entry : this.f9062b.entrySet()) {
                hashMap.put(entry.getKey(), new ArrayList(entry.getValue()));
            }
            return hashMap;
        }

        private void e() {
            if (this.f9061a) {
                this.f9061a = false;
                this.f9062b = d();
            }
        }

        private List<i> f(String str) {
            List<i> list = this.f9062b.get(str);
            if (list == null) {
                ArrayList arrayList = new ArrayList();
                this.f9062b.put(str, arrayList);
                return arrayList;
            }
            return list;
        }

        @VisibleForTesting
        static String g() {
            String property = System.getProperty("http.agent");
            if (TextUtils.isEmpty(property)) {
                return property;
            }
            int length = property.length();
            StringBuilder sb = new StringBuilder(property.length());
            for (int i4 = 0; i4 < length; i4++) {
                char charAt = property.charAt(i4);
                if ((charAt > 31 || charAt == '\t') && charAt < 127) {
                    sb.append(charAt);
                } else {
                    sb.append('?');
                }
            }
            return sb.toString();
        }

        public a a(@NonNull String str, @NonNull i iVar) {
            if (this.f9063c && "User-Agent".equalsIgnoreCase(str)) {
                return h(str, iVar);
            }
            e();
            f(str).add(iVar);
            return this;
        }

        public a b(@NonNull String str, @NonNull String str2) {
            return a(str, new b(str2));
        }

        public j c() {
            this.f9061a = true;
            return new j(this.f9062b);
        }

        public a h(@NonNull String str, @Nullable i iVar) {
            e();
            if (iVar == null) {
                this.f9062b.remove(str);
            } else {
                List<i> f10 = f(str);
                f10.clear();
                f10.add(iVar);
            }
            if (this.f9063c && "User-Agent".equalsIgnoreCase(str)) {
                this.f9063c = false;
            }
            return this;
        }

        public a i(@NonNull String str, @Nullable String str2) {
            return h(str, str2 == null ? null : new b(str2));
        }
    }

    /* compiled from: LazyHeaders.java */
    /* loaded from: classes.dex */
    static final class b implements i {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final String f9064a;

        b(@NonNull String str) {
            this.f9064a = str;
        }

        @Override // com.bumptech.glide.load.model.i
        public String a() {
            return this.f9064a;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.f9064a.equals(((b) obj).f9064a);
            }
            return false;
        }

        public int hashCode() {
            return this.f9064a.hashCode();
        }

        public String toString() {
            return "StringHeaderFactory{value='" + this.f9064a + "'}";
        }
    }

    j(Map<String, List<i>> map) {
        this.f9056c = Collections.unmodifiableMap(map);
    }

    @NonNull
    private String a(@NonNull List<i> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            String a10 = list.get(i4).a();
            if (!TextUtils.isEmpty(a10)) {
                sb.append(a10);
                if (i4 != list.size() - 1) {
                    sb.append(',');
                }
            }
        }
        return sb.toString();
    }

    private Map<String, String> b() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<i>> entry : this.f9056c.entrySet()) {
            String a10 = a(entry.getValue());
            if (!TextUtils.isEmpty(a10)) {
                hashMap.put(entry.getKey(), a10);
            }
        }
        return hashMap;
    }

    @Override // com.bumptech.glide.load.model.h
    public Map<String, String> d() {
        if (this.f9057d == null) {
            synchronized (this) {
                if (this.f9057d == null) {
                    this.f9057d = Collections.unmodifiableMap(b());
                }
            }
        }
        return this.f9057d;
    }

    public boolean equals(Object obj) {
        if (obj instanceof j) {
            return this.f9056c.equals(((j) obj).f9056c);
        }
        return false;
    }

    public int hashCode() {
        return this.f9056c.hashCode();
    }

    public String toString() {
        return "LazyHeaders{headers=" + this.f9056c + '}';
    }
}
