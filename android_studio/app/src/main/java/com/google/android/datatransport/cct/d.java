package com.google.android.datatransport.cct;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.statfs.StatFsHelper;
import com.google.android.datatransport.cct.internal.ClientInfo;
import com.google.android.datatransport.cct.internal.NetworkConnectionInfo;
import com.google.android.datatransport.cct.internal.QosTier;
import com.google.android.datatransport.cct.internal.j;
import com.google.android.datatransport.cct.internal.k;
import com.google.android.datatransport.cct.internal.l;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.backends.g;
import com.google.android.datatransport.runtime.backends.m;
import com.google.android.datatransport.runtime.h;
import com.google.android.datatransport.runtime.i;
import com.google.firebase.encoders.EncodingException;
import com.koushikdutta.async.http.AsyncHttpPost;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CctTransportBackend.java */
/* loaded from: classes2.dex */
public final class d implements m {
    private static final String A = "fingerprint";
    private static final String B = "locale";
    private static final String C = "country";
    private static final String D = "mcc_mnc";
    private static final String E = "tz-offset";
    private static final String F = "application_build";

    /* renamed from: h  reason: collision with root package name */
    private static final String f20206h = "CctTransportBackend";

    /* renamed from: i  reason: collision with root package name */
    private static final int f20207i = 30000;

    /* renamed from: j  reason: collision with root package name */
    private static final int f20208j = 40000;

    /* renamed from: k  reason: collision with root package name */
    private static final int f20209k = -1;

    /* renamed from: l  reason: collision with root package name */
    private static final String f20210l = "Accept-Encoding";

    /* renamed from: m  reason: collision with root package name */
    private static final String f20211m = "Content-Encoding";

    /* renamed from: n  reason: collision with root package name */
    private static final String f20212n = "gzip";

    /* renamed from: o  reason: collision with root package name */
    private static final String f20213o = "Content-Type";

    /* renamed from: p  reason: collision with root package name */
    static final String f20214p = "X-Goog-Api-Key";

    /* renamed from: q  reason: collision with root package name */
    private static final String f20215q = "application/json";
    @VisibleForTesting

    /* renamed from: r  reason: collision with root package name */
    static final String f20216r = "net-type";
    @VisibleForTesting

    /* renamed from: s  reason: collision with root package name */
    static final String f20217s = "mobile-subtype";

    /* renamed from: t  reason: collision with root package name */
    private static final String f20218t = "sdk-version";

    /* renamed from: u  reason: collision with root package name */
    private static final String f20219u = "model";

    /* renamed from: v  reason: collision with root package name */
    private static final String f20220v = "hardware";

    /* renamed from: w  reason: collision with root package name */
    private static final String f20221w = "device";

    /* renamed from: x  reason: collision with root package name */
    private static final String f20222x = "product";

    /* renamed from: y  reason: collision with root package name */
    private static final String f20223y = "os-uild";

    /* renamed from: z  reason: collision with root package name */
    private static final String f20224z = "manufacturer";

    /* renamed from: a  reason: collision with root package name */
    private final com.google.firebase.encoders.a f20225a;

    /* renamed from: b  reason: collision with root package name */
    private final ConnectivityManager f20226b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f20227c;

    /* renamed from: d  reason: collision with root package name */
    final URL f20228d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f20229e;

    /* renamed from: f  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f20230f;

    /* renamed from: g  reason: collision with root package name */
    private final int f20231g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CctTransportBackend.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final URL f20232a;

        /* renamed from: b  reason: collision with root package name */
        final j f20233b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        final String f20234c;

        a(URL url, j jVar, @Nullable String str) {
            this.f20232a = url;
            this.f20233b = jVar;
            this.f20234c = str;
        }

        a a(URL url) {
            return new a(url, this.f20233b, this.f20234c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CctTransportBackend.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final int f20235a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        final URL f20236b;

        /* renamed from: c  reason: collision with root package name */
        final long f20237c;

        b(int i4, @Nullable URL url, long j4) {
            this.f20235a = i4;
            this.f20236b = url;
            this.f20237c = j4;
        }
    }

    d(Context context, com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2, int i4) {
        this.f20225a = j.b();
        this.f20227c = context;
        this.f20226b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f20228d = m(com.google.android.datatransport.cct.a.f20194d);
        this.f20229e = aVar2;
        this.f20230f = aVar;
        this.f20231g = i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b d(a aVar) throws IOException {
        m2.a.b(f20206h, "Making request to: %s", aVar.f20232a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) aVar.f20232a.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(this.f20231g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod(AsyncHttpPost.f44556o);
        httpURLConnection.setRequestProperty(com.google.common.net.b.M, String.format("datatransport/%s android/", j2.a.f84342f));
        httpURLConnection.setRequestProperty("Content-Encoding", f20212n);
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", f20212n);
        String str = aVar.f20234c;
        if (str != null) {
            httpURLConnection.setRequestProperty(f20214p, str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                this.f20225a.b(aVar.f20233b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                gZIPOutputStream.close();
                if (outputStream != null) {
                    outputStream.close();
                }
                int responseCode = httpURLConnection.getResponseCode();
                m2.a.g(f20206h, "Status Code: " + responseCode);
                m2.a.g(f20206h, "Content-Type: " + httpURLConnection.getHeaderField("Content-Type"));
                m2.a.g(f20206h, "Content-Encoding: " + httpURLConnection.getHeaderField("Content-Encoding"));
                if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                    return new b(responseCode, new URL(httpURLConnection.getHeaderField(com.google.common.net.b.f34636m0)), 0L);
                }
                if (responseCode != 200) {
                    return new b(responseCode, null, 0L);
                }
                InputStream inputStream = httpURLConnection.getInputStream();
                try {
                    InputStream l10 = l(inputStream, httpURLConnection.getHeaderField("Content-Encoding"));
                    b bVar = new b(responseCode, null, com.google.android.datatransport.cct.internal.m.b(new BufferedReader(new InputStreamReader(l10))).c());
                    if (l10 != null) {
                        l10.close();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return bVar;
                } catch (Throwable th) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable unused) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable unused2) {
                    }
                }
                throw th2;
            }
        } catch (EncodingException e4) {
            e = e4;
            m2.a.e(f20206h, "Couldn't encode request, returning with 400", e);
            return new b(StatFsHelper.f11024h, null, 0L);
        } catch (ConnectException e10) {
            e = e10;
            m2.a.e(f20206h, "Couldn't open connection, returning with 500", e);
            return new b(500, null, 0L);
        } catch (UnknownHostException e11) {
            e = e11;
            m2.a.e(f20206h, "Couldn't open connection, returning with 500", e);
            return new b(500, null, 0L);
        } catch (IOException e12) {
            e = e12;
            m2.a.e(f20206h, "Couldn't encode request, returning with 400", e);
            return new b(StatFsHelper.f11024h, null, 0L);
        }
    }

    private static int e(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return NetworkConnectionInfo.MobileSubtype.UNKNOWN_MOBILE_SUBTYPE.getValue();
        }
        int subtype = networkInfo.getSubtype();
        if (subtype == -1) {
            return NetworkConnectionInfo.MobileSubtype.COMBINED.getValue();
        }
        if (NetworkConnectionInfo.MobileSubtype.forNumber(subtype) != null) {
            return subtype;
        }
        return 0;
    }

    private static int f(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return NetworkConnectionInfo.NetworkType.NONE.getValue();
        }
        return networkInfo.getType();
    }

    private static int g(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e4) {
            m2.a.e(f20206h, "Unable to find version code for package", e4);
            return -1;
        }
    }

    private j h(g gVar) {
        k.a j4;
        HashMap hashMap = new HashMap();
        for (i iVar : gVar.c()) {
            String l10 = iVar.l();
            if (!hashMap.containsKey(l10)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(iVar);
                hashMap.put(l10, arrayList);
            } else {
                ((List) hashMap.get(l10)).add(iVar);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : hashMap.entrySet()) {
            i iVar2 = (i) ((List) entry.getValue()).get(0);
            l.a b10 = l.a().f(QosTier.DEFAULT).g(this.f20230f.a()).h(this.f20229e.a()).b(ClientInfo.a().c(ClientInfo.ClientType.ANDROID_FIREBASE).b(com.google.android.datatransport.cct.internal.a.a().m(Integer.valueOf(iVar2.g(f20218t))).j(iVar2.b("model")).f(iVar2.b(f20220v)).d(iVar2.b("device")).l(iVar2.b(f20222x)).k(iVar2.b(f20223y)).h(iVar2.b("manufacturer")).e(iVar2.b("fingerprint")).c(iVar2.b(C)).g(iVar2.b("locale")).i(iVar2.b(D)).b(iVar2.b(F)).a()).a());
            try {
                b10.i(Integer.parseInt((String) entry.getKey()));
            } catch (NumberFormatException unused) {
                b10.j((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (i iVar3 : (List) entry.getValue()) {
                h e4 = iVar3.e();
                com.google.android.datatransport.c b11 = e4.b();
                if (b11.equals(com.google.android.datatransport.c.b("proto"))) {
                    j4 = k.j(e4.a());
                } else if (b11.equals(com.google.android.datatransport.c.b("json"))) {
                    j4 = k.i(new String(e4.a(), Charset.forName("UTF-8")));
                } else {
                    m2.a.h(f20206h, "Received event of unsupported encoding %s. Skipping...", b11);
                }
                j4.c(iVar3.f()).d(iVar3.m()).h(iVar3.h(E)).e(NetworkConnectionInfo.a().c(NetworkConnectionInfo.NetworkType.forNumber(iVar3.g(f20216r))).b(NetworkConnectionInfo.MobileSubtype.forNumber(iVar3.g(f20217s))).a());
                if (iVar3.d() != null) {
                    j4.b(iVar3.d());
                }
                arrayList3.add(j4.a());
            }
            b10.c(arrayList3);
            arrayList2.add(b10.a());
        }
        return j.a(arrayList2);
    }

    private static TelephonyManager i(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    @VisibleForTesting
    static long j() {
        Calendar.getInstance();
        return TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ a k(a aVar, b bVar) {
        URL url = bVar.f20236b;
        if (url != null) {
            m2.a.b(f20206h, "Following redirect to: %s", url);
            return aVar.a(bVar.f20236b);
        }
        return null;
    }

    private static InputStream l(InputStream inputStream, String str) throws IOException {
        return f20212n.equals(str) ? new GZIPInputStream(inputStream) : inputStream;
    }

    private static URL m(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e4) {
            throw new IllegalArgumentException("Invalid url: " + str, e4);
        }
    }

    @Override // com.google.android.datatransport.runtime.backends.m
    public i a(i iVar) {
        NetworkInfo activeNetworkInfo = this.f20226b.getActiveNetworkInfo();
        return iVar.n().a(f20218t, Build.VERSION.SDK_INT).c("model", Build.MODEL).c(f20220v, Build.HARDWARE).c("device", Build.DEVICE).c(f20222x, Build.PRODUCT).c(f20223y, Build.ID).c("manufacturer", Build.MANUFACTURER).c("fingerprint", Build.FINGERPRINT).b(E, j()).a(f20216r, f(activeNetworkInfo)).a(f20217s, e(activeNetworkInfo)).c(C, Locale.getDefault().getCountry()).c("locale", Locale.getDefault().getLanguage()).c(D, i(this.f20227c).getSimOperator()).c(F, Integer.toString(g(this.f20227c))).d();
    }

    @Override // com.google.android.datatransport.runtime.backends.m
    public BackendResponse b(g gVar) {
        j h4 = h(gVar);
        URL url = this.f20228d;
        if (gVar.d() != null) {
            try {
                com.google.android.datatransport.cct.a e4 = com.google.android.datatransport.cct.a.e(gVar.d());
                r3 = e4.f() != null ? e4.f() : null;
                if (e4.g() != null) {
                    url = m(e4.g());
                }
            } catch (IllegalArgumentException unused) {
                return BackendResponse.a();
            }
        }
        try {
            b bVar = (b) n2.b.a(5, new a(url, h4, r3), com.google.android.datatransport.cct.b.a(this), c.b());
            int i4 = bVar.f20235a;
            if (i4 == 200) {
                return BackendResponse.d(bVar.f20237c);
            }
            if (i4 < 500 && i4 != 404) {
                return BackendResponse.a();
            }
            return BackendResponse.e();
        } catch (IOException e10) {
            m2.a.e(f20206h, "Could not make request to the backend", e10);
            return BackendResponse.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Context context, com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2) {
        this(context, aVar, aVar2, 40000);
    }
}
