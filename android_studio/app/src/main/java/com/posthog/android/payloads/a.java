package com.posthog.android.payloads;

import a.f0;
import a.g0;
import com.posthog.android.internal.Utils;
import com.posthog.android.payloads.BasePayload;
import java.util.Date;
import java.util.Map;

/* compiled from: AliasPayload.java */
/* loaded from: classes3.dex */
public class a extends BasePayload {

    /* renamed from: h  reason: collision with root package name */
    static final String f47566h = "alias";

    /* compiled from: AliasPayload.java */
    /* renamed from: com.posthog.android.payloads.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0400a extends BasePayload.a<a, C0400a> {

        /* renamed from: g  reason: collision with root package name */
        private String f47567g;

        public C0400a() {
        }

        @f0
        public C0400a j(@f0 String str) {
            this.f47567g = Utils.b(str, a.f47566h);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.posthog.android.payloads.BasePayload.a
        /* renamed from: k */
        public a g(@f0 String str, @f0 Date date, @f0 Map<String, Object> map, @g0 String str2) {
            Utils.b(this.f47567g, a.f47566h);
            return new a(str, date, map, str2, this.f47567g);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.posthog.android.payloads.BasePayload.a
        /* renamed from: l */
        public C0400a h() {
            return this;
        }

        C0400a(a aVar) {
            super(aVar);
            this.f47567g = aVar.B();
        }
    }

    a(@f0 String str, @f0 Date date, @f0 Map<String, Object> map, @g0 String str2, @f0 String str3) {
        super(BasePayload.Type.alias, "$create_alias", str, date, map, str2);
        map.put("distinct_id", str2);
        map.put(f47566h, str3);
    }

    public String B() {
        return v().k(f47566h);
    }

    @Override // com.posthog.android.payloads.BasePayload
    @f0
    /* renamed from: C */
    public C0400a y() {
        return new C0400a(this);
    }

    @Override // com.posthog.android.x
    public String toString() {
        return "AliasPayload{distinctId=\"" + s() + ",alias=\"" + B() + "\"}";
    }
}
