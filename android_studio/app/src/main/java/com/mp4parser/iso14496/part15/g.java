package com.mp4parser.iso14496.part15;

import java.nio.ByteBuffer;

/* compiled from: SyncSampleEntry.java */
/* loaded from: classes3.dex */
public class g extends com.googlecode.mp4parser.boxes.mp4.samplegrouping.b {

    /* renamed from: c  reason: collision with root package name */
    public static final String f47031c = "sync";

    /* renamed from: a  reason: collision with root package name */
    int f47032a;

    /* renamed from: b  reason: collision with root package name */
    int f47033b;

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public ByteBuffer a() {
        ByteBuffer allocate = ByteBuffer.allocate(1);
        com.coremedia.iso.i.m(allocate, this.f47033b + (this.f47032a << 6));
        return (ByteBuffer) allocate.rewind();
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public String b() {
        return f47031c;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public void c(ByteBuffer byteBuffer) {
        int p9 = com.coremedia.iso.g.p(byteBuffer);
        this.f47032a = (p9 & 192) >> 6;
        this.f47033b = p9 & 63;
    }

    public int e() {
        return this.f47033b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        return this.f47033b == gVar.f47033b && this.f47032a == gVar.f47032a;
    }

    public int f() {
        return this.f47032a;
    }

    public void g(int i4) {
        this.f47033b = i4;
    }

    public void h(int i4) {
        this.f47032a = i4;
    }

    public int hashCode() {
        return (this.f47032a * 31) + this.f47033b;
    }

    public String toString() {
        return "SyncSampleEntry{reserved=" + this.f47032a + ", nalUnitType=" + this.f47033b + '}';
    }
}
