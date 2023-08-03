package com.facebook.soloader;

import android.content.Context;
import android.os.Parcel;
import android.util.Log;
import com.facebook.soloader.n;
import com.facebook.soloader.x;
import java.io.File;
import java.io.IOException;
import java.util.zip.ZipEntry;

/* compiled from: ApkSoSource.java */
/* loaded from: classes.dex */
public class a extends n {
    private static final String C = "ApkSoSource";
    public static final int D = 1;
    private static final byte E = 2;
    private static final byte F = 0;
    private static final byte G = 1;
    private static final byte H = 2;
    private final int B;

    /* compiled from: ApkSoSource.java */
    /* renamed from: com.facebook.soloader.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    protected class C0113a extends n.c {

        /* renamed from: e  reason: collision with root package name */
        private File f13450e;

        /* renamed from: f  reason: collision with root package name */
        private final int f13451f;

        C0113a(n nVar) throws IOException {
            super(nVar);
            this.f13450e = new File(a.this.f13567n.getApplicationInfo().nativeLibraryDir);
            this.f13451f = a.this.B;
        }

        @Override // com.facebook.soloader.n.c
        protected boolean k(ZipEntry zipEntry, String str) {
            String str2;
            String name = zipEntry.getName();
            boolean z9 = false;
            if (str.equals(a.this.f13568o)) {
                a.this.f13568o = null;
                str2 = String.format("allowing consideration of corrupted lib %s", str);
            } else if ((this.f13451f & 1) == 0) {
                str2 = "allowing consideration of " + name + ": self-extraction preferred";
            } else {
                File file = new File(this.f13450e, str);
                if (!file.isFile()) {
                    str2 = String.format("allowing considering of %s: %s not in system lib dir", name, str);
                } else {
                    long length = file.length();
                    long size = zipEntry.getSize();
                    if (length != size) {
                        str2 = String.format("allowing consideration of %s: sysdir file length is %s, but the file is %s bytes long in the APK", file, Long.valueOf(length), Long.valueOf(size));
                    } else {
                        str2 = "not allowing consideration of " + name + ": deferring to libdir";
                        Log.d(a.C, str2);
                        return z9;
                    }
                }
            }
            z9 = true;
            Log.d(a.C, str2);
            return z9;
        }
    }

    public a(Context context, String str, int i4) {
        this(context, new File(context.getApplicationInfo().sourceDir), str, i4);
    }

    @Override // com.facebook.soloader.x
    protected byte[] o() throws IOException {
        File canonicalFile = this.f13533z.getCanonicalFile();
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeByte((byte) 2);
            obtain.writeString(canonicalFile.getPath());
            obtain.writeLong(canonicalFile.lastModified());
            obtain.writeInt(SysUtil.g(this.f13567n));
            if ((this.B & 1) == 0) {
                obtain.writeByte((byte) 0);
                return obtain.marshall();
            }
            String str = this.f13567n.getApplicationInfo().nativeLibraryDir;
            if (str == null) {
                obtain.writeByte((byte) 1);
                return obtain.marshall();
            }
            File canonicalFile2 = new File(str).getCanonicalFile();
            if (!canonicalFile2.exists()) {
                obtain.writeByte((byte) 1);
                return obtain.marshall();
            }
            obtain.writeByte((byte) 2);
            obtain.writeString(canonicalFile2.getPath());
            obtain.writeLong(canonicalFile2.lastModified());
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.facebook.soloader.n, com.facebook.soloader.x
    protected x.f r() throws IOException {
        return new C0113a(this);
    }

    public a(Context context, File file, String str, int i4) {
        super(context, str, file, "^lib/([^/]+)/([^/]+\\.so)$");
        this.B = i4;
    }
}
