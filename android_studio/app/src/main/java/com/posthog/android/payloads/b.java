package com.posthog.android.payloads;

import a.f0;
import a.g0;
import com.posthog.android.internal.Utils;
import com.posthog.android.payloads.BasePayload;
import com.posthog.android.s;
import java.util.Date;
import java.util.Map;

/* compiled from: CapturePayload.java */
/* loaded from: classes3.dex */
public class b extends BasePayload {

    /* compiled from: CapturePayload.java */
    /* loaded from: classes3.dex */
    public static class a extends BasePayload.a<b, a> {

        /* renamed from: g  reason: collision with root package name */
        private String f47568g;

        public a() {
        }

        @f0
        public a j(@f0 String str) {
            this.f47568g = Utils.b(str, "event");
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.posthog.android.payloads.BasePayload.a
        /* renamed from: k */
        public b g(@f0 String str, @f0 Date date, @f0 Map<String, Object> map, String str2) {
            Utils.b(this.f47568g, "event");
            return new b(str, date, map, str2, this.f47568g);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.posthog.android.payloads.BasePayload.a
        /* renamed from: l */
        public a h() {
            return this;
        }

        a(b bVar) {
            super(bVar);
            this.f47568g = bVar.t();
        }
    }

    b(@f0 String str, @f0 Date date, @f0 Map<String, Object> map, @g0 String str2, @f0 String str3) {
        super(BasePayload.Type.capture, str3, str, date, map, str2);
    }

    @Override // com.posthog.android.payloads.BasePayload
    @f0
    /* renamed from: B */
    public s v() {
        return (s) m("properties", s.class);
    }

    @Override // com.posthog.android.payloads.BasePayload
    @f0
    /* renamed from: C */
    public a y() {
        return new a(this);
    }

    @Override // com.posthog.android.payloads.BasePayload
    @f0
    public String t() {
        return k("event");
    }

    @Override // com.posthog.android.x
    public String toString() {
        return "CapturePayload{event=\"" + t() + "\"}";
    }
}
