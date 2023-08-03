package com.google.android.play.core.splitinstall;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class w0 {

    /* renamed from: a  reason: collision with root package name */
    private final Map f32011a = new HashMap();

    public final w0 a(String str, String str2, String str3) {
        if (!this.f32011a.containsKey(str2)) {
            this.f32011a.put(str2, new HashMap());
        }
        ((Map) this.f32011a.get(str2)).put(str, str3);
        return this;
    }

    public final y0 b() {
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : this.f32011a.entrySet()) {
            hashMap.put((String) entry.getKey(), Collections.unmodifiableMap(new HashMap((Map) entry.getValue())));
        }
        return new y0(Collections.unmodifiableMap(hashMap), null);
    }
}
