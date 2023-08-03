package com.alipay.android.phone.mrpc.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.Header;

/* loaded from: classes.dex */
public final class s extends x {

    /* renamed from: c  reason: collision with root package name */
    private String f6662c;

    /* renamed from: d  reason: collision with root package name */
    private byte[] f6663d;

    /* renamed from: h  reason: collision with root package name */
    private boolean f6667h;

    /* renamed from: f  reason: collision with root package name */
    private ArrayList<Header> f6665f = new ArrayList<>();

    /* renamed from: g  reason: collision with root package name */
    private Map<String, String> f6666g = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private String f6664e = "application/x-www-form-urlencoded";

    public s(String str) {
        this.f6662c = str;
    }

    public final String d() {
        return this.f6662c;
    }

    public final void e(String str) {
        this.f6664e = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && s.class == obj.getClass()) {
            s sVar = (s) obj;
            byte[] bArr = this.f6663d;
            if (bArr == null) {
                if (sVar.f6663d != null) {
                    return false;
                }
            } else if (!bArr.equals(sVar.f6663d)) {
                return false;
            }
            String str = this.f6662c;
            String str2 = sVar.f6662c;
            if (str == null) {
                if (str2 != null) {
                    return false;
                }
            } else if (!str.equals(str2)) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final void f(String str, String str2) {
        if (this.f6666g == null) {
            this.f6666g = new HashMap();
        }
        this.f6666g.put(str, str2);
    }

    public final void g(Header header) {
        this.f6665f.add(header);
    }

    public final void h(boolean z9) {
        this.f6667h = z9;
    }

    public final int hashCode() {
        Map<String, String> map = this.f6666g;
        int hashCode = ((map == null || !map.containsKey("id")) ? 1 : this.f6666g.get("id").hashCode() + 31) * 31;
        String str = this.f6662c;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public final void i(byte[] bArr) {
        this.f6663d = bArr;
    }

    public final String j(String str) {
        Map<String, String> map = this.f6666g;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    public final byte[] k() {
        return this.f6663d;
    }

    public final String l() {
        return this.f6664e;
    }

    public final ArrayList<Header> m() {
        return this.f6665f;
    }

    public final boolean n() {
        return this.f6667h;
    }

    public final String toString() {
        return String.format("Url : %s,HttpHeader: %s", this.f6662c, this.f6665f);
    }
}
