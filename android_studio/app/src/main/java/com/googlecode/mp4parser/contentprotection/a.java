package com.googlecode.mp4parser.contentprotection;

import com.googlecode.mp4parser.boxes.piff.c;
import java.nio.ByteBuffer;
import java.util.UUID;

/* compiled from: GenericHeader.java */
/* loaded from: classes2.dex */
public class a extends c {

    /* renamed from: c  reason: collision with root package name */
    public static UUID f36933c;

    /* renamed from: b  reason: collision with root package name */
    ByteBuffer f36934b;

    static {
        UUID fromString = UUID.fromString("00000000-0000-0000-0000-000000000000");
        f36933c = fromString;
        c.f36887a.put(fromString, a.class);
    }

    @Override // com.googlecode.mp4parser.boxes.piff.c
    public ByteBuffer b() {
        return this.f36934b;
    }

    @Override // com.googlecode.mp4parser.boxes.piff.c
    public UUID c() {
        return f36933c;
    }

    @Override // com.googlecode.mp4parser.boxes.piff.c
    public void d(ByteBuffer byteBuffer) {
        this.f36934b = byteBuffer;
    }
}
