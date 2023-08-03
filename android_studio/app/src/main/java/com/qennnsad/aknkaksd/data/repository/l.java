package com.qennnsad.aknkaksd.data.repository;

import io.reactivex.z;
import java.util.concurrent.TimeUnit;
import me.jessyan.retrofiturlmanager.RetrofitUrlManager;
import okhttp3.OkHttpClient;
import okhttp3.ResponseBody;
import okhttp3.brotli.BrotliInterceptor;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;

/* compiled from: RetrofitStaticSource.java */
/* loaded from: classes3.dex */
public class l implements c {

    /* renamed from: b  reason: collision with root package name */
    private static final int f47759b = 30;

    /* renamed from: c  reason: collision with root package name */
    private static final int f47760c = 30;

    /* renamed from: d  reason: collision with root package name */
    private static final int f47761d = 30;

    /* renamed from: a  reason: collision with root package name */
    private final RetrofitApi f47762a;

    public l() {
        OkHttpClient.Builder newBuilder = new OkHttpClient().newBuilder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        OkHttpClient.Builder retryOnConnectionFailure = newBuilder.connectTimeout(30L, timeUnit).writeTimeout(30L, timeUnit).readTimeout(30L, timeUnit).retryOnConnectionFailure(true);
        retryOnConnectionFailure.addInterceptor(BrotliInterceptor.INSTANCE);
        this.f47762a = (RetrofitApi) new Retrofit.Builder().baseUrl("https://api.placeholder.com/OpenAPI/").client(RetrofitUrlManager.getInstance().with(retryOnConnectionFailure).build()).addConverterFactory(com.qennnsad.aknkaksd.data.converter.c.a()).addConverterFactory(GsonConverterFactory.create()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).build().create(RetrofitApi.class);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.c
    public z<ResponseBody> a(String str) {
        return this.f47762a.downloadFile(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.c
    public z<ResponseBody> b(String str) {
        return this.f47762a.downloadFile(str);
    }
}
