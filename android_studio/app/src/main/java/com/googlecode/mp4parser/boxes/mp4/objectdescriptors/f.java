package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* compiled from: DecoderSpecificInfo.java */
@g(tags = {5})
/* loaded from: classes2.dex */
public class f extends b {

    /* renamed from: e  reason: collision with root package name */
    byte[] f36807e;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && Arrays.equals(this.f36807e, ((f) obj).f36807e);
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public void f(ByteBuffer byteBuffer) throws IOException {
        int i4 = this.f36787b;
        if (i4 > 0) {
            byte[] bArr = new byte[i4];
            this.f36807e = bArr;
            byteBuffer.get(bArr);
        }
    }

    public ByteBuffer g() {
        return ByteBuffer.wrap(this.f36807e);
    }

    public int h() {
        return this.f36807e.length;
    }

    public int hashCode() {
        byte[] bArr = this.f36807e;
        if (bArr != null) {
            return Arrays.hashCode(bArr);
        }
        return 0;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("DecoderSpecificInfo");
        sb.append("{bytes=");
        byte[] bArr = this.f36807e;
        sb.append(bArr == null ? "null" : com.coremedia.iso.e.b(bArr));
        sb.append('}');
        return sb.toString();
    }
}
