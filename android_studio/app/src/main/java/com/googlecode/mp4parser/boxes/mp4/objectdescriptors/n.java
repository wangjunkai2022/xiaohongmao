package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ProfileLevelIndicationDescriptor.java */
@g(tags = {20})
/* loaded from: classes2.dex */
public class n extends b {

    /* renamed from: e  reason: collision with root package name */
    int f36840e;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f36840e == ((n) obj).f36840e;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public void f(ByteBuffer byteBuffer) throws IOException {
        this.f36840e = com.coremedia.iso.g.p(byteBuffer);
    }

    public int hashCode() {
        return this.f36840e;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public String toString() {
        return "ProfileLevelIndicationDescriptor{profileLevelIndicationIndex=" + Integer.toHexString(this.f36840e) + '}';
    }
}
