package com.facebook.cache.disk;

import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: DiskStorage.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public interface d {

    /* compiled from: DiskStorage.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public List<b> f10890a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        public Map<String, Integer> f10891b = new HashMap();
    }

    /* compiled from: DiskStorage.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f10892a;

        /* renamed from: b  reason: collision with root package name */
        public final String f10893b;

        /* renamed from: c  reason: collision with root package name */
        public final String f10894c;

        /* renamed from: d  reason: collision with root package name */
        public final float f10895d;

        /* renamed from: e  reason: collision with root package name */
        public final String f10896e;

        /* JADX INFO: Access modifiers changed from: protected */
        public b(String id, String path, String type, float size, String firstBits) {
            this.f10892a = id;
            this.f10893b = path;
            this.f10894c = type;
            this.f10895d = size;
            this.f10896e = firstBits;
        }
    }

    /* compiled from: DiskStorage.java */
    /* loaded from: classes.dex */
    public interface c {
        k0.a a();

        long b();

        String getId();

        long getSize();
    }

    /* compiled from: DiskStorage.java */
    /* renamed from: com.facebook.cache.disk.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0079d {
        boolean c();

        void d(com.facebook.cache.common.k callback, Object debugInfo) throws IOException;

        k0.a e(Object debugInfo) throws IOException;

        k0.a f(Object debugInfo, long time) throws IOException;
    }

    void a() throws IOException;

    a b() throws IOException;

    long c(String resourceId) throws IOException;

    void d();

    boolean e(String resourceId, Object debugInfo) throws IOException;

    long f(c entry) throws IOException;

    InterfaceC0079d g(String resourceId, Object debugInfo) throws IOException;

    boolean h(String resourceId, Object debugInfo) throws IOException;

    @r7.h
    k0.a i(String resourceId, Object debugInfo) throws IOException;

    boolean isEnabled();

    boolean isExternal();

    Collection<c> j() throws IOException;

    String k();
}
