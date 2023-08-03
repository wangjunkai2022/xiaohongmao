package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import java.nio.ByteBuffer;

/* compiled from: TemporalLevelEntry.java */
/* loaded from: classes2.dex */
public class g extends b {

    /* renamed from: c  reason: collision with root package name */
    public static final String f36879c = "tele";

    /* renamed from: a  reason: collision with root package name */
    private boolean f36880a;

    /* renamed from: b  reason: collision with root package name */
    private short f36881b;

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public ByteBuffer a() {
        ByteBuffer allocate = ByteBuffer.allocate(1);
        allocate.put((byte) (this.f36880a ? 128 : 0));
        allocate.rewind();
        return allocate;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public String b() {
        return f36879c;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public void c(ByteBuffer byteBuffer) {
        this.f36880a = (byteBuffer.get() & 128) == 128;
    }

    public boolean e() {
        return this.f36880a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        return this.f36880a == gVar.f36880a && this.f36881b == gVar.f36881b;
    }

    public void f(boolean z9) {
        this.f36880a = z9;
    }

    public int hashCode() {
        return ((this.f36880a ? 1 : 0) * 31) + this.f36881b;
    }

    public String toString() {
        return "TemporalLevelEntry{levelIndependentlyDecodable=" + this.f36880a + '}';
    }
}
