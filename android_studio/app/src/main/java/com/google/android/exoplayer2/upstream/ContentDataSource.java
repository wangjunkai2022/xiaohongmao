package com.google.android.exoplayer2.upstream;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.z0;
import io.sentry.instrumentation.file.h;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* loaded from: classes2.dex */
public final class ContentDataSource extends f {

    /* renamed from: f  reason: collision with root package name */
    private final ContentResolver f26956f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Uri f26957g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private AssetFileDescriptor f26958h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private FileInputStream f26959i;

    /* renamed from: j  reason: collision with root package name */
    private long f26960j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f26961k;

    /* loaded from: classes2.dex */
    public static class ContentDataSourceException extends IOException {
        public ContentDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public ContentDataSource(Context context) {
        super(false);
        this.f26956f = context.getContentResolver();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public long a(o oVar) throws ContentDataSourceException {
        try {
            Uri uri = oVar.f27288a;
            this.f26957g = uri;
            v(oVar);
            AssetFileDescriptor openAssetFileDescriptor = this.f26956f.openAssetFileDescriptor(uri, "r");
            this.f26958h = openAssetFileDescriptor;
            if (openAssetFileDescriptor != null) {
                long length = openAssetFileDescriptor.getLength();
                FileDescriptor fileDescriptor = openAssetFileDescriptor.getFileDescriptor();
                FileInputStream c10 = h.b.c(new FileInputStream(fileDescriptor), fileDescriptor);
                this.f26959i = c10;
                int i4 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
                if (i4 != 0 && oVar.f27294g > length) {
                    throw new DataSourceException(0);
                }
                long startOffset = openAssetFileDescriptor.getStartOffset();
                long skip = c10.skip(oVar.f27294g + startOffset) - startOffset;
                if (skip == oVar.f27294g) {
                    if (i4 == 0) {
                        FileChannel channel = c10.getChannel();
                        long size = channel.size();
                        if (size == 0) {
                            this.f26960j = -1L;
                        } else {
                            long position = size - channel.position();
                            this.f26960j = position;
                            if (position < 0) {
                                throw new DataSourceException(0);
                            }
                        }
                    } else {
                        long j4 = length - skip;
                        this.f26960j = j4;
                        if (j4 < 0) {
                            throw new DataSourceException(0);
                        }
                    }
                    long j10 = oVar.f27295h;
                    if (j10 != -1) {
                        long j11 = this.f26960j;
                        if (j11 != -1) {
                            j10 = Math.min(j11, j10);
                        }
                        this.f26960j = j10;
                    }
                    this.f26961k = true;
                    w(oVar);
                    long j12 = oVar.f27295h;
                    return j12 != -1 ? j12 : this.f26960j;
                }
                throw new DataSourceException(0);
            }
            String valueOf = String.valueOf(uri);
            StringBuilder sb = new StringBuilder(valueOf.length() + 36);
            sb.append("Could not open file descriptor for: ");
            sb.append(valueOf);
            throw new FileNotFoundException(sb.toString());
        } catch (IOException e4) {
            throw new ContentDataSourceException(e4);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.m
    @Nullable
    public Uri c() {
        return this.f26957g;
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void close() throws ContentDataSourceException {
        this.f26957g = null;
        try {
            try {
                FileInputStream fileInputStream = this.f26959i;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.f26959i = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f26958h;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } catch (IOException e4) {
                        throw new ContentDataSourceException(e4);
                    }
                } finally {
                    this.f26958h = null;
                    if (this.f26961k) {
                        this.f26961k = false;
                        u();
                    }
                }
            } catch (Throwable th) {
                this.f26959i = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor2 = this.f26958h;
                        if (assetFileDescriptor2 != null) {
                            assetFileDescriptor2.close();
                        }
                        this.f26958h = null;
                        if (this.f26961k) {
                            this.f26961k = false;
                            u();
                        }
                        throw th;
                    } catch (IOException e10) {
                        throw new ContentDataSourceException(e10);
                    }
                } finally {
                    this.f26958h = null;
                    if (this.f26961k) {
                        this.f26961k = false;
                        u();
                    }
                }
            }
        } catch (IOException e11) {
            throw new ContentDataSourceException(e11);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.i
    public int read(byte[] bArr, int i4, int i10) throws ContentDataSourceException {
        if (i10 == 0) {
            return 0;
        }
        long j4 = this.f26960j;
        if (j4 == 0) {
            return -1;
        }
        if (j4 != -1) {
            try {
                i10 = (int) Math.min(j4, i10);
            } catch (IOException e4) {
                throw new ContentDataSourceException(e4);
            }
        }
        int read = ((FileInputStream) z0.k(this.f26959i)).read(bArr, i4, i10);
        if (read == -1) {
            return -1;
        }
        long j10 = this.f26960j;
        if (j10 != -1) {
            this.f26960j = j10 - read;
        }
        t(read);
        return read;
    }
}
