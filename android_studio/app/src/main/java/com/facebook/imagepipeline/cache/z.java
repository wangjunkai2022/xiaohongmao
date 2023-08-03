package com.facebook.imagepipeline.cache;

import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* compiled from: StagingArea.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class z {

    /* renamed from: b  reason: collision with root package name */
    private static final Class<?> f12166b = z.class;
    @s7.a("this")

    /* renamed from: a  reason: collision with root package name */
    private Map<com.facebook.cache.common.c, com.facebook.imagepipeline.image.e> f12167a = new HashMap();

    private z() {
    }

    public static z d() {
        return new z();
    }

    private synchronized void e() {
        p0.a.V(f12166b, "Count = %d", Integer.valueOf(this.f12167a.size()));
    }

    public void a() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.f12167a.values());
            this.f12167a.clear();
        }
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            com.facebook.imagepipeline.image.e eVar = (com.facebook.imagepipeline.image.e) arrayList.get(i4);
            if (eVar != null) {
                eVar.close();
            }
        }
    }

    public synchronized boolean b(com.facebook.cache.common.c key) {
        com.facebook.common.internal.j.i(key);
        if (this.f12167a.containsKey(key)) {
            com.facebook.imagepipeline.image.e eVar = this.f12167a.get(key);
            synchronized (eVar) {
                if (com.facebook.imagepipeline.image.e.b0(eVar)) {
                    return true;
                }
                this.f12167a.remove(key);
                p0.a.m0(f12166b, "Found closed reference %d for key %s (%d)", Integer.valueOf(System.identityHashCode(eVar)), key.a(), Integer.valueOf(System.identityHashCode(key)));
                return false;
            }
        }
        return false;
    }

    @r7.h
    public synchronized com.facebook.imagepipeline.image.e c(final com.facebook.cache.common.c key) {
        com.facebook.common.internal.j.i(key);
        com.facebook.imagepipeline.image.e eVar = this.f12167a.get(key);
        if (eVar != null) {
            synchronized (eVar) {
                if (!com.facebook.imagepipeline.image.e.b0(eVar)) {
                    this.f12167a.remove(key);
                    p0.a.m0(f12166b, "Found closed reference %d for key %s (%d)", Integer.valueOf(System.identityHashCode(eVar)), key.a(), Integer.valueOf(System.identityHashCode(key)));
                    return null;
                }
                eVar = com.facebook.imagepipeline.image.e.b(eVar);
            }
        }
        return eVar;
    }

    public synchronized void f(final com.facebook.cache.common.c key, final com.facebook.imagepipeline.image.e encodedImage) {
        com.facebook.common.internal.j.i(key);
        com.facebook.common.internal.j.d(Boolean.valueOf(com.facebook.imagepipeline.image.e.b0(encodedImage)));
        com.facebook.imagepipeline.image.e.d(this.f12167a.put(key, com.facebook.imagepipeline.image.e.b(encodedImage)));
        e();
    }

    public boolean g(final com.facebook.cache.common.c key) {
        com.facebook.imagepipeline.image.e remove;
        com.facebook.common.internal.j.i(key);
        synchronized (this) {
            remove = this.f12167a.remove(key);
        }
        if (remove == null) {
            return false;
        }
        try {
            return remove.X();
        } finally {
            remove.close();
        }
    }

    public synchronized boolean h(final com.facebook.cache.common.c key, final com.facebook.imagepipeline.image.e encodedImage) {
        com.facebook.common.internal.j.i(key);
        com.facebook.common.internal.j.i(encodedImage);
        com.facebook.common.internal.j.d(Boolean.valueOf(com.facebook.imagepipeline.image.e.b0(encodedImage)));
        com.facebook.imagepipeline.image.e eVar = this.f12167a.get(key);
        if (eVar == null) {
            return false;
        }
        com.facebook.common.references.a<PooledByteBuffer> i4 = eVar.i();
        com.facebook.common.references.a<PooledByteBuffer> i10 = encodedImage.i();
        if (i4 != null && i10 != null && i4.q() == i10.q()) {
            this.f12167a.remove(key);
            com.facebook.common.references.a.k(i10);
            com.facebook.common.references.a.k(i4);
            com.facebook.imagepipeline.image.e.d(eVar);
            e();
            return true;
        }
        com.facebook.common.references.a.k(i10);
        com.facebook.common.references.a.k(i4);
        com.facebook.imagepipeline.image.e.d(eVar);
        return false;
    }
}
