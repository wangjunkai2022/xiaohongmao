package com.alipay.android.phone.mrpc.core.a;

import com.alipay.android.phone.mrpc.core.RpcException;
import java.util.ArrayList;
import java.util.Objects;
import okhttp3.HttpUrl;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

/* loaded from: classes.dex */
public final class e extends b {

    /* renamed from: c  reason: collision with root package name */
    private int f6612c;

    /* renamed from: d  reason: collision with root package name */
    private Object f6613d;

    public e(int i4, String str, Object obj) {
        super(str, obj);
        this.f6612c = i4;
    }

    @Override // com.alipay.android.phone.mrpc.core.a.f
    public final void a(Object obj) {
        this.f6613d = obj;
    }

    @Override // com.alipay.android.phone.mrpc.core.a.f
    public final byte[] a() {
        try {
            ArrayList arrayList = new ArrayList();
            if (this.f6613d != null) {
                arrayList.add(new BasicNameValuePair("extParam", com.alipay.a.a.f.a(this.f6613d)));
            }
            arrayList.add(new BasicNameValuePair("operationType", this.f6610a));
            StringBuilder sb = new StringBuilder();
            sb.append(this.f6612c);
            arrayList.add(new BasicNameValuePair("id", sb.toString()));
            Objects.toString(this.f6611b);
            Object obj = this.f6611b;
            arrayList.add(new BasicNameValuePair("requestData", obj == null ? HttpUrl.PATH_SEGMENT_ENCODE_SET_URI : com.alipay.a.a.f.a(obj)));
            return URLEncodedUtils.format(arrayList, "utf-8").getBytes();
        } catch (Exception e4) {
            StringBuilder sb2 = new StringBuilder("request  =");
            sb2.append(this.f6611b);
            sb2.append(":");
            sb2.append(e4);
            throw new RpcException(9, sb2.toString() == null ? "" : e4.getMessage(), e4);
        }
    }
}
