package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.model.n;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* compiled from: ByteArrayLoader.java */
/* loaded from: classes.dex */
public class b<Data> implements n<byte[], Data> {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0058b<Data> f9024a;

    /* compiled from: ByteArrayLoader.java */
    /* loaded from: classes.dex */
    public static class a implements o<byte[], ByteBuffer> {

        /* compiled from: ByteArrayLoader.java */
        /* renamed from: com.bumptech.glide.load.model.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0057a implements InterfaceC0058b<ByteBuffer> {
            C0057a() {
            }

            @Override // com.bumptech.glide.load.model.b.InterfaceC0058b
            public Class<ByteBuffer> a() {
                return ByteBuffer.class;
            }

            @Override // com.bumptech.glide.load.model.b.InterfaceC0058b
            /* renamed from: c */
            public ByteBuffer b(byte[] bArr) {
                return ByteBuffer.wrap(bArr);
            }
        }

        @Override // com.bumptech.glide.load.model.o
        public void a() {
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<byte[], ByteBuffer> c(@NonNull r rVar) {
            return new b(new C0057a());
        }
    }

    /* compiled from: ByteArrayLoader.java */
    /* renamed from: com.bumptech.glide.load.model.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0058b<Data> {
        Class<Data> a();

        Data b(byte[] bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ByteArrayLoader.java */
    /* loaded from: classes.dex */
    public static class c<Data> implements com.bumptech.glide.load.data.d<Data> {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f9026a;

        /* renamed from: b  reason: collision with root package name */
        private final InterfaceC0058b<Data> f9027b;

        c(byte[] bArr, InterfaceC0058b<Data> interfaceC0058b) {
            this.f9026a = bArr;
            this.f9027b = interfaceC0058b;
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<Data> a() {
            return this.f9027b.a();
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        public void d(@NonNull Priority priority, @NonNull d.a<? super Data> aVar) {
            aVar.e((Data) this.f9027b.b(this.f9026a));
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public DataSource getDataSource() {
            return DataSource.LOCAL;
        }
    }

    /* compiled from: ByteArrayLoader.java */
    /* loaded from: classes.dex */
    public static class d implements o<byte[], InputStream> {

        /* compiled from: ByteArrayLoader.java */
        /* loaded from: classes.dex */
        class a implements InterfaceC0058b<InputStream> {
            a() {
            }

            @Override // com.bumptech.glide.load.model.b.InterfaceC0058b
            public Class<InputStream> a() {
                return InputStream.class;
            }

            @Override // com.bumptech.glide.load.model.b.InterfaceC0058b
            /* renamed from: c */
            public InputStream b(byte[] bArr) {
                return new ByteArrayInputStream(bArr);
            }
        }

        @Override // com.bumptech.glide.load.model.o
        public void a() {
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<byte[], InputStream> c(@NonNull r rVar) {
            return new b(new a());
        }
    }

    public b(InterfaceC0058b<Data> interfaceC0058b) {
        this.f9024a = interfaceC0058b;
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: c */
    public n.a<Data> b(@NonNull byte[] bArr, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) {
        return new n.a<>(new com.bumptech.glide.signature.e(bArr), new c(bArr, this.f9024a));
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: d */
    public boolean a(@NonNull byte[] bArr) {
        return true;
    }
}
