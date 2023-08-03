package com.alipay.android.phone.mrpc.core.a;

import com.alipay.android.phone.mrpc.core.RpcException;
import java.lang.reflect.Type;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class d extends a {
    public d(Type type, byte[] bArr) {
        super(type, bArr);
    }

    @Override // com.alipay.android.phone.mrpc.core.a.c
    public final Object a() {
        try {
            String str = new String(this.f6609b);
            Thread.currentThread().getId();
            JSONObject jSONObject = new JSONObject(str);
            int i4 = jSONObject.getInt("resultStatus");
            if (i4 == 1000) {
                return this.f6608a == String.class ? jSONObject.optString("result") : com.alipay.a.a.e.b(jSONObject.optString("result"), this.f6608a);
            }
            throw new RpcException(Integer.valueOf(i4), jSONObject.optString("tips"));
        } catch (Exception e4) {
            StringBuilder sb = new StringBuilder("response  =");
            sb.append(new String(this.f6609b));
            sb.append(":");
            sb.append(e4);
            throw new RpcException((Integer) 10, sb.toString() == null ? "" : e4.getMessage());
        }
    }
}
