package com.coremedia.iso;

import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Logger;

/* compiled from: AbstractBoxParser.java */
/* loaded from: classes.dex */
public abstract class a implements c {

    /* renamed from: b  reason: collision with root package name */
    private static Logger f9897b = Logger.getLogger(a.class.getName());

    /* renamed from: a  reason: collision with root package name */
    ThreadLocal<ByteBuffer> f9898a = new C0073a();

    /* compiled from: AbstractBoxParser.java */
    /* renamed from: com.coremedia.iso.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0073a extends ThreadLocal<ByteBuffer> {
        C0073a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public ByteBuffer initialValue() {
            return ByteBuffer.allocate(32);
        }
    }

    @Override // com.coremedia.iso.c
    public com.coremedia.iso.boxes.d a(com.googlecode.mp4parser.e eVar, com.coremedia.iso.boxes.j jVar) throws IOException {
        int read;
        long size;
        byte[] bArr;
        long C = eVar.C();
        this.f9898a.get().rewind().limit(8);
        do {
            read = eVar.read(this.f9898a.get());
            if (read == 8) {
                this.f9898a.get().rewind();
                long l10 = g.l(this.f9898a.get());
                if (l10 < 8 && l10 > 1) {
                    f9897b.severe("Plausibility check failed: size < 8 (size = " + l10 + "). Stop parsing!");
                    return null;
                }
                String b10 = g.b(this.f9898a.get());
                if (l10 == 1) {
                    this.f9898a.get().limit(16);
                    eVar.read(this.f9898a.get());
                    this.f9898a.get().position(8);
                    size = g.o(this.f9898a.get()) - 16;
                } else {
                    size = l10 == 0 ? eVar.size() - eVar.C() : l10 - 8;
                }
                if ("uuid".equals(b10)) {
                    this.f9898a.get().limit(this.f9898a.get().limit() + 16);
                    eVar.read(this.f9898a.get());
                    bArr = new byte[16];
                    for (int position = this.f9898a.get().position() - 16; position < this.f9898a.get().position(); position++) {
                        bArr[position - (this.f9898a.get().position() - 16)] = this.f9898a.get().get(position);
                    }
                    size -= 16;
                } else {
                    bArr = null;
                }
                long j4 = size;
                com.coremedia.iso.boxes.d b11 = b(b10, bArr, jVar instanceof com.coremedia.iso.boxes.d ? ((com.coremedia.iso.boxes.d) jVar).getType() : "");
                b11.r(jVar);
                this.f9898a.get().rewind();
                b11.p(eVar, this.f9898a.get(), j4, this);
                return b11;
            }
        } while (read >= 0);
        eVar.S(C);
        throw new EOFException();
    }

    public abstract com.coremedia.iso.boxes.d b(String str, byte[] bArr, String str2);
}
