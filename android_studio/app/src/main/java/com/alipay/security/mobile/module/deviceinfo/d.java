package com.alipay.security.mobile.module.deviceinfo;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.graphics.Point;
import android.hardware.Camera;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import io.sentry.instrumentation.file.m;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static d f7018a = new d();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements Comparator<Camera.Size> {
        private a() {
        }

        /* synthetic */ a(d dVar, byte b10) {
            this();
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(Camera.Size size, Camera.Size size2) {
            int i4 = size.width;
            int i10 = size2.width;
            if (i4 == i10) {
                return 0;
            }
            return i4 > i10 ? 1 : -1;
        }
    }

    private d() {
    }

    private static float a(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Point point = new Point(displayMetrics.widthPixels, displayMetrics.heightPixels);
        return point.y / point.x;
    }

    private static String b() {
        m mVar;
        Throwable th;
        BufferedReader bufferedReader;
        try {
            mVar = new m("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq");
            try {
                bufferedReader = new BufferedReader(mVar, 8192);
            } catch (IOException unused) {
                bufferedReader = null;
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
            }
            try {
                String readLine = bufferedReader.readLine();
                if (!t.a.e(readLine)) {
                    String trim = readLine.trim();
                    try {
                        bufferedReader.close();
                    } catch (IOException unused2) {
                    }
                    try {
                        mVar.close();
                    } catch (IOException unused3) {
                    }
                    return trim;
                }
            } catch (IOException unused4) {
            } catch (Throwable th3) {
                th = th3;
                try {
                    bufferedReader.close();
                } catch (IOException unused5) {
                }
                try {
                    mVar.close();
                } catch (IOException unused6) {
                }
                throw th;
            }
        } catch (IOException unused7) {
            bufferedReader = null;
            mVar = null;
        } catch (Throwable th4) {
            mVar = null;
            th = th4;
            bufferedReader = null;
        }
        try {
            bufferedReader.close();
        } catch (IOException unused8) {
        }
        try {
            mVar.close();
        } catch (IOException unused9) {
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0097, code lost:
        if (r2 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009b, code lost:
        if (r2 == null) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String c(android.content.Context r14, int r15) {
        /*
            r13 = this;
            java.lang.String r0 = "%2$d*%3$d"
            java.lang.String r1 = ""
            android.content.Context r14 = r14.getApplicationContext()
            float r14 = a(r14)
            r2 = 0
            android.hardware.Camera r2 = android.hardware.Camera.open(r15)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            android.hardware.Camera$Parameters r3 = r2.getParameters()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            java.util.List r3 = r3.getSupportedPreviewSizes()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            com.alipay.security.mobile.module.deviceinfo.d$a r4 = new com.alipay.security.mobile.module.deviceinfo.d$a     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            r5 = 0
            r4.<init>(r13, r5)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            java.util.Collections.sort(r3, r4)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            java.util.Iterator r4 = r3.iterator()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            r6 = 0
        L27:
            boolean r7 = r4.hasNext()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            r8 = 1
            if (r7 == 0) goto L56
            java.lang.Object r7 = r4.next()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            android.hardware.Camera$Size r7 = (android.hardware.Camera.Size) r7     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            int r9 = r7.width     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            r10 = 600(0x258, float:8.41E-43)
            if (r9 < r10) goto L53
            float r9 = (float) r9     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            int r7 = r7.height     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            float r7 = (float) r7     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            float r9 = r9 / r7
            float r9 = r9 - r14
            float r7 = java.lang.Math.abs(r9)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            double r9 = (double) r7     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            r11 = 4584304132692975288(0x3f9eb851eb851eb8, double:0.03)
            int r7 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r7 > 0) goto L50
            r7 = 1
            goto L51
        L50:
            r7 = 0
        L51:
            if (r7 != 0) goto L56
        L53:
            int r6 = r6 + 1
            goto L27
        L56:
            int r14 = r3.size()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            if (r6 != r14) goto L62
            int r14 = r3.size()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            int r6 = r14 + (-1)
        L62:
            java.lang.Object r14 = r3.get(r6)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            android.hardware.Camera$Size r14 = (android.hardware.Camera.Size) r14     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            if (r14 == 0) goto L8b
            java.util.Locale r3 = java.util.Locale.ENGLISH     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            r4 = 3
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            java.lang.Integer r15 = java.lang.Integer.valueOf(r15)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            r4[r5] = r15     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            int r15 = r14.width     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            java.lang.Integer r15 = java.lang.Integer.valueOf(r15)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            r4[r8] = r15     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            r15 = 2
            int r14 = r14.height     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            java.lang.Integer r14 = java.lang.Integer.valueOf(r14)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            r4[r15] = r14     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            java.lang.String r14 = java.lang.String.format(r3, r0, r4)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            r1 = r14
        L8b:
            r2.release()
            goto L9e
        L8f:
            r14 = move-exception
            if (r2 == 0) goto L95
            r2.release()
        L95:
            throw r14
        L96:
            if (r2 == 0) goto L9e
            goto L8b
        L9a:
            if (r2 == 0) goto L9e
            goto L8b
        L9e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.security.mobile.module.deviceinfo.d.c(android.content.Context, int):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0032, code lost:
        r1 = r3[1].trim();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0038, code lost:
        r2.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String d() {
        /*
            java.lang.String r0 = "/proc/cpuinfo"
            r1 = 0
            io.sentry.instrumentation.file.m r2 = new io.sentry.instrumentation.file.m     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L5b
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L5b
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L43 java.io.IOException -> L48
            r3 = 8192(0x2000, float:1.14794E-41)
            r0.<init>(r2, r3)     // Catch: java.lang.Throwable -> L43 java.io.IOException -> L48
        Lf:
            java.lang.String r3 = r0.readLine()     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L41
            if (r3 == 0) goto L38
            boolean r4 = t.a.e(r3)     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L41
            if (r4 != 0) goto Lf
            java.lang.String r4 = ":"
            java.lang.String[] r3 = r3.split(r4)     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L41
            if (r3 == 0) goto Lf
            int r4 = r3.length     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L41
            r5 = 1
            if (r4 <= r5) goto Lf
            r4 = 0
            r4 = r3[r4]     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L41
            java.lang.String r6 = "BogoMIPS"
            boolean r4 = r4.contains(r6)     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L41
            if (r4 == 0) goto Lf
            r3 = r3[r5]     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L41
            java.lang.String r1 = r3.trim()     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L41
        L38:
            r2.close()     // Catch: java.io.IOException -> L3b
        L3b:
            r0.close()     // Catch: java.io.IOException -> L3e
        L3e:
            return r1
        L3f:
            r1 = move-exception
            goto L4e
        L41:
            goto L5d
        L43:
            r0 = move-exception
            r7 = r1
            r1 = r0
            r0 = r7
            goto L4e
        L48:
            r0 = r1
            goto L5d
        L4a:
            r0 = move-exception
            r2 = r1
            r1 = r0
            r0 = r2
        L4e:
            if (r2 == 0) goto L55
            r2.close()     // Catch: java.io.IOException -> L54
            goto L55
        L54:
        L55:
            if (r0 == 0) goto L5a
            r0.close()     // Catch: java.io.IOException -> L5a
        L5a:
            throw r1
        L5b:
            r0 = r1
            r2 = r0
        L5d:
            if (r2 == 0) goto L64
            r2.close()     // Catch: java.io.IOException -> L63
            goto L64
        L63:
        L64:
            if (r0 == 0) goto L69
            r0.close()     // Catch: java.io.IOException -> L69
        L69:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.security.mobile.module.deviceinfo.d.d():java.lang.String");
    }

    public static d q() {
        return f7018a;
    }

    public String A(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getSimSerialNumber();
        } catch (Exception unused) {
            return "";
        }
    }

    public String B(Context context) {
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            StringBuilder sb = new StringBuilder();
            sb.append(displayMetrics.densityDpi);
            return sb.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public String C(Context context) {
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            StringBuilder sb = new StringBuilder();
            sb.append(displayMetrics.heightPixels);
            return sb.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public String D(Context context) {
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            return Integer.toString(displayMetrics.widthPixels) + "*" + Integer.toString(displayMetrics.heightPixels);
        } catch (Exception unused) {
            return null;
        }
    }

    public String E(Context context) {
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            StringBuilder sb = new StringBuilder();
            sb.append(displayMetrics.widthPixels);
            return sb.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public String F(Context context) {
        List<Sensor> sensorList;
        if (context != null) {
            try {
                SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
                if (sensorManager == null || (sensorList = sensorManager.getSensorList(-1)) == null || sensorList.size() <= 0) {
                    return null;
                }
                StringBuilder sb = new StringBuilder();
                for (Sensor sensor : sensorList) {
                    sb.append(sensor.getName());
                    sb.append(sensor.getVersion());
                    sb.append(sensor.getVendor());
                }
                return t.a.h(sb.toString());
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public String G() {
        try {
            return Build.SERIAL;
        } catch (Exception unused) {
            return "";
        }
    }

    public String H() {
        long j4;
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            j4 = statFs.getBlockCount() * statFs.getBlockSize();
        } catch (Exception unused) {
            j4 = 0;
        }
        return String.valueOf(j4);
    }

    public String I(Context context) {
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    return telephonyManager.getVoiceMailNumber();
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public String J(Context context) {
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    return telephonyManager.getVoiceMailAlphaTag();
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public String K(Context context) {
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            return wifiManager.isWifiEnabled() ? wifiManager.getConnectionInfo().getBSSID() : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    public Map<String, Integer> e(Context context) {
        HashMap hashMap = new HashMap();
        try {
            List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
            if (installedPackages != null && installedPackages.size() > 0) {
                for (PackageInfo packageInfo : installedPackages) {
                    hashMap.put(packageInfo.packageName, Integer.valueOf(packageInfo.applicationInfo.uid));
                }
            }
        } catch (Throwable unused) {
        }
        return hashMap;
    }

    public String f(Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception unused) {
            return null;
        }
    }

    public String g() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls.newInstance(), "gsm.version.baseband", "no message");
        } catch (Exception unused) {
            return null;
        }
    }

    public String h() {
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            return (defaultAdapter == null || defaultAdapter.isEnabled()) ? defaultAdapter.getAddress() : "";
        } catch (Exception unused) {
            return null;
        }
    }

    public boolean i() {
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter != null) {
                return defaultAdapter.isEnabled();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x006d, code lost:
        if (r3 == null) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String j() {
        /*
            r7 = this;
            java.lang.String r0 = "-1"
            r1 = 0
            java.lang.Runtime r2 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L65
            java.lang.String r3 = "cat /proc/cpuinfo | grep Hardware"
            java.lang.Process r2 = r2.exec(r3)     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L65
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L65
            java.io.InputStream r2 = r2.getInputStream()     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L65
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L65
            java.io.LineNumberReader r2 = new java.io.LineNumberReader     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            r1 = 1
            r4 = 1
        L1d:
            r5 = 100
            if (r4 >= r5) goto L4b
            java.lang.String r5 = r2.readLine()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            if (r5 == 0) goto L4b
            java.lang.String r6 = "Hardware"
            int r6 = r5.indexOf(r6)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            if (r6 < 0) goto L43
            java.lang.String r4 = ":"
            int r4 = r5.indexOf(r4)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            int r4 = r4 + r1
            int r1 = r5.length()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            java.lang.String r1 = r5.substring(r4, r1)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            java.lang.String r0 = r1.trim()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            goto L4b
        L43:
            int r4 = r4 + 1
            goto L1d
        L46:
            r0 = move-exception
            r1 = r2
            goto L58
        L49:
            r1 = r2
            goto L66
        L4b:
            r2.close()     // Catch: java.io.IOException -> L4e
        L4e:
            r3.close()     // Catch: java.io.IOException -> L70
            goto L70
        L52:
            r0 = move-exception
            goto L58
        L54:
            goto L66
        L56:
            r0 = move-exception
            r3 = r1
        L58:
            if (r1 == 0) goto L5f
            r1.close()     // Catch: java.io.IOException -> L5e
            goto L5f
        L5e:
        L5f:
            if (r3 == 0) goto L64
            r3.close()     // Catch: java.io.IOException -> L64
        L64:
            throw r0
        L65:
            r3 = r1
        L66:
            if (r1 == 0) goto L6d
            r1.close()     // Catch: java.io.IOException -> L6c
            goto L6d
        L6c:
        L6d:
            if (r3 == 0) goto L70
            goto L4e
        L70:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.security.mobile.module.deviceinfo.d.j():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x006d, code lost:
        if (r3 == null) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String k() {
        /*
            r7 = this;
            java.lang.String r0 = "0000000000000000"
            r1 = 0
            java.lang.Runtime r2 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L65
            java.lang.String r3 = "cat /proc/cpuinfo | grep Serial"
            java.lang.Process r2 = r2.exec(r3)     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L65
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L65
            java.io.InputStream r2 = r2.getInputStream()     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L65
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L65
            java.io.LineNumberReader r2 = new java.io.LineNumberReader     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            r1 = 1
            r4 = 1
        L1d:
            r5 = 100
            if (r4 >= r5) goto L4b
            java.lang.String r5 = r2.readLine()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            if (r5 == 0) goto L4b
            java.lang.String r6 = "Serial"
            int r6 = r5.indexOf(r6)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            if (r6 < 0) goto L43
            java.lang.String r4 = ":"
            int r4 = r5.indexOf(r4)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            int r4 = r4 + r1
            int r1 = r5.length()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            java.lang.String r1 = r5.substring(r4, r1)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            java.lang.String r0 = r1.trim()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            goto L4b
        L43:
            int r4 = r4 + 1
            goto L1d
        L46:
            r0 = move-exception
            r1 = r2
            goto L58
        L49:
            r1 = r2
            goto L66
        L4b:
            r2.close()     // Catch: java.io.IOException -> L4e
        L4e:
            r3.close()     // Catch: java.io.IOException -> L70
            goto L70
        L52:
            r0 = move-exception
            goto L58
        L54:
            goto L66
        L56:
            r0 = move-exception
            r3 = r1
        L58:
            if (r1 == 0) goto L5f
            r1.close()     // Catch: java.io.IOException -> L5e
            goto L5f
        L5e:
        L5f:
            if (r3 == 0) goto L64
            r3.close()     // Catch: java.io.IOException -> L64
        L64:
            throw r0
        L65:
            r3 = r1
        L66:
            if (r1 == 0) goto L6d
            r1.close()     // Catch: java.io.IOException -> L6c
            goto L6d
        L6c:
        L6d:
            if (r3 == 0) goto L70
            goto L4e
        L70:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.security.mobile.module.deviceinfo.d.k():java.lang.String");
    }

    public String l() {
        try {
            return String.valueOf(new File("/sys/devices/system/cpu/").listFiles(new c(this)).length);
        } catch (Exception unused) {
            return "1";
        }
    }

    public String m() {
        String b10 = b();
        return !t.a.e(b10) ? b10 : d();
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0053, code lost:
        if (r2 == null) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String n() {
        /*
            r7 = this;
            r0 = 0
            io.sentry.instrumentation.file.m r1 = new io.sentry.instrumentation.file.m     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L4a
            java.lang.String r2 = "/proc/cpuinfo"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L4a
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L37
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L37
            java.lang.String r3 = r2.readLine()     // Catch: java.lang.Throwable -> L2e java.io.IOException -> L30
            java.lang.String r4 = ":\\s+"
            r5 = 2
            java.lang.String[] r3 = r3.split(r4, r5)     // Catch: java.lang.Throwable -> L2e java.io.IOException -> L30
            if (r3 == 0) goto L27
            int r4 = r3.length     // Catch: java.lang.Throwable -> L2e java.io.IOException -> L30
            r5 = 1
            if (r4 <= r5) goto L27
            r0 = r3[r5]     // Catch: java.lang.Throwable -> L2e java.io.IOException -> L30
            r1.close()     // Catch: java.io.IOException -> L23
        L23:
            r2.close()     // Catch: java.io.IOException -> L26
        L26:
            return r0
        L27:
            r1.close()     // Catch: java.io.IOException -> L2a
        L2a:
            r2.close()     // Catch: java.io.IOException -> L56
            goto L56
        L2e:
            r0 = move-exception
            goto L3d
        L30:
            goto L4c
        L32:
            r2 = move-exception
            r6 = r2
            r2 = r0
            r0 = r6
            goto L3d
        L37:
            r2 = r0
            goto L4c
        L39:
            r1 = move-exception
            r2 = r0
            r0 = r1
            r1 = r2
        L3d:
            if (r1 == 0) goto L44
            r1.close()     // Catch: java.io.IOException -> L43
            goto L44
        L43:
        L44:
            if (r2 == 0) goto L49
            r2.close()     // Catch: java.io.IOException -> L49
        L49:
            throw r0
        L4a:
            r1 = r0
            r2 = r1
        L4c:
            if (r1 == 0) goto L53
            r1.close()     // Catch: java.io.IOException -> L52
            goto L53
        L52:
        L53:
            if (r2 == 0) goto L56
            goto L2a
        L56:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.security.mobile.module.deviceinfo.d.n():java.lang.String");
    }

    public String o(Context context) {
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    return telephonyManager.getDeviceId();
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public String p(Context context) {
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    return telephonyManager.getSubscriberId();
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String r() {
        /*
            r7 = this;
            java.lang.String r0 = ""
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L6c
            java.lang.String r2 = "/proc/version"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L6c
            java.io.FileInputStream r1 = io.sentry.instrumentation.file.h.b.d(r1, r2)     // Catch: java.lang.Throwable -> L6c
            r2 = 0
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L47
            java.io.InputStreamReader r4 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L47
            r4.<init>(r1)     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L47
            r5 = 8192(0x2000, float:1.14794E-41)
            r3.<init>(r4, r5)     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L47
            r2 = r0
        L1b:
            java.lang.String r4 = r3.readLine()     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3b
            if (r4 == 0) goto L31
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3b
            r5.<init>()     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3b
            r5.append(r2)     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3b
            r5.append(r4)     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3b
            java.lang.String r2 = r5.toString()     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3b
            goto L1b
        L31:
            r3.close()     // Catch: java.io.IOException -> L4f
            r1.close()     // Catch: java.io.IOException -> L4f
            goto L4f
        L38:
            r0 = move-exception
            r2 = r3
            goto L40
        L3b:
            r6 = r3
            r3 = r2
            r2 = r6
            goto L48
        L3f:
            r0 = move-exception
        L40:
            r2.close()     // Catch: java.io.IOException -> L46
            r1.close()     // Catch: java.io.IOException -> L46
        L46:
            throw r0
        L47:
            r3 = r0
        L48:
            r2.close()     // Catch: java.io.IOException -> L4e
            r1.close()     // Catch: java.io.IOException -> L4e
        L4e:
            r2 = r3
        L4f:
            boolean r1 = t.a.f(r2)
            if (r1 == 0) goto L6c
            java.lang.String r1 = "version "
            int r1 = r2.indexOf(r1)
            int r1 = r1 + 8
            java.lang.String r1 = r2.substring(r1)
            java.lang.String r2 = " "
            int r2 = r1.indexOf(r2)
            r3 = 0
            java.lang.String r0 = r1.substring(r3, r2)
        L6c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.security.mobile.module.deviceinfo.d.r():java.lang.String");
    }

    public String s(Context context) {
        try {
            return ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0050, code lost:
        if (r0 == null) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String t() {
        /*
            r7 = this;
            java.lang.String r0 = "/proc/meminfo"
            r1 = 0
            r2 = 0
            io.sentry.instrumentation.file.m r4 = new io.sentry.instrumentation.file.m     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L48
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L48
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L2f java.io.IOException -> L34
            r5 = 8192(0x2000, float:1.14794E-41)
            r0.<init>(r4, r5)     // Catch: java.lang.Throwable -> L2f java.io.IOException -> L34
            java.lang.String r1 = r0.readLine()     // Catch: java.lang.Throwable -> L2d java.io.IOException -> L35
            if (r1 == 0) goto L26
            java.lang.String r5 = "\\s+"
            java.lang.String[] r1 = r1.split(r5)     // Catch: java.lang.Throwable -> L2d java.io.IOException -> L35
            r5 = 1
            r1 = r1[r5]     // Catch: java.lang.Throwable -> L2d java.io.IOException -> L35
            int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.Throwable -> L2d java.io.IOException -> L35
            long r1 = (long) r1
            r2 = r1
        L26:
            r4.close()     // Catch: java.io.IOException -> L29
        L29:
            r0.close()     // Catch: java.io.IOException -> L53
            goto L53
        L2d:
            r1 = move-exception
            goto L3b
        L2f:
            r0 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
            goto L3b
        L34:
            r0 = r1
        L35:
            r1 = r4
            goto L49
        L37:
            r0 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L3b:
            if (r4 == 0) goto L42
            r4.close()     // Catch: java.io.IOException -> L41
            goto L42
        L41:
        L42:
            if (r0 == 0) goto L47
            r0.close()     // Catch: java.io.IOException -> L47
        L47:
            throw r1
        L48:
            r0 = r1
        L49:
            if (r1 == 0) goto L50
            r1.close()     // Catch: java.io.IOException -> L4f
            goto L50
        L4f:
        L50:
            if (r0 == 0) goto L53
            goto L29
        L53:
            java.lang.String r0 = java.lang.String.valueOf(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.security.mobile.module.deviceinfo.d.t():java.lang.String");
    }

    public String u(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                return String.valueOf(telephonyManager.getNetworkType());
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public String v(Context context) {
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    return telephonyManager.getSimOperatorName();
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public String w(Context context) {
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    return telephonyManager.getSimOperator();
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public String x(Context context) {
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                return telephonyManager != null ? telephonyManager.getLine1Number() : "";
            } catch (Exception unused) {
                return "";
            }
        }
        return "";
    }

    public String y(Context context) {
        String format;
        a(context.getApplicationContext());
        StringBuilder sb = new StringBuilder();
        int i4 = -1;
        try {
            if (Integer.parseInt(Build.VERSION.SDK) > 8) {
                i4 = Camera.getNumberOfCameras();
            }
        } catch (Throwable unused) {
        }
        for (int i10 = 0; i10 < i4; i10++) {
            Locale locale = Locale.ENGLISH;
            Object[] objArr = new Object[2];
            Integer valueOf = Integer.valueOf(i10);
            if (i10 == 0) {
                objArr[0] = valueOf;
                objArr[1] = c(context, i10);
                format = String.format(locale, "%1$d:%2$s", objArr);
            } else {
                objArr[0] = valueOf;
                objArr[1] = c(context, i10);
                format = String.format(locale, "#%1$d:%2$s", objArr);
            }
            sb.append(format);
        }
        return sb.toString();
    }

    public String z() {
        long j4 = 0;
        try {
            if ("mounted".equals(Environment.getExternalStorageState())) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                j4 = statFs.getBlockSize() * statFs.getBlockCount();
            }
        } catch (Exception unused) {
        }
        return String.valueOf(j4);
    }
}
