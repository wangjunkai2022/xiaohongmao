package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import java.nio.ByteBuffer;

/* compiled from: RollRecoveryEntry.java */
/* loaded from: classes2.dex */
public class d extends b {

    /* renamed from: b  reason: collision with root package name */
    public static final String f36857b = "roll";

    /* renamed from: a  reason: collision with root package name */
    private short f36858a;

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public ByteBuffer a() {
        ByteBuffer allocate = ByteBuffer.allocate(2);
        allocate.putShort(this.f36858a);
        allocate.rewind();
        return allocate;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public String b() {
        return f36857b;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public void c(ByteBuffer byteBuffer) {
        this.f36858a = byteBuffer.getShort();
    }

    public short e() {
        return this.f36858a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f36858a == ((d) obj).f36858a;
    }

    public void f(short s9) {
        this.f36858a = s9;
    }

    public int hashCode() {
        return this.f36858a;
    }
}
