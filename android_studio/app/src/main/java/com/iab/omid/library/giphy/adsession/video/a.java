package com.iab.omid.library.giphy.adsession.video;

import com.iab.omid.library.giphy.d.c;
import com.iab.omid.library.giphy.d.e;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: e  reason: collision with root package name */
    private static final String f39366e = "VastProperties: ";

    /* renamed from: a  reason: collision with root package name */
    private final boolean f39367a;

    /* renamed from: b  reason: collision with root package name */
    private final Float f39368b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f39369c;

    /* renamed from: d  reason: collision with root package name */
    private final Position f39370d;

    private a(boolean z9, Float f10, boolean z10, Position position) {
        this.f39367a = z9;
        this.f39368b = f10;
        this.f39369c = z10;
        this.f39370d = position;
    }

    public static a a(boolean z9, Position position) {
        e.d(position, "Position is null");
        return new a(false, null, z9, position);
    }

    public static a b(float f10, boolean z9, Position position) {
        e.d(position, "Position is null");
        return new a(true, Float.valueOf(f10), z9, position);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.f39367a);
            if (this.f39367a) {
                jSONObject.put("skipOffset", this.f39368b);
            }
            jSONObject.put("autoPlay", this.f39369c);
            jSONObject.put("position", this.f39370d);
        } catch (JSONException e4) {
            c.b("VastProperties: JSON error", e4);
        }
        return jSONObject;
    }
}
