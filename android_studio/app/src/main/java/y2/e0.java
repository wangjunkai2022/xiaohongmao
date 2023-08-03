package y2;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.WorkSource;
import android.util.Log;
import androidx.annotation.NonNull;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class e0 {

    /* renamed from: a  reason: collision with root package name */
    private static final int f94687a = Process.myUid();

    /* renamed from: b  reason: collision with root package name */
    private static final Method f94688b;

    /* renamed from: c  reason: collision with root package name */
    private static final Method f94689c;

    /* renamed from: d  reason: collision with root package name */
    private static final Method f94690d;

    /* renamed from: e  reason: collision with root package name */
    private static final Method f94691e;

    /* renamed from: f  reason: collision with root package name */
    private static final Method f94692f;

    /* renamed from: g  reason: collision with root package name */
    private static final Method f94693g;

    /* renamed from: h  reason: collision with root package name */
    private static final Method f94694h;

    /* renamed from: i  reason: collision with root package name */
    private static final Method f94695i;

    /* JADX WARN: Can't wrap try/catch for region: R(24:1|(2:2|3)|4|(21:49|50|7|8|9|10|11|12|13|(12:41|42|16|(9:36|37|19|(6:31|32|22|(2:27|28)|24|25)|21|22|(0)|24|25)|18|19|(0)|21|22|(0)|24|25)|15|16|(0)|18|19|(0)|21|22|(0)|24|25)|6|7|8|9|10|11|12|13|(0)|15|16|(0)|18|19|(0)|21|22|(0)|24|25) */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0041, code lost:
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0053, code lost:
        r1 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x005c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0090 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00b4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0076 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            java.lang.Class<java.lang.String> r0 = java.lang.String.class
            java.lang.String r1 = "add"
            int r2 = android.os.Process.myUid()
            y2.e0.f94687a = r2
            r2 = 1
            r3 = 0
            r4 = 0
            java.lang.Class[] r5 = new java.lang.Class[r2]     // Catch: java.lang.Exception -> L1a
            java.lang.Class r6 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> L1a
            r5[r3] = r6     // Catch: java.lang.Exception -> L1a
            java.lang.Class<android.os.WorkSource> r6 = android.os.WorkSource.class
            java.lang.reflect.Method r5 = r6.getMethod(r1, r5)     // Catch: java.lang.Exception -> L1a
            goto L1b
        L1a:
            r5 = r4
        L1b:
            y2.e0.f94688b = r5
            boolean r5 = y2.v.g()
            r6 = 2
            if (r5 == 0) goto L33
            java.lang.Class[] r5 = new java.lang.Class[r6]     // Catch: java.lang.Exception -> L33
            java.lang.Class r7 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> L33
            r5[r3] = r7     // Catch: java.lang.Exception -> L33
            r5[r2] = r0     // Catch: java.lang.Exception -> L33
            java.lang.Class<android.os.WorkSource> r7 = android.os.WorkSource.class
            java.lang.reflect.Method r1 = r7.getMethod(r1, r5)     // Catch: java.lang.Exception -> L33
            goto L34
        L33:
            r1 = r4
        L34:
            y2.e0.f94689c = r1
            java.lang.Class<android.os.WorkSource> r1 = android.os.WorkSource.class
            java.lang.String r5 = "size"
            java.lang.Class[] r7 = new java.lang.Class[r3]     // Catch: java.lang.Exception -> L41
            java.lang.reflect.Method r1 = r1.getMethod(r5, r7)     // Catch: java.lang.Exception -> L41
            goto L42
        L41:
            r1 = r4
        L42:
            y2.e0.f94690d = r1
            java.lang.Class[] r1 = new java.lang.Class[r2]     // Catch: java.lang.Exception -> L53
            java.lang.Class r5 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> L53
            r1[r3] = r5     // Catch: java.lang.Exception -> L53
            java.lang.Class<android.os.WorkSource> r5 = android.os.WorkSource.class
            java.lang.String r7 = "get"
            java.lang.reflect.Method r1 = r5.getMethod(r7, r1)     // Catch: java.lang.Exception -> L53
            goto L54
        L53:
            r1 = r4
        L54:
            y2.e0.f94691e = r1
            boolean r1 = y2.v.g()
            if (r1 == 0) goto L6b
            java.lang.Class[] r1 = new java.lang.Class[r2]     // Catch: java.lang.Exception -> L6b
            java.lang.Class r5 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> L6b
            r1[r3] = r5     // Catch: java.lang.Exception -> L6b
            java.lang.Class<android.os.WorkSource> r5 = android.os.WorkSource.class
            java.lang.String r7 = "getName"
            java.lang.reflect.Method r1 = r5.getMethod(r7, r1)     // Catch: java.lang.Exception -> L6b
            goto L6c
        L6b:
            r1 = r4
        L6c:
            y2.e0.f94692f = r1
            boolean r1 = y2.v.o()
            java.lang.String r5 = "WorkSourceUtil"
            if (r1 == 0) goto L87
            java.lang.Class<android.os.WorkSource> r1 = android.os.WorkSource.class
            java.lang.String r7 = "createWorkChain"
            java.lang.Class[] r8 = new java.lang.Class[r3]     // Catch: java.lang.Exception -> L81
            java.lang.reflect.Method r1 = r1.getMethod(r7, r8)     // Catch: java.lang.Exception -> L81
            goto L88
        L81:
            r1 = move-exception
            java.lang.String r7 = "Missing WorkChain API createWorkChain"
            android.util.Log.w(r5, r7, r1)
        L87:
            r1 = r4
        L88:
            y2.e0.f94693g = r1
            boolean r1 = y2.v.o()
            if (r1 == 0) goto Lab
            java.lang.String r1 = "android.os.WorkSource$WorkChain"
            java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch: java.lang.Exception -> La5
            java.lang.Class[] r6 = new java.lang.Class[r6]     // Catch: java.lang.Exception -> La5
            java.lang.Class r7 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> La5
            r6[r3] = r7     // Catch: java.lang.Exception -> La5
            r6[r2] = r0     // Catch: java.lang.Exception -> La5
            java.lang.String r0 = "addNode"
            java.lang.reflect.Method r0 = r1.getMethod(r0, r6)     // Catch: java.lang.Exception -> La5
            goto Lac
        La5:
            r0 = move-exception
            java.lang.String r1 = "Missing WorkChain class"
            android.util.Log.w(r5, r1, r0)
        Lab:
            r0 = r4
        Lac:
            y2.e0.f94694h = r0
            boolean r0 = y2.v.o()
            if (r0 == 0) goto Lc1
            java.lang.Class<android.os.WorkSource> r0 = android.os.WorkSource.class
            java.lang.String r1 = "isEmpty"
            java.lang.Class[] r3 = new java.lang.Class[r3]     // Catch: java.lang.Exception -> Lc1
            java.lang.reflect.Method r4 = r0.getMethod(r1, r3)     // Catch: java.lang.Exception -> Lc1
            r4.setAccessible(r2)     // Catch: java.lang.Exception -> Lc1
        Lc1:
            y2.e0.f94695i = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: y2.e0.<clinit>():void");
    }

    private e0() {
    }

    @u2.a
    public static void a(@NonNull WorkSource workSource, int i4, @NonNull String str) {
        Method method = f94689c;
        if (method != null) {
            if (str == null) {
                str = "";
            }
            try {
                method.invoke(workSource, Integer.valueOf(i4), str);
                return;
            } catch (Exception e4) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e4);
                return;
            }
        }
        Method method2 = f94688b;
        if (method2 != null) {
            try {
                method2.invoke(workSource, Integer.valueOf(i4));
            } catch (Exception e10) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e10);
            }
        }
    }

    @NonNull
    @u2.a
    public static WorkSource b(@NonNull Context context, @NonNull String str) {
        if (context != null && context.getPackageManager() != null && str != null) {
            try {
                ApplicationInfo c10 = com.google.android.gms.common.wrappers.c.a(context).c(str, 0);
                if (c10 == null) {
                    Log.e("WorkSourceUtil", str.length() != 0 ? "Could not get applicationInfo from package: ".concat(str) : new String("Could not get applicationInfo from package: "));
                    return null;
                }
                int i4 = c10.uid;
                WorkSource workSource = new WorkSource();
                a(workSource, i4, str);
                return workSource;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e("WorkSourceUtil", str.length() != 0 ? "Could not find package: ".concat(str) : new String("Could not find package: "));
            }
        }
        return null;
    }

    @NonNull
    @u2.a
    public static WorkSource c(@NonNull Context context, @NonNull String str, @NonNull String str2) {
        String str3;
        Method method;
        String str4;
        if (context != null && context.getPackageManager() != null && str2 != null && str != null) {
            int i4 = -1;
            try {
                ApplicationInfo c10 = com.google.android.gms.common.wrappers.c.a(context).c(str, 0);
                if (c10 == null) {
                    if (str.length() != 0) {
                        str4 = "Could not get applicationInfo from package: ".concat(str);
                    } else {
                        str4 = new String("Could not get applicationInfo from package: ");
                    }
                    Log.e("WorkSourceUtil", str4);
                } else {
                    i4 = c10.uid;
                }
            } catch (PackageManager.NameNotFoundException unused) {
                if (str.length() != 0) {
                    str3 = "Could not find package: ".concat(str);
                } else {
                    str3 = new String("Could not find package: ");
                }
                Log.e("WorkSourceUtil", str3);
            }
            if (i4 < 0) {
                return null;
            }
            WorkSource workSource = new WorkSource();
            Method method2 = f94693g;
            if (method2 != null && (method = f94694h) != null) {
                try {
                    Object invoke = method2.invoke(workSource, new Object[0]);
                    int i10 = f94687a;
                    if (i4 != i10) {
                        method.invoke(invoke, Integer.valueOf(i4), str);
                    }
                    method.invoke(invoke, Integer.valueOf(i10), str2);
                } catch (Exception e4) {
                    Log.w("WorkSourceUtil", "Unable to assign chained blame through WorkSource", e4);
                }
            } else {
                a(workSource, i4, str);
            }
            return workSource;
        }
        Log.w("WorkSourceUtil", "Unexpected null arguments");
        return null;
    }

    @NonNull
    @u2.a
    public static List<String> d(@NonNull WorkSource workSource) {
        ArrayList arrayList = new ArrayList();
        int g4 = workSource == null ? 0 : g(workSource);
        if (g4 != 0) {
            for (int i4 = 0; i4 < g4; i4++) {
                Method method = f94692f;
                String str = null;
                if (method != null) {
                    try {
                        str = (String) method.invoke(workSource, Integer.valueOf(i4));
                    } catch (Exception e4) {
                        Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e4);
                    }
                }
                if (!b0.b(str)) {
                    com.google.android.gms.common.internal.u.k(str);
                    arrayList.add(str);
                }
            }
        }
        return arrayList;
    }

    @u2.a
    public static boolean e(@NonNull Context context) {
        return (context == null || context.getPackageManager() == null || com.google.android.gms.common.wrappers.c.a(context).b("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) != 0) ? false : true;
    }

    @u2.a
    public static boolean f(@NonNull WorkSource workSource) {
        Method method = f94695i;
        if (method != null) {
            try {
                Object invoke = method.invoke(workSource, new Object[0]);
                com.google.android.gms.common.internal.u.k(invoke);
                return ((Boolean) invoke).booleanValue();
            } catch (Exception e4) {
                Log.e("WorkSourceUtil", "Unable to check WorkSource emptiness", e4);
            }
        }
        return g(workSource) == 0;
    }

    public static int g(@NonNull WorkSource workSource) {
        Method method = f94690d;
        if (method != null) {
            try {
                Object invoke = method.invoke(workSource, new Object[0]);
                com.google.android.gms.common.internal.u.k(invoke);
                return ((Integer) invoke).intValue();
            } catch (Exception e4) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e4);
            }
        }
        return 0;
    }
}
