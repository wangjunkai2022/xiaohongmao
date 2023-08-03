package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: AppleTrackNumberBox.java */
/* loaded from: classes2.dex */
public class i0 extends j {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;
    private static final /* synthetic */ c.b C = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f36454z = null;

    /* renamed from: x  reason: collision with root package name */
    int f36455x;

    /* renamed from: y  reason: collision with root package name */
    int f36456y;

    static {
        s();
    }

    public i0() {
        super("trkn", 0);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AppleTrackNumberBox.java", i0.class);
        f36454z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getA", "com.googlecode.mp4parser.boxes.apple.AppleTrackNumberBox", "", "", "", "int"), 16);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setA", "com.googlecode.mp4parser.boxes.apple.AppleTrackNumberBox", "int", "a", "", "void"), 20);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getB", "com.googlecode.mp4parser.boxes.apple.AppleTrackNumberBox", "", "", "", "int"), 24);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setB", "com.googlecode.mp4parser.boxes.apple.AppleTrackNumberBox", "int", "b", "", "void"), 28);
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected byte[] C() {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.putInt(this.f36455x);
        allocate.putInt(this.f36456y);
        return allocate.array();
    }

    public int E() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36454z, this, this));
        return this.f36455x;
    }

    public int F() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return this.f36456y;
    }

    public void G(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36455x = i4;
    }

    public void H(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36456y = i4;
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected int v() {
        return 8;
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected void y(ByteBuffer byteBuffer) {
        this.f36455x = byteBuffer.getInt();
        this.f36456y = byteBuffer.getInt();
    }
}
