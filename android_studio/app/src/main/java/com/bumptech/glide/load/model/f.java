package com.bumptech.glide.load.model;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.model.n;
import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: FileLoader.java */
/* loaded from: classes.dex */
public class f<Data> implements n<File, Data> {

    /* renamed from: b  reason: collision with root package name */
    private static final String f9040b = "FileLoader";

    /* renamed from: a  reason: collision with root package name */
    private final d<Data> f9041a;

    /* compiled from: FileLoader.java */
    /* loaded from: classes.dex */
    public static class a<Data> implements o<File, Data> {

        /* renamed from: a  reason: collision with root package name */
        private final d<Data> f9042a;

        public a(d<Data> dVar) {
            this.f9042a = dVar;
        }

        @Override // com.bumptech.glide.load.model.o
        public final void a() {
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public final n<File, Data> c(@NonNull r rVar) {
            return new f(this.f9042a);
        }
    }

    /* compiled from: FileLoader.java */
    /* loaded from: classes.dex */
    public static class b extends a<ParcelFileDescriptor> {

        /* compiled from: FileLoader.java */
        /* loaded from: classes.dex */
        class a implements d<ParcelFileDescriptor> {
            a() {
            }

            @Override // com.bumptech.glide.load.model.f.d
            public Class<ParcelFileDescriptor> a() {
                return ParcelFileDescriptor.class;
            }

            @Override // com.bumptech.glide.load.model.f.d
            /* renamed from: d */
            public void c(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
                parcelFileDescriptor.close();
            }

            @Override // com.bumptech.glide.load.model.f.d
            /* renamed from: e */
            public ParcelFileDescriptor b(File file) throws FileNotFoundException {
                return ParcelFileDescriptor.open(file, 268435456);
            }
        }

        public b() {
            super(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FileLoader.java */
    /* loaded from: classes.dex */
    public static final class c<Data> implements com.bumptech.glide.load.data.d<Data> {

        /* renamed from: a  reason: collision with root package name */
        private final File f9043a;

        /* renamed from: b  reason: collision with root package name */
        private final d<Data> f9044b;

        /* renamed from: c  reason: collision with root package name */
        private Data f9045c;

        c(File file, d<Data> dVar) {
            this.f9043a = file;
            this.f9044b = dVar;
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<Data> a() {
            return this.f9044b.a();
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
            Data data = this.f9045c;
            if (data != null) {
                try {
                    this.f9044b.c(data);
                } catch (IOException unused) {
                }
            }
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
        }

        /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object, Data] */
        @Override // com.bumptech.glide.load.data.d
        public void d(@NonNull Priority priority, @NonNull d.a<? super Data> aVar) {
            try {
                Data b10 = this.f9044b.b(this.f9043a);
                this.f9045c = b10;
                aVar.e(b10);
            } catch (FileNotFoundException e4) {
                if (Log.isLoggable(f.f9040b, 3)) {
                    Log.d(f.f9040b, "Failed to open file", e4);
                }
                aVar.c(e4);
            }
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public DataSource getDataSource() {
            return DataSource.LOCAL;
        }
    }

    /* compiled from: FileLoader.java */
    /* loaded from: classes.dex */
    public interface d<Data> {
        Class<Data> a();

        Data b(File file) throws FileNotFoundException;

        void c(Data data) throws IOException;
    }

    /* compiled from: FileLoader.java */
    /* loaded from: classes.dex */
    public static class e extends a<InputStream> {

        /* compiled from: FileLoader.java */
        /* loaded from: classes.dex */
        class a implements d<InputStream> {
            a() {
            }

            @Override // com.bumptech.glide.load.model.f.d
            public Class<InputStream> a() {
                return InputStream.class;
            }

            @Override // com.bumptech.glide.load.model.f.d
            /* renamed from: d */
            public void c(InputStream inputStream) throws IOException {
                inputStream.close();
            }

            @Override // com.bumptech.glide.load.model.f.d
            /* renamed from: e */
            public InputStream b(File file) throws FileNotFoundException {
                return h.b.a(new FileInputStream(file), file);
            }
        }

        public e() {
            super(new a());
        }
    }

    public f(d<Data> dVar) {
        this.f9041a = dVar;
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: c */
    public n.a<Data> b(@NonNull File file, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) {
        return new n.a<>(new com.bumptech.glide.signature.e(file), new c(file, this.f9041a));
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: d */
    public boolean a(@NonNull File file) {
        return true;
    }
}
