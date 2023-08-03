package com.alipay.android.phone.mrpc.core;

import java.lang.reflect.Method;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import org.apache.http.Header;
import org.apache.http.message.BasicHeader;

/* loaded from: classes.dex */
public final class n extends a {

    /* renamed from: g  reason: collision with root package name */
    private k f6644g;

    public n(k kVar, Method method, int i4, String str, byte[] bArr, boolean z9) {
        super(method, i4, str, bArr, "application/x-www-form-urlencoded", z9);
        this.f6644g = kVar;
    }

    @Override // com.alipay.android.phone.mrpc.core.z
    public final Object a() {
        s sVar = new s(this.f6644g.a());
        sVar.i(this.f6603b);
        sVar.e(this.f6606e);
        sVar.h(this.f6607f);
        sVar.f("id", String.valueOf(this.f6605d));
        sVar.f("operationType", this.f6604c);
        sVar.f("gzip", String.valueOf(this.f6644g.d()));
        sVar.g(new BasicHeader("uuid", UUID.randomUUID().toString()));
        List<Header> c10 = this.f6644g.c().c();
        if (c10 != null && !c10.isEmpty()) {
            for (Header header : c10) {
                sVar.g(header);
            }
        }
        Thread.currentThread().getId();
        sVar.toString();
        try {
            y yVar = this.f6644g.b().a(sVar).get();
            if (yVar != null) {
                return yVar.b();
            }
            throw new RpcException((Integer) 9, "response is null");
        } catch (InterruptedException e4) {
            throw new RpcException(13, "", e4);
        } catch (CancellationException e10) {
            throw new RpcException(13, "", e10);
        } catch (ExecutionException e11) {
            Throwable cause = e11.getCause();
            if (cause == null || !(cause instanceof HttpException)) {
                throw new RpcException(9, "", e11);
            }
            HttpException httpException = (HttpException) cause;
            int code = httpException.getCode();
            switch (code) {
                case 1:
                    code = 2;
                    break;
                case 2:
                    code = 3;
                    break;
                case 3:
                    code = 4;
                    break;
                case 4:
                    code = 5;
                    break;
                case 5:
                    code = 6;
                    break;
                case 6:
                    code = 7;
                    break;
                case 7:
                    code = 8;
                    break;
                case 8:
                    code = 15;
                    break;
                case 9:
                    code = 16;
                    break;
            }
            throw new RpcException(Integer.valueOf(code), httpException.getMsg());
        }
    }
}
