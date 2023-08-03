package com.qennnsad.aknkaksd.domain.base;

import com.qennnsad.aknkaksd.data.bean.BaseResponse;
import com.qennnsad.aknkaksd.domain.base.a;
import com.qennnsad.aknkaksd.util.o0;
import io.reactivex.g0;
import io.sentry.protocol.j;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: RxObserver.kt */
@Metadata(bv = {}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0003B\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u0015\u0012\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\u0018\u0010\t\u001a\u00020\b2\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006H\u0002J\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\n\u001a\u00028\u0000H&¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH&J\u0010\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0010H&J\u0014\u0010\u0014\u001a\u00020\b2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0016R \u0010\u001a\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00060\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0019¨\u0006\u001f"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/base/f;", "", com.ksyun.media.player.e.b.f45488a, "Lio/reactivex/g0;", "Lretrofit2/Response;", "", "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;", j.f83728f, "", "e", "data", "d", "(Ljava/lang/Object;)V", "", "t", "b", "Lcom/qennnsad/aknkaksd/domain/base/a;", com.alipay.sdk.packet.d.f6907q, "a", "stringResponse", "c", "Ljava/lang/reflect/Type;", "Ljava/lang/reflect/Type;", "type", "Lcom/qennnsad/aknkaksd/domain/base/b;", "Lcom/qennnsad/aknkaksd/domain/base/b;", "decoder", "Lg5/a;", "localDataManager", "<init>", "(Ljava/lang/reflect/Type;Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class f<Data> implements g0<Response<String>> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Type f47937a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f47938b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final b<BaseResponse<Data>> f47939c;

    public f(@m8.g Type type, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f47937a = type;
        this.f47938b = localDataManager;
        this.f47939c = new b<>(type, localDataManager);
    }

    private final void e(BaseResponse<Data> baseResponse) {
        Intrinsics.checkNotNull(baseResponse);
        int code = baseResponse.getCode();
        if (code == 0) {
            Data data = baseResponse.getData();
            Intrinsics.checkNotNullExpressionValue(data, "response.data");
            d(data);
        } else if (code == 302) {
            o0.g("RxObserver", "responscode OPENURL" + baseResponse.getMsg());
            String msg = baseResponse.getMsg();
            Intrinsics.checkNotNullExpressionValue(msg, "response.msg");
            a(new a.b(msg, null, 2, null));
        } else if (code == 401) {
            b(new TokenExpiredException(baseResponse));
        } else if (code == 418) {
            o0.g("RxObserver", "responscode Warning" + baseResponse.getMsg());
            String msg2 = baseResponse.getMsg();
            Intrinsics.checkNotNullExpressionValue(msg2, "response.msg");
            a(new a.c(msg2));
        } else if (code != 429) {
            b(new RequestException(baseResponse));
        } else {
            o0.g("RxObserver", "responscode Too Frequet Warning" + baseResponse.getMsg());
            String msg3 = baseResponse.getMsg();
            Intrinsics.checkNotNullExpressionValue(msg3, "response.msg");
            a(new a.C0404a(msg3));
        }
    }

    public abstract void a(@m8.g a aVar);

    public abstract void b(@m8.g Throwable th);

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // io.reactivex.g0
    /* renamed from: c */
    public final void onNext(@m8.g Response<String> stringResponse) {
        BaseResponse<Data> a10;
        int code;
        Intrinsics.checkNotNullParameter(stringResponse, "stringResponse");
        String str = stringResponse.headers().get("x-content-puzzle");
        if (stringResponse.code() == 200 && str != null) {
            switch (str.hashCode()) {
                case -873846957:
                    if (str.equals("tiger2")) {
                        a10 = this.f47939c.d(stringResponse.body());
                        break;
                    }
                    a10 = new BaseResponse<>();
                    a10.setCode(1);
                    a10.setMsg("数据解析异常");
                    break;
                case 3059425:
                    if (str.equals("cola")) {
                        a10 = this.f47939c.a(stringResponse.body());
                        break;
                    }
                    a10 = new BaseResponse<>();
                    a10.setCode(1);
                    a10.setMsg("数据解析异常");
                    break;
                case 106432986:
                    if (str.equals("panda")) {
                        a10 = this.f47939c.b(stringResponse.body());
                        break;
                    }
                    a10 = new BaseResponse<>();
                    a10.setCode(1);
                    a10.setMsg("数据解析异常");
                    break;
                case 110358719:
                    if (str.equals("tiger")) {
                        a10 = this.f47939c.c(stringResponse.body());
                        break;
                    }
                    a10 = new BaseResponse<>();
                    a10.setCode(1);
                    a10.setMsg("数据解析异常");
                    break;
                default:
                    a10 = new BaseResponse<>();
                    a10.setCode(1);
                    a10.setMsg("数据解析异常");
                    break;
            }
        } else {
            a10 = this.f47939c.a(stringResponse.body());
            if (a10 == null) {
                a10 = new BaseResponse<>();
                a10.setCode(1);
                a10.setMsg("服务器异常:" + stringResponse.code());
            }
        }
        if (a10 != null && ((code = stringResponse.raw().code()) == 401 || code == 429)) {
            a10.setCode(code);
        }
        e(a10);
    }

    public abstract void d(@m8.g Data data);
}
