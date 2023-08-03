package com.facebook.soloader;

import android.content.Context;
import android.os.Parcel;
import android.os.StrictMode;
import android.util.Log;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.HashMap;
import java.util.Map;

/* compiled from: UnpackingSoSource.java */
/* loaded from: classes.dex */
public abstract class x extends com.facebook.soloader.c {

    /* renamed from: r  reason: collision with root package name */
    private static final String f13559r = "fb-UnpackingSoSource";

    /* renamed from: s  reason: collision with root package name */
    private static final String f13560s = "dso_state";

    /* renamed from: t  reason: collision with root package name */
    private static final String f13561t = "dso_lock";

    /* renamed from: u  reason: collision with root package name */
    private static final String f13562u = "dso_deps";

    /* renamed from: v  reason: collision with root package name */
    private static final String f13563v = "dso_manifest";

    /* renamed from: w  reason: collision with root package name */
    private static final byte f13564w = 0;

    /* renamed from: x  reason: collision with root package name */
    private static final byte f13565x = 1;

    /* renamed from: y  reason: collision with root package name */
    private static final byte f13566y = 1;

    /* renamed from: n  reason: collision with root package name */
    protected final Context f13567n;
    @r7.h

    /* renamed from: o  reason: collision with root package name */
    protected String f13568o;
    @r7.h

    /* renamed from: p  reason: collision with root package name */
    private String[] f13569p;

    /* renamed from: q  reason: collision with root package name */
    private final Map<String, Object> f13570q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ File f13571a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ byte[] f13572b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ c f13573c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ File f13574d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ o f13575e;

        a(File file, byte[] bArr, c cVar, File file2, o oVar) {
            this.f13571a = file;
            this.f13572b = bArr;
            this.f13573c = cVar;
            this.f13574d = file2;
            this.f13575e = oVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Log.v(x.f13559r, "starting syncer worker");
                RandomAccessFile randomAccessFile = new RandomAccessFile(this.f13571a, "rw");
                try {
                    randomAccessFile.write(this.f13572b);
                    randomAccessFile.setLength(randomAccessFile.getFilePointer());
                    randomAccessFile.close();
                    RandomAccessFile randomAccessFile2 = new RandomAccessFile(new File(x.this.f13458j, x.f13563v), "rw");
                    try {
                        this.f13573c.b(randomAccessFile2);
                        randomAccessFile2.close();
                        SysUtil.f(x.this.f13458j);
                        x.w(this.f13574d, (byte) 1);
                        Log.v(x.f13559r, "releasing dso store lock for " + x.this.f13458j + " (from syncer thread)");
                        this.f13575e.close();
                    } finally {
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            randomAccessFile.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }
    }

    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f13577a;

        /* renamed from: b  reason: collision with root package name */
        public final String f13578b;

        public b(String str, String str2) {
            this.f13577a = str;
            this.f13578b = str2;
        }
    }

    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final b[] f13579a;

        public c(b[] bVarArr) {
            this.f13579a = bVarArr;
        }

        static final c a(DataInput dataInput) throws IOException {
            if (dataInput.readByte() == 1) {
                int readInt = dataInput.readInt();
                if (readInt >= 0) {
                    b[] bVarArr = new b[readInt];
                    for (int i4 = 0; i4 < readInt; i4++) {
                        bVarArr[i4] = new b(dataInput.readUTF(), dataInput.readUTF());
                    }
                    return new c(bVarArr);
                }
                throw new RuntimeException("illegal number of shared libraries");
            }
            throw new RuntimeException("wrong dso manifest version");
        }

        public final void b(DataOutput dataOutput) throws IOException {
            dataOutput.writeByte(1);
            dataOutput.writeInt(this.f13579a.length);
            int i4 = 0;
            while (true) {
                b[] bVarArr = this.f13579a;
                if (i4 >= bVarArr.length) {
                    return;
                }
                dataOutput.writeUTF(bVarArr[i4].f13577a);
                dataOutput.writeUTF(this.f13579a[i4].f13578b);
                i4++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes.dex */
    public static final class d implements Closeable {

        /* renamed from: a  reason: collision with root package name */
        public final b f13580a;

        /* renamed from: b  reason: collision with root package name */
        public final InputStream f13581b;

        public d(b bVar, InputStream inputStream) {
            this.f13580a = bVar;
            this.f13581b = inputStream;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f13581b.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes.dex */
    public static abstract class e implements Closeable {
        public abstract boolean a();

        public abstract d b() throws IOException;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes.dex */
    public static abstract class f implements Closeable {
        protected abstract c a() throws IOException;

        protected abstract e b() throws IOException;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public x(Context context, String str) {
        super(q(context, str), 1);
        this.f13570q = new HashMap();
        this.f13567n = context;
    }

    private void l(b[] bVarArr) throws IOException {
        String[] list = this.f13458j.list();
        if (list != null) {
            for (String str : list) {
                if (!str.equals(f13560s) && !str.equals(f13561t) && !str.equals(f13562u) && !str.equals(f13563v)) {
                    boolean z9 = false;
                    for (int i4 = 0; !z9 && i4 < bVarArr.length; i4++) {
                        if (bVarArr[i4].f13577a.equals(str)) {
                            z9 = true;
                        }
                    }
                    if (!z9) {
                        File file = new File(this.f13458j, str);
                        Log.v(f13559r, "deleting unaccounted-for file " + file);
                        SysUtil.c(file);
                    }
                }
            }
            return;
        }
        throw new IOException("unable to list directory " + this.f13458j);
    }

    private void m(d dVar, byte[] bArr) throws IOException {
        boolean writable;
        Log.i(f13559r, "extracting DSO " + dVar.f13580a.f13577a);
        try {
            if (this.f13458j.setWritable(true)) {
                n(dVar, bArr);
                if (writable) {
                    return;
                }
                return;
            }
            throw new IOException("cannot make directory writable for us: " + this.f13458j);
        } finally {
            if (!this.f13458j.setWritable(false)) {
                Log.w(f13559r, "error removing " + this.f13458j.getCanonicalPath() + " write permission");
            }
        }
    }

    private void n(d dVar, byte[] bArr) throws IOException {
        RandomAccessFile randomAccessFile;
        File file = new File(this.f13458j, dVar.f13580a.f13577a);
        RandomAccessFile randomAccessFile2 = null;
        try {
            try {
                if (file.exists() && !file.setWritable(true)) {
                    Log.w(f13559r, "error adding write permission to: " + file);
                }
                try {
                    randomAccessFile = new RandomAccessFile(file, "rw");
                } catch (IOException e4) {
                    Log.w(f13559r, "error overwriting " + file + " trying to delete and start over", e4);
                    SysUtil.c(file);
                    randomAccessFile = new RandomAccessFile(file, "rw");
                }
                randomAccessFile2 = randomAccessFile;
                int available = dVar.f13581b.available();
                if (available > 1) {
                    SysUtil.d(randomAccessFile2.getFD(), available);
                }
                SysUtil.a(randomAccessFile2, dVar.f13581b, Integer.MAX_VALUE, bArr);
                randomAccessFile2.setLength(randomAccessFile2.getFilePointer());
                if (file.setExecutable(true, false)) {
                    if (!file.setWritable(false)) {
                        Log.w(f13559r, "error removing " + file + " write permission");
                    }
                    randomAccessFile2.close();
                    return;
                }
                throw new IOException("cannot make file executable: " + file);
            } catch (IOException e10) {
                SysUtil.c(file);
                throw e10;
            }
        } catch (Throwable th) {
            if (!file.setWritable(false)) {
                Log.w(f13559r, "error removing " + file + " write permission");
            }
            if (randomAccessFile2 != null) {
                randomAccessFile2.close();
            }
            throw th;
        }
    }

    private Object p(String str) {
        Object obj;
        synchronized (this.f13570q) {
            obj = this.f13570q.get(str);
            if (obj == null) {
                obj = new Object();
                this.f13570q.put(str, obj);
            }
        }
        return obj;
    }

    public static File q(Context context, String str) {
        return new File(context.getApplicationInfo().dataDir + "/" + str);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00a2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean t(com.facebook.soloader.o r12, int r13, byte[] r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 254
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.soloader.x.t(com.facebook.soloader.o, int, byte[]):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0043 A[Catch: all -> 0x0036, TryCatch #5 {all -> 0x0036, blocks: (B:4:0x0031, B:13:0x0043, B:14:0x004a, B:15:0x0054, B:17:0x005a, B:42:0x00a0, B:9:0x003a, B:20:0x0062, B:22:0x0067, B:24:0x0075, B:27:0x0086, B:31:0x008d), top: B:53:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005a A[Catch: all -> 0x0036, TRY_LEAVE, TryCatch #5 {all -> 0x0036, blocks: (B:4:0x0031, B:13:0x0043, B:14:0x004a, B:15:0x0054, B:17:0x005a, B:42:0x00a0, B:9:0x003a, B:20:0x0062, B:22:0x0067, B:24:0x0075, B:27:0x0086, B:31:0x008d), top: B:53:0x0031 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void u(byte r10, com.facebook.soloader.x.c r11, com.facebook.soloader.x.e r12) throws java.io.IOException {
        /*
            r9 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "regenerating DSO store "
            r0.append(r1)
            java.lang.Class r1 = r9.getClass()
            java.lang.String r1 = r1.getName()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "fb-UnpackingSoSource"
            android.util.Log.v(r1, r0)
            java.io.File r0 = new java.io.File
            java.io.File r2 = r9.f13458j
            java.lang.String r3 = "dso_manifest"
            r0.<init>(r2, r3)
            java.io.RandomAccessFile r2 = new java.io.RandomAccessFile
            java.lang.String r3 = "rw"
            r2.<init>(r0, r3)
            r0 = 1
            if (r10 != r0) goto L3f
            com.facebook.soloader.x$c r10 = com.facebook.soloader.x.c.a(r2)     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L39
            goto L40
        L36:
            r10 = move-exception
            goto Lc4
        L39:
            r10 = move-exception
            java.lang.String r3 = "error reading existing DSO manifest"
            android.util.Log.i(r1, r3, r10)     // Catch: java.lang.Throwable -> L36
        L3f:
            r10 = 0
        L40:
            r3 = 0
            if (r10 != 0) goto L4a
            com.facebook.soloader.x$c r10 = new com.facebook.soloader.x$c     // Catch: java.lang.Throwable -> L36
            com.facebook.soloader.x$b[] r4 = new com.facebook.soloader.x.b[r3]     // Catch: java.lang.Throwable -> L36
            r10.<init>(r4)     // Catch: java.lang.Throwable -> L36
        L4a:
            com.facebook.soloader.x$b[] r11 = r11.f13579a     // Catch: java.lang.Throwable -> L36
            r9.l(r11)     // Catch: java.lang.Throwable -> L36
            r11 = 32768(0x8000, float:4.5918E-41)
            byte[] r11 = new byte[r11]     // Catch: java.lang.Throwable -> L36
        L54:
            boolean r4 = r12.a()     // Catch: java.lang.Throwable -> L36
            if (r4 == 0) goto La4
            com.facebook.soloader.x$d r4 = r12.b()     // Catch: java.lang.Throwable -> L36
            r5 = 1
            r6 = 0
        L60:
            if (r5 == 0) goto L8b
            com.facebook.soloader.x$b[] r7 = r10.f13579a     // Catch: java.lang.Throwable -> L89
            int r8 = r7.length     // Catch: java.lang.Throwable -> L89
            if (r6 >= r8) goto L8b
            r7 = r7[r6]     // Catch: java.lang.Throwable -> L89
            java.lang.String r7 = r7.f13577a     // Catch: java.lang.Throwable -> L89
            com.facebook.soloader.x$b r8 = r4.f13580a     // Catch: java.lang.Throwable -> L89
            java.lang.String r8 = r8.f13577a     // Catch: java.lang.Throwable -> L89
            boolean r7 = r7.equals(r8)     // Catch: java.lang.Throwable -> L89
            if (r7 == 0) goto L86
            com.facebook.soloader.x$b[] r7 = r10.f13579a     // Catch: java.lang.Throwable -> L89
            r7 = r7[r6]     // Catch: java.lang.Throwable -> L89
            java.lang.String r7 = r7.f13578b     // Catch: java.lang.Throwable -> L89
            com.facebook.soloader.x$b r8 = r4.f13580a     // Catch: java.lang.Throwable -> L89
            java.lang.String r8 = r8.f13578b     // Catch: java.lang.Throwable -> L89
            boolean r7 = r7.equals(r8)     // Catch: java.lang.Throwable -> L89
            if (r7 == 0) goto L86
            r5 = 0
        L86:
            int r6 = r6 + 1
            goto L60
        L89:
            r10 = move-exception
            goto L91
        L8b:
            if (r5 == 0) goto L9e
            r9.m(r4, r11)     // Catch: java.lang.Throwable -> L89
            goto L9e
        L91:
            throw r10     // Catch: java.lang.Throwable -> L92
        L92:
            r11 = move-exception
            if (r4 == 0) goto L9d
            r4.close()     // Catch: java.lang.Throwable -> L99
            goto L9d
        L99:
            r12 = move-exception
            r10.addSuppressed(r12)     // Catch: java.lang.Throwable -> L36
        L9d:
            throw r11     // Catch: java.lang.Throwable -> L36
        L9e:
            if (r4 == 0) goto L54
            r4.close()     // Catch: java.lang.Throwable -> L36
            goto L54
        La4:
            r2.close()
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r11 = "Finished regenerating DSO store "
            r10.append(r11)
            java.lang.Class r11 = r9.getClass()
            java.lang.String r11 = r11.getName()
            r10.append(r11)
            java.lang.String r10 = r10.toString()
            android.util.Log.v(r1, r10)
            return
        Lc4:
            throw r10     // Catch: java.lang.Throwable -> Lc5
        Lc5:
            r11 = move-exception
            r2.close()     // Catch: java.lang.Throwable -> Lca
            goto Lce
        Lca:
            r12 = move-exception
            r10.addSuppressed(r12)
        Lce:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.soloader.x.u(byte, com.facebook.soloader.x$c, com.facebook.soloader.x$e):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void w(File file, byte b10) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        try {
            randomAccessFile.seek(0L);
            randomAccessFile.write(b10);
            randomAccessFile.setLength(randomAccessFile.getFilePointer());
            randomAccessFile.getFD().sync();
            randomAccessFile.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    @Override // com.facebook.soloader.v
    public String[] d() {
        String[] strArr = this.f13569p;
        return strArr == null ? super.d() : strArr;
    }

    @Override // com.facebook.soloader.c, com.facebook.soloader.v
    public int e(String str, int i4, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        int j4;
        synchronized (p(str)) {
            j4 = j(str, i4, this.f13458j, threadPolicy);
        }
        return j4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.soloader.v
    public void f(int i4) throws IOException {
        SysUtil.k(this.f13458j);
        o a10 = o.a(new File(this.f13458j, f13561t));
        try {
            Log.v(f13559r, "locked dso store " + this.f13458j);
            if (t(a10, i4, o())) {
                a10 = null;
            } else {
                Log.i(f13559r, "dso store is up-to-date: " + this.f13458j);
            }
        } finally {
            if (a10 != null) {
                Log.v(f13559r, "releasing dso store lock for " + this.f13458j);
                a10.close();
            } else {
                Log.v(f13559r, "not releasing dso store lock for " + this.f13458j + " (syncer thread started)");
            }
        }
    }

    protected byte[] o() throws IOException {
        Parcel obtain = Parcel.obtain();
        f r9 = r();
        try {
            b[] bVarArr = r9.a().f13579a;
            obtain.writeByte((byte) 1);
            obtain.writeInt(bVarArr.length);
            for (int i4 = 0; i4 < bVarArr.length; i4++) {
                obtain.writeString(bVarArr[i4].f13577a);
                obtain.writeString(bVarArr[i4].f13578b);
            }
            r9.close();
            byte[] marshall = obtain.marshall();
            obtain.recycle();
            return marshall;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (r9 != null) {
                    try {
                        r9.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    protected abstract f r() throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void s(String str) throws IOException {
        synchronized (p(str)) {
            this.f13568o = str;
            f(2);
        }
    }

    public void v(String[] strArr) {
        this.f13569p = strArr;
    }

    protected x(Context context, File file) {
        super(file, 1);
        this.f13570q = new HashMap();
        this.f13567n = context;
    }
}
