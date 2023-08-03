package io.michaelrocks.libphonenumber.android.internal;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Pattern;

/* compiled from: RegexCache.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private a<String, Pattern> f71037a;

    /* compiled from: RegexCache.java */
    /* loaded from: classes3.dex */
    private static class a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private LinkedHashMap<K, V> f71038a;

        /* renamed from: b  reason: collision with root package name */
        private int f71039b;

        /* compiled from: RegexCache.java */
        /* renamed from: io.michaelrocks.libphonenumber.android.internal.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0536a extends LinkedHashMap<K, V> {
            C0536a(int x02, float x12, boolean x22) {
                super(x02, x12, x22);
            }

            @Override // java.util.LinkedHashMap
            protected boolean removeEldestEntry(Map.Entry<K, V> eldest) {
                return size() > a.this.f71039b;
            }
        }

        public a(int size) {
            this.f71039b = size;
            this.f71038a = new C0536a(((size * 4) / 3) + 1, 0.75f, true);
        }

        public synchronized boolean b(K key) {
            return this.f71038a.containsKey(key);
        }

        public synchronized V c(K key) {
            return this.f71038a.get(key);
        }

        public synchronized void d(K key, V value) {
            this.f71038a.put(key, value);
        }
    }

    public c(int size) {
        this.f71037a = new a<>(size);
    }

    boolean a(String regex) {
        return this.f71037a.b(regex);
    }

    public Pattern b(String regex) {
        Pattern c10 = this.f71037a.c(regex);
        if (c10 == null) {
            Pattern compile = Pattern.compile(regex);
            this.f71037a.d(regex, compile);
            return compile;
        }
        return c10;
    }
}
