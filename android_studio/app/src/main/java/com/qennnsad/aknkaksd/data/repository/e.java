package com.qennnsad.aknkaksd.data.repository;

import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.qennnsad.aknkaksd.data.bean.BaseResponse;
import com.qennnsad.aknkaksd.util.o0;
import io.reactivex.z;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import okhttp3.CertificatePinner;
import okhttp3.Dns;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;

/* compiled from: PingSource.java */
/* loaded from: classes3.dex */
public class e {

    /* renamed from: b  reason: collision with root package name */
    private static final int f47736b = 5;

    /* renamed from: c  reason: collision with root package name */
    private static final int f47737c = 5;

    /* renamed from: d  reason: collision with root package name */
    private static final int f47738d = 5;

    /* renamed from: e  reason: collision with root package name */
    static Interceptor f47739e = com.qennnsad.aknkaksd.data.repository.d.f47700a;

    /* renamed from: a  reason: collision with root package name */
    private final PingApi f47740a;

    /* compiled from: PingSource.java */
    /* loaded from: classes3.dex */
    class a implements Interceptor {
        a() {
        }

        @Override // okhttp3.Interceptor
        public Response intercept(Interceptor.Chain chain) throws IOException {
            Request request = chain.request();
            HttpUrl.Builder addQueryParameter = request.url().newBuilder().addQueryParameter("device", Build.MODEL);
            addQueryParameter.addQueryParameter("_ver", com.qennnsad.aknkaksd.e.f48514f);
            addQueryParameter.addQueryParameter("_plat", "android");
            return chain.proceed(request.newBuilder().url(addQueryParameter.build()).build());
        }
    }

    /* compiled from: PingSource.java */
    /* loaded from: classes3.dex */
    class b implements Dns {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f47742a;

        b(String str) {
            this.f47742a = str;
        }

        @Override // okhttp3.Dns
        @NonNull
        public List<InetAddress> lookup(@NonNull String str) throws UnknownHostException {
            if (!TextUtils.isEmpty(this.f47742a)) {
                List<InetAddress> asList = Arrays.asList(InetAddress.getAllByName(this.f47742a));
                o0.g("DnsResolutionService", "DnsResolutionService-inetAddresses:" + asList + "---hostname：" + str);
                return asList;
            }
            return Dns.SYSTEM.lookup(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PingSource.java */
    /* loaded from: classes3.dex */
    public class c implements X509TrustManager {
        c() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PingSource.java */
    /* loaded from: classes3.dex */
    public class d implements HostnameVerifier {
        d() {
        }

        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    @Deprecated
    private e(String str, String str2) {
        OkHttpClient.Builder addNetworkInterceptor = c().newBuilder().addNetworkInterceptor(new a());
        TimeUnit timeUnit = TimeUnit.SECONDS;
        this.f47740a = (PingApi) new Retrofit.Builder().client(addNetworkInterceptor.connectTimeout(5L, timeUnit).writeTimeout(5L, timeUnit).readTimeout(5L, timeUnit).addInterceptor(f47739e).retryOnConnectionFailure(true).dns(new b(str2)).build()).addConverterFactory(com.qennnsad.aknkaksd.data.converter.c.a()).addConverterFactory(GsonConverterFactory.create()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).build().create(PingApi.class);
    }

    public static CertificatePinner.Builder b() {
        CertificatePinner.Builder builder = new CertificatePinner.Builder();
        builder.add("kwdian0.com", "sha256/KGFQin+uewna1jKoxsmBHmec6cSmF8gqFFVqvIq2KdE");
        builder.add("huayaygf.com", "sha256/45VS2F2R1rF7lVJxDmqPV5aqddGft8ReBtjZdmqrr20");
        builder.add("nlmy66.com", "sha256/PUC77Z/8+vbtO2k50jbyjKr8vBSwF1q78jT7UZsG8Ig");
        builder.add("fzxsmzxyj.com", "sha256/vr1EDYY7ulzfl8sY4HA3/c2h/GbCZcWozIen8f0AsQo");
        builder.add("njlvzhizl.com", "sha256/27zdHHYEJtF4ljKINxF+ZYh4RglF8ZJLTamwVJic/rw");
        builder.add("sdhhjsj.com", "sha256/+4icG0KQu+0Z10BxX4BZITybbNSYcKThWv9icwDFcX8");
        builder.add("zhongwony.com", "sha256/8qV227kcjR+Z3eNsxK3n4puLD+y2C1SzGW/RyQy9sr0");
        builder.add("jietibao.net", "sha256/svacBekDRZJdxNTjSrm4vNdOgSAaCz7CXCcB7uxR2OQ");
        return builder;
    }

    public static OkHttpClient c() {
        try {
            TrustManager[] trustManagerArr = {new c()};
            SSLContext sSLContext = SSLContext.getInstance("SSL");
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            SSLSocketFactory socketFactory = sSLContext.getSocketFactory();
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            builder.sslSocketFactory(socketFactory, (X509TrustManager) trustManagerArr[0]);
            builder.hostnameVerifier(new d());
            return builder.build();
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Response d(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        Response proceed = chain.proceed(request);
        o0.g("mrl", "chack--请求体" + request.url());
        return proceed;
    }

    public z<String> e(String str) {
        return this.f47740a.newping(str);
    }

    public z<BaseResponse<String>> f() {
        return this.f47740a.ping();
    }
}
