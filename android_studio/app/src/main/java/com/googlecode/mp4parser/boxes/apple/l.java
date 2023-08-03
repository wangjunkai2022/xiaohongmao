package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: AppleDiskNumberBox.java */
/* loaded from: classes2.dex */
public class l extends j {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;
    private static final /* synthetic */ c.b C = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f36470z = null;

    /* renamed from: x  reason: collision with root package name */
    int f36471x;

    /* renamed from: y  reason: collision with root package name */
    short f36472y;

    static {
        s();
    }

    public l() {
        super("disk", 0);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AppleDiskNumberBox.java", l.class);
        f36470z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getA", "com.googlecode.mp4parser.boxes.apple.AppleDiskNumberBox", "", "", "", "int"), 16);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setA", "com.googlecode.mp4parser.boxes.apple.AppleDiskNumberBox", "int", "a", "", "void"), 20);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getB", "com.googlecode.mp4parser.boxes.apple.AppleDiskNumberBox", "", "", "", "short"), 24);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setB", "com.googlecode.mp4parser.boxes.apple.AppleDiskNumberBox", "short", "b", "", "void"), 28);
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected byte[] C() {
        ByteBuffer allocate = ByteBuffer.allocate(6);
        allocate.putInt(this.f36471x);
        allocate.putShort(this.f36472y);
        return allocate.array();
    }

    public int E() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36470z, this, this));
        return this.f36471x;
    }

    public short F() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return this.f36472y;
    }

    public void G(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36471x = i4;
    }

    public void H(short s9) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, org.aspectj.runtime.internal.e.o(s9)));
        this.f36472y = s9;
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected int v() {
        return 6;
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected void y(ByteBuffer byteBuffer) {
        this.f36471x = byteBuffer.getInt();
        this.f36472y = byteBuffer.getShort();
    }
}
