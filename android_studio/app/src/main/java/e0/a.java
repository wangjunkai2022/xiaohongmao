package e0;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.data.e;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferRewinder.java */
/* loaded from: classes.dex */
public class a implements e<ByteBuffer> {

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer f62085a;

    /* compiled from: ByteBufferRewinder.java */
    /* renamed from: e0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0509a implements e.a<ByteBuffer> {
        @Override // com.bumptech.glide.load.data.e.a
        @NonNull
        public Class<ByteBuffer> a() {
            return ByteBuffer.class;
        }

        @Override // com.bumptech.glide.load.data.e.a
        @NonNull
        /* renamed from: c */
        public e<ByteBuffer> b(ByteBuffer byteBuffer) {
            return new a(byteBuffer);
        }
    }

    public a(ByteBuffer byteBuffer) {
        this.f62085a = byteBuffer;
    }

    @Override // com.bumptech.glide.load.data.e
    public void b() {
    }

    @Override // com.bumptech.glide.load.data.e
    @NonNull
    /* renamed from: c */
    public ByteBuffer a() {
        this.f62085a.position(0);
        return this.f62085a;
    }
}
