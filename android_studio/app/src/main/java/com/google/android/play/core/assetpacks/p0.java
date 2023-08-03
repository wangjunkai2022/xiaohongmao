package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import io.sentry.instrumentation.file.h;
import io.sentry.instrumentation.file.l;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class p0 {

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.android.play.core.internal.h f31512c = new com.google.android.play.core.internal.h("AssetPackStorage");

    /* renamed from: d  reason: collision with root package name */
    private static final long f31513d;

    /* renamed from: e  reason: collision with root package name */
    private static final long f31514e;

    /* renamed from: a  reason: collision with root package name */
    private final Context f31515a;

    /* renamed from: b  reason: collision with root package name */
    private final o3 f31516b;

    static {
        TimeUnit timeUnit = TimeUnit.DAYS;
        f31513d = timeUnit.toMillis(14L);
        f31514e = timeUnit.toMillis(28L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p0(Context context, o3 o3Var) {
        this.f31515a = context;
        this.f31516b = o3Var;
    }

    private static long h(File file, boolean z9) {
        File[] listFiles;
        if (file.exists()) {
            ArrayList arrayList = new ArrayList();
            if (z9 && file.listFiles().length > 1) {
                f31512c.e("Multiple pack versions found, using highest version code.", new Object[0]);
            }
            try {
                for (File file2 : file.listFiles()) {
                    if (!file2.getName().equals("stale.tmp")) {
                        arrayList.add(Long.valueOf(file2.getName()));
                    }
                }
            } catch (NumberFormatException e4) {
                f31512c.c(e4, "Corrupt asset pack directories.", new Object[0]);
            }
            if (arrayList.isEmpty()) {
                return -1L;
            }
            Collections.sort(arrayList);
            return ((Long) arrayList.get(arrayList.size() - 1)).longValue();
        }
        return -1L;
    }

    private final File i(String str) {
        return new File(l(), str);
    }

    private final File j(String str, int i4, long j4) {
        return new File(A(str, i4, j4), "merge.tmp");
    }

    private final File k(String str, int i4, long j4) {
        return new File(new File(new File(m(), str), String.valueOf(i4)), String.valueOf(j4));
    }

    private final File l() {
        return new File(this.f31515a.getFilesDir(), "assetpacks");
    }

    private final File m() {
        return new File(l(), "_tmp");
    }

    @RequiresApi(21)
    private static List n(PackageInfo packageInfo, String str) {
        ArrayList arrayList = new ArrayList();
        String[] strArr = packageInfo.splitNames;
        if (strArr == null) {
            return arrayList;
        }
        int i4 = (-Arrays.binarySearch(strArr, str)) - 1;
        while (true) {
            String[] strArr2 = packageInfo.splitNames;
            if (i4 >= strArr2.length || !strArr2[i4].startsWith(str)) {
                break;
            }
            arrayList.add(packageInfo.applicationInfo.splitSourceDirs[i4]);
            i4++;
        }
        return arrayList;
    }

    private final List o() {
        File[] listFiles;
        ArrayList arrayList = new ArrayList();
        try {
        } catch (IOException e4) {
            f31512c.b("Could not process directory while scanning installed packs. %s", e4);
        }
        if (l().exists() && l().listFiles() != null) {
            for (File file : l().listFiles()) {
                if (!file.getCanonicalPath().equals(m().getCanonicalPath())) {
                    arrayList.add(file);
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    private static void p(File file) {
        File[] listFiles;
        if (file.listFiles() == null || file.listFiles().length <= 1) {
            return;
        }
        long h4 = h(file, false);
        for (File file2 : file.listFiles()) {
            if (!file2.getName().equals(String.valueOf(h4)) && !file2.getName().equals("stale.tmp")) {
                q(file2);
            }
        }
    }

    private static boolean q(File file) {
        File[] listFiles = file.listFiles();
        boolean z9 = true;
        if (listFiles != null) {
            for (File file2 : listFiles) {
                z9 &= q(file2);
            }
        }
        if (file.delete()) {
            return z9;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File A(String str, int i4, long j4) {
        return new File(k(str, i4, j4), "_packs");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File B(String str, int i4, long j4) {
        return new File(z(str, i4, j4), "properties.dat");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File C(String str, int i4, long j4) {
        return new File(new File(k(str, i4, j4), "_slices"), "_metadata");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File D(String str, int i4, long j4, String str2) {
        return new File(F(str, i4, j4, str2), "checkpoint_ext.dat");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File E(String str, int i4, long j4, String str2) {
        return new File(F(str, i4, j4, str2), "checkpoint.dat");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File F(String str, int i4, long j4, String str2) {
        return new File(C(str, i4, j4), str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File G(String str, int i4, long j4, String str2) {
        return new File(new File(new File(k(str, i4, j4), "_slices"), "_unverified"), str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File H(String str, int i4, long j4, String str2) {
        return new File(new File(new File(k(str, i4, j4), "_slices"), "_verified"), str2);
    }

    @Nullable
    final String I(String str) throws IOException {
        int length;
        File file = new File(l(), str);
        if (!file.exists()) {
            f31512c.a("Pack not found with pack name: %s", str);
            return null;
        }
        File file2 = new File(file, String.valueOf(this.f31516b.a()));
        if (!file2.exists()) {
            f31512c.a("Pack not found with pack name: %s app version: %s", str, Integer.valueOf(this.f31516b.a()));
            return null;
        }
        File[] listFiles = file2.listFiles();
        if (listFiles == null || (length = listFiles.length) == 0) {
            f31512c.a("No pack version found for pack name: %s app version: %s", str, Integer.valueOf(this.f31516b.a()));
            return null;
        } else if (length > 1) {
            f31512c.b("Multiple pack versions found for pack name: %s app version: %s", str, Integer.valueOf(this.f31516b.a()));
            return null;
        } else {
            return listFiles[0].getCanonicalPath();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final List J(String str) {
        PackageInfo packageInfo;
        String str2 = null;
        try {
            packageInfo = this.f31515a.getPackageManager().getPackageInfo(this.f31515a.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException unused) {
            f31512c.b("Could not find PackageInfo.", new Object[0]);
            packageInfo = null;
        }
        if (packageInfo == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        String[] strArr = packageInfo.splitNames;
        if (strArr != null && packageInfo.applicationInfo.splitSourceDirs != null) {
            int binarySearch = Arrays.binarySearch(strArr, str);
            if (binarySearch < 0) {
                f31512c.a("Asset Pack '%s' is not installed.", str);
            } else {
                str2 = packageInfo.applicationInfo.splitSourceDirs[binarySearch];
            }
        } else {
            f31512c.a("No splits present for package %s.", str);
        }
        if (str2 == null) {
            arrayList.add(packageInfo.applicationInfo.sourceDir);
            arrayList.addAll(n(packageInfo, "config."));
            return arrayList;
        }
        arrayList.add(str2);
        arrayList.addAll(n(packageInfo, String.valueOf(str).concat(".config.")));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map K() {
        HashMap hashMap = new HashMap();
        for (File file : o()) {
            String name = file.getName();
            int h4 = (int) h(i(name), true);
            long h10 = h(x(name, h4), true);
            if (y(name, h4, h10).exists()) {
                hashMap.put(name, Long.valueOf(h10));
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map L() {
        HashMap hashMap = new HashMap();
        for (String str : M().keySet()) {
            hashMap.put(str, Long.valueOf(t(str)));
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map M() {
        HashMap hashMap = new HashMap();
        try {
            for (File file : o()) {
                b w9 = w(file.getName());
                if (w9 != null) {
                    hashMap.put(file.getName(), w9);
                }
            }
        } catch (IOException e4) {
            f31512c.b("Could not process directory while scanning installed packs: %s", e4);
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void N() {
        for (File file : o()) {
            if (file.listFiles() != null) {
                p(file);
                long h4 = h(file, false);
                if (this.f31516b.a() != h4) {
                    try {
                        new File(new File(file, String.valueOf(h4)), "stale.tmp").createNewFile();
                    } catch (IOException unused) {
                        f31512c.b("Could not write staleness marker.", new Object[0]);
                    }
                }
                for (File file2 : file.listFiles()) {
                    p(file2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void O() {
        File[] listFiles;
        if (m().exists()) {
            for (File file : m().listFiles()) {
                if (System.currentTimeMillis() - file.lastModified() > f31513d) {
                    q(file);
                } else {
                    p(file);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void P() {
        File[] listFiles;
        for (File file : o()) {
            if (file.listFiles() != null) {
                for (File file2 : file.listFiles()) {
                    File file3 = new File(file2, "stale.tmp");
                    if (file3.exists() && System.currentTimeMillis() - file3.lastModified() > f31514e) {
                        q(file2);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void Q() {
        q(l());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, int i4, long j4, int i10) throws IOException {
        File j10 = j(str, i4, j4);
        Properties properties = new Properties();
        properties.put("numberOfMerges", String.valueOf(i10));
        j10.getParentFile().mkdirs();
        j10.createNewFile();
        FileOutputStream a10 = l.b.a(new FileOutputStream(j10), j10);
        properties.store(a10, (String) null);
        a10.close();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(String str, int i4, long j4) {
        File[] listFiles;
        File[] listFiles2;
        File i10 = i(str);
        if (i10.exists()) {
            for (File file : i10.listFiles()) {
                if (!file.getName().equals(String.valueOf(i4)) && !file.getName().equals("stale.tmp")) {
                    q(file);
                } else if (file.getName().equals(String.valueOf(i4))) {
                    for (File file2 : file.listFiles()) {
                        if (!file2.getName().equals(String.valueOf(j4))) {
                            q(file2);
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(List list) {
        int a10 = this.f31516b.a();
        for (File file : o()) {
            if (!list.contains(file.getName()) && h(file, true) != a10) {
                q(file);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean d(String str) {
        if (i(str).exists()) {
            return q(i(str));
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean e(String str, int i4, long j4) {
        if (k(str, i4, j4).exists()) {
            return q(k(str, i4, j4));
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean f(String str, int i4, long j4) {
        if (y(str, i4, j4).exists()) {
            return q(y(str, i4, j4));
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean g(String str) {
        return I(str) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int r(String str) {
        return (int) h(i(str), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int s(String str, int i4, long j4) throws IOException {
        File j10 = j(str, i4, j4);
        if (j10.exists()) {
            Properties properties = new Properties();
            FileInputStream a10 = h.b.a(new FileInputStream(j10), j10);
            try {
                properties.load(a10);
                a10.close();
                if (properties.getProperty("numberOfMerges") != null) {
                    try {
                        return Integer.parseInt(properties.getProperty("numberOfMerges"));
                    } catch (NumberFormatException e4) {
                        throw new t1("Merge checkpoint file corrupt.", e4);
                    }
                }
                throw new t1("Merge checkpoint file corrupt.");
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
    public final long t(String str) {
        return h(x(str, (int) h(i(str), true)), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    @VisibleForTesting
    public final a u(String str, String str2, List list) {
        if (list == null) {
            return null;
        }
        String path = new File("assets", str2).getPath();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str3 = (String) it.next();
            try {
                a a10 = b1.a(str3, path);
                if (a10 != null) {
                    return a10;
                }
            } catch (IOException e4) {
                f31512c.c(e4, "Failed to parse APK file '%s' looking for asset '%s'.", str3, str2);
                return null;
            }
        }
        f31512c.a("The asset %s is not present in Asset Pack %s. Searched in APKs: %s", str2, str, list);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final a v(String str, String str2, b bVar) {
        File file = new File(bVar.a(), str2);
        if (file.exists()) {
            return new t0(file.getPath(), 0L, file.length());
        }
        f31512c.a("The asset %s is not present in Asset Pack %s. Searched in folder: %s", str2, str, bVar.a());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final b w(String str) throws IOException {
        String I = I(str);
        if (I == null) {
            return null;
        }
        File file = new File(I, "assets");
        if (!file.isDirectory()) {
            f31512c.b("Failed to find assets directory: %s", file);
            return null;
        }
        return new u0(0, I, file.getCanonicalPath());
    }

    final File x(String str, int i4) {
        return new File(i(str), String.valueOf(i4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File y(String str, int i4, long j4) {
        return new File(x(str, i4), String.valueOf(j4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File z(String str, int i4, long j4) {
        return new File(y(str, i4, j4), "_metadata");
    }
}
