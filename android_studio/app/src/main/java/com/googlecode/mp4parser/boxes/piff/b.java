package com.googlecode.mp4parser.boxes.piff;

import com.googlecode.mp4parser.j;
import org.aspectj.lang.c;

/* compiled from: PiffTrackEncryptionBox.java */
/* loaded from: classes2.dex */
public class b extends com.googlecode.mp4parser.boxes.c {
    private static final /* synthetic */ c.b C = null;

    static {
        s();
    }

    public b() {
        super("uuid");
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("PiffTrackEncryptionBox.java", b.class);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getFlags", "com.googlecode.mp4parser.boxes.piff.PiffTrackEncryptionBox", "", "", "", "int"), 29);
    }

    @Override // com.googlecode.mp4parser.c, com.coremedia.iso.boxes.v
    public int getFlags() {
        j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return 0;
    }

    @Override // com.googlecode.mp4parser.a
    public byte[] h() {
        return new byte[]{-119, 116, -37, -50, 123, -25, 76, 81, -124, -7, 113, 72, -7, -120, 37, 84};
    }
}
