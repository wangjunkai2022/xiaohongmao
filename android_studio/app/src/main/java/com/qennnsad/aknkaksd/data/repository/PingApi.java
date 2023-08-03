package com.qennnsad.aknkaksd.data.repository;

import com.qennnsad.aknkaksd.data.bean.BaseResponse;
import io.reactivex.z;
import okhttp3.ResponseBody;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.Url;

/* loaded from: classes3.dex */
interface PingApi {
    @GET
    z<ResponseBody> getAPI_GIT(@Url String str);

    @Headers({"Accept-Encoding:identity"})
    @GET
    z<String> newping(@Url String str);

    @GET("index/ping")
    z<BaseResponse<String>> ping();
}
