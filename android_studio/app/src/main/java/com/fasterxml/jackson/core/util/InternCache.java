package com.fasterxml.jackson.core.util;

import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class InternCache extends ConcurrentHashMap<String, String> {

    /* renamed from: b  reason: collision with root package name */
    private static final long f14245b = 1;

    /* renamed from: c  reason: collision with root package name */
    private static final int f14246c = 180;
    public static final InternCache instance = new InternCache();

    /* renamed from: a  reason: collision with root package name */
    private final Object f14247a;

    private InternCache() {
        super(180, 0.8f, 4);
        this.f14247a = new Object();
    }

    public String intern(String str) {
        String str2 = get(str);
        if (str2 != null) {
            return str2;
        }
        if (size() >= 180) {
            synchronized (this.f14247a) {
                if (size() >= 180) {
                    clear();
                }
            }
        }
        String intern = str.intern();
        put(intern, intern);
        return intern;
    }
}
