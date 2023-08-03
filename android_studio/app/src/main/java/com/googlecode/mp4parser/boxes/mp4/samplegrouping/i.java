package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import java.nio.ByteBuffer;

/* compiled from: VisualRandomAccessEntry.java */
/* loaded from: classes2.dex */
public class i extends b {

    /* renamed from: c  reason: collision with root package name */
    public static final String f36884c = "rap ";

    /* renamed from: a  reason: collision with root package name */
    private boolean f36885a;

    /* renamed from: b  reason: collision with root package name */
    private short f36886b;

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public ByteBuffer a() {
        ByteBuffer allocate = ByteBuffer.allocate(1);
        allocate.put((byte) ((this.f36885a ? 128 : 0) | (this.f36886b & 127)));
        allocate.rewind();
        return allocate;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public String b() {
        return f36884c;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public void c(ByteBuffer byteBuffer) {
        byte b10 = byteBuffer.get();
        this.f36885a = (b10 & 128) == 128;
        this.f36886b = (short) (b10 & Byte.MAX_VALUE);
    }

    public short e() {
        return this.f36886b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.f36886b == iVar.f36886b && this.f36885a == iVar.f36885a;
    }

    public boolean f() {
        return this.f36885a;
    }

    public void g(short s9) {
        this.f36886b = s9;
    }

    public void h(boolean z9) {
        this.f36885a = z9;
    }

    public int hashCode() {
        return ((this.f36885a ? 1 : 0) * 31) + this.f36886b;
    }

    public String toString() {
        return "VisualRandomAccessEntry{numLeadingSamplesKnown=" + this.f36885a + ", numLeadingSamples=" + ((int) this.f36886b) + '}';
    }
}
