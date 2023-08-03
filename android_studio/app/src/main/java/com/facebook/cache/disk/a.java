package com.facebook.cache.disk;

import android.os.Environment;
import androidx.annotation.VisibleForTesting;
import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.disk.d;
import com.facebook.common.file.FileUtils;
import com.facebook.infer.annotation.Nullsafe;
import io.sentry.instrumentation.file.l;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* compiled from: DefaultDiskStorage.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class a implements com.facebook.cache.disk.d {

    /* renamed from: g  reason: collision with root package name */
    private static final String f10841g = ".cnt";

    /* renamed from: h  reason: collision with root package name */
    private static final String f10842h = ".tmp";

    /* renamed from: i  reason: collision with root package name */
    private static final String f10843i = "v2";

    /* renamed from: j  reason: collision with root package name */
    private static final int f10844j = 100;

    /* renamed from: a  reason: collision with root package name */
    private final File f10846a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f10847b;

    /* renamed from: c  reason: collision with root package name */
    private final File f10848c;

    /* renamed from: d  reason: collision with root package name */
    private final CacheErrorLogger f10849d;

    /* renamed from: e  reason: collision with root package name */
    private final s0.a f10850e;

    /* renamed from: f  reason: collision with root package name */
    private static final Class<?> f10840f = a.class;

    /* renamed from: k  reason: collision with root package name */
    static final long f10845k = TimeUnit.MINUTES.toMillis(30);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultDiskStorage.java */
    /* loaded from: classes.dex */
    public class b implements n0.b {

        /* renamed from: a  reason: collision with root package name */
        private final List<d.c> f10851a;

        private b() {
            this.f10851a = new ArrayList();
        }

        @Override // n0.b
        public void a(File directory) {
        }

        @Override // n0.b
        public void b(File file) {
            d y9 = a.this.y(file);
            if (y9 == null || y9.f10857a != ".cnt") {
                return;
            }
            this.f10851a.add(new c(y9.f10858b, file));
        }

        @Override // n0.b
        public void c(File directory) {
        }

        public List<d.c> d() {
            return Collections.unmodifiableList(this.f10851a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DefaultDiskStorage.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class c implements d.c {

        /* renamed from: a  reason: collision with root package name */
        private final String f10853a;

        /* renamed from: b  reason: collision with root package name */
        private final k0.c f10854b;

        /* renamed from: c  reason: collision with root package name */
        private long f10855c;

        /* renamed from: d  reason: collision with root package name */
        private long f10856d;

        @Override // com.facebook.cache.disk.d.c
        public long b() {
            if (this.f10856d < 0) {
                this.f10856d = this.f10854b.d().lastModified();
            }
            return this.f10856d;
        }

        @Override // com.facebook.cache.disk.d.c
        /* renamed from: c */
        public k0.c a() {
            return this.f10854b;
        }

        @Override // com.facebook.cache.disk.d.c
        public String getId() {
            return this.f10853a;
        }

        @Override // com.facebook.cache.disk.d.c
        public long getSize() {
            if (this.f10855c < 0) {
                this.f10855c = this.f10854b.size();
            }
            return this.f10855c;
        }

        private c(String id, File cachedFile) {
            com.facebook.common.internal.j.i(cachedFile);
            this.f10853a = (String) com.facebook.common.internal.j.i(id);
            this.f10854b = k0.c.b(cachedFile);
            this.f10855c = -1L;
            this.f10856d = -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultDiskStorage.java */
    /* loaded from: classes.dex */
    public static class d {
        @e

        /* renamed from: a  reason: collision with root package name */
        public final String f10857a;

        /* renamed from: b  reason: collision with root package name */
        public final String f10858b;

        @r7.h
        public static d b(File file) {
            String w9;
            String name = file.getName();
            int lastIndexOf = name.lastIndexOf(46);
            if (lastIndexOf > 0 && (w9 = a.w(name.substring(lastIndexOf))) != null) {
                String substring = name.substring(0, lastIndexOf);
                if (w9.equals(".tmp")) {
                    int lastIndexOf2 = substring.lastIndexOf(46);
                    if (lastIndexOf2 <= 0) {
                        return null;
                    }
                    substring = substring.substring(0, lastIndexOf2);
                }
                return new d(w9, substring);
            }
            return null;
        }

        public File a(File parent) throws IOException {
            return File.createTempFile(this.f10858b + ".", ".tmp", parent);
        }

        public String c(String parentPath) {
            return parentPath + File.separator + this.f10858b + this.f10857a;
        }

        public String toString() {
            return this.f10857a + "(" + this.f10858b + ")";
        }

        private d(@e String type, String resourceId) {
            this.f10857a = type;
            this.f10858b = resourceId;
        }
    }

    /* compiled from: DefaultDiskStorage.java */
    /* loaded from: classes.dex */
    public @interface e {
        public static final String I = ".cnt";
        public static final String J = ".tmp";
    }

    /* compiled from: DefaultDiskStorage.java */
    /* loaded from: classes.dex */
    private static class f extends IOException {
        public f(long expected, long actual) {
            super("File was not written completely. Expected: " + expected + ", found: " + actual);
        }
    }

    /* compiled from: DefaultDiskStorage.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    class g implements d.InterfaceC0079d {

        /* renamed from: a  reason: collision with root package name */
        private final String f10859a;
        @VisibleForTesting

        /* renamed from: b  reason: collision with root package name */
        final File f10860b;

        public g(String resourceId, File temporaryFile) {
            this.f10859a = resourceId;
            this.f10860b = temporaryFile;
        }

        @Override // com.facebook.cache.disk.d.InterfaceC0079d
        public boolean c() {
            return !this.f10860b.exists() || this.f10860b.delete();
        }

        @Override // com.facebook.cache.disk.d.InterfaceC0079d
        public void d(com.facebook.cache.common.k callback, Object debugInfo) throws IOException {
            try {
                File file = this.f10860b;
                FileOutputStream a10 = l.b.a(new FileOutputStream(file), file);
                try {
                    com.facebook.common.internal.d dVar = new com.facebook.common.internal.d(a10);
                    callback.a(dVar);
                    dVar.flush();
                    long a11 = dVar.a();
                    a10.close();
                    if (this.f10860b.length() != a11) {
                        throw new f(a11, this.f10860b.length());
                    }
                } catch (Throwable th) {
                    a10.close();
                    throw th;
                }
            } catch (FileNotFoundException e4) {
                a.this.f10849d.a(CacheErrorLogger.CacheErrorCategory.WRITE_UPDATE_FILE_NOT_FOUND, a.f10840f, "updateResource", e4);
                throw e4;
            }
        }

        @Override // com.facebook.cache.disk.d.InterfaceC0079d
        public k0.a e(Object debugInfo) throws IOException {
            return f(debugInfo, a.this.f10850e.now());
        }

        @Override // com.facebook.cache.disk.d.InterfaceC0079d
        public k0.a f(Object debugInfo, long time) throws IOException {
            CacheErrorLogger.CacheErrorCategory cacheErrorCategory;
            File u9 = a.this.u(this.f10859a);
            try {
                FileUtils.b(this.f10860b, u9);
                if (u9.exists()) {
                    u9.setLastModified(time);
                }
                return k0.c.b(u9);
            } catch (FileUtils.RenameException e4) {
                Throwable cause = e4.getCause();
                if (cause != null) {
                    if (!(cause instanceof FileUtils.ParentDirNotFoundException)) {
                        if (cause instanceof FileNotFoundException) {
                            cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.WRITE_RENAME_FILE_TEMPFILE_NOT_FOUND;
                        } else {
                            cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.WRITE_RENAME_FILE_OTHER;
                        }
                    } else {
                        cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.WRITE_RENAME_FILE_TEMPFILE_PARENT_NOT_FOUND;
                    }
                } else {
                    cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.WRITE_RENAME_FILE_OTHER;
                }
                a.this.f10849d.a(cacheErrorCategory, a.f10840f, "commit", e4);
                throw e4;
            }
        }
    }

    /* compiled from: DefaultDiskStorage.java */
    /* loaded from: classes.dex */
    private class h implements n0.b {

        /* renamed from: a  reason: collision with root package name */
        private boolean f10862a;

        private h() {
        }

        private boolean d(File file) {
            d y9 = a.this.y(file);
            if (y9 == null) {
                return false;
            }
            String str = y9.f10857a;
            if (str == ".tmp") {
                return e(file);
            }
            com.facebook.common.internal.j.o(str == ".cnt");
            return true;
        }

        private boolean e(File file) {
            return file.lastModified() > a.this.f10850e.now() - a.f10845k;
        }

        @Override // n0.b
        public void a(File directory) {
            if (!a.this.f10846a.equals(directory) && !this.f10862a) {
                directory.delete();
            }
            if (this.f10862a && directory.equals(a.this.f10848c)) {
                this.f10862a = false;
            }
        }

        @Override // n0.b
        public void b(File file) {
            if (this.f10862a && d(file)) {
                return;
            }
            file.delete();
        }

        @Override // n0.b
        public void c(File directory) {
            if (this.f10862a || !directory.equals(a.this.f10848c)) {
                return;
            }
            this.f10862a = true;
        }
    }

    public a(File rootDirectory, int version, CacheErrorLogger cacheErrorLogger) {
        com.facebook.common.internal.j.i(rootDirectory);
        this.f10846a = rootDirectory;
        this.f10847b = C(rootDirectory, cacheErrorLogger);
        this.f10848c = new File(rootDirectory, B(version));
        this.f10849d = cacheErrorLogger;
        F();
        this.f10850e = s0.e.a();
    }

    private String A(String resourceId) {
        String valueOf = String.valueOf(Math.abs(resourceId.hashCode() % 100));
        return this.f10848c + File.separator + valueOf;
    }

    @VisibleForTesting
    static String B(int version) {
        return String.format(null, "%s.ols%d.%d", f10843i, 100, Integer.valueOf(version));
    }

    private static boolean C(File directory, CacheErrorLogger cacheErrorLogger) {
        try {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageDirectory == null) {
                return false;
            }
            try {
                try {
                    return directory.getCanonicalPath().contains(externalStorageDirectory.toString());
                } catch (IOException e4) {
                    e = e4;
                    CacheErrorLogger.CacheErrorCategory cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.OTHER;
                    Class<?> cls = f10840f;
                    cacheErrorLogger.a(cacheErrorCategory, cls, "failed to read folder to check if external: " + ((String) null), e);
                    return false;
                }
            } catch (IOException e10) {
                e = e10;
            }
        } catch (Exception e11) {
            cacheErrorLogger.a(CacheErrorLogger.CacheErrorCategory.OTHER, f10840f, "failed to get the external storage directory!", e11);
            return false;
        }
    }

    private void D(File directory, String message) throws IOException {
        try {
            FileUtils.a(directory);
        } catch (FileUtils.CreateDirectoryException e4) {
            this.f10849d.a(CacheErrorLogger.CacheErrorCategory.WRITE_CREATE_DIR, f10840f, message, e4);
            throw e4;
        }
    }

    private boolean E(String resourceId, boolean touch) {
        File u9 = u(resourceId);
        boolean exists = u9.exists();
        if (touch && exists) {
            u9.setLastModified(this.f10850e.now());
        }
        return exists;
    }

    private void F() {
        boolean z9 = true;
        if (this.f10846a.exists()) {
            if (this.f10848c.exists()) {
                z9 = false;
            } else {
                n0.a.b(this.f10846a);
            }
        }
        if (z9) {
            try {
                FileUtils.a(this.f10848c);
            } catch (FileUtils.CreateDirectoryException unused) {
                CacheErrorLogger cacheErrorLogger = this.f10849d;
                CacheErrorLogger.CacheErrorCategory cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.WRITE_CREATE_DIR;
                Class<?> cls = f10840f;
                cacheErrorLogger.a(cacheErrorCategory, cls, "version directory could not be created: " + this.f10848c, null);
            }
        }
    }

    private String G(byte[] bytes) {
        return bytes.length >= 2 ? (bytes[0] == -1 && bytes[1] == -40) ? "jpg" : (bytes[0] == -119 && bytes[1] == 80) ? "png" : (bytes[0] == 82 && bytes[1] == 73) ? "webp" : (bytes[0] == 71 && bytes[1] == 73) ? "gif" : "undefined" : "undefined";
    }

    private long s(final File contentFile) {
        if (contentFile.exists()) {
            long length = contentFile.length();
            if (contentFile.delete()) {
                return length;
            }
            return -1L;
        }
        return 0L;
    }

    private d.b t(d.c entry) throws IOException {
        c cVar = (c) entry;
        byte[] read = cVar.a().read();
        String G = G(read);
        return new d.b(cVar.getId(), cVar.a().d().getPath(), G, (float) cVar.getSize(), (!G.equals("undefined") || read.length < 4) ? "" : String.format(null, "0x%02X 0x%02X 0x%02X 0x%02X", Byte.valueOf(read[0]), Byte.valueOf(read[1]), Byte.valueOf(read[2]), Byte.valueOf(read[3])));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @e
    @r7.h
    public static String w(String extension) {
        if (".cnt".equals(extension)) {
            return ".cnt";
        }
        if (".tmp".equals(extension)) {
            return ".tmp";
        }
        return null;
    }

    private String x(String resourceId) {
        d dVar = new d(".cnt", resourceId);
        return dVar.c(A(dVar.f10858b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @r7.h
    public d y(File file) {
        d b10 = d.b(file);
        if (b10 != null && z(b10.f10858b).equals(file.getParentFile())) {
            return b10;
        }
        return null;
    }

    private File z(String resourceId) {
        return new File(A(resourceId));
    }

    @Override // com.facebook.cache.disk.d
    public void a() {
        n0.a.a(this.f10846a);
    }

    @Override // com.facebook.cache.disk.d
    public d.a b() throws IOException {
        List<d.c> j4 = j();
        d.a aVar = new d.a();
        for (d.c cVar : j4) {
            d.b t9 = t(cVar);
            String str = t9.f10894c;
            Integer num = aVar.f10891b.get(str);
            if (num == null) {
                aVar.f10891b.put(str, 1);
            } else {
                aVar.f10891b.put(str, Integer.valueOf(num.intValue() + 1));
            }
            aVar.f10890a.add(t9);
        }
        return aVar;
    }

    @Override // com.facebook.cache.disk.d
    public long c(final String resourceId) {
        return s(u(resourceId));
    }

    @Override // com.facebook.cache.disk.d
    public void d() {
        n0.a.c(this.f10846a, new h());
    }

    @Override // com.facebook.cache.disk.d
    public boolean e(String resourceId, Object debugInfo) {
        return E(resourceId, true);
    }

    @Override // com.facebook.cache.disk.d
    public long f(d.c entry) {
        return s(((c) entry).a().d());
    }

    @Override // com.facebook.cache.disk.d
    public d.InterfaceC0079d g(String resourceId, Object debugInfo) throws IOException {
        d dVar = new d(".tmp", resourceId);
        File z9 = z(dVar.f10858b);
        if (!z9.exists()) {
            D(z9, "insert");
        }
        try {
            return new g(resourceId, dVar.a(z9));
        } catch (IOException e4) {
            this.f10849d.a(CacheErrorLogger.CacheErrorCategory.WRITE_CREATE_TEMPFILE, f10840f, "insert", e4);
            throw e4;
        }
    }

    @Override // com.facebook.cache.disk.d
    public boolean h(String resourceId, Object debugInfo) {
        return E(resourceId, false);
    }

    @Override // com.facebook.cache.disk.d
    @r7.h
    public k0.a i(String resourceId, Object debugInfo) {
        File u9 = u(resourceId);
        if (u9.exists()) {
            u9.setLastModified(this.f10850e.now());
            return k0.c.c(u9);
        }
        return null;
    }

    @Override // com.facebook.cache.disk.d
    public boolean isEnabled() {
        return true;
    }

    @Override // com.facebook.cache.disk.d
    public boolean isExternal() {
        return this.f10847b;
    }

    @Override // com.facebook.cache.disk.d
    public String k() {
        String absolutePath = this.f10846a.getAbsolutePath();
        return "_" + absolutePath.substring(absolutePath.lastIndexOf(47) + 1, absolutePath.length()) + "_" + absolutePath.hashCode();
    }

    @VisibleForTesting
    File u(String resourceId) {
        return new File(x(resourceId));
    }

    @Override // com.facebook.cache.disk.d
    /* renamed from: v */
    public List<d.c> j() throws IOException {
        b bVar = new b();
        n0.a.c(this.f10848c, bVar);
        return bVar.d();
    }
}
