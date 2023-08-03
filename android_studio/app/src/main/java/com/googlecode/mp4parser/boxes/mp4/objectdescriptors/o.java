package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: SLConfigDescriptor.java */
@g(tags = {6})
/* loaded from: classes2.dex */
public class o extends b {

    /* renamed from: e  reason: collision with root package name */
    int f36841e;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f36841e == ((o) obj).f36841e;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public void f(ByteBuffer byteBuffer) throws IOException {
        this.f36841e = com.coremedia.iso.g.p(byteBuffer);
    }

    public int g() {
        return this.f36841e;
    }

    public ByteBuffer h() {
        ByteBuffer allocate = ByteBuffer.allocate(3);
        com.coremedia.iso.i.m(allocate, 6);
        com.coremedia.iso.i.m(allocate, 1);
        com.coremedia.iso.i.m(allocate, this.f36841e);
        return allocate;
    }

    public int hashCode() {
        return this.f36841e;
    }

    public int i() {
        return 3;
    }

    public void j(int i4) {
        this.f36841e = i4;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public String toString() {
        return "SLConfigDescriptor{predefined=" + this.f36841e + '}';
    }
}
