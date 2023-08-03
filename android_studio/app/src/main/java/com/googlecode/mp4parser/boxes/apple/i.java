package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: AppleCoverBox.java */
/* loaded from: classes2.dex */
public class i extends j {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;
    private static final /* synthetic */ c.b C = null;

    /* renamed from: y  reason: collision with root package name */
    private static final int f36451y = 13;

    /* renamed from: z  reason: collision with root package name */
    private static final int f36452z = 14;

    /* renamed from: x  reason: collision with root package name */
    private byte[] f36453x;

    static {
        s();
    }

    public i() {
        super("covr", 1);
    }

    private void F(byte[] bArr, int i4) {
        this.f36453x = bArr;
        this.f36464n = i4;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AppleCoverBox.java", i.class);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getCoverData", "com.googlecode.mp4parser.boxes.apple.AppleCoverBox", "", "", "", "[B"), 21);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setJpg", "com.googlecode.mp4parser.boxes.apple.AppleCoverBox", "[B", "data", "", "void"), 25);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setPng", "com.googlecode.mp4parser.boxes.apple.AppleCoverBox", "[B", "data", "", "void"), 29);
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected byte[] C() {
        return this.f36453x;
    }

    public byte[] E() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f36453x;
    }

    public void G(byte[] bArr) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, bArr));
        F(bArr, 13);
    }

    public void H(byte[] bArr) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, bArr));
        F(bArr, 14);
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected int v() {
        return this.f36453x.length;
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected void y(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[byteBuffer.limit()];
        this.f36453x = bArr;
        byteBuffer.get(bArr);
    }
}
