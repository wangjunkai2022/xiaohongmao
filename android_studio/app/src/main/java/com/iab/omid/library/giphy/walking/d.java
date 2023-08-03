package com.iab.omid.library.giphy.walking;

import a.u0;
import com.iab.omid.library.giphy.walking.a.b;
import com.iab.omid.library.giphy.walking.a.e;
import com.iab.omid.library.giphy.walking.a.f;
import java.util.HashSet;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class d implements b.InterfaceC0300b {

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f39455a;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.giphy.walking.a.c f39456b;

    public d(com.iab.omid.library.giphy.walking.a.c cVar) {
        this.f39456b = cVar;
    }

    @Override // com.iab.omid.library.giphy.walking.a.b.InterfaceC0300b
    @u0
    public void a(JSONObject jSONObject) {
        this.f39455a = jSONObject;
    }

    @Override // com.iab.omid.library.giphy.walking.a.b.InterfaceC0300b
    @u0
    public JSONObject b() {
        return this.f39455a;
    }

    public void c() {
        this.f39456b.c(new com.iab.omid.library.giphy.walking.a.d(this));
    }

    public void d(JSONObject jSONObject, HashSet<String> hashSet, double d4) {
        this.f39456b.c(new f(this, hashSet, jSONObject, d4));
    }

    public void e(JSONObject jSONObject, HashSet<String> hashSet, double d4) {
        this.f39456b.c(new e(this, hashSet, jSONObject, d4));
    }
}
