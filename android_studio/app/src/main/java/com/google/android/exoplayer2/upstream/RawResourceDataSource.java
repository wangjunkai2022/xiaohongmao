package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.z0;
import io.sentry.instrumentation.file.h;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;

/* loaded from: classes2.dex */
public final class RawResourceDataSource extends f {

    /* renamed from: m  reason: collision with root package name */
    public static final String f27001m = "rawresource";

    /* renamed from: f  reason: collision with root package name */
    private final Resources f27002f;

    /* renamed from: g  reason: collision with root package name */
    private final String f27003g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Uri f27004h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private AssetFileDescriptor f27005i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private InputStream f27006j;

    /* renamed from: k  reason: collision with root package name */
    private long f27007k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f27008l;

    /* loaded from: classes2.dex */
    public static class RawResourceDataSourceException extends IOException {
        public RawResourceDataSourceException(String str) {
            super(str);
        }

        public RawResourceDataSourceException(Throwable th) {
            super(th);
        }
    }

    public RawResourceDataSource(Context context) {
        super(false);
        this.f27002f = context.getResources();
        this.f27003g = context.getPackageName();
    }

    public static Uri buildRawResourceUri(int i4) {
        StringBuilder sb = new StringBuilder(26);
        sb.append("rawresource:///");
        sb.append(i4);
        return Uri.parse(sb.toString());
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public long a(o oVar) throws RawResourceDataSourceException {
        int parseInt;
        Uri uri = oVar.f27288a;
        this.f27004h = uri;
        if (!TextUtils.equals(f27001m, uri.getScheme()) && (!TextUtils.equals(com.facebook.common.util.f.f11058h, uri.getScheme()) || uri.getPathSegments().size() != 1 || !((String) com.google.android.exoplayer2.util.a.g(uri.getLastPathSegment())).matches("\\d+"))) {
            if (TextUtils.equals(com.facebook.common.util.f.f11058h, uri.getScheme())) {
                String str = (String) com.google.android.exoplayer2.util.a.g(uri.getPath());
                if (str.startsWith("/")) {
                    str = str.substring(1);
                }
                String host = uri.getHost();
                String valueOf = String.valueOf(TextUtils.isEmpty(host) ? "" : String.valueOf(host).concat(":"));
                String valueOf2 = String.valueOf(str);
                parseInt = this.f27002f.getIdentifier(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), "raw", this.f27003g);
                if (parseInt == 0) {
                    throw new RawResourceDataSourceException("Resource not found.");
                }
            } else {
                throw new RawResourceDataSourceException("URI must either use scheme rawresource or android.resource");
            }
        } else {
            try {
                parseInt = Integer.parseInt((String) com.google.android.exoplayer2.util.a.g(uri.getLastPathSegment()));
            } catch (NumberFormatException unused) {
                throw new RawResourceDataSourceException("Resource identifier must be an integer.");
            }
        }
        v(oVar);
        try {
            AssetFileDescriptor openRawResourceFd = this.f27002f.openRawResourceFd(parseInt);
            this.f27005i = openRawResourceFd;
            if (openRawResourceFd != null) {
                long length = openRawResourceFd.getLength();
                FileDescriptor fileDescriptor = openRawResourceFd.getFileDescriptor();
                FileInputStream c10 = h.b.c(new FileInputStream(fileDescriptor), fileDescriptor);
                this.f27006j = c10;
                int i4 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
                if (i4 != 0) {
                    try {
                        if (oVar.f27294g > length) {
                            throw new DataSourceException(0);
                        }
                    } catch (IOException e4) {
                        throw new RawResourceDataSourceException(e4);
                    }
                }
                long startOffset = openRawResourceFd.getStartOffset();
                long skip = c10.skip(oVar.f27294g + startOffset) - startOffset;
                if (skip == oVar.f27294g) {
                    if (i4 == 0) {
                        FileChannel channel = c10.getChannel();
                        if (channel.size() == 0) {
                            this.f27007k = -1L;
                        } else {
                            long size = channel.size() - channel.position();
                            this.f27007k = size;
                            if (size < 0) {
                                throw new DataSourceException(0);
                            }
                        }
                    } else {
                        long j4 = length - skip;
                        this.f27007k = j4;
                        if (j4 < 0) {
                            throw new DataSourceException(0);
                        }
                    }
                    long j10 = oVar.f27295h;
                    if (j10 != -1) {
                        long j11 = this.f27007k;
                        if (j11 != -1) {
                            j10 = Math.min(j11, j10);
                        }
                        this.f27007k = j10;
                    }
                    this.f27008l = true;
                    w(oVar);
                    long j12 = oVar.f27295h;
                    return j12 != -1 ? j12 : this.f27007k;
                }
                throw new DataSourceException(0);
            }
            String valueOf3 = String.valueOf(uri);
            StringBuilder sb = new StringBuilder(valueOf3.length() + 24);
            sb.append("Resource is compressed: ");
            sb.append(valueOf3);
            throw new RawResourceDataSourceException(sb.toString());
        } catch (Resources.NotFoundException e10) {
            throw new RawResourceDataSourceException(e10);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.m
    @Nullable
    public Uri c() {
        return this.f27004h;
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void close() throws RawResourceDataSourceException {
        this.f27004h = null;
        try {
            try {
                InputStream inputStream = this.f27006j;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f27006j = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f27005i;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } catch (IOException e4) {
                        throw new RawResourceDataSourceException(e4);
                    }
                } finally {
                    this.f27005i = null;
                    if (this.f27008l) {
                        this.f27008l = false;
                        u();
                    }
                }
            } catch (Throwable th) {
                this.f27006j = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor2 = this.f27005i;
                        if (assetFileDescriptor2 != null) {
                            assetFileDescriptor2.close();
                        }
                        this.f27005i = null;
                        if (this.f27008l) {
                            this.f27008l = false;
                            u();
                        }
                        throw th;
                    } catch (IOException e10) {
                        throw new RawResourceDataSourceException(e10);
                    }
                } finally {
                    this.f27005i = null;
                    if (this.f27008l) {
                        this.f27008l = false;
                        u();
                    }
                }
            }
        } catch (IOException e11) {
            throw new RawResourceDataSourceException(e11);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.i
    public int read(byte[] bArr, int i4, int i10) throws RawResourceDataSourceException {
        if (i10 == 0) {
            return 0;
        }
        long j4 = this.f27007k;
        if (j4 == 0) {
            return -1;
        }
        if (j4 != -1) {
            try {
                i10 = (int) Math.min(j4, i10);
            } catch (IOException e4) {
                throw new RawResourceDataSourceException(e4);
            }
        }
        int read = ((InputStream) z0.k(this.f27006j)).read(bArr, i4, i10);
        if (read == -1) {
            if (this.f27007k == -1) {
                return -1;
            }
            throw new RawResourceDataSourceException(new EOFException());
        }
        long j10 = this.f27007k;
        if (j10 != -1) {
            this.f27007k = j10 - read;
        }
        t(read);
        return read;
    }
}
