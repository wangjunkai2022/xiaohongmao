package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Logger;

/* compiled from: UnknownDescriptor.java */
/* loaded from: classes2.dex */
public class p extends b {

    /* renamed from: f  reason: collision with root package name */
    private static Logger f36842f = Logger.getLogger(p.class.getName());

    /* renamed from: e  reason: collision with root package name */
    private ByteBuffer f36843e;

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public void f(ByteBuffer byteBuffer) throws IOException {
        this.f36843e = (ByteBuffer) byteBuffer.slice().limit(c());
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public String toString() {
        return "UnknownDescriptor{tag=" + this.f36786a + ", sizeOfInstance=" + this.f36787b + ", data=" + this.f36843e + '}';
    }
}
