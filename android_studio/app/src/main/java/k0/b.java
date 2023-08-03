package k0;

import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: ByteArrayBinaryResource.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f84569a;

    public b(byte[] bytes) {
        this.f84569a = (byte[]) j.i(bytes);
    }

    @Override // k0.a
    public InputStream a() throws IOException {
        return new ByteArrayInputStream(this.f84569a);
    }

    @Override // k0.a
    public byte[] read() {
        return this.f84569a;
    }

    @Override // k0.a
    public long size() {
        return this.f84569a.length;
    }
}
