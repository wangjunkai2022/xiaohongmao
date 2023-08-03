package com.iab.omid.library.giphy.walking.a;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public abstract class b extends AsyncTask<Object, Void, String> {

    /* renamed from: a  reason: collision with root package name */
    private a f39439a;

    /* renamed from: b  reason: collision with root package name */
    protected final InterfaceC0300b f39440b;

    /* loaded from: classes2.dex */
    public interface a {
        void a(b bVar);
    }

    /* renamed from: com.iab.omid.library.giphy.walking.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0300b {
        void a(JSONObject jSONObject);

        JSONObject b();
    }

    public b(InterfaceC0300b interfaceC0300b) {
        this.f39440b = interfaceC0300b;
    }

    public void a(a aVar) {
        this.f39439a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: b */
    public void onPostExecute(String str) {
        a aVar = this.f39439a;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public void c(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }
}
