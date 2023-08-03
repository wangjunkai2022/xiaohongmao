package io.sentry.android.core;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Environment;
import android.os.LocaleList;
import android.os.StatFs;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.DisplayMetrics;
import io.sentry.SentryLevel;
import io.sentry.android.core.internal.util.ConnectivityChecker;
import io.sentry.e3;
import io.sentry.h4;
import io.sentry.protocol.Device;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DefaultAndroidEventProcessor.java */
/* loaded from: classes4.dex */
public final class r0 implements io.sentry.z {
    @m8.k

    /* renamed from: f  reason: collision with root package name */
    static final String f82575f = "rooted";
    @m8.k

    /* renamed from: g  reason: collision with root package name */
    static final String f82576g = "kernelVersion";
    @m8.k

    /* renamed from: h  reason: collision with root package name */
    static final String f82577h = "emulator";
    @m8.k

    /* renamed from: i  reason: collision with root package name */
    static final String f82578i = "sideLoaded";
    @m8.k

    /* renamed from: a  reason: collision with root package name */
    final Context f82579a;
    @m8.k

    /* renamed from: b  reason: collision with root package name */
    final Future<Map<String, Object>> f82580b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final m0 f82581c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final io.sentry.android.core.internal.util.j f82582d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final SentryAndroidOptions f82583e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DefaultAndroidEventProcessor.java */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f82584a;

        static {
            int[] iArr = new int[ConnectivityChecker.Status.values().length];
            f82584a = iArr;
            try {
                iArr[ConnectivityChecker.Status.NOT_CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f82584a[ConnectivityChecker.Status.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public r0(@m8.g Context context, @m8.g m0 m0Var, @m8.g SentryAndroidOptions sentryAndroidOptions) {
        this(context, m0Var, new io.sentry.android.core.internal.util.j(context, m0Var, sentryAndroidOptions.getLogger()), sentryAndroidOptions);
    }

    @m8.h
    private ActivityManager.MemoryInfo A() {
        try {
            ActivityManager activityManager = (ActivityManager) this.f82579a.getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            if (activityManager != null) {
                activityManager.getMemoryInfo(memoryInfo);
                return memoryInfo;
            }
            this.f82583e.getLogger().c(SentryLevel.INFO, "Error getting MemoryInfo.", new Object[0]);
            return null;
        } catch (Throwable th) {
            this.f82583e.getLogger().b(SentryLevel.ERROR, "Error getting MemoryInfo.", th);
            return null;
        }
    }

    @m8.g
    private Long B(@m8.g ActivityManager.MemoryInfo memoryInfo) {
        return Long.valueOf(memoryInfo.totalMem);
    }

    @m8.g
    private io.sentry.protocol.h C() {
        io.sentry.protocol.h hVar = new io.sentry.protocol.h();
        hVar.o("Android");
        hVar.r(Build.VERSION.RELEASE);
        hVar.m(Build.DISPLAY);
        try {
            Object obj = this.f82580b.get().get(f82576g);
            if (obj != null) {
                hVar.n((String) obj);
            }
            Object obj2 = this.f82580b.get().get("rooted");
            if (obj2 != null) {
                hVar.q((Boolean) obj2);
            }
        } catch (Throwable th) {
            this.f82583e.getLogger().b(SentryLevel.ERROR, "Error getting OperatingSystem.", th);
        }
        return hVar;
    }

    @m8.h
    private Device.DeviceOrientation D() {
        Device.DeviceOrientation deviceOrientation;
        Throwable th;
        try {
            deviceOrientation = io.sentry.android.core.internal.util.f.a(this.f82579a.getResources().getConfiguration().orientation);
            if (deviceOrientation == null) {
                try {
                    this.f82583e.getLogger().c(SentryLevel.INFO, "No device orientation available (ORIENTATION_SQUARE|ORIENTATION_UNDEFINED)", new Object[0]);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    this.f82583e.getLogger().b(SentryLevel.ERROR, "Error getting device orientation.", th);
                    return deviceOrientation;
                }
            }
        } catch (Throwable th3) {
            deviceOrientation = null;
            th = th3;
        }
        return deviceOrientation;
    }

    @m8.h
    private Map<String, String> E() {
        String str;
        try {
            PackageInfo c10 = n0.c(this.f82579a, this.f82583e.getLogger(), this.f82581c);
            PackageManager packageManager = this.f82579a.getPackageManager();
            if (c10 != null && packageManager != null) {
                str = c10.packageName;
                try {
                    String installerPackageName = packageManager.getInstallerPackageName(str);
                    HashMap hashMap = new HashMap();
                    if (installerPackageName != null) {
                        hashMap.put("isSideLoaded", "false");
                        hashMap.put("installerStore", installerPackageName);
                    } else {
                        hashMap.put("isSideLoaded", "true");
                    }
                    return hashMap;
                } catch (IllegalArgumentException unused) {
                    this.f82583e.getLogger().c(SentryLevel.DEBUG, "%s package isn't installed.", str);
                    return null;
                }
            }
        } catch (IllegalArgumentException unused2) {
            str = null;
        }
        return null;
    }

    private TimeZone F() {
        if (Build.VERSION.SDK_INT >= 24) {
            LocaleList locales = this.f82579a.getResources().getConfiguration().getLocales();
            if (!locales.isEmpty()) {
                return Calendar.getInstance(locales.get(0)).getTimeZone();
            }
        }
        return Calendar.getInstance().getTimeZone();
    }

    @m8.h
    private Long G(@m8.g StatFs statFs) {
        try {
            return Long.valueOf(m(statFs) * o(statFs));
        } catch (Throwable th) {
            this.f82583e.getLogger().b(SentryLevel.ERROR, "Error getting total external storage amount.", th);
            return null;
        }
    }

    @m8.h
    private Long H(@m8.g StatFs statFs) {
        try {
            return Long.valueOf(m(statFs) * o(statFs));
        } catch (Throwable th) {
            this.f82583e.getLogger().b(SentryLevel.ERROR, "Error getting total internal storage amount.", th);
            return null;
        }
    }

    @m8.h
    private Long I(@m8.g StatFs statFs) {
        try {
            return Long.valueOf(h(statFs) * o(statFs));
        } catch (Throwable th) {
            this.f82583e.getLogger().b(SentryLevel.ERROR, "Error getting unused external storage amount.", th);
            return null;
        }
    }

    @m8.h
    private Long J(@m8.g StatFs statFs) {
        try {
            return Long.valueOf(h(statFs) * o(statFs));
        } catch (Throwable th) {
            this.f82583e.getLogger().b(SentryLevel.ERROR, "Error getting unused internal storage amount.", th);
            return null;
        }
    }

    @m8.h
    private Boolean K(@m8.g Intent intent) {
        try {
            int intExtra = intent.getIntExtra("plugged", -1);
            boolean z9 = true;
            if (intExtra != 1 && intExtra != 2) {
                z9 = false;
            }
            return Boolean.valueOf(z9);
        } catch (Throwable th) {
            this.f82583e.getLogger().b(SentryLevel.ERROR, "Error getting device charging state.", th);
            return null;
        }
    }

    private boolean L() {
        String externalStorageState = Environment.getExternalStorageState();
        return ("mounted".equals(externalStorageState) || "mounted_ro".equals(externalStorageState)) && !Environment.isExternalStorageEmulated();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @m8.g
    /* renamed from: N */
    public Map<String, Object> M() {
        HashMap hashMap = new HashMap();
        hashMap.put("rooted", Boolean.valueOf(this.f82582d.e()));
        String z9 = z();
        if (z9 != null) {
            hashMap.put(f82576g, z9);
        }
        hashMap.put(f82577h, this.f82581c.f());
        Map<String, String> E = E();
        if (E != null) {
            hashMap.put(f82578i, E);
        }
        return hashMap;
    }

    private void O(@m8.g e3 e3Var) {
        String str;
        io.sentry.protocol.h operatingSystem = e3Var.E().getOperatingSystem();
        e3Var.E().setOperatingSystem(C());
        if (operatingSystem != null) {
            String i4 = operatingSystem.i();
            if (i4 == null || i4.isEmpty()) {
                str = "os_1";
            } else {
                str = "os_" + i4.trim().toLowerCase(Locale.ROOT);
            }
            e3Var.E().put(str, operatingSystem);
        }
    }

    private void P(@m8.g e3 e3Var) {
        io.sentry.protocol.w U = e3Var.U();
        if (U == null) {
            e3Var.m0(q());
        } else if (U.j() == null) {
            U.q(s());
        }
    }

    private void Q(@m8.g e3 e3Var) {
        io.sentry.protocol.a app = e3Var.E().getApp();
        if (app == null) {
            app = new io.sentry.protocol.a();
        }
        R(app);
        Y(e3Var, app);
        e3Var.E().setApp(app);
    }

    private void R(@m8.g io.sentry.protocol.a aVar) {
        aVar.s(f());
        aVar.t(io.sentry.k.n(i0.d().c()));
    }

    @SuppressLint({"NewApi"})
    private void S(@m8.g io.sentry.protocol.a aVar, @m8.g PackageInfo packageInfo) {
        aVar.r(packageInfo.packageName);
        aVar.u(packageInfo.versionName);
        aVar.q(n0.d(packageInfo, this.f82581c));
        if (this.f82581c.d() >= 16) {
            HashMap hashMap = new HashMap();
            String[] strArr = packageInfo.requestedPermissions;
            int[] iArr = packageInfo.requestedPermissionsFlags;
            if (strArr != null && strArr.length > 0 && iArr != null && iArr.length > 0) {
                for (int i4 = 0; i4 < strArr.length; i4++) {
                    String str = strArr[i4];
                    hashMap.put(str.substring(str.lastIndexOf(46) + 1), (iArr[i4] & 2) == 2 ? "granted" : "not_granted");
                }
            }
            aVar.x(hashMap);
        }
    }

    private void T(@m8.g Device device) {
        device.k0(Build.SUPPORTED_ABIS);
    }

    private void U(@m8.g e3 e3Var, boolean z9, boolean z10) {
        P(e3Var);
        V(e3Var, z9, z10);
        O(e3Var);
        Z(e3Var);
    }

    private void V(@m8.g e3 e3Var, boolean z9, boolean z10) {
        if (e3Var.E().getDevice() == null) {
            e3Var.E().setDevice(r(z9, z10));
        }
    }

    private void W(@m8.g Device device, boolean z9) {
        Boolean bool;
        Intent i4 = i();
        if (i4 != null) {
            device.l0(j(i4));
            device.p0(K(i4));
            device.m0(k(i4));
        }
        int i10 = a.f82584a[ConnectivityChecker.b(this.f82579a, this.f82583e.getLogger()).ordinal()];
        if (i10 != 1) {
            bool = i10 != 2 ? null : Boolean.TRUE;
        } else {
            bool = Boolean.FALSE;
        }
        device.F0(bool);
        ActivityManager.MemoryInfo A = A();
        if (A != null) {
            device.B0(B(A));
            if (z9) {
                device.u0(Long.valueOf(A.availMem));
                device.z0(Boolean.valueOf(A.lowMemory));
            }
        }
        File externalFilesDir = this.f82579a.getExternalFilesDir(null);
        if (externalFilesDir != null) {
            StatFs statFs = new StatFs(externalFilesDir.getPath());
            device.M0(H(statFs));
            device.v0(J(statFs));
        }
        StatFs x9 = x(externalFilesDir);
        if (x9 != null) {
            device.s0(G(x9));
            device.r0(I(x9));
        }
        if (device.K() == null) {
            device.q0(ConnectivityChecker.c(this.f82579a, this.f82583e.getLogger(), this.f82581c));
        }
    }

    private void X(@m8.g e3 e3Var, @m8.g String str) {
        if (e3Var.G() == null) {
            e3Var.Z(str);
        }
    }

    private void Y(@m8.g e3 e3Var, @m8.g io.sentry.protocol.a aVar) {
        PackageInfo b10 = n0.b(this.f82579a, 4096, this.f82583e.getLogger(), this.f82581c);
        if (b10 != null) {
            X(e3Var, n0.d(b10, this.f82581c));
            S(aVar, b10);
        }
    }

    private void Z(@m8.g e3 e3Var) {
        try {
            Object obj = this.f82580b.get().get(f82578i);
            if (obj instanceof Map) {
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    e3Var.j0((String) entry.getKey(), (String) entry.getValue());
                }
            }
        } catch (Throwable th) {
            this.f82583e.getLogger().b(SentryLevel.ERROR, "Error getting side loaded info.", th);
        }
    }

    private void a0(@m8.g h4 h4Var) {
        if (h4Var.D0() != null) {
            for (io.sentry.protocol.t tVar : h4Var.D0()) {
                if (tVar.o() == null) {
                    tVar.r(Boolean.valueOf(io.sentry.android.core.internal.util.b.e().c(tVar)));
                }
            }
        }
    }

    private boolean b0(@m8.g e3 e3Var, @m8.g io.sentry.b0 b0Var) {
        if (io.sentry.util.h.s(b0Var)) {
            return true;
        }
        this.f82583e.getLogger().c(SentryLevel.DEBUG, "Event was cached so not applying data relevant to the current app execution/version: %s", e3Var.I());
        return false;
    }

    @m8.g
    private String d() {
        return Build.CPU_ABI;
    }

    @m8.g
    private String e() {
        return Build.CPU_ABI2;
    }

    @m8.h
    private String f() {
        try {
            ApplicationInfo applicationInfo = this.f82579a.getApplicationInfo();
            int i4 = applicationInfo.labelRes;
            if (i4 == 0) {
                CharSequence charSequence = applicationInfo.nonLocalizedLabel;
                if (charSequence != null) {
                    return charSequence.toString();
                }
                return this.f82579a.getPackageManager().getApplicationLabel(applicationInfo).toString();
            }
            return this.f82579a.getString(i4);
        } catch (Throwable th) {
            this.f82583e.getLogger().b(SentryLevel.ERROR, "Error getting application name.", th);
            return null;
        }
    }

    private int g(@m8.g StatFs statFs) {
        return statFs.getAvailableBlocks();
    }

    private long h(@m8.g StatFs statFs) {
        return statFs.getAvailableBlocksLong();
    }

    @m8.h
    private Intent i() {
        return this.f82579a.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    }

    @m8.h
    private Float j(@m8.g Intent intent) {
        try {
            int intExtra = intent.getIntExtra("level", -1);
            int intExtra2 = intent.getIntExtra("scale", -1);
            if (intExtra != -1 && intExtra2 != -1) {
                return Float.valueOf((intExtra / intExtra2) * 100.0f);
            }
            return null;
        } catch (Throwable th) {
            this.f82583e.getLogger().b(SentryLevel.ERROR, "Error getting device battery level.", th);
            return null;
        }
    }

    @m8.h
    private Float k(@m8.g Intent intent) {
        try {
            int intExtra = intent.getIntExtra("temperature", -1);
            if (intExtra != -1) {
                return Float.valueOf(intExtra / 10.0f);
            }
            return null;
        } catch (Throwable th) {
            this.f82583e.getLogger().b(SentryLevel.ERROR, "Error getting battery temperature.", th);
            return null;
        }
    }

    private int l(@m8.g StatFs statFs) {
        return statFs.getBlockCount();
    }

    private long m(@m8.g StatFs statFs) {
        return statFs.getBlockCountLong();
    }

    private int n(@m8.g StatFs statFs) {
        return statFs.getBlockSize();
    }

    private long o(@m8.g StatFs statFs) {
        return statFs.getBlockSizeLong();
    }

    @m8.h
    private Date p() {
        try {
            return io.sentry.k.d(System.currentTimeMillis() - SystemClock.elapsedRealtime());
        } catch (IllegalArgumentException e4) {
            this.f82583e.getLogger().a(SentryLevel.ERROR, e4, "Error getting the device's boot time.", new Object[0]);
            return null;
        }
    }

    @m8.g
    private Device r(boolean z9, boolean z10) {
        Device device = new Device();
        if (this.f82583e.isSendDefaultPii()) {
            device.E0(t());
        }
        device.A0(Build.MANUFACTURER);
        device.o0(Build.BRAND);
        device.t0(y());
        device.C0(Build.MODEL);
        device.D0(Build.ID);
        T(device);
        if (z9 && this.f82583e.isCollectAdditionalContext()) {
            W(device, z10);
        }
        device.G0(D());
        try {
            Object obj = this.f82580b.get().get(f82577h);
            if (obj != null) {
                device.L0((Boolean) obj);
            }
        } catch (Throwable th) {
            this.f82583e.getLogger().b(SentryLevel.ERROR, "Error getting emulator.", th);
        }
        DisplayMetrics u9 = u();
        if (u9 != null) {
            device.K0(Integer.valueOf(u9.widthPixels));
            device.J0(Integer.valueOf(u9.heightPixels));
            device.H0(Float.valueOf(u9.density));
            device.I0(Integer.valueOf(u9.densityDpi));
        }
        device.n0(p());
        device.N0(F());
        if (device.Q() == null) {
            device.w0(s());
        }
        Locale locale = Locale.getDefault();
        if (device.R() == null) {
            device.x0(locale.getLanguage());
        }
        if (device.S() == null) {
            device.y0(locale.toString());
        }
        return device;
    }

    @m8.h
    private String s() {
        try {
            return w0.a(this.f82579a);
        } catch (Throwable th) {
            this.f82583e.getLogger().b(SentryLevel.ERROR, "Error getting installationId.", th);
            return null;
        }
    }

    @m8.h
    private String t() {
        return Settings.Global.getString(this.f82579a.getContentResolver(), "device_name");
    }

    @m8.h
    private DisplayMetrics u() {
        try {
            return this.f82579a.getResources().getDisplayMetrics();
        } catch (Throwable th) {
            this.f82583e.getLogger().b(SentryLevel.ERROR, "Error getting DisplayMetrics.", th);
            return null;
        }
    }

    @m8.h
    private File[] v() {
        return this.f82579a.getExternalFilesDirs(null);
    }

    @m8.h
    private File w(@m8.h File file) {
        File[] v9 = v();
        if (v9 != null) {
            String absolutePath = file != null ? file.getAbsolutePath() : null;
            for (File file2 : v9) {
                if (file2 != null && (absolutePath == null || absolutePath.isEmpty() || !file2.getAbsolutePath().contains(absolutePath))) {
                    return file2;
                }
            }
        } else {
            this.f82583e.getLogger().c(SentryLevel.INFO, "Not possible to read getExternalFilesDirs", new Object[0]);
        }
        return null;
    }

    @m8.h
    private StatFs x(@m8.h File file) {
        if (!L()) {
            File w9 = w(file);
            if (w9 != null) {
                return new StatFs(w9.getPath());
            }
            this.f82583e.getLogger().c(SentryLevel.INFO, "Not possible to read external files directory", new Object[0]);
            return null;
        }
        this.f82583e.getLogger().c(SentryLevel.INFO, "External storage is not mounted or emulated.", new Object[0]);
        return null;
    }

    @m8.h
    private String y() {
        try {
            return Build.MODEL.split(" ", -1)[0];
        } catch (Throwable th) {
            this.f82583e.getLogger().b(SentryLevel.ERROR, "Error getting device family.", th);
            return null;
        }
    }

    @m8.h
    private String z() {
        String property = System.getProperty("os.version");
        File file = new File("/proc/version");
        if (file.canRead()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
                String readLine = bufferedReader.readLine();
                bufferedReader.close();
                return readLine;
            } catch (IOException e4) {
                this.f82583e.getLogger().b(SentryLevel.ERROR, "Exception while attempting to read kernel information", e4);
                return property;
            }
        }
        return property;
    }

    @Override // io.sentry.z
    @m8.g
    public h4 a(@m8.g h4 h4Var, @m8.g io.sentry.b0 b0Var) {
        boolean b02 = b0(h4Var, b0Var);
        if (b02) {
            Q(h4Var);
            a0(h4Var);
        }
        U(h4Var, true, b02);
        return h4Var;
    }

    @Override // io.sentry.z
    @m8.g
    public io.sentry.protocol.u b(@m8.g io.sentry.protocol.u uVar, @m8.g io.sentry.b0 b0Var) {
        boolean b02 = b0(uVar, b0Var);
        if (b02) {
            Q(uVar);
        }
        U(uVar, false, b02);
        return uVar;
    }

    @m8.g
    public io.sentry.protocol.w q() {
        io.sentry.protocol.w wVar = new io.sentry.protocol.w();
        wVar.q(s());
        return wVar;
    }

    r0(@m8.g Context context, @m8.g m0 m0Var, @m8.g io.sentry.android.core.internal.util.j jVar, @m8.g SentryAndroidOptions sentryAndroidOptions) {
        this.f82579a = (Context) io.sentry.util.l.c(context, "The application context is required.");
        this.f82581c = (m0) io.sentry.util.l.c(m0Var, "The BuildInfoProvider is required.");
        this.f82582d = (io.sentry.android.core.internal.util.j) io.sentry.util.l.c(jVar, "The RootChecker is required.");
        this.f82583e = (SentryAndroidOptions) io.sentry.util.l.c(sentryAndroidOptions, "The options object is required.");
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        this.f82580b = newSingleThreadExecutor.submit(new Callable() { // from class: io.sentry.android.core.q0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Map M;
                M = r0.this.M();
                return M;
            }
        });
        newSingleThreadExecutor.shutdown();
    }
}
