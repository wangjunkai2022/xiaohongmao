package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import android.util.Base64;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.net.URLDecoder;

/* compiled from: DataSchemeDataSource.java */
/* loaded from: classes2.dex */
public final class j extends f {

    /* renamed from: j  reason: collision with root package name */
    public static final String f27254j = "data";
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private o f27255f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private byte[] f27256g;

    /* renamed from: h  reason: collision with root package name */
    private int f27257h;

    /* renamed from: i  reason: collision with root package name */
    private int f27258i;

    public j() {
        super(false);
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public long a(o oVar) throws IOException {
        v(oVar);
        this.f27255f = oVar;
        Uri uri = oVar.f27288a;
        String scheme = uri.getScheme();
        if (!"data".equals(scheme)) {
            String valueOf = String.valueOf(scheme);
            throw new ParserException(valueOf.length() != 0 ? "Unsupported scheme: ".concat(valueOf) : new String("Unsupported scheme: "));
        }
        String[] l12 = z0.l1(uri.getSchemeSpecificPart(), ",");
        if (l12.length == 2) {
            String str = l12[1];
            if (l12[0].contains(";base64")) {
                try {
                    this.f27256g = Base64.decode(str, 0);
                } catch (IllegalArgumentException e4) {
                    String valueOf2 = String.valueOf(str);
                    throw new ParserException(valueOf2.length() != 0 ? "Error while parsing Base64 encoded string: ".concat(valueOf2) : new String("Error while parsing Base64 encoded string: "), e4);
                }
            } else {
                this.f27256g = z0.u0(URLDecoder.decode(str, com.google.common.base.e.f32188a.name()));
            }
            long j4 = oVar.f27294g;
            byte[] bArr = this.f27256g;
            if (j4 <= bArr.length) {
                int i4 = (int) j4;
                this.f27257h = i4;
                int length = bArr.length - i4;
                this.f27258i = length;
                long j10 = oVar.f27295h;
                if (j10 != -1) {
                    this.f27258i = (int) Math.min(length, j10);
                }
                w(oVar);
                long j11 = oVar.f27295h;
                return j11 != -1 ? j11 : this.f27258i;
            }
            this.f27256g = null;
            throw new DataSourceException(0);
        }
        String valueOf3 = String.valueOf(uri);
        StringBuilder sb = new StringBuilder(valueOf3.length() + 23);
        sb.append("Unexpected URI format: ");
        sb.append(valueOf3);
        throw new ParserException(sb.toString());
    }

    @Override // com.google.android.exoplayer2.upstream.m
    @Nullable
    public Uri c() {
        o oVar = this.f27255f;
        if (oVar != null) {
            return oVar.f27288a;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void close() {
        if (this.f27256g != null) {
            this.f27256g = null;
            u();
        }
        this.f27255f = null;
    }

    @Override // com.google.android.exoplayer2.upstream.i
    public int read(byte[] bArr, int i4, int i10) {
        if (i10 == 0) {
            return 0;
        }
        int i11 = this.f27258i;
        if (i11 == 0) {
            return -1;
        }
        int min = Math.min(i10, i11);
        System.arraycopy(z0.k(this.f27256g), this.f27257h, bArr, i4, min);
        this.f27257h += min;
        this.f27258i -= min;
        t(min);
        return min;
    }
}
