package com.iab.omid.library.giphy.adsession;

import org.json.JSONObject;

/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final Owner f39337a;

    /* renamed from: b  reason: collision with root package name */
    private final Owner f39338b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f39339c;

    private c(Owner owner, Owner owner2, boolean z9) {
        this.f39337a = owner;
        if (owner2 == null) {
            this.f39338b = Owner.NONE;
        } else {
            this.f39338b = owner2;
        }
        this.f39339c = z9;
    }

    @Deprecated
    public static c a(Owner owner, Owner owner2) {
        return b(owner, owner2, true);
    }

    public static c b(Owner owner, Owner owner2, boolean z9) {
        com.iab.omid.library.giphy.d.e.d(owner, "Impression owner is null");
        com.iab.omid.library.giphy.d.e.b(owner);
        return new c(owner, owner2, z9);
    }

    public boolean c() {
        return Owner.NATIVE == this.f39337a;
    }

    public boolean d() {
        return Owner.NATIVE == this.f39338b;
    }

    public JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        com.iab.omid.library.giphy.d.b.f(jSONObject, "impressionOwner", this.f39337a);
        com.iab.omid.library.giphy.d.b.f(jSONObject, "videoEventsOwner", this.f39338b);
        com.iab.omid.library.giphy.d.b.f(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.f39339c));
        return jSONObject;
    }
}
