package com.coremedia.iso.boxes;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* compiled from: UserDataBox.java */
/* loaded from: classes.dex */
public class l1 extends com.googlecode.mp4parser.b {

    /* renamed from: n  reason: collision with root package name */
    public static final String f10220n = "udta";

    public l1() {
        super(f10220n);
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        super.a(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void p(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j4, com.coremedia.iso.c cVar) throws IOException {
        super.p(eVar, byteBuffer, j4, cVar);
    }
}
