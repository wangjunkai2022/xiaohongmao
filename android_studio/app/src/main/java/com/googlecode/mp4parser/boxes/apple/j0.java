package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: AppleVariableSignedIntegerBox.java */
/* loaded from: classes2.dex */
public abstract class j0 extends j {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;
    private static final /* synthetic */ c.b C = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f36467z = null;

    /* renamed from: x  reason: collision with root package name */
    long f36468x;

    /* renamed from: y  reason: collision with root package name */
    int f36469y;

    static {
        s();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public j0(String str) {
        super(str, 15);
        this.f36469y = 1;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AppleVariableSignedIntegerBox.java", j0.class);
        f36467z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getIntLength", "com.googlecode.mp4parser.boxes.apple.AppleVariableSignedIntegerBox", "", "", "", "int"), 19);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setIntLength", "com.googlecode.mp4parser.boxes.apple.AppleVariableSignedIntegerBox", "int", "intLength", "", "void"), 23);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getValue", "com.googlecode.mp4parser.boxes.apple.AppleVariableSignedIntegerBox", "", "", "", "long"), 27);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setValue", "com.googlecode.mp4parser.boxes.apple.AppleVariableSignedIntegerBox", "long", "value", "", "void"), 36);
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected byte[] C() {
        int v9 = v();
        ByteBuffer wrap = ByteBuffer.wrap(new byte[v9]);
        com.coremedia.iso.j.a(this.f36468x, wrap, v9);
        return wrap.array();
    }

    public int E() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36467z, this, this));
        return this.f36469y;
    }

    public long F() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        if (!j()) {
            m();
        }
        return this.f36468x;
    }

    public void G(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36469y = i4;
    }

    public void H(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, org.aspectj.runtime.internal.e.m(j4)));
        if (j4 <= 127 && j4 > -128) {
            this.f36469y = 1;
        } else if (j4 <= 32767 && j4 > -32768 && this.f36469y < 2) {
            this.f36469y = 2;
        } else if (j4 <= 8388607 && j4 > -8388608 && this.f36469y < 3) {
            this.f36469y = 3;
        } else {
            this.f36469y = 4;
        }
        this.f36468x = j4;
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected int v() {
        return this.f36469y;
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected void y(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        this.f36468x = com.coremedia.iso.h.a(byteBuffer, remaining);
        this.f36469y = remaining;
    }
}
