package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import java.nio.ByteBuffer;

/* compiled from: UnknownEntry.java */
/* loaded from: classes2.dex */
public class h extends b {

    /* renamed from: a  reason: collision with root package name */
    private ByteBuffer f36882a;

    /* renamed from: b  reason: collision with root package name */
    private String f36883b;

    public h(String str) {
        this.f36883b = str;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public ByteBuffer a() {
        return this.f36882a.duplicate();
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public String b() {
        return this.f36883b;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public void c(ByteBuffer byteBuffer) {
        this.f36882a = (ByteBuffer) byteBuffer.duplicate().rewind();
    }

    public ByteBuffer e() {
        return this.f36882a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ByteBuffer byteBuffer = this.f36882a;
        ByteBuffer byteBuffer2 = ((h) obj).f36882a;
        return byteBuffer == null ? byteBuffer2 == null : byteBuffer.equals(byteBuffer2);
    }

    public void f(ByteBuffer byteBuffer) {
        this.f36882a = (ByteBuffer) byteBuffer.duplicate().rewind();
    }

    public int hashCode() {
        ByteBuffer byteBuffer = this.f36882a;
        if (byteBuffer != null) {
            return byteBuffer.hashCode();
        }
        return 0;
    }

    public String toString() {
        ByteBuffer duplicate = this.f36882a.duplicate();
        duplicate.rewind();
        byte[] bArr = new byte[duplicate.limit()];
        duplicate.get(bArr);
        return "UnknownEntry{content=" + com.coremedia.iso.e.b(bArr) + '}';
    }
}
