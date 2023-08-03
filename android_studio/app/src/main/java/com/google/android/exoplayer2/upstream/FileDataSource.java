package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.m;
import com.google.android.exoplayer2.util.z0;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes2.dex */
public final class FileDataSource extends f {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private RandomAccessFile f26962f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Uri f26963g;

    /* renamed from: h  reason: collision with root package name */
    private long f26964h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f26965i;

    /* loaded from: classes2.dex */
    public static class FileDataSourceException extends IOException {
        public FileDataSourceException(IOException iOException) {
            super(iOException);
        }

        public FileDataSourceException(String str, IOException iOException) {
            super(str, iOException);
        }
    }

    /* loaded from: classes2.dex */
    public static final class a implements m.a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private p0 f26966a;

        @Override // com.google.android.exoplayer2.upstream.m.a
        /* renamed from: d */
        public FileDataSource a() {
            FileDataSource fileDataSource = new FileDataSource();
            p0 p0Var = this.f26966a;
            if (p0Var != null) {
                fileDataSource.e(p0Var);
            }
            return fileDataSource;
        }

        public a e(@Nullable p0 p0Var) {
            this.f26966a = p0Var;
            return this;
        }
    }

    public FileDataSource() {
        super(false);
    }

    private static RandomAccessFile x(Uri uri) throws FileDataSourceException {
        try {
            return new RandomAccessFile((String) com.google.android.exoplayer2.util.a.g(uri.getPath()), "r");
        } catch (FileNotFoundException e4) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new FileDataSourceException(e4);
            }
            throw new FileDataSourceException(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e4);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public long a(o oVar) throws FileDataSourceException {
        try {
            Uri uri = oVar.f27288a;
            this.f26963g = uri;
            v(oVar);
            RandomAccessFile x9 = x(uri);
            this.f26962f = x9;
            x9.seek(oVar.f27294g);
            long j4 = oVar.f27295h;
            if (j4 == -1) {
                j4 = this.f26962f.length() - oVar.f27294g;
            }
            this.f26964h = j4;
            if (j4 >= 0) {
                this.f26965i = true;
                w(oVar);
                return this.f26964h;
            }
            throw new DataSourceException(0);
        } catch (IOException e4) {
            throw new FileDataSourceException(e4);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.m
    @Nullable
    public Uri c() {
        return this.f26963g;
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void close() throws FileDataSourceException {
        this.f26963g = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f26962f;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
            } catch (IOException e4) {
                throw new FileDataSourceException(e4);
            }
        } finally {
            this.f26962f = null;
            if (this.f26965i) {
                this.f26965i = false;
                u();
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.i
    public int read(byte[] bArr, int i4, int i10) throws FileDataSourceException {
        if (i10 == 0) {
            return 0;
        }
        if (this.f26964h == 0) {
            return -1;
        }
        try {
            int read = ((RandomAccessFile) z0.k(this.f26962f)).read(bArr, i4, (int) Math.min(this.f26964h, i10));
            if (read > 0) {
                this.f26964h -= read;
                t(read);
            }
            return read;
        } catch (IOException e4) {
            throw new FileDataSourceException(e4);
        }
    }
}
