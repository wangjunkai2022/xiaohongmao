package com.google.android.play.core.assetpacks;

import io.sentry.instrumentation.file.h;
import io.sentry.instrumentation.file.l;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.Properties;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class y3 {

    /* renamed from: h  reason: collision with root package name */
    private static final com.google.android.play.core.internal.h f31687h = new com.google.android.play.core.internal.h("SliceMetadataManager");

    /* renamed from: b  reason: collision with root package name */
    private final p0 f31689b;

    /* renamed from: c  reason: collision with root package name */
    private final String f31690c;

    /* renamed from: d  reason: collision with root package name */
    private final int f31691d;

    /* renamed from: e  reason: collision with root package name */
    private final long f31692e;

    /* renamed from: f  reason: collision with root package name */
    private final String f31693f;

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f31688a = new byte[8192];

    /* renamed from: g  reason: collision with root package name */
    private int f31694g = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y3(p0 p0Var, String str, int i4, long j4, String str2) {
        this.f31689b = p0Var;
        this.f31690c = str;
        this.f31691d = i4;
        this.f31692e = j4;
        this.f31693f = str2;
    }

    private final File n() {
        File F = this.f31689b.F(this.f31690c, this.f31691d, this.f31692e, this.f31693f);
        if (!F.exists()) {
            F.mkdirs();
        }
        return F;
    }

    private final File o() throws IOException {
        File E = this.f31689b.E(this.f31690c, this.f31691d, this.f31692e, this.f31693f);
        E.getParentFile().mkdirs();
        E.createNewFile();
        return E;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() throws IOException {
        File E = this.f31689b.E(this.f31690c, this.f31691d, this.f31692e, this.f31693f);
        if (E.exists()) {
            FileInputStream a10 = h.b.a(new FileInputStream(E), E);
            try {
                Properties properties = new Properties();
                properties.load(a10);
                a10.close();
                if (Integer.parseInt(properties.getProperty("fileStatus", "-1")) == 4) {
                    return -1;
                }
                if (properties.getProperty("previousChunk") != null) {
                    return Integer.parseInt(properties.getProperty("previousChunk")) + 1;
                }
                throw new t1("Slice checkpoint file corrupt.");
            } catch (Throwable th) {
                try {
                    a10.close();
                } catch (Throwable unused) {
                }
                throw th;
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final x3 b() throws IOException {
        File E = this.f31689b.E(this.f31690c, this.f31691d, this.f31692e, this.f31693f);
        if (E.exists()) {
            Properties properties = new Properties();
            FileInputStream a10 = h.b.a(new FileInputStream(E), E);
            try {
                properties.load(a10);
                a10.close();
                if (properties.getProperty("fileStatus") != null && properties.getProperty("previousChunk") != null) {
                    try {
                        int parseInt = Integer.parseInt(properties.getProperty("fileStatus"));
                        String property = properties.getProperty("fileName");
                        long parseLong = Long.parseLong(properties.getProperty("fileOffset", "-1"));
                        long parseLong2 = Long.parseLong(properties.getProperty("remainingBytes", "-1"));
                        int parseInt2 = Integer.parseInt(properties.getProperty("previousChunk"));
                        this.f31694g = Integer.parseInt(properties.getProperty("metadataFileCounter", "0"));
                        return new x0(parseInt, property, parseLong, parseLong2, parseInt2);
                    } catch (NumberFormatException e4) {
                        throw new t1("Slice checkpoint file corrupt.", e4);
                    }
                }
                throw new t1("Slice checkpoint file corrupt.");
            } catch (Throwable th) {
                try {
                    a10.close();
                } catch (Throwable unused) {
                }
                throw th;
            }
        }
        throw new t1("Slice checkpoint file does not exist.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File c() {
        return new File(n(), String.format("%s-NAM.dat", Integer.valueOf(this.f31694g)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(InputStream inputStream, long j4) throws IOException {
        int read;
        RandomAccessFile randomAccessFile = new RandomAccessFile(c(), "rw");
        try {
            randomAccessFile.seek(j4);
            do {
                read = inputStream.read(this.f31688a);
                if (read > 0) {
                    randomAccessFile.write(this.f31688a, 0, read);
                }
            } while (read == 8192);
            randomAccessFile.close();
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e(long j4, byte[] bArr, int i4, int i10) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(c(), "rw");
        try {
            randomAccessFile.seek(j4);
            randomAccessFile.write(bArr, i4, i10);
            randomAccessFile.close();
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f(int i4) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "3");
        properties.put("fileOffset", String.valueOf(c().length()));
        properties.put("previousChunk", String.valueOf(i4));
        properties.put("metadataFileCounter", String.valueOf(this.f31694g));
        File o9 = o();
        FileOutputStream a10 = l.b.a(new FileOutputStream(o9), o9);
        try {
            properties.store(a10, (String) null);
            a10.close();
        } catch (Throwable th) {
            try {
                a10.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g(String str, long j4, long j10, int i4) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "1");
        properties.put("fileName", str);
        properties.put("fileOffset", String.valueOf(j4));
        properties.put("remainingBytes", String.valueOf(j10));
        properties.put("previousChunk", String.valueOf(i4));
        properties.put("metadataFileCounter", String.valueOf(this.f31694g));
        File o9 = o();
        FileOutputStream a10 = l.b.a(new FileOutputStream(o9), o9);
        try {
            properties.store(a10, (String) null);
            a10.close();
        } catch (Throwable th) {
            try {
                a10.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h(byte[] bArr, int i4) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "2");
        properties.put("previousChunk", String.valueOf(i4));
        properties.put("metadataFileCounter", String.valueOf(this.f31694g));
        File o9 = o();
        FileOutputStream a10 = l.b.a(new FileOutputStream(o9), o9);
        try {
            properties.store(a10, (String) null);
            a10.close();
            File D = this.f31689b.D(this.f31690c, this.f31691d, this.f31692e, this.f31693f);
            if (D.exists()) {
                D.delete();
            }
            a10 = l.b.a(new FileOutputStream(D), D);
            try {
                a10.write(bArr);
            } finally {
                try {
                    a10.close();
                } catch (Throwable unused) {
                }
            }
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void i(int i4) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", g5.h.f67840d);
        properties.put("previousChunk", String.valueOf(i4));
        properties.put("metadataFileCounter", String.valueOf(this.f31694g));
        File o9 = o();
        FileOutputStream a10 = l.b.a(new FileOutputStream(o9), o9);
        try {
            properties.store(a10, (String) null);
            a10.close();
        } catch (Throwable th) {
            try {
                a10.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void j(byte[] bArr) throws IOException {
        this.f31694g++;
        File file = new File(n(), String.format("%s-LFH.dat", Integer.valueOf(this.f31694g)));
        try {
            FileOutputStream a10 = l.b.a(new FileOutputStream(file), file);
            a10.write(bArr);
            a10.close();
        } catch (IOException e4) {
            throw new t1("Could not write metadata file.", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k(byte[] bArr, InputStream inputStream) throws IOException {
        this.f31694g++;
        File c10 = c();
        FileOutputStream a10 = l.b.a(new FileOutputStream(c10), c10);
        try {
            a10.write(bArr);
            int read = inputStream.read(this.f31688a);
            while (read > 0) {
                a10.write(this.f31688a, 0, read);
                read = inputStream.read(this.f31688a);
            }
            a10.close();
        } catch (Throwable th) {
            try {
                a10.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void l(byte[] bArr, int i4, int i10) throws IOException {
        this.f31694g++;
        File c10 = c();
        FileOutputStream a10 = l.b.a(new FileOutputStream(c10), c10);
        try {
            a10.write(bArr, 0, i10);
            a10.close();
        } catch (Throwable th) {
            try {
                a10.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean m() {
        File E = this.f31689b.E(this.f31690c, this.f31691d, this.f31692e, this.f31693f);
        if (E.exists()) {
            try {
                FileInputStream a10 = h.b.a(new FileInputStream(E), E);
                Properties properties = new Properties();
                properties.load(a10);
                a10.close();
                if (properties.getProperty("fileStatus") != null) {
                    return Integer.parseInt(properties.getProperty("fileStatus")) == 4;
                }
                f31687h.b("Slice checkpoint file corrupt while checking if extraction finished.", new Object[0]);
                return false;
            } catch (IOException e4) {
                f31687h.b("Could not read checkpoint while checking if extraction finished. %s", e4);
                return false;
            }
        }
        return false;
    }
}
