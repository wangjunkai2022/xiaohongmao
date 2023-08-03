package com.googlecode.mp4parser.boxes.mp4;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.h;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.e;

/* compiled from: ESDescriptorBox.java */
/* loaded from: classes2.dex */
public class b extends a {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;
    private static final /* synthetic */ c.b C = null;
    private static final /* synthetic */ c.b D = null;

    /* renamed from: z  reason: collision with root package name */
    public static final String f36737z = "esds";

    static {
        s();
    }

    public b() {
        super(f36737z);
    }

    private static /* synthetic */ void s() {
        e eVar = new e("ESDescriptorBox.java", b.class);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getEsDescriptor", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "", "", "", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.ESDescriptor"), 33);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setEsDescriptor", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.ESDescriptor", "esDescriptor", "", "void"), 37);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "equals", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "java.lang.Object", "o", "", TypedValues.Custom.S_BOOLEAN), 42);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "hashCode", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "", "", "", "int"), 53);
    }

    public h A() {
        j.b().c(e.v(A, this, this));
        return (h) super.w();
    }

    public void B(h hVar) {
        j.b().c(e.w(B, this, this, hVar));
        super.z(hVar);
    }

    public boolean equals(Object obj) {
        j.b().c(e.w(C, this, this, obj));
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ByteBuffer byteBuffer = this.f36736s;
        ByteBuffer byteBuffer2 = ((b) obj).f36736s;
        return byteBuffer == null ? byteBuffer2 == null : byteBuffer.equals(byteBuffer2);
    }

    public int hashCode() {
        j.b().c(e.v(D, this, this));
        ByteBuffer byteBuffer = this.f36736s;
        if (byteBuffer != null) {
            return byteBuffer.hashCode();
        }
        return 0;
    }
}
