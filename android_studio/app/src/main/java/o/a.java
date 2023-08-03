package o;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.util.i;
import java.util.ArrayList;
import java.util.List;
import m.b;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public com.alipay.sdk.protocol.a f89937a;

    /* renamed from: b  reason: collision with root package name */
    private String f89938b;

    /* renamed from: c  reason: collision with root package name */
    public String[] f89939c;

    private a(String str) {
        this.f89938b = str;
    }

    private String a() {
        return this.f89938b;
    }

    public static List<a> b(JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList();
        if (jSONObject == null) {
            return arrayList;
        }
        String optString = jSONObject.optString("name", "");
        String[] split = TextUtils.isEmpty(optString) ? null : optString.split(i.f6965b);
        for (int i4 = 0; i4 < split.length; i4++) {
            com.alipay.sdk.protocol.a a10 = com.alipay.sdk.protocol.a.a(split[i4]);
            if (a10 != com.alipay.sdk.protocol.a.None) {
                a aVar = new a(split[i4], a10);
                aVar.f89939c = d(split[i4]);
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    private static void c(a aVar) {
        String[] strArr = aVar.f89939c;
        if (strArr.length == 3 && TextUtils.equals(b.f86919c, strArr[0])) {
            Context context = p.b.b().f93064a;
            com.alipay.sdk.tid.b a10 = com.alipay.sdk.tid.b.a();
            if (TextUtils.isEmpty(strArr[1]) || TextUtils.isEmpty(strArr[2])) {
                return;
            }
            a10.f6925a = strArr[1];
            a10.f6926b = strArr[2];
            com.alipay.sdk.tid.a aVar2 = new com.alipay.sdk.tid.a(context);
            try {
                aVar2.k(com.alipay.sdk.util.b.a(context).b(), com.alipay.sdk.util.b.a(context).e(), a10.f6925a, a10.f6926b);
            } catch (Exception unused) {
            } finally {
                aVar2.close();
            }
        }
    }

    private static String[] d(String str) {
        ArrayList arrayList = new ArrayList();
        int indexOf = str.indexOf(40);
        int lastIndexOf = str.lastIndexOf(41);
        if (indexOf == -1 || lastIndexOf == -1 || lastIndexOf <= indexOf) {
            return null;
        }
        String[] split = str.substring(indexOf + 1, lastIndexOf).split(",");
        if (split != null) {
            for (int i4 = 0; i4 < split.length; i4++) {
                if (!TextUtils.isEmpty(split[i4])) {
                    arrayList.add(split[i4].trim().replaceAll("'", "").replaceAll("\"", ""));
                }
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    private com.alipay.sdk.protocol.a e() {
        return this.f89937a;
    }

    private static String[] f(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.split(i.f6965b);
    }

    private String[] g() {
        return this.f89939c;
    }

    private a(String str, com.alipay.sdk.protocol.a aVar) {
        this.f89938b = str;
        this.f89937a = aVar;
    }
}
