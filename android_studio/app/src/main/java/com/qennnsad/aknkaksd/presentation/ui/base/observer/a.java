package com.qennnsad.aknkaksd.presentation.ui.base.observer;

import com.google.gson.Gson;
import com.qennnsad.aknkaksd.data.bean.BaseResponse;
import com.qennnsad.aknkaksd.presentation.module.main.profile.l;
import com.qennnsad.aknkaksd.presentation.ui.base.n;
import com.qennnsad.aknkaksd.util.AES;
import com.qennnsad.aknkaksd.util.o0;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import retrofit2.Response;

/* compiled from: BaseObserver.java */
/* loaded from: classes3.dex */
public abstract class a<E extends BaseResponse> extends c<E> {
    public a() {
    }

    private E j(String str) throws Exception {
        Type type = ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
        String str2 = this.f52522a;
        o0.g(str2, "decode:--jsontype:" + type.toString());
        Gson gson = new Gson();
        String trim = AES.aesdecrypt_tiger(str).trim();
        E e4 = (E) gson.fromJson(trim, type);
        String str3 = this.f52522a;
        o0.g(str3, "decode-tiger:" + trim);
        return e4;
    }

    private E k(String str) throws Exception {
        Type type = ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
        String str2 = this.f52522a;
        o0.g(str2, "decode:--jsontype:" + type.toString());
        Gson gson = new Gson();
        String trim = AES.aesdecrypt_tiger2(str).trim();
        E e4 = (E) gson.fromJson(trim, type);
        String str3 = this.f52522a;
        o0.g(str3, "decode-tiger2:" + trim);
        return e4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.c
    public /* bridge */ /* synthetic */ void d(BaseResponse baseResponse) {
        super.d(baseResponse);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.c
    public /* bridge */ /* synthetic */ void e(BaseResponse baseResponse) {
        super.e(baseResponse);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [com.qennnsad.aknkaksd.data.bean.BaseResponse] */
    /* JADX WARN: Type inference failed for: r1v11, types: [com.google.gson.Gson] */
    /* JADX WARN: Type inference failed for: r1v13, types: [com.qennnsad.aknkaksd.data.bean.BaseResponse] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.reflect.Type, java.lang.Object] */
    @Override // io.reactivex.g0
    /* renamed from: l */
    public void onNext(Response<String> response) {
        E e4;
        int code;
        E e10;
        String str = response.headers().get("x-content-puzzle");
        ?? r32 = (E) false;
        if (response.code() == 200 && str != null) {
            char c10 = 65535;
            switch (str.hashCode()) {
                case -873846957:
                    if (str.equals("tiger2")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 3059425:
                    if (str.equals("cola")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 106432986:
                    if (str.equals("panda")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 110358719:
                    if (str.equals("tiger")) {
                        c10 = 3;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    o0.g(this.f52522a, "decode-tiger:");
                    try {
                        e4 = k(response.body());
                        break;
                    } catch (Exception e11) {
                        e11.printStackTrace();
                        String str2 = this.f52522a;
                        o0.c(str2, "decode失败:" + response.headers() + l.f51916a + response.body());
                        e4 = r32;
                        break;
                    }
                case 1:
                    o0.g(this.f52522a, "decode-cala:");
                    Type type = ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
                    String str3 = this.f52522a;
                    o0.g(str3, "decode-cala:--jsontype:" + type.toString());
                    String str4 = "";
                    try {
                        Gson gson = new Gson();
                        str4 = response.body().trim();
                        e10 = (BaseResponse) gson.fromJson(str4, type);
                    } catch (Exception e12) {
                        String httpUrl = response.raw().request().url().toString();
                        o0.d("BaseObserver", "Error parsing JSON. From " + httpUrl + " | Body: " + str4, e12);
                        e10 = r32;
                    }
                    String str5 = this.f52522a;
                    o0.g(str5, "decode-cola:" + str4);
                    e4 = e10;
                    break;
                case 2:
                    o0.g(this.f52522a, "decode-panda:");
                    try {
                        e4 = a(response.body());
                        break;
                    } catch (Exception unused) {
                        String str6 = this.f52522a;
                        o0.c(str6, "decode失败:" + response.body().length() + l.f51916a + response.headers() + l.f51916a + response.body());
                        return;
                    }
                case 3:
                    o0.g(this.f52522a, "decode-tiger:");
                    try {
                        e4 = j(response.body());
                        break;
                    } catch (Exception e13) {
                        e13.printStackTrace();
                        String str7 = this.f52522a;
                        o0.c(str7, "decode失败:" + response.headers() + l.f51916a + response.body());
                        e4 = r32;
                        break;
                    }
                default:
                    E e14 = (E) new BaseResponse();
                    e14.setCode(1);
                    e14.setMsg("数据解析异常");
                    e14.setData("数据解析异常");
                    e4 = e14;
                    break;
            }
        } else {
            try {
                o0.g(this.f52522a, "decode-headles=null:");
                r32 = (E) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
                String str8 = this.f52522a;
                o0.g(str8, "decode-headles=null:--jsontype:" + r32.toString());
                ?? gson2 = new Gson();
                String trim = response.body().trim();
                ?? r12 = (BaseResponse) gson2.fromJson(trim, r32);
                String str9 = this.f52522a;
                o0.g(str9, "decode-headles=null:" + trim);
                e4 = r12;
            } catch (Exception e15) {
                String str10 = this.f52522a;
                o0.d(str10, "Error parsing JSON. Expected bean type: " + r32, e15);
                E e16 = (E) new BaseResponse();
                e16.setCode(1);
                e16.setMsg("服务器异常:" + response.code());
                e16.setData("服务器异常:" + response.code());
                e4 = e16;
            }
        }
        if (e4 != null && ((code = response.raw().code()) == 401 || code == 429)) {
            e4.setCode(code);
        }
        e(e4);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.c, io.reactivex.g0
    public /* bridge */ /* synthetic */ void onComplete() {
        super.onComplete();
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.c, io.reactivex.g0
    public /* bridge */ /* synthetic */ void onError(Throwable th) {
        super.onError(th);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.c, io.reactivex.g0
    public /* bridge */ /* synthetic */ void onSubscribe(io.reactivex.disposables.c cVar) {
        super.onSubscribe(cVar);
    }

    public a(n nVar) {
        super(nVar);
    }
}
