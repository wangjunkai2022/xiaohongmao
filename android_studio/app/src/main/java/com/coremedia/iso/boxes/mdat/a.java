package com.coremedia.iso.boxes.mdat;

import com.coremedia.iso.boxes.d;
import com.coremedia.iso.boxes.j;
import com.coremedia.iso.c;
import com.googlecode.mp4parser.e;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.logging.Logger;

/* compiled from: MediaDataBox.java */
/* loaded from: classes.dex */
public final class a implements d {

    /* renamed from: f  reason: collision with root package name */
    private static Logger f10243f = Logger.getLogger(a.class.getName());

    /* renamed from: g  reason: collision with root package name */
    public static final String f10244g = "mdat";

    /* renamed from: a  reason: collision with root package name */
    j f10245a;

    /* renamed from: b  reason: collision with root package name */
    boolean f10246b = false;

    /* renamed from: c  reason: collision with root package name */
    private e f10247c;

    /* renamed from: d  reason: collision with root package name */
    private long f10248d;

    /* renamed from: e  reason: collision with root package name */
    private long f10249e;

    private static void b(e eVar, long j4, long j10, WritableByteChannel writableByteChannel) throws IOException {
        long j11 = 0;
        while (j11 < j10) {
            j11 += eVar.m(j4 + j11, Math.min(67076096L, j10 - j11), writableByteChannel);
        }
    }

    @Override // com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        b(this.f10247c, this.f10248d, this.f10249e, writableByteChannel);
    }

    @Override // com.coremedia.iso.boxes.d
    public j getParent() {
        return this.f10245a;
    }

    @Override // com.coremedia.iso.boxes.d
    public long getSize() {
        return this.f10249e;
    }

    @Override // com.coremedia.iso.boxes.d
    public String getType() {
        return f10244g;
    }

    @Override // com.coremedia.iso.boxes.d
    public long k() {
        return this.f10248d;
    }

    @Override // com.coremedia.iso.boxes.d
    public void p(e eVar, ByteBuffer byteBuffer, long j4, c cVar) throws IOException {
        this.f10248d = eVar.C() - byteBuffer.remaining();
        this.f10247c = eVar;
        this.f10249e = byteBuffer.remaining() + j4;
        eVar.S(eVar.C() + j4);
    }

    @Override // com.coremedia.iso.boxes.d
    public void r(j jVar) {
        this.f10245a = jVar;
    }

    public String toString() {
        return "MediaDataBox{size=" + this.f10249e + '}';
    }
}
