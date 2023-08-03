package com.mp4parser.iso14496.part30;

import com.googlecode.mp4parser.util.m;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* compiled from: WebVTTSampleEntry.java */
/* loaded from: classes3.dex */
public class b extends com.coremedia.iso.boxes.sampleentry.a {

    /* renamed from: o  reason: collision with root package name */
    public static final String f47078o = "wvtt";

    public b() {
        super(f47078o);
    }

    public a J() {
        return (a) m.e(this, a.f47074o);
    }

    public c K() {
        return (c) m.e(this, c.f47079o);
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(I());
        A(writableByteChannel);
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void p(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j4, com.coremedia.iso.c cVar) throws IOException {
        G(eVar, j4, cVar);
    }
}
