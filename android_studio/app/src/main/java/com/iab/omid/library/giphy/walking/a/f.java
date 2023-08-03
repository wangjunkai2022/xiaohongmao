package com.iab.omid.library.giphy.walking.a;

import android.text.TextUtils;
import com.iab.omid.library.giphy.adsession.g;
import com.iab.omid.library.giphy.walking.a.b;
import java.util.HashSet;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class f extends a {
    public f(b.InterfaceC0300b interfaceC0300b, HashSet<String> hashSet, JSONObject jSONObject, double d4) {
        super(interfaceC0300b, hashSet, jSONObject, d4);
    }

    private void e(String str) {
        com.iab.omid.library.giphy.b.a a10 = com.iab.omid.library.giphy.b.a.a();
        if (a10 != null) {
            for (g gVar : a10.c()) {
                if (this.f39436c.contains(gVar.e())) {
                    gVar.f().j(str, this.f39438e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iab.omid.library.giphy.walking.a.b, android.os.AsyncTask
    /* renamed from: b */
    public void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            e(str);
        }
        super.onPostExecute(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: d */
    public String doInBackground(Object... objArr) {
        if (com.iab.omid.library.giphy.d.b.k(this.f39437d, this.f39440b.b())) {
            return null;
        }
        this.f39440b.a(this.f39437d);
        return this.f39437d.toString();
    }
}
