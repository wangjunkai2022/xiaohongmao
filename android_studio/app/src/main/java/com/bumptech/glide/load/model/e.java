package com.bumptech.glide.load.model;

import android.util.Base64;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.model.n;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: DataUrlLoader.java */
/* loaded from: classes.dex */
public final class e<Model, Data> implements n<Model, Data> {

    /* renamed from: b  reason: collision with root package name */
    private static final String f9032b = "data:image";

    /* renamed from: c  reason: collision with root package name */
    private static final String f9033c = ";base64";

    /* renamed from: a  reason: collision with root package name */
    private final a<Data> f9034a;

    /* compiled from: DataUrlLoader.java */
    /* loaded from: classes.dex */
    public interface a<Data> {
        Class<Data> a();

        Data b(String str) throws IllegalArgumentException;

        void c(Data data) throws IOException;
    }

    /* compiled from: DataUrlLoader.java */
    /* loaded from: classes.dex */
    private static final class b<Data> implements com.bumptech.glide.load.data.d<Data> {

        /* renamed from: a  reason: collision with root package name */
        private final String f9035a;

        /* renamed from: b  reason: collision with root package name */
        private final a<Data> f9036b;

        /* renamed from: c  reason: collision with root package name */
        private Data f9037c;

        b(String str, a<Data> aVar) {
            this.f9035a = str;
            this.f9036b = aVar;
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<Data> a() {
            return this.f9036b.a();
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
            try {
                this.f9036b.c(this.f9037c);
            } catch (IOException unused) {
            }
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, Data] */
        @Override // com.bumptech.glide.load.data.d
        public void d(@NonNull Priority priority, @NonNull d.a<? super Data> aVar) {
            try {
                Data b10 = this.f9036b.b(this.f9035a);
                this.f9037c = b10;
                aVar.e(b10);
            } catch (IllegalArgumentException e4) {
                aVar.c(e4);
            }
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public DataSource getDataSource() {
            return DataSource.LOCAL;
        }
    }

    /* compiled from: DataUrlLoader.java */
    /* loaded from: classes.dex */
    public static final class c<Model> implements o<Model, InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final a<InputStream> f9038a = new a();

        /* compiled from: DataUrlLoader.java */
        /* loaded from: classes.dex */
        class a implements a<InputStream> {
            a() {
            }

            @Override // com.bumptech.glide.load.model.e.a
            public Class<InputStream> a() {
                return InputStream.class;
            }

            @Override // com.bumptech.glide.load.model.e.a
            /* renamed from: d */
            public void c(InputStream inputStream) throws IOException {
                inputStream.close();
            }

            @Override // com.bumptech.glide.load.model.e.a
            /* renamed from: e */
            public InputStream b(String str) {
                if (str.startsWith(e.f9032b)) {
                    int indexOf = str.indexOf(44);
                    if (indexOf != -1) {
                        if (str.substring(0, indexOf).endsWith(e.f9033c)) {
                            return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
                        }
                        throw new IllegalArgumentException("Not a base64 image data URL.");
                    }
                    throw new IllegalArgumentException("Missing comma in data URL.");
                }
                throw new IllegalArgumentException("Not a valid image data URL.");
            }
        }

        @Override // com.bumptech.glide.load.model.o
        public void a() {
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<Model, InputStream> c(@NonNull r rVar) {
            return new e(this.f9038a);
        }
    }

    public e(a<Data> aVar) {
        this.f9034a = aVar;
    }

    @Override // com.bumptech.glide.load.model.n
    public boolean a(@NonNull Model model) {
        return model.toString().startsWith(f9032b);
    }

    @Override // com.bumptech.glide.load.model.n
    public n.a<Data> b(@NonNull Model model, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) {
        return new n.a<>(new com.bumptech.glide.signature.e(model), new b(model.toString(), this.f9034a));
    }
}
