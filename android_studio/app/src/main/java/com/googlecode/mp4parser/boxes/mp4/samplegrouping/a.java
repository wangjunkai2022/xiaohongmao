package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import com.googlecode.mp4parser.util.o;
import java.nio.ByteBuffer;
import java.util.UUID;

/* compiled from: CencSampleEncryptionInformationGroupEntry.java */
/* loaded from: classes2.dex */
public class a extends b {

    /* renamed from: d  reason: collision with root package name */
    public static final String f36844d = "seig";

    /* renamed from: a  reason: collision with root package name */
    private boolean f36845a;

    /* renamed from: b  reason: collision with root package name */
    private byte f36846b;

    /* renamed from: c  reason: collision with root package name */
    private UUID f36847c;

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public ByteBuffer a() {
        ByteBuffer allocate = ByteBuffer.allocate(20);
        com.coremedia.iso.i.h(allocate, this.f36845a ? 1 : 0);
        if (this.f36845a) {
            com.coremedia.iso.i.m(allocate, this.f36846b);
            allocate.put(o.b(this.f36847c));
        } else {
            allocate.put(new byte[17]);
        }
        allocate.rewind();
        return allocate;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public String b() {
        return f36844d;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public void c(ByteBuffer byteBuffer) {
        this.f36845a = com.coremedia.iso.g.k(byteBuffer) == 1;
        this.f36846b = (byte) com.coremedia.iso.g.p(byteBuffer);
        byte[] bArr = new byte[16];
        byteBuffer.get(bArr);
        this.f36847c = o.a(bArr);
    }

    public byte e() {
        return this.f36846b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f36845a == aVar.f36845a && this.f36846b == aVar.f36846b) {
            UUID uuid = this.f36847c;
            UUID uuid2 = aVar.f36847c;
            return uuid == null ? uuid2 == null : uuid.equals(uuid2);
        }
        return false;
    }

    public UUID f() {
        return this.f36847c;
    }

    public boolean g() {
        return this.f36845a;
    }

    public void h(boolean z9) {
        this.f36845a = z9;
    }

    public int hashCode() {
        int i4 = (((this.f36845a ? 7 : 19) * 31) + this.f36846b) * 31;
        UUID uuid = this.f36847c;
        return i4 + (uuid != null ? uuid.hashCode() : 0);
    }

    public void i(int i4) {
        this.f36846b = (byte) i4;
    }

    public void j(UUID uuid) {
        this.f36847c = uuid;
    }

    public String toString() {
        return "CencSampleEncryptionInformationGroupEntry{isEncrypted=" + this.f36845a + ", ivSize=" + ((int) this.f36846b) + ", kid=" + this.f36847c + '}';
    }
}
