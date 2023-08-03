package com.iab.omid.library.giphy.walking.a;

import com.iab.omid.library.giphy.walking.a.b;
import java.util.HashSet;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public abstract class a extends b {

    /* renamed from: c  reason: collision with root package name */
    protected final HashSet<String> f39436c;

    /* renamed from: d  reason: collision with root package name */
    protected final JSONObject f39437d;

    /* renamed from: e  reason: collision with root package name */
    protected final double f39438e;

    public a(b.InterfaceC0300b interfaceC0300b, HashSet<String> hashSet, JSONObject jSONObject, double d4) {
        super(interfaceC0300b);
        this.f39436c = new HashSet<>(hashSet);
        this.f39437d = jSONObject;
        this.f39438e = d4;
    }
}
