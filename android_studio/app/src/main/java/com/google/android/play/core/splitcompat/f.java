package com.google.android.play.core.splitcompat;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.play.core.internal.i1;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final long f31826a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f31827b;

    /* renamed from: c  reason: collision with root package name */
    private File f31828c;

    public f(Context context) throws PackageManager.NameNotFoundException {
        this.f31827b = context;
        this.f31826a = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
    }

    public static void l(File file) throws IOException {
        File[] listFiles;
        if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                l(file2);
            }
        }
        if (file.exists() && !file.delete()) {
            throw new IOException(String.format("Failed to delete '%s'", file.getAbsolutePath()));
        }
    }

    public static void m(File file) {
        file.setWritable(false, true);
        file.setWritable(false, false);
    }

    public static boolean p(File file) {
        return !file.canWrite();
    }

    private static File q(File file, String str) throws IOException {
        File file2 = new File(file, str);
        if (file2.getCanonicalPath().startsWith(file.getCanonicalPath())) {
            return file2;
        }
        throw new IllegalArgumentException("split ID cannot be placed in target directory");
    }

    private final File r() throws IOException {
        File file = new File(w(), "native-libraries");
        u(file);
        return file;
    }

    private final File s(String str) throws IOException {
        File q9 = q(r(), str);
        u(q9);
        return q9;
    }

    private final File t() throws IOException {
        File file = new File(w(), "verified-splits");
        u(file);
        return file;
    }

    private static File u(File file) throws IOException {
        if (file.exists()) {
            if (file.isDirectory()) {
                return file;
            }
            throw new IllegalArgumentException("File input must be directory when it exists.");
        }
        file.mkdirs();
        if (file.isDirectory()) {
            return file;
        }
        String valueOf = String.valueOf(file.getAbsolutePath());
        throw new IOException(valueOf.length() != 0 ? "Unable to create directory: ".concat(valueOf) : new String("Unable to create directory: "));
    }

    private final File v() throws IOException {
        if (this.f31828c == null) {
            Context context = this.f31827b;
            if (context != null) {
                this.f31828c = context.getFilesDir();
            } else {
                throw new IllegalStateException("context must be non-null to populate null filesDir");
            }
        }
        File file = new File(this.f31828c, "splitcompat");
        u(file);
        return file;
    }

    private final File w() throws IOException {
        File file = new File(v(), Long.toString(this.f31826a));
        u(file);
        return file;
    }

    private static String x(String str) {
        return String.valueOf(str).concat(".apk");
    }

    public final File a(String str) throws IOException {
        File file = new File(w(), "dex");
        u(file);
        File q9 = q(file, str);
        u(q9);
        return q9;
    }

    public final File b() throws IOException {
        File file = new File(w(), "unverified-splits");
        u(file);
        return file;
    }

    public final File c(String str, String str2) throws IOException {
        return q(s(str), str2);
    }

    public final File d() throws IOException {
        return new File(w(), "lock.tmp");
    }

    public final File e(String str) throws IOException {
        return q(b(), x(str));
    }

    public final File f(File file) throws IOException {
        return q(t(), file.getName());
    }

    public final File g(String str) throws IOException {
        return q(t(), x(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List h() throws IOException {
        ArrayList arrayList = new ArrayList();
        File[] listFiles = r().listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isDirectory()) {
                    arrayList.add(file.getName());
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set i(String str) throws IOException {
        HashSet hashSet = new HashSet();
        File[] listFiles = s(str).listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isFile()) {
                    hashSet.add(file);
                }
            }
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set j() throws IOException {
        String name;
        File t9 = t();
        HashSet hashSet = new HashSet();
        File[] listFiles = t9.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isFile() && file.getName().endsWith(".apk") && p(file)) {
                    hashSet.add(new c(file, file.getName().substring(0, name.length() - 4)));
                }
            }
        }
        return hashSet;
    }

    public final void k() throws IOException {
        File v9 = v();
        String[] list = v9.list();
        if (list != null) {
            for (String str : list) {
                if (!str.equals(Long.toString(this.f31826a))) {
                    File file = new File(v9, str);
                    String obj = file.toString();
                    long j4 = this.f31826a;
                    StringBuilder sb = new StringBuilder(obj.length() + 118);
                    sb.append("FileStorage: removing directory for different version code (directory = ");
                    sb.append(obj);
                    sb.append(", current version code = ");
                    sb.append(j4);
                    sb.append(")");
                    Log.d("SplitCompat", sb.toString());
                    l(file);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void n(String str) throws IOException {
        l(s(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void o(File file) throws IOException {
        i1.b(file.getParentFile().getParentFile().equals(r()), "File to remove is not a native library");
        l(file);
    }
}
