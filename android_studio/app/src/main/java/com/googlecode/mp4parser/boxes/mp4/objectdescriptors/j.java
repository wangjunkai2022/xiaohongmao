package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ExtensionProfileLevelDescriptor.java */
@g(tags = {19})
/* loaded from: classes2.dex */
public class j extends b {

    /* renamed from: e  reason: collision with root package name */
    byte[] f36824e;

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public void f(ByteBuffer byteBuffer) throws IOException {
        if (a() > 0) {
            byte[] bArr = new byte[a()];
            this.f36824e = bArr;
            byteBuffer.get(bArr);
        }
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ExtensionDescriptor");
        sb.append("{bytes=");
        byte[] bArr = this.f36824e;
        sb.append(bArr == null ? "null" : com.coremedia.iso.e.b(bArr));
        sb.append('}');
        return sb.toString();
    }
}
