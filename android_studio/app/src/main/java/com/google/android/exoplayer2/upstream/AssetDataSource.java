package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public final class AssetDataSource extends f {

    /* renamed from: f  reason: collision with root package name */
    private final AssetManager f26951f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Uri f26952g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private InputStream f26953h;

    /* renamed from: i  reason: collision with root package name */
    private long f26954i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f26955j;

    /* loaded from: classes2.dex */
    public static final class AssetDataSourceException extends IOException {
        public AssetDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public AssetDataSource(Context context) {
        super(false);
        this.f26951f = context.getAssets();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public long a(o oVar) throws AssetDataSourceException {
        try {
            Uri uri = oVar.f27288a;
            this.f26952g = uri;
            String str = (String) com.google.android.exoplayer2.util.a.g(uri.getPath());
            if (str.startsWith("/android_asset/")) {
                str = str.substring(15);
            } else if (str.startsWith("/")) {
                str = str.substring(1);
            }
            v(oVar);
            InputStream open = this.f26951f.open(str, 1);
            this.f26953h = open;
            if (open.skip(oVar.f27294g) >= oVar.f27294g) {
                long j4 = oVar.f27295h;
                if (j4 != -1) {
                    this.f26954i = j4;
                } else {
                    long available = this.f26953h.available();
                    this.f26954i = available;
                    if (available == 2147483647L) {
                        this.f26954i = -1L;
                    }
                }
                this.f26955j = true;
                w(oVar);
                return this.f26954i;
            }
            throw new DataSourceException(0);
        } catch (IOException e4) {
            throw new AssetDataSourceException(e4);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.m
    @Nullable
    public Uri c() {
        return this.f26952g;
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void close() throws AssetDataSourceException {
        this.f26952g = null;
        try {
            try {
                InputStream inputStream = this.f26953h;
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (IOException e4) {
                throw new AssetDataSourceException(e4);
            }
        } finally {
            this.f26953h = null;
            if (this.f26955j) {
                this.f26955j = false;
                u();
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.i
    public int read(byte[] bArr, int i4, int i10) throws AssetDataSourceException {
        if (i10 == 0) {
            return 0;
        }
        long j4 = this.f26954i;
        if (j4 == 0) {
            return -1;
        }
        if (j4 != -1) {
            try {
                i10 = (int) Math.min(j4, i10);
            } catch (IOException e4) {
                throw new AssetDataSourceException(e4);
            }
        }
        int read = ((InputStream) z0.k(this.f26953h)).read(bArr, i4, i10);
        if (read == -1) {
            return -1;
        }
        long j10 = this.f26954i;
        if (j10 != -1) {
            this.f26954i = j10 - read;
        }
        t(read);
        return read;
    }
}
