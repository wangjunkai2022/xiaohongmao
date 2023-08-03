package com.posthog.android.internal;

import a.f0;
import a.g0;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Process;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Array;
import java.net.HttpURLConnection;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class Utils {

    /* renamed from: a  reason: collision with root package name */
    public static final String f47496a = "PostHog-";

    /* renamed from: b  reason: collision with root package name */
    public static final int f47497b = 30000;

    /* renamed from: c  reason: collision with root package name */
    public static final int f47498c = 20;

    /* renamed from: d  reason: collision with root package name */
    public static final boolean f47499d = true;

    /* renamed from: e  reason: collision with root package name */
    public static final int f47500e = 5;

    /* loaded from: classes3.dex */
    public static class NullableConcurrentHashMap<K, V> extends ConcurrentHashMap<K, V> {
        public NullableConcurrentHashMap() {
        }

        @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
        public V put(K k10, V v9) {
            if (k10 == null || v9 == null) {
                return null;
            }
            return (V) super.put(k10, v9);
        }

        @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
                put(entry.getKey(), entry.getValue());
            }
        }

        public NullableConcurrentHashMap(Map<? extends K, ? extends V> map) {
            super(map);
        }
    }

    /* loaded from: classes3.dex */
    public static class a extends ThreadPoolExecutor {

        /* renamed from: a  reason: collision with root package name */
        private static final int f47501a = 1;

        /* renamed from: b  reason: collision with root package name */
        private static final int f47502b = 2;

        public a() {
            super(1, 2, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new c());
        }
    }

    /* loaded from: classes3.dex */
    private static class b extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private static final AtomicInteger f47503a = new AtomicInteger(1);

        public b(Runnable runnable) {
            super(runnable, Utils.f47496a + f47503a.getAndIncrement());
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    /* loaded from: classes3.dex */
    public static class c implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new b(runnable);
        }
    }

    private Utils() {
        throw new AssertionError("No instances");
    }

    public static boolean A(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static <T> Set<T> B(T... tArr) {
        HashSet hashSet = new HashSet(tArr.length);
        Collections.addAll(hashSet, tArr);
        return hashSet;
    }

    public static Date C(String str) {
        return com.posthog.android.internal.a.e(str);
    }

    public static String D(BufferedReader bufferedReader) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                sb.append(readLine);
            } else {
                return sb.toString();
            }
        }
    }

    public static String E(InputStream inputStream) throws IOException {
        return D(d(inputStream));
    }

    public static String F(Date date) {
        return H(date);
    }

    public static Date G(String str) throws ParseException {
        return C(str);
    }

    public static String H(Date date) {
        return com.posthog.android.internal.a.b(date);
    }

    public static JSONObject I(Map<String, ?> map) {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            try {
                jSONObject.put(entry.getKey(), K(entry.getValue()));
            } catch (JSONException unused) {
            }
        }
        return jSONObject;
    }

    public static <T> Map<String, T> J(Map<String, T> map, Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map.size());
        for (Map.Entry<String, T> entry : map.entrySet()) {
            String key = entry.getKey();
            if (!map2.containsKey(key)) {
                linkedHashMap.put(key, entry.getValue());
            } else {
                String str = map2.get(key);
                if (!w(str)) {
                    linkedHashMap.put(str, entry.getValue());
                }
            }
        }
        return linkedHashMap;
    }

    private static Object K(Object obj) {
        if (obj == null) {
            return JSONObject.NULL;
        }
        if ((obj instanceof JSONArray) || (obj instanceof JSONObject) || obj.equals(JSONObject.NULL)) {
            return obj;
        }
        try {
            if (obj instanceof Collection) {
                return new JSONArray((Collection) obj);
            }
            if (obj.getClass().isArray()) {
                int length = Array.getLength(obj);
                JSONArray jSONArray = new JSONArray();
                for (int i4 = 0; i4 < length; i4++) {
                    jSONArray.put(K(Array.get(jSONArray, i4)));
                }
                return jSONArray;
            } else if (obj instanceof Map) {
                return I((Map) obj);
            } else {
                if (!(obj instanceof Boolean) && !(obj instanceof Byte) && !(obj instanceof Character) && !(obj instanceof Double) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Long) && !(obj instanceof Short) && !(obj instanceof String)) {
                    return obj.toString();
                }
                return obj;
            }
        } catch (Exception unused) {
            return JSONObject.NULL;
        }
    }

    @f0
    public static <T> T a(T t9, String str) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(str + " == null");
    }

    @f0
    public static String b(String str, @g0 String str2) {
        if (w(str)) {
            throw new NullPointerException(str2 + " cannot be null or empty");
        }
        return str;
    }

    @f0
    public static <K, V> Map<K, V> c(Map<K, V> map, @g0 String str) {
        if (y(map)) {
            throw new NullPointerException(str + " cannot be null or empty");
        }
        return map;
    }

    public static BufferedReader d(InputStream inputStream) {
        return new BufferedReader(new InputStreamReader(inputStream));
    }

    public static void e(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    public static float f(Object obj, float f10) {
        if (obj instanceof Float) {
            return ((Float) obj).floatValue();
        }
        if (obj instanceof Number) {
            return ((Number) obj).floatValue();
        }
        if (obj instanceof String) {
            try {
                return Float.valueOf((String) obj).floatValue();
            } catch (NumberFormatException unused) {
            }
        }
        return f10;
    }

    public static void g(SharedPreferences sharedPreferences, SharedPreferences sharedPreferences2) {
        SharedPreferences.Editor edit = sharedPreferences2.edit();
        for (Map.Entry<String, ?> entry : sharedPreferences.getAll().entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof String) {
                edit.putString(key, (String) value);
            } else if (value instanceof Set) {
                edit.putStringSet(key, (Set) value);
            } else if (value instanceof Integer) {
                edit.putInt(key, ((Integer) value).intValue());
            } else if (value instanceof Long) {
                edit.putLong(key, ((Long) value).longValue());
            } else if (value instanceof Float) {
                edit.putFloat(key, ((Float) value).floatValue());
            } else if (value instanceof Boolean) {
                edit.putBoolean(key, ((Boolean) value).booleanValue());
            }
        }
        edit.apply();
    }

    public static void h(File file) throws IOException {
        if (file.exists() || file.mkdirs() || file.isDirectory()) {
            return;
        }
        throw new IOException("Could not create directory at " + file);
    }

    public static <T> Map<String, T> i() {
        return new NullableConcurrentHashMap();
    }

    @SuppressLint({"HardwareIds"})
    public static String j(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (w(string) || "9774d56d682e549c".equals(string) || "unknown".equals(string) || "000000000000000".equals(string)) {
            String str = Build.SERIAL;
            if (w(str)) {
                if (r(context, "android.permission.READ_PHONE_STATE") && q(context, "android.hardware.telephony")) {
                    String deviceId = ((TelephonyManager) o(context, "phone")).getDeviceId();
                    if (!w(deviceId)) {
                        return deviceId;
                    }
                }
                return UUID.randomUUID().toString();
            }
            return str;
        }
        return string;
    }

    private static int k(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str2, str, context.getPackageName());
    }

    public static InputStream l(HttpURLConnection httpURLConnection) throws IOException {
        try {
            return httpURLConnection.getInputStream();
        } catch (IOException unused) {
            return httpURLConnection.getErrorStream();
        }
    }

    public static SharedPreferences m(Context context, String str) {
        return context.getSharedPreferences("posthog-android-" + str, 0);
    }

    public static String n(Context context, String str) {
        int k10 = k(context, TypedValues.Custom.S_STRING, str);
        if (k10 != 0) {
            return context.getResources().getString(k10);
        }
        return null;
    }

    public static <T> T o(Context context, String str) {
        return (T) context.getSystemService(str);
    }

    private static int p(@f0 CharSequence charSequence) {
        int length = charSequence.length();
        int i4 = 0;
        while (i4 < length && charSequence.charAt(i4) <= ' ') {
            i4++;
        }
        while (length > i4 && charSequence.charAt(length - 1) <= ' ') {
            length--;
        }
        return length - i4;
    }

    public static boolean q(Context context, String str) {
        return context.getPackageManager().hasSystemFeature(str);
    }

    public static boolean r(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    @f0
    public static <T> List<T> s(@g0 List<T> list) {
        if (x(list)) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableList(new ArrayList(list));
    }

    @f0
    public static <K, V> Map<K, V> t(@f0 Map<K, V> map) {
        return Collections.unmodifiableMap(new LinkedHashMap(map));
    }

    public static boolean u(Context context) {
        if (r(context, "android.permission.ACCESS_NETWORK_STATE")) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) o(context, "connectivity")).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
        }
        return true;
    }

    private static boolean v(@g0 CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static boolean w(CharSequence charSequence) {
        return v(charSequence) || p(charSequence) == 0;
    }

    public static boolean x(Collection collection) {
        return collection == null || collection.size() == 0;
    }

    public static boolean y(Map map) {
        return map == null || map.size() == 0;
    }

    public static <T> boolean z(T[] tArr) {
        return tArr == null || tArr.length == 0;
    }
}
