package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;

/* compiled from: DecoderConfigDescriptor.java */
@g(tags = {4})
/* loaded from: classes2.dex */
public class e extends b {

    /* renamed from: o  reason: collision with root package name */
    private static Logger f36796o = Logger.getLogger(e.class.getName());

    /* renamed from: e  reason: collision with root package name */
    int f36797e;

    /* renamed from: f  reason: collision with root package name */
    int f36798f;

    /* renamed from: g  reason: collision with root package name */
    int f36799g;

    /* renamed from: h  reason: collision with root package name */
    int f36800h;

    /* renamed from: i  reason: collision with root package name */
    long f36801i;

    /* renamed from: j  reason: collision with root package name */
    long f36802j;

    /* renamed from: k  reason: collision with root package name */
    f f36803k;

    /* renamed from: l  reason: collision with root package name */
    a f36804l;

    /* renamed from: m  reason: collision with root package name */
    List<n> f36805m = new ArrayList();

    /* renamed from: n  reason: collision with root package name */
    byte[] f36806n;

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public void f(ByteBuffer byteBuffer) throws IOException {
        int a10;
        this.f36797e = com.coremedia.iso.g.p(byteBuffer);
        int p9 = com.coremedia.iso.g.p(byteBuffer);
        this.f36798f = p9 >>> 2;
        this.f36799g = (p9 >> 1) & 1;
        this.f36800h = com.coremedia.iso.g.k(byteBuffer);
        this.f36801i = com.coremedia.iso.g.l(byteBuffer);
        this.f36802j = com.coremedia.iso.g.l(byteBuffer);
        if (byteBuffer.remaining() > 2) {
            int position = byteBuffer.position();
            b a11 = m.a(this.f36797e, byteBuffer);
            int position2 = byteBuffer.position() - position;
            Logger logger = f36796o;
            StringBuilder sb = new StringBuilder();
            sb.append(a11);
            sb.append(" - DecoderConfigDescr1 read: ");
            sb.append(position2);
            sb.append(", size: ");
            sb.append(a11 != null ? Integer.valueOf(a11.a()) : null);
            logger.finer(sb.toString());
            if (a11 != null && position2 < (a10 = a11.a())) {
                byte[] bArr = new byte[a10 - position2];
                this.f36806n = bArr;
                byteBuffer.get(bArr);
            }
            if (a11 instanceof f) {
                this.f36803k = (f) a11;
            }
            if (a11 instanceof a) {
                this.f36804l = (a) a11;
            }
        }
        while (byteBuffer.remaining() > 2) {
            long position3 = byteBuffer.position();
            b a12 = m.a(this.f36797e, byteBuffer);
            long position4 = byteBuffer.position() - position3;
            Logger logger2 = f36796o;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(a12);
            sb2.append(" - DecoderConfigDescr2 read: ");
            sb2.append(position4);
            sb2.append(", size: ");
            sb2.append(a12 != null ? Integer.valueOf(a12.a()) : null);
            logger2.finer(sb2.toString());
            if (a12 instanceof n) {
                this.f36805m.add((n) a12);
            }
        }
    }

    public a g() {
        return this.f36804l;
    }

    public long h() {
        return this.f36802j;
    }

    public int i() {
        return this.f36800h;
    }

    public f j() {
        return this.f36803k;
    }

    public long k() {
        return this.f36801i;
    }

    public int l() {
        return this.f36797e;
    }

    public List<n> m() {
        return this.f36805m;
    }

    public int n() {
        return this.f36798f;
    }

    public int o() {
        return this.f36799g;
    }

    public ByteBuffer p() {
        ByteBuffer allocate = ByteBuffer.allocate(q());
        com.coremedia.iso.i.m(allocate, 4);
        com.coremedia.iso.i.m(allocate, q() - 2);
        com.coremedia.iso.i.m(allocate, this.f36797e);
        com.coremedia.iso.i.m(allocate, (this.f36798f << 2) | (this.f36799g << 1) | 1);
        com.coremedia.iso.i.h(allocate, this.f36800h);
        com.coremedia.iso.i.i(allocate, this.f36801i);
        com.coremedia.iso.i.i(allocate, this.f36802j);
        a aVar = this.f36804l;
        if (aVar != null) {
            allocate.put(aVar.t().array());
        }
        return allocate;
    }

    public int q() {
        a aVar = this.f36804l;
        return (aVar == null ? 0 : aVar.u()) + 15;
    }

    public void r(a aVar) {
        this.f36804l = aVar;
    }

    public void s(long j4) {
        this.f36802j = j4;
    }

    public void t(int i4) {
        this.f36800h = i4;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("DecoderConfigDescriptor");
        sb.append("{objectTypeIndication=");
        sb.append(this.f36797e);
        sb.append(", streamType=");
        sb.append(this.f36798f);
        sb.append(", upStream=");
        sb.append(this.f36799g);
        sb.append(", bufferSizeDB=");
        sb.append(this.f36800h);
        sb.append(", maxBitRate=");
        sb.append(this.f36801i);
        sb.append(", avgBitRate=");
        sb.append(this.f36802j);
        sb.append(", decoderSpecificInfo=");
        sb.append(this.f36803k);
        sb.append(", audioSpecificInfo=");
        sb.append(this.f36804l);
        sb.append(", configDescriptorDeadBytes=");
        byte[] bArr = this.f36806n;
        if (bArr == null) {
            bArr = new byte[0];
        }
        sb.append(com.coremedia.iso.e.b(bArr));
        sb.append(", profileLevelIndicationDescriptors=");
        List<n> list = this.f36805m;
        sb.append(list == null ? "null" : Arrays.asList(list).toString());
        sb.append('}');
        return sb.toString();
    }

    public void u(long j4) {
        this.f36801i = j4;
    }

    public void v(int i4) {
        this.f36797e = i4;
    }

    public void w(int i4) {
        this.f36798f = i4;
    }

    public void x(int i4) {
        this.f36799g = i4;
    }
}
