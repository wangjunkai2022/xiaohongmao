package com.qennnsad.aknkaksd.util.fresco;

import com.facebook.common.memory.MemoryTrimType;
import java.util.LinkedList;
import java.util.List;

/* compiled from: FrescoMemoryTrimmableRegistry.java */
/* loaded from: classes3.dex */
public class b implements com.facebook.common.memory.c {

    /* renamed from: a  reason: collision with root package name */
    private final List<com.facebook.common.memory.b> f54710a = new LinkedList();

    @Override // com.facebook.common.memory.c
    public void a(com.facebook.common.memory.b bVar) {
        this.f54710a.add(bVar);
    }

    @Override // com.facebook.common.memory.c
    public void b(com.facebook.common.memory.b bVar) {
        this.f54710a.remove(bVar);
    }

    public synchronized void c(MemoryTrimType memoryTrimType) {
        for (com.facebook.common.memory.b bVar : this.f54710a) {
            bVar.m(memoryTrimType);
        }
    }
}
