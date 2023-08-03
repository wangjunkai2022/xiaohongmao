package com.posthog.android.payloads;

import a.f0;
import a.g0;
import com.posthog.android.internal.Utils;
import com.posthog.android.payloads.BasePayload;
import com.posthog.android.s;
import java.util.Date;
import java.util.Map;

/* compiled from: ScreenPayload.java */
/* loaded from: classes3.dex */
public class e extends BasePayload {

    /* renamed from: h  reason: collision with root package name */
    static final String f47578h = "$screen_name";

    /* compiled from: ScreenPayload.java */
    /* loaded from: classes3.dex */
    public static class a extends BasePayload.a<e, a> {

        /* renamed from: g  reason: collision with root package name */
        private String f47579g;

        public a() {
        }

        @f0
        public a j(@g0 String str) {
            this.f47579g = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.posthog.android.payloads.BasePayload.a
        /* renamed from: k */
        public e g(@f0 String str, @f0 Date date, @f0 Map<String, Object> map, @g0 String str2) {
            if (!Utils.w(this.f47579g)) {
                return new e(str, date, map, str2, this.f47579g);
            }
            throw new NullPointerException("name is required");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.posthog.android.payloads.BasePayload.a
        /* renamed from: l */
        public a h() {
            return this;
        }

        a(e eVar) {
            super(eVar);
            this.f47579g = eVar.B();
        }
    }

    e(@f0 String str, @f0 Date date, @f0 Map<String, Object> map, @g0 String str2, @g0 String str3) {
        super(BasePayload.Type.screen, "$screen", str, date, map, str2);
        if (Utils.w(str3)) {
            return;
        }
        map.put(f47578h, str3);
    }

    @g0
    public String B() {
        return v().k(f47578h);
    }

    @Override // com.posthog.android.payloads.BasePayload
    @f0
    /* renamed from: C */
    public s v() {
        return (s) m("properties", s.class);
    }

    @Override // com.posthog.android.payloads.BasePayload
    @f0
    /* renamed from: D */
    public a y() {
        return new a(this);
    }

    @Override // com.posthog.android.x
    public String toString() {
        return "ScreenPayload{name=\"" + B() + "\"}";
    }
}
