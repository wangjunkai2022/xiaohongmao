package com.googlecode.mp4parser;

import com.googlecode.mp4parser.util.m;
import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* compiled from: AbstractBox.java */
/* loaded from: classes2.dex */
public abstract class a implements com.coremedia.iso.boxes.d {

    /* renamed from: l  reason: collision with root package name */
    private static com.googlecode.mp4parser.util.j f35974l = com.googlecode.mp4parser.util.j.a(a.class);

    /* renamed from: m  reason: collision with root package name */
    static final /* synthetic */ boolean f35975m = false;

    /* renamed from: a  reason: collision with root package name */
    protected String f35976a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f35977b;

    /* renamed from: c  reason: collision with root package name */
    private com.coremedia.iso.boxes.j f35978c;

    /* renamed from: f  reason: collision with root package name */
    private ByteBuffer f35981f;

    /* renamed from: g  reason: collision with root package name */
    long f35982g;

    /* renamed from: h  reason: collision with root package name */
    long f35983h;

    /* renamed from: j  reason: collision with root package name */
    e f35985j;

    /* renamed from: i  reason: collision with root package name */
    long f35984i = -1;

    /* renamed from: k  reason: collision with root package name */
    private ByteBuffer f35986k = null;

    /* renamed from: e  reason: collision with root package name */
    boolean f35980e = true;

    /* renamed from: d  reason: collision with root package name */
    boolean f35979d = true;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(String str) {
        this.f35976a = str;
    }

    private void f(ByteBuffer byteBuffer) {
        if (l()) {
            com.coremedia.iso.i.i(byteBuffer, getSize());
            byteBuffer.put(com.coremedia.iso.f.J(getType()));
        } else {
            com.coremedia.iso.i.i(byteBuffer, 1L);
            byteBuffer.put(com.coremedia.iso.f.J(getType()));
            com.coremedia.iso.i.l(byteBuffer, getSize());
        }
        if ("uuid".equals(getType())) {
            byteBuffer.put(h());
        }
    }

    private boolean l() {
        int i4 = "uuid".equals(getType()) ? 24 : 8;
        if (!this.f35980e) {
            return this.f35984i + ((long) i4) < KSYMediaMeta.AV_CH_WIDE_RIGHT;
        } else if (!this.f35979d) {
            return ((long) (this.f35981f.limit() + i4)) < KSYMediaMeta.AV_CH_WIDE_RIGHT;
        } else {
            long e4 = e();
            ByteBuffer byteBuffer = this.f35986k;
            return (e4 + ((long) (byteBuffer != null ? byteBuffer.limit() : 0))) + ((long) i4) < KSYMediaMeta.AV_CH_WIDE_RIGHT;
        }
    }

    private synchronized void n() {
        if (!this.f35980e) {
            try {
                com.googlecode.mp4parser.util.j jVar = f35974l;
                jVar.b("mem mapping " + getType());
                this.f35981f = this.f35985j.e0(this.f35982g, this.f35984i);
                this.f35980e = true;
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }
    }

    private boolean q(ByteBuffer byteBuffer) {
        ByteBuffer byteBuffer2;
        ByteBuffer allocate = ByteBuffer.allocate(com.googlecode.mp4parser.util.c.a(e() + (this.f35986k != null ? byteBuffer2.limit() : 0)));
        c(allocate);
        ByteBuffer byteBuffer3 = this.f35986k;
        if (byteBuffer3 != null) {
            byteBuffer3.rewind();
            while (this.f35986k.remaining() > 0) {
                allocate.put(this.f35986k);
            }
        }
        byteBuffer.rewind();
        allocate.rewind();
        if (byteBuffer.remaining() != allocate.remaining()) {
            System.err.print(String.valueOf(getType()) + ": remaining differs " + byteBuffer.remaining() + " vs. " + allocate.remaining());
            f35974l.c(String.valueOf(getType()) + ": remaining differs " + byteBuffer.remaining() + " vs. " + allocate.remaining());
            return false;
        }
        int position = byteBuffer.position();
        int limit = byteBuffer.limit() - 1;
        int limit2 = allocate.limit() - 1;
        while (limit >= position) {
            byte b10 = byteBuffer.get(limit);
            byte b11 = allocate.get(limit2);
            if (b10 != b11) {
                f35974l.c(String.format("%s: buffers differ at %d: %2X/%2X", getType(), Integer.valueOf(limit), Byte.valueOf(b10), Byte.valueOf(b11)));
                byte[] bArr = new byte[byteBuffer.remaining()];
                byte[] bArr2 = new byte[allocate.remaining()];
                byteBuffer.get(bArr);
                allocate.get(bArr2);
                System.err.println("original      : " + com.coremedia.iso.e.c(bArr, 4));
                System.err.println("reconstructed : " + com.coremedia.iso.e.c(bArr2, 4));
                return false;
            }
            limit--;
            limit2--;
        }
        return true;
    }

    @Override // com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        if (this.f35980e) {
            if (this.f35979d) {
                ByteBuffer allocate = ByteBuffer.allocate(com.googlecode.mp4parser.util.c.a(getSize()));
                f(allocate);
                c(allocate);
                ByteBuffer byteBuffer = this.f35986k;
                if (byteBuffer != null) {
                    byteBuffer.rewind();
                    while (this.f35986k.remaining() > 0) {
                        allocate.put(this.f35986k);
                    }
                }
                writableByteChannel.write((ByteBuffer) allocate.rewind());
                return;
            }
            ByteBuffer allocate2 = ByteBuffer.allocate((l() ? 8 : 16) + ("uuid".equals(getType()) ? 16 : 0));
            f(allocate2);
            writableByteChannel.write((ByteBuffer) allocate2.rewind());
            writableByteChannel.write((ByteBuffer) this.f35981f.position(0));
            return;
        }
        ByteBuffer allocate3 = ByteBuffer.allocate((l() ? 8 : 16) + ("uuid".equals(getType()) ? 16 : 0));
        f(allocate3);
        writableByteChannel.write((ByteBuffer) allocate3.rewind());
        this.f35985j.m(this.f35982g, this.f35984i, writableByteChannel);
    }

    protected abstract void b(ByteBuffer byteBuffer);

    protected abstract void c(ByteBuffer byteBuffer);

    protected abstract long e();

    @s3.a
    public String g() {
        return m.a(this);
    }

    @Override // com.coremedia.iso.boxes.d
    @s3.a
    public com.coremedia.iso.boxes.j getParent() {
        return this.f35978c;
    }

    @Override // com.coremedia.iso.boxes.d
    public long getSize() {
        long j4;
        ByteBuffer byteBuffer;
        if (!this.f35980e) {
            j4 = this.f35984i;
        } else if (this.f35979d) {
            j4 = e();
        } else {
            ByteBuffer byteBuffer2 = this.f35981f;
            j4 = byteBuffer2 != null ? byteBuffer2.limit() : 0;
        }
        return j4 + (j4 >= 4294967288L ? 8 : 0) + 8 + ("uuid".equals(getType()) ? 16 : 0) + (this.f35986k != null ? byteBuffer.limit() : 0);
    }

    @Override // com.coremedia.iso.boxes.d
    @s3.a
    public String getType() {
        return this.f35976a;
    }

    @s3.a
    public byte[] h() {
        return this.f35977b;
    }

    public boolean j() {
        return this.f35979d;
    }

    @Override // com.coremedia.iso.boxes.d
    public long k() {
        return this.f35983h;
    }

    public final synchronized void m() {
        n();
        com.googlecode.mp4parser.util.j jVar = f35974l;
        jVar.b("parsing details of " + getType());
        ByteBuffer byteBuffer = this.f35981f;
        if (byteBuffer != null) {
            this.f35979d = true;
            byteBuffer.rewind();
            b(byteBuffer);
            if (byteBuffer.remaining() > 0) {
                this.f35986k = byteBuffer.slice();
            }
            this.f35981f = null;
        }
    }

    protected void o(ByteBuffer byteBuffer) {
        this.f35986k = byteBuffer;
    }

    @Override // com.coremedia.iso.boxes.d
    @s3.a
    public void p(e eVar, ByteBuffer byteBuffer, long j4, com.coremedia.iso.c cVar) throws IOException {
        long C = eVar.C();
        this.f35982g = C;
        this.f35983h = C - byteBuffer.remaining();
        this.f35984i = j4;
        this.f35985j = eVar;
        eVar.S(eVar.C() + j4);
        this.f35980e = false;
        this.f35979d = false;
    }

    @Override // com.coremedia.iso.boxes.d
    @s3.a
    public void r(com.coremedia.iso.boxes.j jVar) {
        this.f35978c = jVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(String str, byte[] bArr) {
        this.f35976a = str;
        this.f35977b = bArr;
    }
}
