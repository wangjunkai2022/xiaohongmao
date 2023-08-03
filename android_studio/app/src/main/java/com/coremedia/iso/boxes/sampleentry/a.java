package com.coremedia.iso.boxes.sampleentry;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* compiled from: AbstractSampleEntry.java */
/* loaded from: classes.dex */
public abstract class a extends com.googlecode.mp4parser.b implements f {

    /* renamed from: n  reason: collision with root package name */
    protected int f10318n;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(String str) {
        super(str);
        this.f10318n = 1;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public abstract void a(WritableByteChannel writableByteChannel) throws IOException;

    @Override // com.coremedia.iso.boxes.sampleentry.f
    public void d(int i4) {
        this.f10318n = i4;
    }

    @Override // com.coremedia.iso.boxes.sampleentry.f
    public int i() {
        return this.f10318n;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public abstract void p(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j4, com.coremedia.iso.c cVar) throws IOException;
}
