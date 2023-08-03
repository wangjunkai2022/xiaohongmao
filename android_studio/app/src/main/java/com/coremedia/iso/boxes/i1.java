package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: TrackReferenceTypeBox.java */
/* loaded from: classes.dex */
public class i1 extends com.googlecode.mp4parser.a {

    /* renamed from: o  reason: collision with root package name */
    public static final String f10181o = "hint";

    /* renamed from: p  reason: collision with root package name */
    public static final String f10182p = "cdsc";

    /* renamed from: q  reason: collision with root package name */
    private static final /* synthetic */ c.b f10183q = null;

    /* renamed from: r  reason: collision with root package name */
    private static final /* synthetic */ c.b f10184r = null;

    /* renamed from: n  reason: collision with root package name */
    private long[] f10185n;

    static {
        s();
    }

    public i1(String str) {
        super(str);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TrackReferenceTypeBox.java", i1.class);
        f10183q = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getTrackIds", "com.coremedia.iso.boxes.TrackReferenceTypeBox", "", "", "", "[J"), 40);
        f10184r = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.TrackReferenceTypeBox", "", "", "", "java.lang.String"), 65);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining() / 4;
        this.f10185n = new long[remaining];
        for (int i4 = 0; i4 < remaining; i4++) {
            this.f10185n[i4] = com.coremedia.iso.g.l(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        for (long j4 : this.f10185n) {
            com.coremedia.iso.i.i(byteBuffer, j4);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return this.f10185n.length * 4;
    }

    public long[] t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10183q, this, this));
        return this.f10185n;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10184r, this, this));
        StringBuilder sb = new StringBuilder();
        sb.append("TrackReferenceTypeBox[type=");
        sb.append(getType());
        for (int i4 = 0; i4 < this.f10185n.length; i4++) {
            sb.append(";trackId");
            sb.append(i4);
            sb.append("=");
            sb.append(this.f10185n[i4]);
        }
        sb.append("]");
        return sb.toString();
    }
}
