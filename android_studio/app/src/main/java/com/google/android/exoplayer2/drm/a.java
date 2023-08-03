package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.util.z0;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ClearKeyUtil.java */
/* loaded from: classes2.dex */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f21730a = "ClearKeyUtil";

    private a() {
    }

    public static byte[] a(byte[] bArr) {
        return z0.f27743a >= 27 ? bArr : z0.u0(c(z0.J(bArr)));
    }

    public static byte[] b(byte[] bArr) {
        if (z0.f27743a >= 27) {
            return bArr;
        }
        try {
            JSONObject jSONObject = new JSONObject(z0.J(bArr));
            StringBuilder sb = new StringBuilder("{\"keys\":[");
            JSONArray jSONArray = jSONObject.getJSONArray("keys");
            for (int i4 = 0; i4 < jSONArray.length(); i4++) {
                if (i4 != 0) {
                    sb.append(",");
                }
                JSONObject jSONObject2 = jSONArray.getJSONObject(i4);
                sb.append("{\"k\":\"");
                sb.append(d(jSONObject2.getString("k")));
                sb.append("\",\"kid\":\"");
                sb.append(d(jSONObject2.getString(com.auth0.jwt.impl.i.f7104d)));
                sb.append("\",\"kty\":\"");
                sb.append(jSONObject2.getString("kty"));
                sb.append("\"}");
            }
            sb.append("]}");
            return z0.u0(sb.toString());
        } catch (JSONException e4) {
            String valueOf = String.valueOf(z0.J(bArr));
            com.google.android.exoplayer2.util.w.e(f21730a, valueOf.length() != 0 ? "Failed to adjust response data: ".concat(valueOf) : new String("Failed to adjust response data: "), e4);
            return bArr;
        }
    }

    private static String c(String str) {
        return str.replace('+', shaded.org.apache.commons.codec.language.l.f93713d).replace(com.fasterxml.jackson.core.e.f13819f, '_');
    }

    private static String d(String str) {
        return str.replace(shaded.org.apache.commons.codec.language.l.f93713d, '+').replace('_', com.fasterxml.jackson.core.e.f13819f);
    }
}
