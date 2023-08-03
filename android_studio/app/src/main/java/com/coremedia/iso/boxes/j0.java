package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;

/* compiled from: NullMediaHeaderBox.java */
/* loaded from: classes.dex */
public class j0 extends a {

    /* renamed from: r  reason: collision with root package name */
    public static final String f10186r = "nmhd";

    public j0() {
        super(f10186r);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 4L;
    }
}
