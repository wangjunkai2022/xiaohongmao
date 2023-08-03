package com.qennnsad.aknkaksd.presentation.ui.base.observer;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.Fragment;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.MalformedJsonException;
import com.qennnsad.aknkaksd.BaseBeautyApplication;
import com.qennnsad.aknkaksd.data.bean.BaseResponse;
import com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity;
import com.qennnsad.aknkaksd.presentation.ui.base.n;
import com.qennnsad.aknkaksd.util.AES;
import com.qennnsad.aknkaksd.util.JwtUtil;
import com.qennnsad.aknkaksd.util.o0;
import io.reactivex.g0;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.ConnectException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import retrofit2.Response;
import retrofit2.adapter.rxjava2.HttpException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RootObserver.java */
/* loaded from: classes3.dex */
public abstract class c<E extends BaseResponse> implements g0<Response<String>> {

    /* renamed from: a  reason: collision with root package name */
    protected String f52522a;

    /* renamed from: b  reason: collision with root package name */
    protected final n f52523b;

    /* renamed from: c  reason: collision with root package name */
    private io.reactivex.disposables.c f52524c;

    /* renamed from: d  reason: collision with root package name */
    private AlertDialog f52525d;

    public c(n nVar) {
        this.f52522a = TextUtils.isEmpty(getClass().getSimpleName()) ? "RootObserver" : getClass().getSimpleName();
        this.f52523b = nVar;
    }

    @Nullable
    private BaseMvvmActivity<?> b() {
        n nVar = this.f52523b;
        if (nVar == null) {
            return null;
        }
        if (nVar instanceof Fragment) {
            return (BaseMvvmActivity) ((Fragment) nVar).getActivity();
        }
        return (BaseMvvmActivity) nVar;
    }

    public static void c(Throwable th, n nVar, String str) {
        nVar.K();
        nVar.a();
        if (th == null) {
            nVar.C();
        } else if (!(th instanceof SocketTimeoutException) && !(th instanceof ConnectException) && !(th instanceof UnknownHostException) && !(th instanceof SocketException) && !(th instanceof IOException)) {
            if (!(th instanceof JsonSyntaxException) && !(th instanceof NumberFormatException) && !(th instanceof MalformedJsonException)) {
                if (th instanceof HttpException) {
                    nVar.r("服务器错误(" + ((HttpException) th).code() + ")");
                    o0.d(str, "HTTP Error while handling response!", th);
                    return;
                } else if (th instanceof NullPointerException) {
                    o0.d(str, "NPE Error while handling response!", th);
                    return;
                } else {
                    nVar.C();
                    return;
                }
            }
            o0.d(str, "Response syntax or format error while handling response!", th);
            nVar.r("数据解析出错");
        } else {
            o0.d(str, "Network Error while handling response!", th);
            nVar.n();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public E a(String str) throws Exception {
        Type type = ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
        String asMd5 = JwtUtil.asMd5(BaseBeautyApplication.getInstance().localDataManager.o());
        String str2 = this.f52522a;
        o0.g(str2, "decode:--jsontype:" + type.toString() + ", key:" + asMd5 + ", encoded:" + str);
        String trim = AES.aesdecrypt(str, asMd5).trim();
        E e4 = (E) new Gson().fromJson(trim, type);
        String str3 = this.f52522a;
        StringBuilder sb = new StringBuilder();
        sb.append("decode-json:");
        sb.append(trim);
        o0.g(str3, sb.toString());
        return e4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(E e4) {
        String msg = e4.getMsg();
        String str = this.f52522a;
        o0.n(str, "request data but get failure:" + msg);
        n nVar = this.f52523b;
        if (nVar != null) {
            nVar.a();
            if (!TextUtils.isEmpty(msg)) {
                this.f52523b.r(e4.getMsg());
            } else {
                this.f52523b.C();
            }
        }
    }

    public void e(E e4) {
        int code = e4.getCode();
        if (code == 0) {
            i(e4.getWarn());
            f(e4);
        } else if (code == 302) {
            String str = this.f52522a;
            o0.g(str, "responscode-OPENURL" + e4.getMsg());
            g(e4.getMsg());
        } else if (code == 401) {
            BaseBeautyApplication.getInstance().localDataManager.a();
            d(e4);
        } else if (code == 418) {
            String str2 = this.f52522a;
            o0.n(str2, "responscode-ALERTMESSAGE" + e4.getMsg());
            i(e4.getMsg());
        } else if (code != 429) {
            d(e4);
        } else {
            BaseMvvmActivity<?> b10 = b();
            if (b10 != null) {
                h(b10);
            }
        }
    }

    public abstract void f(E e4);

    protected void g(String str) {
        n nVar;
        if (str == null || str.equals("") || (nVar = this.f52523b) == null) {
            return;
        }
        nVar.v(str);
    }

    protected void h(BaseMvvmActivity<?> baseMvvmActivity) {
        baseMvvmActivity.e0();
    }

    protected void i(String str) {
        n nVar;
        if (str == null || str.equals("") || (nVar = this.f52523b) == null) {
            return;
        }
        nVar.r(str);
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        n nVar = this.f52523b;
        if (nVar != null) {
            nVar.K();
        }
        io.reactivex.disposables.c cVar = this.f52524c;
        if (cVar == null || cVar.isDisposed()) {
            return;
        }
        this.f52524c.dispose();
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        o0.e("BaseObserver", "Request Error!", th.getMessage());
        if (this.f52523b != null) {
            String str = this.f52522a;
            o0.n(str, "Request Error!--mUiInterface!=null--" + th.toString());
            c(th, this.f52523b, this.f52522a);
        }
        th.printStackTrace();
        io.reactivex.disposables.c cVar = this.f52524c;
        if (cVar == null || cVar.isDisposed()) {
            return;
        }
        this.f52524c.dispose();
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        this.f52524c = cVar;
    }

    public c() {
        this.f52522a = TextUtils.isEmpty(getClass().getSimpleName()) ? "RootObserver" : getClass().getSimpleName();
        this.f52523b = null;
    }
}
