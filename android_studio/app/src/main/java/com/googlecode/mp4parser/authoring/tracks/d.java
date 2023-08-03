package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

/* compiled from: Amf0Track.java */
/* loaded from: classes2.dex */
public class d extends com.googlecode.mp4parser.authoring.a {

    /* renamed from: d  reason: collision with root package name */
    SortedMap<Long, byte[]> f36244d;

    /* renamed from: e  reason: collision with root package name */
    private com.googlecode.mp4parser.authoring.i f36245e;

    /* compiled from: Amf0Track.java */
    /* loaded from: classes2.dex */
    class a extends TreeMap<Long, byte[]> {
        a() {
        }
    }

    public d(Map<Long, byte[]> map) {
        super(u3.a.f94001o);
        this.f36244d = new a();
        this.f36245e = new com.googlecode.mp4parser.authoring.i();
        this.f36244d = new TreeMap(map);
        this.f36245e.l(new Date());
        this.f36245e.r(new Date());
        this.f36245e.s(1000L);
        this.f36245e.o("eng");
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public a1 B() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> F() {
        LinkedList linkedList = new LinkedList();
        for (byte[] bArr : this.f36244d.values()) {
            linkedList.add(new com.googlecode.mp4parser.authoring.g(ByteBuffer.wrap(bArr)));
        }
        return linkedList;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i a0() {
        return this.f36245e;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] c0() {
        LinkedList linkedList = new LinkedList(this.f36244d.keySet());
        Collections.sort(linkedList);
        long[] jArr = new long[linkedList.size()];
        for (int i4 = 0; i4 < linkedList.size(); i4++) {
            jArr[i4] = ((Long) linkedList.get(i4)).longValue() - 0;
        }
        return jArr;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return "data";
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<r0.a> m0() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<i.a> o() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 u() {
        s0 s0Var = new s0();
        u3.a aVar = new u3.a();
        aVar.d(1);
        s0Var.D(aVar);
        return s0Var;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public long[] z() {
        return null;
    }
}
