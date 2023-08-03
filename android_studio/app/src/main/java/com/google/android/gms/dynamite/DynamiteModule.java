package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.util.DynamiteApi;
import dalvik.system.DelegateLastClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public final class DynamiteModule {
    @Nullable
    @s7.a("DynamiteModule.class")

    /* renamed from: h  reason: collision with root package name */
    private static Boolean f29335h = null;
    @Nullable
    @s7.a("DynamiteModule.class")

    /* renamed from: i  reason: collision with root package name */
    private static String f29336i = null;
    @s7.a("DynamiteModule.class")

    /* renamed from: j  reason: collision with root package name */
    private static boolean f29337j = false;
    @s7.a("DynamiteModule.class")

    /* renamed from: k  reason: collision with root package name */
    private static int f29338k = -1;
    @Nullable
    @s7.a("DynamiteModule.class")

    /* renamed from: p  reason: collision with root package name */
    private static q f29343p;
    @Nullable
    @s7.a("DynamiteModule.class")

    /* renamed from: q  reason: collision with root package name */
    private static r f29344q;

    /* renamed from: a  reason: collision with root package name */
    private final Context f29345a;

    /* renamed from: l  reason: collision with root package name */
    private static final ThreadLocal<n> f29339l = new ThreadLocal<>();

    /* renamed from: m  reason: collision with root package name */
    private static final ThreadLocal<Long> f29340m = new d();

    /* renamed from: n  reason: collision with root package name */
    private static final a.InterfaceC0199a f29341n = new e();
    @NonNull
    @u2.a

    /* renamed from: b  reason: collision with root package name */
    public static final a f29329b = new f();
    @NonNull
    @u2.a

    /* renamed from: c  reason: collision with root package name */
    public static final a f29330c = new g();
    @NonNull
    @u2.a

    /* renamed from: d  reason: collision with root package name */
    public static final a f29331d = new h();
    @NonNull
    @u2.a

    /* renamed from: e  reason: collision with root package name */
    public static final a f29332e = new i();
    @NonNull
    @u2.a

    /* renamed from: f  reason: collision with root package name */
    public static final a f29333f = new j();
    @NonNull
    @u2.a

    /* renamed from: g  reason: collision with root package name */
    public static final a f29334g = new k();
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public static final a f29342o = new l();

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    @DynamiteApi
    /* loaded from: classes2.dex */
    public static class DynamiteLoaderClassLoader {
        @Nullable
        @s7.a("DynamiteLoaderClassLoader.class")
        public static ClassLoader sClassLoader;
    }

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public static class LoadingException extends Exception {
        /* synthetic */ LoadingException(String str, p pVar) {
            super(str);
        }

        /* synthetic */ LoadingException(String str, Throwable th, p pVar) {
            super(str, th);
        }
    }

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    /* loaded from: classes2.dex */
    public interface a {

        /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
        /* renamed from: com.google.android.gms.dynamite.DynamiteModule$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public interface InterfaceC0199a {
            int a(@NonNull Context context, @NonNull String str, boolean z9) throws LoadingException;

            int b(@NonNull Context context, @NonNull String str);
        }

        /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
        /* loaded from: classes2.dex */
        public static class b {
            @u2.a

            /* renamed from: a  reason: collision with root package name */
            public int f29346a = 0;
            @u2.a

            /* renamed from: b  reason: collision with root package name */
            public int f29347b = 0;
            @u2.a

            /* renamed from: c  reason: collision with root package name */
            public int f29348c = 0;
        }

        @NonNull
        @u2.a
        b a(@NonNull Context context, @NonNull String str, @NonNull InterfaceC0199a interfaceC0199a) throws LoadingException;
    }

    private DynamiteModule(Context context) {
        u.k(context);
        this.f29345a = context;
    }

    @u2.a
    public static int a(@NonNull Context context, @NonNull String str) {
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 61);
            sb.append("com.google.android.gms.dynamite.descriptors.");
            sb.append(str);
            sb.append(".");
            sb.append("ModuleDescriptor");
            Class<?> loadClass = classLoader.loadClass(sb.toString());
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (!s.b(declaredField.get(null), str)) {
                String valueOf = String.valueOf(declaredField.get(null));
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 51 + String.valueOf(str).length());
                sb2.append("Module descriptor id '");
                sb2.append(valueOf);
                sb2.append("' didn't match expected id '");
                sb2.append(str);
                sb2.append("'");
                Log.e("DynamiteModule", sb2.toString());
                return 0;
            }
            return declaredField2.getInt(null);
        } catch (ClassNotFoundException unused) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 45);
            sb3.append("Local module descriptor class for ");
            sb3.append(str);
            sb3.append(" not found.");
            Log.w("DynamiteModule", sb3.toString());
            return 0;
        } catch (Exception e4) {
            String valueOf2 = String.valueOf(e4.getMessage());
            Log.e("DynamiteModule", valueOf2.length() != 0 ? "Failed to load module descriptor class: ".concat(valueOf2) : new String("Failed to load module descriptor class: "));
            return 0;
        }
    }

    @u2.a
    public static int c(@NonNull Context context, @NonNull String str) {
        return f(context, str, false);
    }

    @NonNull
    @u2.a
    public static DynamiteModule e(@NonNull Context context, @NonNull a aVar, @NonNull String str) throws LoadingException {
        Boolean bool;
        com.google.android.gms.dynamic.d M1;
        DynamiteModule dynamiteModule;
        r rVar;
        Boolean valueOf;
        com.google.android.gms.dynamic.d J1;
        ThreadLocal<n> threadLocal = f29339l;
        n nVar = threadLocal.get();
        n nVar2 = new n(null);
        threadLocal.set(nVar2);
        ThreadLocal<Long> threadLocal2 = f29340m;
        long longValue = threadLocal2.get().longValue();
        try {
            threadLocal2.set(Long.valueOf(SystemClock.elapsedRealtime()));
            a.b a10 = aVar.a(context, str, f29341n);
            int i4 = a10.f29346a;
            int i10 = a10.f29347b;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 68 + String.valueOf(str).length());
            sb.append("Considering local module ");
            sb.append(str);
            sb.append(":");
            sb.append(i4);
            sb.append(" and remote module ");
            sb.append(str);
            sb.append(":");
            sb.append(i10);
            Log.i("DynamiteModule", sb.toString());
            int i11 = a10.f29348c;
            if (i11 != 0) {
                if (i11 == -1) {
                    if (a10.f29346a != 0) {
                        i11 = -1;
                    }
                }
                if (i11 != 1 || a10.f29347b != 0) {
                    if (i11 == -1) {
                        DynamiteModule h4 = h(context, str);
                        if (longValue == 0) {
                            threadLocal2.remove();
                        } else {
                            threadLocal2.set(Long.valueOf(longValue));
                        }
                        Cursor cursor = nVar2.f29351a;
                        if (cursor != null) {
                            cursor.close();
                        }
                        threadLocal.set(nVar);
                        return h4;
                    } else if (i11 == 1) {
                        try {
                            int i12 = a10.f29347b;
                            try {
                                synchronized (DynamiteModule.class) {
                                    bool = f29335h;
                                }
                                if (bool != null) {
                                    if (bool.booleanValue()) {
                                        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 51);
                                        sb2.append("Selected remote version of ");
                                        sb2.append(str);
                                        sb2.append(", version >= ");
                                        sb2.append(i12);
                                        Log.i("DynamiteModule", sb2.toString());
                                        synchronized (DynamiteModule.class) {
                                            rVar = f29344q;
                                        }
                                        if (rVar != null) {
                                            n nVar3 = threadLocal.get();
                                            if (nVar3 != null && nVar3.f29351a != null) {
                                                Context applicationContext = context.getApplicationContext();
                                                Cursor cursor2 = nVar3.f29351a;
                                                com.google.android.gms.dynamic.f.n1(null);
                                                synchronized (DynamiteModule.class) {
                                                    valueOf = Boolean.valueOf(f29338k >= 2);
                                                }
                                                if (valueOf.booleanValue()) {
                                                    Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                                                    J1 = rVar.K1(com.google.android.gms.dynamic.f.n1(applicationContext), str, i12, com.google.android.gms.dynamic.f.n1(cursor2));
                                                } else {
                                                    Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                                                    J1 = rVar.J1(com.google.android.gms.dynamic.f.n1(applicationContext), str, i12, com.google.android.gms.dynamic.f.n1(cursor2));
                                                }
                                                Context context2 = (Context) com.google.android.gms.dynamic.f.z(J1);
                                                if (context2 != null) {
                                                    dynamiteModule = new DynamiteModule(context2);
                                                } else {
                                                    throw new LoadingException("Failed to get module context", null);
                                                }
                                            } else {
                                                throw new LoadingException("No result cursor", null);
                                            }
                                        } else {
                                            throw new LoadingException("DynamiteLoaderV2 was not cached.", null);
                                        }
                                    } else {
                                        StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 51);
                                        sb3.append("Selected remote version of ");
                                        sb3.append(str);
                                        sb3.append(", version >= ");
                                        sb3.append(i12);
                                        Log.i("DynamiteModule", sb3.toString());
                                        q k10 = k(context);
                                        if (k10 != null) {
                                            int J12 = k10.J1();
                                            if (J12 >= 3) {
                                                n nVar4 = threadLocal.get();
                                                if (nVar4 != null) {
                                                    M1 = k10.N1(com.google.android.gms.dynamic.f.n1(context), str, i12, com.google.android.gms.dynamic.f.n1(nVar4.f29351a));
                                                } else {
                                                    throw new LoadingException("No cached result cursor holder", null);
                                                }
                                            } else if (J12 == 2) {
                                                Log.w("DynamiteModule", "IDynamite loader version = 2");
                                                M1 = k10.O1(com.google.android.gms.dynamic.f.n1(context), str, i12);
                                            } else {
                                                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                                M1 = k10.M1(com.google.android.gms.dynamic.f.n1(context), str, i12);
                                            }
                                            if (com.google.android.gms.dynamic.f.z(M1) != null) {
                                                dynamiteModule = new DynamiteModule((Context) com.google.android.gms.dynamic.f.z(M1));
                                            } else {
                                                throw new LoadingException("Failed to load remote module.", null);
                                            }
                                        } else {
                                            throw new LoadingException("Failed to create IDynamiteLoader.", null);
                                        }
                                    }
                                    if (longValue == 0) {
                                        threadLocal2.remove();
                                    } else {
                                        threadLocal2.set(Long.valueOf(longValue));
                                    }
                                    Cursor cursor3 = nVar2.f29351a;
                                    if (cursor3 != null) {
                                        cursor3.close();
                                    }
                                    threadLocal.set(nVar);
                                    return dynamiteModule;
                                }
                                throw new LoadingException("Failed to determine which loading route to use.", null);
                            } catch (RemoteException e4) {
                                throw new LoadingException("Failed to load remote module.", e4, null);
                            } catch (LoadingException e10) {
                                throw e10;
                            } catch (Throwable th) {
                                y2.i.a(context, th);
                                throw new LoadingException("Failed to load remote module.", th, null);
                            }
                        } catch (LoadingException e11) {
                            String valueOf2 = String.valueOf(e11.getMessage());
                            Log.w("DynamiteModule", valueOf2.length() != 0 ? "Failed to load remote module: ".concat(valueOf2) : new String("Failed to load remote module: "));
                            int i13 = a10.f29346a;
                            if (i13 != 0 && aVar.a(context, str, new o(i13, 0)).f29348c == -1) {
                                DynamiteModule h10 = h(context, str);
                                if (longValue == 0) {
                                    f29340m.remove();
                                } else {
                                    f29340m.set(Long.valueOf(longValue));
                                }
                                Cursor cursor4 = nVar2.f29351a;
                                if (cursor4 != null) {
                                    cursor4.close();
                                }
                                f29339l.set(nVar);
                                return h10;
                            }
                            throw new LoadingException("Remote load failed. No local fallback found.", e11, null);
                        }
                    } else {
                        StringBuilder sb4 = new StringBuilder(47);
                        sb4.append("VersionPolicy returned invalid code:");
                        sb4.append(i11);
                        throw new LoadingException(sb4.toString(), null);
                    }
                }
            }
            int i14 = a10.f29346a;
            int i15 = a10.f29347b;
            StringBuilder sb5 = new StringBuilder(String.valueOf(str).length() + 92);
            sb5.append("No acceptable module ");
            sb5.append(str);
            sb5.append(" found. Local version is ");
            sb5.append(i14);
            sb5.append(" and remote version is ");
            sb5.append(i15);
            sb5.append(".");
            throw new LoadingException(sb5.toString(), null);
        } catch (Throwable th2) {
            if (longValue == 0) {
                f29340m.remove();
            } else {
                f29340m.set(Long.valueOf(longValue));
            }
            Cursor cursor5 = nVar2.f29351a;
            if (cursor5 != null) {
                cursor5.close();
            }
            f29339l.set(nVar);
            throw th2;
        }
    }

    public static int f(@NonNull Context context, @NonNull String str, boolean z9) {
        Field declaredField;
        Throwable th;
        RemoteException e4;
        Cursor cursor;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = f29335h;
                Cursor cursor2 = null;
                if (bool == null) {
                    try {
                        declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e10) {
                        String obj = e10.toString();
                        StringBuilder sb = new StringBuilder(obj.length() + 30);
                        sb.append("Failed to load module via V2: ");
                        sb.append(obj);
                        Log.w("DynamiteModule", sb.toString());
                        bool = Boolean.FALSE;
                    }
                    synchronized (declaredField.getDeclaringClass()) {
                        ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                        if (classLoader != null) {
                            if (classLoader == ClassLoader.getSystemClassLoader()) {
                                bool = Boolean.FALSE;
                            } else {
                                try {
                                    i(classLoader);
                                } catch (LoadingException unused) {
                                }
                                bool = Boolean.TRUE;
                            }
                        } else {
                            if (!f29337j) {
                                Boolean bool2 = Boolean.TRUE;
                                if (!bool2.equals(null)) {
                                    try {
                                        int g4 = g(context, str, z9);
                                        String str2 = f29336i;
                                        if (str2 != null && !str2.isEmpty()) {
                                            ClassLoader a10 = b.a();
                                            if (a10 == null) {
                                                if (Build.VERSION.SDK_INT >= 29) {
                                                    String str3 = f29336i;
                                                    u.k(str3);
                                                    a10 = new DelegateLastClassLoader(str3, ClassLoader.getSystemClassLoader());
                                                } else {
                                                    String str4 = f29336i;
                                                    u.k(str4);
                                                    a10 = new c(str4, ClassLoader.getSystemClassLoader());
                                                }
                                            }
                                            i(a10);
                                            declaredField.set(null, a10);
                                            f29335h = bool2;
                                            return g4;
                                        }
                                        return g4;
                                    } catch (LoadingException unused2) {
                                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                                        bool = Boolean.FALSE;
                                    }
                                }
                            }
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool = Boolean.FALSE;
                        }
                        f29335h = bool;
                    }
                }
                boolean booleanValue = bool.booleanValue();
                int i4 = 0;
                if (booleanValue) {
                    try {
                        return g(context, str, z9);
                    } catch (LoadingException e11) {
                        String valueOf = String.valueOf(e11.getMessage());
                        Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf) : new String("Failed to retrieve remote module version: "));
                        return 0;
                    }
                }
                q k10 = k(context);
                try {
                    if (k10 != null) {
                        try {
                            int J1 = k10.J1();
                            if (J1 >= 3) {
                                n nVar = f29339l.get();
                                if (nVar != null && (cursor = nVar.f29351a) != null) {
                                    i4 = cursor.getInt(0);
                                } else {
                                    Cursor cursor3 = (Cursor) com.google.android.gms.dynamic.f.z(k10.P1(com.google.android.gms.dynamic.f.n1(context), str, z9, f29340m.get().longValue()));
                                    if (cursor3 != null) {
                                        try {
                                            if (cursor3.moveToFirst()) {
                                                int i10 = cursor3.getInt(0);
                                                if (i10 <= 0 || !j(cursor3)) {
                                                    cursor2 = cursor3;
                                                }
                                                if (cursor2 != null) {
                                                    cursor2.close();
                                                }
                                                i4 = i10;
                                            }
                                        } catch (RemoteException e12) {
                                            e4 = e12;
                                            cursor2 = cursor3;
                                            String valueOf2 = String.valueOf(e4.getMessage());
                                            Log.w("DynamiteModule", valueOf2.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf2) : new String("Failed to retrieve remote module version: "));
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                            return i4;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            cursor2 = cursor3;
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                            throw th;
                                        }
                                    }
                                    Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                                    if (cursor3 != null) {
                                        cursor3.close();
                                    }
                                }
                            } else if (J1 == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2, no high precision latency measurement.");
                                i4 = k10.L1(com.google.android.gms.dynamic.f.n1(context), str, z9);
                            } else {
                                Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
                                i4 = k10.K1(com.google.android.gms.dynamic.f.n1(context), str, z9);
                            }
                        } catch (RemoteException e13) {
                            e4 = e13;
                        }
                    }
                    return i4;
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        } catch (Throwable th4) {
            y2.i.a(context, th4);
            throw th4;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00c6  */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int g(android.content.Context r10, java.lang.String r11, boolean r12) throws com.google.android.gms.dynamite.DynamiteModule.LoadingException {
        /*
            r0 = 0
            java.lang.ThreadLocal<java.lang.Long> r1 = com.google.android.gms.dynamite.DynamiteModule.f29340m     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb2
            java.lang.Object r1 = r1.get()     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb2
            java.lang.Long r1 = (java.lang.Long) r1     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb2
            long r1 = r1.longValue()     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb2
            android.content.ContentResolver r3 = r10.getContentResolver()     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb2
            java.lang.String r10 = "api_force_staging"
            java.lang.String r4 = "api"
            r9 = 1
            if (r9 == r12) goto L19
            r10 = r4
        L19:
            android.net.Uri$Builder r12 = new android.net.Uri$Builder     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb2
            r12.<init>()     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb2
            java.lang.String r4 = "content"
            android.net.Uri$Builder r12 = r12.scheme(r4)     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb2
            java.lang.String r4 = "com.google.android.gms.chimera"
            android.net.Uri$Builder r12 = r12.authority(r4)     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb2
            android.net.Uri$Builder r10 = r12.path(r10)     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb2
            android.net.Uri$Builder r10 = r10.appendPath(r11)     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb2
            java.lang.String r11 = "requestStartTime"
            java.lang.String r12 = java.lang.String.valueOf(r1)     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb2
            android.net.Uri$Builder r10 = r10.appendQueryParameter(r11, r12)     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb2
            android.net.Uri r4 = r10.build()     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb2
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r10 = r3.query(r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb2
            if (r10 == 0) goto La0
            boolean r11 = r10.moveToFirst()     // Catch: java.lang.Exception -> L9e java.lang.Throwable -> Lc2
            if (r11 == 0) goto La0
            r11 = 0
            int r12 = r10.getInt(r11)     // Catch: java.lang.Exception -> L9e java.lang.Throwable -> Lc2
            if (r12 <= 0) goto L8e
            java.lang.Class<com.google.android.gms.dynamite.DynamiteModule> r1 = com.google.android.gms.dynamite.DynamiteModule.class
            monitor-enter(r1)     // Catch: java.lang.Exception -> L9e java.lang.Throwable -> Lc2
            r2 = 2
            java.lang.String r2 = r10.getString(r2)     // Catch: java.lang.Throwable -> L8b
            com.google.android.gms.dynamite.DynamiteModule.f29336i = r2     // Catch: java.lang.Throwable -> L8b
            java.lang.String r2 = "loaderVersion"
            int r2 = r10.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L8b
            if (r2 < 0) goto L6f
            int r2 = r10.getInt(r2)     // Catch: java.lang.Throwable -> L8b
            com.google.android.gms.dynamite.DynamiteModule.f29338k = r2     // Catch: java.lang.Throwable -> L8b
        L6f:
            java.lang.String r2 = "disableStandaloneDynamiteLoader"
            int r2 = r10.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L8b
            if (r2 < 0) goto L82
            int r2 = r10.getInt(r2)     // Catch: java.lang.Throwable -> L8b
            if (r2 == 0) goto L7e
            goto L7f
        L7e:
            r9 = 0
        L7f:
            com.google.android.gms.dynamite.DynamiteModule.f29337j = r9     // Catch: java.lang.Throwable -> L8b
            r11 = r9
        L82:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L8b
            boolean r1 = j(r10)     // Catch: java.lang.Exception -> L9e java.lang.Throwable -> Lc2
            if (r1 == 0) goto L8e
            r10 = r0
            goto L8e
        L8b:
            r11 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L8b
            throw r11     // Catch: java.lang.Exception -> L9e java.lang.Throwable -> Lc2
        L8e:
            if (r11 != 0) goto L96
            if (r10 == 0) goto L95
            r10.close()
        L95:
            return r12
        L96:
            com.google.android.gms.dynamite.DynamiteModule$LoadingException r11 = new com.google.android.gms.dynamite.DynamiteModule$LoadingException     // Catch: java.lang.Exception -> L9e java.lang.Throwable -> Lc2
            java.lang.String r12 = "forcing fallback to container DynamiteLoader impl"
            r11.<init>(r12, r0)     // Catch: java.lang.Exception -> L9e java.lang.Throwable -> Lc2
            throw r11     // Catch: java.lang.Exception -> L9e java.lang.Throwable -> Lc2
        L9e:
            r11 = move-exception
            goto Lb5
        La0:
            java.lang.String r11 = "DynamiteModule"
            java.lang.String r12 = "Failed to retrieve remote module version."
            android.util.Log.w(r11, r12)     // Catch: java.lang.Exception -> L9e java.lang.Throwable -> Lc2
            com.google.android.gms.dynamite.DynamiteModule$LoadingException r11 = new com.google.android.gms.dynamite.DynamiteModule$LoadingException     // Catch: java.lang.Exception -> L9e java.lang.Throwable -> Lc2
            java.lang.String r12 = "Failed to connect to dynamite module ContentResolver."
            r11.<init>(r12, r0)     // Catch: java.lang.Exception -> L9e java.lang.Throwable -> Lc2
            throw r11     // Catch: java.lang.Exception -> L9e java.lang.Throwable -> Lc2
        Laf:
            r10 = move-exception
            r11 = r10
            goto Lc4
        Lb2:
            r10 = move-exception
            r11 = r10
            r10 = r0
        Lb5:
            boolean r12 = r11 instanceof com.google.android.gms.dynamite.DynamiteModule.LoadingException     // Catch: java.lang.Throwable -> Lc2
            if (r12 == 0) goto Lba
            throw r11     // Catch: java.lang.Throwable -> Lc2
        Lba:
            com.google.android.gms.dynamite.DynamiteModule$LoadingException r12 = new com.google.android.gms.dynamite.DynamiteModule$LoadingException     // Catch: java.lang.Throwable -> Lc2
            java.lang.String r1 = "V2 version check failed"
            r12.<init>(r1, r11, r0)     // Catch: java.lang.Throwable -> Lc2
            throw r12     // Catch: java.lang.Throwable -> Lc2
        Lc2:
            r11 = move-exception
            r0 = r10
        Lc4:
            if (r0 == 0) goto Lc9
            r0.close()
        Lc9:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.g(android.content.Context, java.lang.String, boolean):int");
    }

    private static DynamiteModule h(Context context, String str) {
        String valueOf = String.valueOf(str);
        Log.i("DynamiteModule", valueOf.length() != 0 ? "Selected local version of ".concat(valueOf) : new String("Selected local version of "));
        return new DynamiteModule(context.getApplicationContext());
    }

    @s7.a("DynamiteModule.class")
    private static void i(ClassLoader classLoader) throws LoadingException {
        r rVar;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                rVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                if (queryLocalInterface instanceof r) {
                    rVar = (r) queryLocalInterface;
                } else {
                    rVar = new r(iBinder);
                }
            }
            f29344q = rVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e4) {
            throw new LoadingException("Failed to instantiate dynamite loader", e4, null);
        }
    }

    private static boolean j(Cursor cursor) {
        n nVar = f29339l.get();
        if (nVar == null || nVar.f29351a != null) {
            return false;
        }
        nVar.f29351a = cursor;
        return true;
    }

    @Nullable
    private static q k(Context context) {
        q qVar;
        synchronized (DynamiteModule.class) {
            q qVar2 = f29343p;
            if (qVar2 != null) {
                return qVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    qVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    qVar = queryLocalInterface instanceof q ? (q) queryLocalInterface : new q(iBinder);
                }
                if (qVar != null) {
                    f29343p = qVar;
                    return qVar;
                }
            } catch (Exception e4) {
                String valueOf = String.valueOf(e4.getMessage());
                Log.e("DynamiteModule", valueOf.length() != 0 ? "Failed to load IDynamiteLoader from GmsCore: ".concat(valueOf) : new String("Failed to load IDynamiteLoader from GmsCore: "));
            }
            return null;
        }
    }

    @NonNull
    @u2.a
    public Context b() {
        return this.f29345a;
    }

    @NonNull
    @u2.a
    public IBinder d(@NonNull String str) throws LoadingException {
        try {
            return (IBinder) this.f29345a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e4) {
            String valueOf = String.valueOf(str);
            throw new LoadingException(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e4, null);
        }
    }
}
