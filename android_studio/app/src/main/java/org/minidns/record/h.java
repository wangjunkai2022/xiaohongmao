package org.minidns.record;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Arrays;
import org.minidns.record.Record;

/* compiled from: Data.java */
/* loaded from: classes5.dex */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f92938a;

    /* renamed from: b  reason: collision with root package name */
    private transient Integer f92939b;

    private final void d() {
        if (this.f92938a != null) {
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            c(new DataOutputStream(byteArrayOutputStream));
            this.f92938a = byteArrayOutputStream.toByteArray();
        } catch (IOException e4) {
            throw new AssertionError(e4);
        }
    }

    public abstract Record.TYPE a();

    public final int b() {
        d();
        return this.f92938a.length;
    }

    protected abstract void c(DataOutputStream dataOutputStream) throws IOException;

    public final byte[] e() {
        d();
        return (byte[]) this.f92938a.clone();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof h) {
            if (obj == this) {
                return true;
            }
            h hVar = (h) obj;
            hVar.d();
            d();
            return Arrays.equals(this.f92938a, hVar.f92938a);
        }
        return false;
    }

    public void f(DataOutputStream dataOutputStream) throws IOException {
        d();
        dataOutputStream.write(this.f92938a);
    }

    public final int hashCode() {
        if (this.f92939b == null) {
            d();
            this.f92939b = Integer.valueOf(this.f92938a.hashCode());
        }
        return this.f92939b.intValue();
    }
}
