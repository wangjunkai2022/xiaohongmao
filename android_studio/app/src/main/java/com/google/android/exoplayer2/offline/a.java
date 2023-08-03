package com.google.android.exoplayer2.offline;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.offline.DownloadRequest;
import com.google.android.exoplayer2.util.z0;
import java.io.DataInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

/* compiled from: ActionFile.java */
@Deprecated
/* loaded from: classes2.dex */
final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final int f24272b = 0;

    /* renamed from: c  reason: collision with root package name */
    private static final String f24273c = "progressive";

    /* renamed from: d  reason: collision with root package name */
    private static final String f24274d = "dash";

    /* renamed from: e  reason: collision with root package name */
    private static final String f24275e = "hls";

    /* renamed from: f  reason: collision with root package name */
    private static final String f24276f = "ss";

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b f24277a;

    public a(File file) {
        this.f24277a = new com.google.android.exoplayer2.util.b(file);
    }

    private static String c(Uri uri, @Nullable String str) {
        return str != null ? str : uri.toString();
    }

    private static String d(String str) {
        char c10;
        int hashCode = str.hashCode();
        if (hashCode == 3680) {
            if (str.equals(f24276f)) {
                c10 = 2;
            }
            c10 = 65535;
        } else if (hashCode == 103407) {
            if (str.equals(f24275e)) {
                c10 = 1;
            }
            c10 = 65535;
        } else if (hashCode != 3075986) {
            if (hashCode == 1131547531 && str.equals(f24273c)) {
                c10 = 3;
            }
            c10 = 65535;
        } else {
            if (str.equals(f24274d)) {
                c10 = 0;
            }
            c10 = 65535;
        }
        return c10 != 0 ? c10 != 1 ? c10 != 2 ? com.google.android.exoplayer2.util.a0.f27479y : com.google.android.exoplayer2.util.a0.f27454l0 : com.google.android.exoplayer2.util.a0.f27452k0 : com.google.android.exoplayer2.util.a0.f27450j0;
    }

    private static DownloadRequest f(DataInputStream dataInputStream) throws IOException {
        byte[] bArr;
        String readUTF = dataInputStream.readUTF();
        int readInt = dataInputStream.readInt();
        Uri parse = Uri.parse(dataInputStream.readUTF());
        boolean readBoolean = dataInputStream.readBoolean();
        int readInt2 = dataInputStream.readInt();
        String str = null;
        if (readInt2 != 0) {
            bArr = new byte[readInt2];
            dataInputStream.readFully(bArr);
        } else {
            bArr = null;
        }
        boolean z9 = true;
        boolean z10 = readInt == 0 && f24273c.equals(readUTF);
        ArrayList arrayList = new ArrayList();
        if (!z10) {
            int readInt3 = dataInputStream.readInt();
            for (int i4 = 0; i4 < readInt3; i4++) {
                arrayList.add(g(readUTF, readInt, dataInputStream));
            }
        }
        if (readInt >= 2 || (!f24274d.equals(readUTF) && !f24275e.equals(readUTF) && !f24276f.equals(readUTF))) {
            z9 = false;
        }
        if (!z9 && dataInputStream.readBoolean()) {
            str = dataInputStream.readUTF();
        }
        String c10 = readInt < 3 ? c(parse, str) : dataInputStream.readUTF();
        if (!readBoolean) {
            return new DownloadRequest.b(c10, parse).e(d(readUTF)).f(arrayList).b(str).c(bArr).a();
        }
        throw new DownloadRequest.UnsupportedRequestException();
    }

    private static StreamKey g(String str, int i4, DataInputStream dataInputStream) throws IOException {
        int i10;
        int readInt;
        int readInt2;
        if ((f24275e.equals(str) || f24276f.equals(str)) && i4 == 0) {
            i10 = 0;
            readInt = dataInputStream.readInt();
            readInt2 = dataInputStream.readInt();
        } else {
            i10 = dataInputStream.readInt();
            readInt = dataInputStream.readInt();
            readInt2 = dataInputStream.readInt();
        }
        return new StreamKey(i10, readInt, readInt2);
    }

    public void a() {
        this.f24277a.a();
    }

    public boolean b() {
        return this.f24277a.c();
    }

    public DownloadRequest[] e() throws IOException {
        if (b()) {
            try {
                InputStream d4 = this.f24277a.d();
                DataInputStream dataInputStream = new DataInputStream(d4);
                int readInt = dataInputStream.readInt();
                if (readInt <= 0) {
                    int readInt2 = dataInputStream.readInt();
                    ArrayList arrayList = new ArrayList();
                    for (int i4 = 0; i4 < readInt2; i4++) {
                        try {
                            arrayList.add(f(dataInputStream));
                        } catch (DownloadRequest.UnsupportedRequestException unused) {
                        }
                    }
                    DownloadRequest[] downloadRequestArr = (DownloadRequest[]) arrayList.toArray(new DownloadRequest[0]);
                    z0.q(d4);
                    return downloadRequestArr;
                }
                StringBuilder sb = new StringBuilder(44);
                sb.append("Unsupported action file version: ");
                sb.append(readInt);
                throw new IOException(sb.toString());
            } catch (Throwable th) {
                z0.q(null);
                throw th;
            }
        }
        return new DownloadRequest[0];
    }
}
