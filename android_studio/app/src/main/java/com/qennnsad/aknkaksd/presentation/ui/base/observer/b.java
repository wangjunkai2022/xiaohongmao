package com.qennnsad.aknkaksd.presentation.ui.base.observer;

import com.qennnsad.aknkaksd.data.bean.BaseResponse;
import com.qennnsad.aknkaksd.presentation.ui.base.n;
import com.qennnsad.aknkaksd.util.o0;
import f5.d;
import retrofit2.Response;

/* compiled from: BasePandaObserver.java */
/* loaded from: classes3.dex */
public abstract class b<E extends BaseResponse> extends c<E> {

    /* renamed from: e  reason: collision with root package name */
    boolean f52521e;

    public b(n nVar) {
        super(nVar);
        this.f52521e = ((d) dagger.hilt.c.a(nVar.b(), d.class)).c().e().n();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.c
    public /* bridge */ /* synthetic */ void e(BaseResponse baseResponse) {
        super.e(baseResponse);
    }

    @Override // io.reactivex.g0
    /* renamed from: j */
    public void onNext(Response<String> response) {
        BaseResponse baseResponse;
        String str = response.headers().get("x-content-puzzle");
        if (response.code() == 200 && str != null) {
            if (!str.equals("panda")) {
                baseResponse = new BaseResponse();
                baseResponse.setCode(1);
                baseResponse.setMsg("运行错误:1001");
                baseResponse.setData("运行错误:1001");
            } else {
                o0.g(this.f52522a, "decode-panda:");
                try {
                    String body = response.body();
                    if (this.f52521e) {
                        int indexOf = body.indexOf("<pre>");
                        int indexOf2 = body.indexOf("</pre>");
                        if (indexOf > -1 && indexOf2 > -1) {
                            body = body.replace(body.substring(indexOf, indexOf2 + 6), "");
                        }
                    }
                    baseResponse = a(body);
                } catch (Exception unused) {
                    baseResponse = new BaseResponse();
                    baseResponse.setCode(1);
                    baseResponse.setMsg("运行错误:1002");
                    baseResponse.setData("运行错误:1002");
                }
            }
        } else {
            baseResponse = new BaseResponse();
            baseResponse.setCode(1);
            baseResponse.setMsg("服务器异常:" + response.code());
            baseResponse.setData("服务器异常:" + response.code());
        }
        if (response.raw().code() == 401) {
            baseResponse.setCode(401);
        }
        e(baseResponse);
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
}
