package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: BaseDescriptor.java */
@g(tags = {0})
/* loaded from: classes2.dex */
public abstract class b {

    /* renamed from: d  reason: collision with root package name */
    static final /* synthetic */ boolean f36785d = false;

    /* renamed from: a  reason: collision with root package name */
    int f36786a;

    /* renamed from: b  reason: collision with root package name */
    int f36787b;

    /* renamed from: c  reason: collision with root package name */
    int f36788c;

    public int a() {
        return this.f36787b + 1 + this.f36788c;
    }

    public int b() {
        return this.f36788c;
    }

    public int c() {
        return this.f36787b;
    }

    public int d() {
        return this.f36786a;
    }

    public final void e(int i4, ByteBuffer byteBuffer) throws IOException {
        this.f36786a = i4;
        int p9 = com.coremedia.iso.g.p(byteBuffer);
        this.f36787b = p9 & 127;
        int i10 = 1;
        while ((p9 >>> 7) == 1) {
            p9 = com.coremedia.iso.g.p(byteBuffer);
            i10++;
            this.f36787b = (this.f36787b << 7) | (p9 & 127);
        }
        this.f36788c = i10;
        ByteBuffer slice = byteBuffer.slice();
        slice.limit(this.f36787b);
        f(slice);
        byteBuffer.position(byteBuffer.position() + this.f36787b);
    }

    public abstract void f(ByteBuffer byteBuffer) throws IOException;

    public String toString() {
        return "BaseDescriptor{tag=" + this.f36786a + ", sizeOfInstance=" + this.f36787b + '}';
    }
}
