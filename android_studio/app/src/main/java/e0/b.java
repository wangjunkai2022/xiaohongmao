package e0;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.util.m;

/* compiled from: BytesResource.java */
/* loaded from: classes.dex */
public class b implements u<byte[]> {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f62086a;

    public b(byte[] bArr) {
        this.f62086a = (byte[]) m.d(bArr);
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public Class<byte[]> a() {
        return byte[].class;
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    /* renamed from: b */
    public byte[] get() {
        return this.f62086a;
    }

    @Override // com.bumptech.glide.load.engine.u
    public int getSize() {
        return this.f62086a.length;
    }

    @Override // com.bumptech.glide.load.engine.u
    public void recycle() {
    }
}
