package com.facebook.soloader;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer2.extractor.ts.h0;
import dalvik.system.BaseDexClassLoader;
import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;

@s7.d
/* loaded from: classes.dex */
public class SoLoader {

    /* renamed from: a  reason: collision with root package name */
    static final String f13420a = "SoLoader";

    /* renamed from: b  reason: collision with root package name */
    static final boolean f13421b = false;
    @r7.h

    /* renamed from: d  reason: collision with root package name */
    static u f13423d = null;
    @r7.h
    @s7.a("sSoSourcesLock")

    /* renamed from: h  reason: collision with root package name */
    private static x[] f13427h = null;
    @r7.h
    @s7.a("sSoSourcesLock")

    /* renamed from: i  reason: collision with root package name */
    private static com.facebook.soloader.b f13428i = null;

    /* renamed from: n  reason: collision with root package name */
    private static final String f13433n = "lib-main";

    /* renamed from: o  reason: collision with root package name */
    private static final String f13434o = "lib-";

    /* renamed from: p  reason: collision with root package name */
    public static final int f13435p = 1;

    /* renamed from: q  reason: collision with root package name */
    public static final int f13436q = 2;

    /* renamed from: r  reason: collision with root package name */
    public static final int f13437r = 4;

    /* renamed from: s  reason: collision with root package name */
    public static final int f13438s = 8;

    /* renamed from: t  reason: collision with root package name */
    public static final int f13439t = 16;

    /* renamed from: u  reason: collision with root package name */
    public static final int f13440u = 32;
    @s7.a("sSoSourcesLock")

    /* renamed from: v  reason: collision with root package name */
    private static int f13441v;

    /* renamed from: w  reason: collision with root package name */
    private static boolean f13442w;

    /* renamed from: e  reason: collision with root package name */
    private static final ReentrantReadWriteLock f13424e = new ReentrantReadWriteLock();
    @r7.h
    @s7.a("sSoSourcesLock")

    /* renamed from: f  reason: collision with root package name */
    private static v[] f13425f = null;
    @s7.a("sSoSourcesLock")

    /* renamed from: g  reason: collision with root package name */
    private static volatile int f13426g = 0;
    @s7.a("SoLoader.class")

    /* renamed from: j  reason: collision with root package name */
    private static final HashSet<String> f13429j = new HashSet<>();
    @s7.a("SoLoader.class")

    /* renamed from: k  reason: collision with root package name */
    private static final Map<String, Object> f13430k = new HashMap();

    /* renamed from: l  reason: collision with root package name */
    private static final Set<String> f13431l = Collections.newSetFromMap(new ConcurrentHashMap());
    @r7.h

    /* renamed from: m  reason: collision with root package name */
    private static w f13432m = null;

    /* renamed from: c  reason: collision with root package name */
    static final boolean f13422c = true;

    /* JADX INFO: Access modifiers changed from: private */
    @d
    @TargetApi(14)
    /* loaded from: classes.dex */
    public static class Api14Utils {
        private Api14Utils() {
        }

        public static String a() {
            ClassLoader classLoader = SoLoader.class.getClassLoader();
            if (classLoader != null && !(classLoader instanceof BaseDexClassLoader)) {
                throw new IllegalStateException("ClassLoader " + classLoader.getClass().getName() + " should be of type BaseDexClassLoader");
            }
            try {
                return (String) BaseDexClassLoader.class.getMethod("getLdLibraryPath", new Class[0]).invoke((BaseDexClassLoader) classLoader, new Object[0]);
            } catch (Exception e4) {
                throw new RuntimeException("Cannot call getLdLibraryPath", e4);
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class WrongAbiError extends UnsatisfiedLinkError {
        WrongAbiError(Throwable th, String str) {
            super("APK was built for a different platform. Supported ABIs: " + Arrays.toString(SysUtil.h()) + " error: " + str);
            initCause(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a implements u {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f13443a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f13444b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f13445c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Runtime f13446d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Method f13447e;

        a(boolean z9, String str, String str2, Runtime runtime, Method method) {
            this.f13443a = z9;
            this.f13444b = str;
            this.f13445c = str2;
            this.f13446d = runtime;
            this.f13447e = method;
        }

        private String b(String str) {
            try {
                File file = new File(str);
                MessageDigest messageDigest = MessageDigest.getInstance(shaded.org.apache.commons.codec.digest.f.f93510b);
                FileInputStream a10 = h.b.a(new FileInputStream(file), file);
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = a10.read(bArr);
                        if (read > 0) {
                            messageDigest.update(bArr, 0, read);
                        } else {
                            String format = String.format("%32x", new BigInteger(1, messageDigest.digest()));
                            a10.close();
                            return format;
                        }
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        if (a10 != null) {
                            try {
                                a10.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                        }
                        throw th2;
                    }
                }
            } catch (IOException e4) {
                return e4.toString();
            } catch (SecurityException e10) {
                return e10.toString();
            } catch (NoSuchAlgorithmException e11) {
                return e11.toString();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
            if (r1 == null) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0037, code lost:
            android.util.Log.e(com.facebook.soloader.SoLoader.f13420a, "Error when loading lib: " + r1 + " lib hash: " + b(r9) + " search path is " + r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:?, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:?, code lost:
            return;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:45:0x009e  */
        /* JADX WARN: Type inference failed for: r1v0 */
        /* JADX WARN: Type inference failed for: r1v2 */
        @Override // com.facebook.soloader.u
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void a(java.lang.String r9, int r10) {
            /*
                Method dump skipped, instructions count: 205
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.soloader.SoLoader.a.a(java.lang.String, int):void");
        }
    }

    @s7.c
    /* loaded from: classes.dex */
    static class b {
        b() {
        }

        static void a() {
            synchronized (SoLoader.class) {
                SoLoader.f13429j.clear();
                SoLoader.f13430k.clear();
                SoLoader.f13423d = null;
            }
            c(null);
        }

        static void b(u uVar) {
            SoLoader.f13423d = uVar;
        }

        static void c(v[] vVarArr) {
            SoLoader.f13424e.writeLock().lock();
            try {
                v[] unused = SoLoader.f13425f = vVarArr;
                SoLoader.c();
            } finally {
                SoLoader.f13424e.writeLock().unlock();
            }
        }
    }

    private static int A() {
        ReentrantReadWriteLock reentrantReadWriteLock = f13424e;
        reentrantReadWriteLock.writeLock().lock();
        try {
            int i4 = (f13441v & 2) != 0 ? 1 : 0;
            reentrantReadWriteLock.writeLock().unlock();
            return i4;
        } catch (Throwable th) {
            f13424e.writeLock().unlock();
            throw th;
        }
    }

    public static void B(v vVar) throws IOException {
        ReentrantReadWriteLock reentrantReadWriteLock = f13424e;
        reentrantReadWriteLock.writeLock().lock();
        try {
            Log.d(f13420a, "Prepending to SO sources: " + vVar);
            g();
            vVar.f(A());
            v[] vVarArr = f13425f;
            v[] vVarArr2 = new v[vVarArr.length + 1];
            vVarArr2[0] = vVar;
            System.arraycopy(vVarArr, 0, vVarArr2, 1, vVarArr.length);
            f13425f = vVarArr2;
            f13426g++;
            Log.d(f13420a, "Prepended to SO sources: " + vVar);
            reentrantReadWriteLock.writeLock().unlock();
        } catch (Throwable th) {
            f13424e.writeLock().unlock();
            throw th;
        }
    }

    public static void C() {
        b.c(new v[]{new s()});
    }

    public static void D(w wVar) {
        f13432m = wVar;
    }

    public static File E(String str) throws UnsatisfiedLinkError {
        g();
        try {
            return F(System.mapLibraryName(str));
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    static File F(String str) throws IOException {
        f13424e.readLock().lock();
        try {
            for (v vVar : f13425f) {
                File g4 = vVar.g(str);
                if (g4 != null) {
                    return g4;
                }
            }
            f13424e.readLock().unlock();
            throw new FileNotFoundException(str);
        } finally {
            f13424e.readLock().unlock();
        }
    }

    static /* synthetic */ int c() {
        int i4 = f13426g;
        f13426g = i4 + 1;
        return i4;
    }

    public static boolean f() {
        String[] d4;
        ReentrantReadWriteLock reentrantReadWriteLock = f13424e;
        reentrantReadWriteLock.readLock().lock();
        try {
            if (f13425f != null) {
                String[] h4 = SysUtil.h();
                for (v vVar : f13425f) {
                    for (String str : vVar.d()) {
                        boolean z9 = false;
                        for (int i4 = 0; i4 < h4.length && !z9; i4++) {
                            z9 = str.equals(h4[i4]);
                        }
                        if (!z9) {
                            Log.e(f13420a, "abi not supported: " + str);
                            reentrantReadWriteLock = f13424e;
                        }
                    }
                }
                f13424e.readLock().unlock();
                return true;
            }
            reentrantReadWriteLock.readLock().unlock();
            return false;
        } catch (Throwable th) {
            f13424e.readLock().unlock();
            throw th;
        }
    }

    private static void g() {
        if (!s()) {
            throw new IllegalStateException("SoLoader.init() not yet called");
        }
    }

    private static boolean h(Context context, int i4) {
        return ((i4 & 32) != 0 || context == null || (context.getApplicationInfo().flags & h0.G) == 0) ? false : true;
    }

    public static void i() {
        b.c(null);
    }

    public static void init(Context context, int i4) throws IOException {
        o(context, i4, null);
    }

    private static void j(String str, int i4, @r7.h StrictMode.ThreadPolicy threadPolicy) throws UnsatisfiedLinkError {
        boolean z9;
        int i10;
        ReentrantReadWriteLock reentrantReadWriteLock;
        x[] xVarArr;
        ReentrantReadWriteLock reentrantReadWriteLock2 = f13424e;
        reentrantReadWriteLock2.readLock().lock();
        try {
            if (f13425f != null) {
                reentrantReadWriteLock2.readLock().unlock();
                int i11 = 0;
                if (threadPolicy == null) {
                    threadPolicy = StrictMode.allowThreadDiskReads();
                    z9 = true;
                } else {
                    z9 = false;
                }
                if (f13422c) {
                    Api18TraceUtils.a("SoLoader.loadLibrary[", str, "]");
                }
                try {
                    reentrantReadWriteLock2.readLock().lock();
                    i10 = 0;
                    int i12 = 0;
                    while (i10 == 0) {
                        v[] vVarArr = f13425f;
                        if (i12 < vVarArr.length) {
                            i10 = vVarArr[i12].e(str, i4, threadPolicy);
                            if (i10 != 3 || f13427h == null) {
                                i12++;
                            } else {
                                Log.d(f13420a, "Trying backup SoSource for " + str);
                                for (x xVar : f13427h) {
                                    xVar.s(str);
                                    int e4 = xVar.e(str, i4, threadPolicy);
                                    if (e4 == 1) {
                                        i10 = e4;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    if (f13422c) {
                        Api18TraceUtils.b();
                    }
                    if (z9) {
                        StrictMode.setThreadPolicy(threadPolicy);
                    }
                    if (i10 == 0 || i10 == 3) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("couldn't find DSO to load: ");
                        sb.append(str);
                        reentrantReadWriteLock.readLock().lock();
                        while (i11 < f13425f.length) {
                            sb.append("\n\tSoSource ");
                            sb.append(i11);
                            sb.append(": ");
                            sb.append(f13425f[i11].toString());
                            i11++;
                        }
                        com.facebook.soloader.b bVar = f13428i;
                        if (bVar != null) {
                            File i13 = com.facebook.soloader.b.i(bVar.j());
                            sb.append("\n\tNative lib dir: ");
                            sb.append(i13.getAbsolutePath());
                            sb.append("\n");
                        }
                        f13424e.readLock().unlock();
                        sb.append(" result: ");
                        sb.append(i10);
                        String sb2 = sb.toString();
                        Log.e(f13420a, sb2);
                        throw new UnsatisfiedLinkError(sb2);
                    }
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    i11 = i10;
                    if (f13422c) {
                        Api18TraceUtils.b();
                    }
                    if (z9) {
                        StrictMode.setThreadPolicy(threadPolicy);
                    }
                    if (i11 == 0 || i11 == 3) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("couldn't find DSO to load: ");
                        sb3.append(str);
                        String message = th.getMessage();
                        if (message == null) {
                            message = th.toString();
                        }
                        sb3.append(" caused by: ");
                        sb3.append(message);
                        th.printStackTrace();
                        sb3.append(" result: ");
                        sb3.append(i11);
                        String sb4 = sb3.toString();
                        Log.e(f13420a, sb4);
                        UnsatisfiedLinkError unsatisfiedLinkError = new UnsatisfiedLinkError(sb4);
                        unsatisfiedLinkError.initCause(th);
                        throw unsatisfiedLinkError;
                    }
                    return;
                }
            }
            Log.e(f13420a, "Could not load: " + str + " because no SO source exists");
            throw new UnsatisfiedLinkError("couldn't find DSO to load: " + str);
        } finally {
            f13424e.readLock().unlock();
        }
    }

    @r7.h
    public static String[] k(String str) throws IOException {
        f13424e.readLock().lock();
        try {
            String[] strArr = null;
            if (f13425f != null) {
                int i4 = 0;
                while (strArr == null) {
                    v[] vVarArr = f13425f;
                    if (i4 >= vVarArr.length) {
                        break;
                    }
                    strArr = vVarArr[i4].b(str);
                    i4++;
                }
            }
            return strArr;
        } finally {
            f13424e.readLock().unlock();
        }
    }

    @r7.h
    public static String l(String str) throws IOException {
        f13424e.readLock().lock();
        try {
            String str2 = null;
            if (f13425f != null) {
                int i4 = 0;
                while (str2 == null) {
                    v[] vVarArr = f13425f;
                    if (i4 >= vVarArr.length) {
                        break;
                    }
                    str2 = vVarArr[i4].c(str);
                    i4++;
                }
            }
            return str2;
        } finally {
            f13424e.readLock().unlock();
        }
    }

    @r7.h
    private static Method m() {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 23 && i4 <= 27) {
            try {
                Method declaredMethod = Runtime.class.getDeclaredMethod("nativeLoad", String.class, ClassLoader.class, String.class);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (NoSuchMethodException | SecurityException e4) {
                Log.w(f13420a, "Cannot get nativeLoad method", e4);
            }
        }
        return null;
    }

    public static int n() {
        return f13426g;
    }

    public static void o(Context context, int i4, @r7.h u uVar) throws IOException {
        StrictMode.ThreadPolicy allowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        try {
            f13442w = h(context, i4);
            q(uVar);
            r(context, i4, uVar);
            y1.a.d(new r());
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
        }
    }

    public static void p(Context context, boolean z9) {
        try {
            init(context, z9 ? 1 : 0);
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    private static synchronized void q(@r7.h u uVar) {
        synchronized (SoLoader.class) {
            if (uVar != null) {
                f13423d = uVar;
                return;
            }
            Runtime runtime = Runtime.getRuntime();
            Method m9 = m();
            boolean z9 = m9 != null;
            String a10 = z9 ? Api14Utils.a() : null;
            f13423d = new a(z9, a10, z(a10), runtime, m9);
        }
    }

    private static void r(Context context, int i4, @r7.h u uVar) throws IOException {
        String[] split;
        int i10;
        com.facebook.soloader.a aVar;
        f13424e.writeLock().lock();
        try {
            if (f13425f == null) {
                Log.d(f13420a, "init start");
                f13441v = i4;
                ArrayList arrayList = new ArrayList();
                String str = System.getenv("LD_LIBRARY_PATH");
                if (str == null) {
                    str = SysUtil.i() ? "/vendor/lib64:/system/lib64" : "/vendor/lib:/system/lib";
                }
                for (String str2 : str.split(":")) {
                    Log.d(f13420a, "adding system library source: " + str2);
                    arrayList.add(new c(new File(str2), 2));
                }
                if (context != null) {
                    if ((i4 & 1) != 0) {
                        f13427h = null;
                        Log.d(f13420a, "adding exo package source: lib-main");
                        arrayList.add(0, new m(context, f13433n));
                    } else {
                        if (f13442w) {
                            i10 = 0;
                        } else {
                            f13428i = new com.facebook.soloader.b(context, 0);
                            Log.d(f13420a, "adding application source: " + f13428i.toString());
                            arrayList.add(0, f13428i);
                            i10 = 1;
                        }
                        if ((f13441v & 8) != 0) {
                            f13427h = null;
                        } else {
                            File file = new File(context.getApplicationInfo().sourceDir);
                            ArrayList arrayList2 = new ArrayList();
                            arrayList2.add(new com.facebook.soloader.a(context, file, f13433n, i10));
                            Log.d(f13420a, "adding backup source from : " + aVar.toString());
                            if (context.getApplicationInfo().splitSourceDirs != null) {
                                Log.d(f13420a, "adding backup sources from split apks");
                                String[] strArr = context.getApplicationInfo().splitSourceDirs;
                                int length = strArr.length;
                                int i11 = 0;
                                int i12 = 0;
                                while (i11 < length) {
                                    File file2 = new File(strArr[i11]);
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(f13434o);
                                    sb.append(i12);
                                    com.facebook.soloader.a aVar2 = new com.facebook.soloader.a(context, file2, sb.toString(), i10);
                                    Log.d(f13420a, "adding backup source: " + aVar2.toString());
                                    arrayList2.add(aVar2);
                                    i11++;
                                    i12++;
                                }
                            }
                            f13427h = (x[]) arrayList2.toArray(new x[arrayList2.size()]);
                            arrayList.addAll(0, arrayList2);
                        }
                    }
                }
                v[] vVarArr = (v[]) arrayList.toArray(new v[arrayList.size()]);
                int A = A();
                int length2 = vVarArr.length;
                while (true) {
                    int i13 = length2 - 1;
                    if (length2 <= 0) {
                        break;
                    }
                    Log.d(f13420a, "Preparing SO source: " + vVarArr[i13]);
                    vVarArr[i13].f(A);
                    length2 = i13;
                }
                f13425f = vVarArr;
                f13426g++;
                Log.d(f13420a, "init finish: " + f13425f.length + " SO sources prepared");
            }
        } finally {
            Log.d(f13420a, "init exiting");
            f13424e.writeLock().unlock();
        }
    }

    public static boolean s() {
        ReentrantReadWriteLock reentrantReadWriteLock = f13424e;
        reentrantReadWriteLock.readLock().lock();
        try {
            boolean z9 = f13425f != null;
            reentrantReadWriteLock.readLock().unlock();
            return z9;
        } catch (Throwable th) {
            f13424e.readLock().unlock();
            throw th;
        }
    }

    public static boolean t(String str) {
        return u(str, 0);
    }

    public static boolean u(String str, int i4) throws UnsatisfiedLinkError {
        w wVar;
        boolean z9;
        ReentrantReadWriteLock reentrantReadWriteLock = f13424e;
        reentrantReadWriteLock.readLock().lock();
        try {
            if (f13425f == null) {
                if ("http://www.android.com/".equals(System.getProperty("java.vendor.url"))) {
                    g();
                } else {
                    synchronized (SoLoader.class) {
                        z9 = !f13429j.contains(str);
                        if (z9) {
                            w wVar2 = f13432m;
                            if (wVar2 != null) {
                                wVar2.a(str);
                            } else {
                                System.loadLibrary(str);
                            }
                        }
                    }
                    reentrantReadWriteLock.readLock().unlock();
                    return z9;
                }
            }
            reentrantReadWriteLock.readLock().unlock();
            if (f13442w && (wVar = f13432m) != null) {
                wVar.a(str);
                return true;
            }
            String b10 = p.b(str);
            return w(System.mapLibraryName(b10 != null ? b10 : str), str, b10, i4, null);
        } catch (Throwable th) {
            f13424e.readLock().unlock();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void v(String str, int i4, StrictMode.ThreadPolicy threadPolicy) {
        x(str, null, null, i4, threadPolicy);
    }

    private static boolean w(String str, @r7.h String str2, @r7.h String str3, int i4, @r7.h StrictMode.ThreadPolicy threadPolicy) {
        boolean z9;
        boolean z10 = false;
        do {
            try {
                z10 = x(str, str2, str3, i4, threadPolicy);
                z9 = false;
                continue;
            } catch (UnsatisfiedLinkError e4) {
                int i10 = f13426g;
                f13424e.writeLock().lock();
                try {
                    try {
                        z9 = true;
                        if (f13428i == null || !f13428i.h()) {
                            z9 = false;
                        } else {
                            Log.w(f13420a, "sApplicationSoSource updated during load: " + str + ", attempting load again.");
                            f13426g = f13426g + 1;
                        }
                        f13424e.writeLock().unlock();
                        if (f13426g == i10) {
                            throw e4;
                        }
                    } catch (IOException e10) {
                        throw new RuntimeException(e10);
                    }
                } catch (Throwable th) {
                    f13424e.writeLock().unlock();
                    throw th;
                }
            }
        } while (z9);
        return z10;
    }

    private static boolean x(String str, @r7.h String str2, @r7.h String str3, int i4, @r7.h StrictMode.ThreadPolicy threadPolicy) {
        boolean z9;
        Object obj;
        boolean z10 = false;
        if (TextUtils.isEmpty(str2) || !f13431l.contains(str2)) {
            synchronized (SoLoader.class) {
                HashSet<String> hashSet = f13429j;
                if (!hashSet.contains(str)) {
                    z9 = false;
                } else if (str3 == null) {
                    return false;
                } else {
                    z9 = true;
                }
                Map<String, Object> map = f13430k;
                if (map.containsKey(str)) {
                    obj = map.get(str);
                } else {
                    Object obj2 = new Object();
                    map.put(str, obj2);
                    obj = obj2;
                }
                ReentrantReadWriteLock reentrantReadWriteLock = f13424e;
                reentrantReadWriteLock.readLock().lock();
                try {
                    synchronized (obj) {
                        if (!z9) {
                            synchronized (SoLoader.class) {
                                if (hashSet.contains(str)) {
                                    if (str3 == null) {
                                        reentrantReadWriteLock.readLock().unlock();
                                        return false;
                                    }
                                    z9 = true;
                                }
                                if (!z9) {
                                    try {
                                        Log.d(f13420a, "About to load: " + str);
                                        j(str, i4, threadPolicy);
                                        synchronized (SoLoader.class) {
                                            Log.d(f13420a, "Loaded: " + str);
                                            hashSet.add(str);
                                        }
                                    } catch (UnsatisfiedLinkError e4) {
                                        String message = e4.getMessage();
                                        if (message != null && message.contains("unexpected e_machine:")) {
                                            throw new WrongAbiError(e4, message.substring(message.lastIndexOf("unexpected e_machine:")));
                                        }
                                        throw e4;
                                    }
                                }
                            }
                        }
                        if ((i4 & 16) == 0) {
                            if (!TextUtils.isEmpty(str2) && f13431l.contains(str2)) {
                                z10 = true;
                            }
                            if (str3 != null && !z10) {
                                boolean z11 = f13422c;
                                if (z11) {
                                    Api18TraceUtils.a("MergedSoMapping.invokeJniOnload[", str2, "]");
                                }
                                try {
                                    Log.d(f13420a, "About to merge: " + str2 + " / " + str);
                                    p.a(str2);
                                    f13431l.add(str2);
                                    if (z11) {
                                        Api18TraceUtils.b();
                                    }
                                } catch (UnsatisfiedLinkError e10) {
                                    throw new RuntimeException("Failed to call JNI_OnLoad from '" + str2 + "', which has been merged into '" + str + "'.  See comment for details.", e10);
                                }
                            }
                        }
                        reentrantReadWriteLock.readLock().unlock();
                        return !z9;
                    }
                } catch (Throwable th) {
                    f13424e.readLock().unlock();
                    throw th;
                }
            }
        }
        return false;
    }

    public static String y() {
        f13424e.readLock().lock();
        try {
            g();
            Log.d(f13420a, "makeLdLibraryPath");
            ArrayList arrayList = new ArrayList();
            v[] vVarArr = f13425f;
            if (vVarArr != null) {
                for (v vVar : vVarArr) {
                    vVar.a(arrayList);
                }
            }
            String join = TextUtils.join(":", arrayList);
            Log.d(f13420a, "makeLdLibraryPath final path: " + join);
            return join;
        } finally {
            f13424e.readLock().unlock();
        }
    }

    @r7.h
    public static String z(String str) {
        if (str == null) {
            return null;
        }
        String[] split = str.split(":");
        ArrayList arrayList = new ArrayList(split.length);
        for (String str2 : split) {
            if (!str2.contains("!")) {
                arrayList.add(str2);
            }
        }
        return TextUtils.join(":", arrayList);
    }
}
