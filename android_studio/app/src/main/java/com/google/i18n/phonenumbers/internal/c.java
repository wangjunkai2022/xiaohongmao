package com.google.i18n.phonenumbers.internal;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Pattern;

/* compiled from: RegexCache.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private a<String, Pattern> f35714a;

    /* compiled from: RegexCache.java */
    /* loaded from: classes2.dex */
    private static class a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private LinkedHashMap<K, V> f35715a;

        /* renamed from: b  reason: collision with root package name */
        private int f35716b;

        /* compiled from: RegexCache.java */
        /* renamed from: com.google.i18n.phonenumbers.internal.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0276a extends LinkedHashMap<K, V> {
            C0276a(int i4, float f10, boolean z9) {
                super(i4, f10, z9);
            }

            @Override // java.util.LinkedHashMap
            protected boolean removeEldestEntry(Map.Entry<K, V> entry) {
                return size() > a.this.f35716b;
            }
        }

        public a(int i4) {
            this.f35716b = i4;
            this.f35715a = new C0276a(((i4 * 4) / 3) + 1, 0.75f, true);
        }

        public synchronized boolean b(K k10) {
            return this.f35715a.containsKey(k10);
        }

        public synchronized V c(K k10) {
            return this.f35715a.get(k10);
        }

        public synchronized void d(K k10, V v9) {
            this.f35715a.put(k10, v9);
        }
    }

    public c(int i4) {
        this.f35714a = new a<>(i4);
    }

    boolean a(String str) {
        return this.f35714a.b(str);
    }

    public Pattern b(String str) {
        Pattern c10 = this.f35714a.c(str);
        if (c10 == null) {
            Pattern compile = Pattern.compile(str);
            this.f35714a.d(str, compile);
            return compile;
        }
        return c10;
    }
}
