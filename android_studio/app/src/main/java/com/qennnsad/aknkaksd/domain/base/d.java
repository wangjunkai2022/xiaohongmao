package com.qennnsad.aknkaksd.domain.base;

import com.qennnsad.aknkaksd.data.bean.BaseResponse;
import com.qennnsad.aknkaksd.domain.base.a;
import com.qennnsad.aknkaksd.util.o0;
import com.squareup.moshi.z;
import io.sentry.protocol.j;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: ResponseMapper.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00062\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0002J\u001f\u0010\t\u001a\u00028\u00002\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ'\u0010\f\u001a\u00028\u00002\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u0010\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u000fR \u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00060\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0012¨\u0006\u0018"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/base/d;", com.ksyun.media.player.e.b.f45488a, "", "Lretrofit2/Response;", "", "stringResponse", "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;", "c", j.f83728f, "d", "(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)Ljava/lang/Object;", "nullFallback", "a", "(Lretrofit2/Response;Ljava/lang/Object;)Ljava/lang/Object;", "Ljava/lang/reflect/Type;", "Ljava/lang/reflect/Type;", "type", "Lcom/qennnsad/aknkaksd/domain/base/b;", "Lcom/qennnsad/aknkaksd/domain/base/b;", "decoder", "Lg5/a;", "localDataManager", "<init>", "(Ljava/lang/reflect/Type;Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class d<Data> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Type f47933a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f47934b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final b<BaseResponse<Data>> f47935c;

    public d(@m8.g Type type, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f47933a = type;
        this.f47934b = localDataManager;
        ParameterizedType m9 = z.m(BaseResponse.class, type);
        Intrinsics.checkNotNullExpressionValue(m9, "newParameterizedType(Bas…sponse::class.java, type)");
        this.f47935c = new b<>(m9, localDataManager);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object b(d dVar, Response response, Object obj, int i4, Object obj2) {
        if ((i4 & 2) != 0) {
            obj = null;
        }
        return dVar.a(response, obj);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final BaseResponse<Data> c(Response<String> response) {
        BaseResponse<Data> a10;
        int code;
        String str = response.headers().get("x-content-puzzle");
        if (response.code() == 200 && str != null) {
            switch (str.hashCode()) {
                case -873846957:
                    if (str.equals("tiger2")) {
                        a10 = this.f47935c.d(response.body());
                        break;
                    }
                    a10 = new BaseResponse<>();
                    a10.setCode(1);
                    a10.setMsg("数据解析异常");
                    break;
                case 3059425:
                    if (str.equals("cola")) {
                        a10 = this.f47935c.a(response.body());
                        break;
                    }
                    a10 = new BaseResponse<>();
                    a10.setCode(1);
                    a10.setMsg("数据解析异常");
                    break;
                case 106432986:
                    if (str.equals("panda")) {
                        a10 = this.f47935c.b(response.body());
                        break;
                    }
                    a10 = new BaseResponse<>();
                    a10.setCode(1);
                    a10.setMsg("数据解析异常");
                    break;
                case 110358719:
                    if (str.equals("tiger")) {
                        a10 = this.f47935c.c(response.body());
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
            a10 = this.f47935c.a(response.body());
            if (a10 == null) {
                a10 = new BaseResponse<>();
                a10.setCode(1);
                a10.setMsg("服务器异常:" + response.code());
            }
        }
        if (a10 != null && ((code = response.raw().code()) == 401 || code == 429)) {
            a10.setCode(code);
        }
        return a10;
    }

    private final Data d(BaseResponse<Data> baseResponse) {
        Intrinsics.checkNotNull(baseResponse);
        int code = baseResponse.getCode();
        if (code != 0) {
            if (code == 302) {
                o0.g("ResponseMapper", "responscode OPENURL" + baseResponse.getMsg());
                String msg = baseResponse.getMsg();
                Intrinsics.checkNotNullExpressionValue(msg, "response.msg");
                throw new HasActionException(new a.b(msg, null, 2, null));
            } else if (code == 401) {
                this.f47934b.a();
                throw new TokenExpiredException(baseResponse);
            } else if (code == 418) {
                String msg2 = baseResponse.getMsg();
                Intrinsics.checkNotNullExpressionValue(msg2, "response.msg");
                throw new HasActionException(new a.c(msg2));
            } else if (code != 429) {
                throw new RequestException(baseResponse);
            } else {
                o0.g("ResponseMapper", "responscode Too Frequet Warning" + baseResponse.getMsg());
                String msg3 = baseResponse.getMsg();
                Intrinsics.checkNotNullExpressionValue(msg3, "response.msg");
                throw new HasActionException(new a.C0404a(msg3));
            }
        }
        return baseResponse.getData();
    }

    public final Data a(@m8.g Response<String> stringResponse, @m8.h Data data) {
        Intrinsics.checkNotNullParameter(stringResponse, "stringResponse");
        BaseResponse<Data> c10 = c(stringResponse);
        Data d4 = d(c10);
        String msg = c10 != null ? c10.getMsg() : null;
        return d4 == null ? data == null ? msg == null ? "" : (Data) msg : data : d4;
    }
}
