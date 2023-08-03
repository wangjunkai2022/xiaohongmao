package com.alipay.sdk.packet;

import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    String f6889a;

    /* renamed from: b  reason: collision with root package name */
    public String f6890b;

    public b(String str, String str2) {
        this.f6889a = str;
        this.f6890b = str2;
    }

    private void b(String str) {
        this.f6889a = str;
    }

    private String c() {
        return this.f6889a;
    }

    private void d(String str) {
        this.f6890b = str;
    }

    private String e() {
        return this.f6890b;
    }

    public final JSONObject a() {
        if (TextUtils.isEmpty(this.f6890b)) {
            return null;
        }
        try {
            return new JSONObject(this.f6890b);
        } catch (Exception unused) {
            return null;
        }
    }

    public final String toString() {
        return "\nenvelop:" + this.f6889a + "\nbody:" + this.f6890b;
    }
}
