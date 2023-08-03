package com.posthog.android;

import a.f0;
import com.posthog.android.j;
import com.posthog.android.payloads.BasePayload;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RealMiddlewareChain.java */
/* loaded from: classes3.dex */
public class u implements j.a {

    /* renamed from: a  reason: collision with root package name */
    private int f47647a;
    @f0

    /* renamed from: b  reason: collision with root package name */
    private final BasePayload f47648b;
    @f0

    /* renamed from: c  reason: collision with root package name */
    private final List<j> f47649c;
    @f0

    /* renamed from: d  reason: collision with root package name */
    private final PostHog f47650d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(int i4, @f0 BasePayload basePayload, @f0 List<j> list, @f0 PostHog postHog) {
        this.f47647a = i4;
        this.f47648b = basePayload;
        this.f47649c = list;
        this.f47650d = postHog;
    }

    @Override // com.posthog.android.j.a
    public BasePayload a() {
        return this.f47648b;
    }

    @Override // com.posthog.android.j.a
    public void b(BasePayload basePayload) {
        if (this.f47647a < this.f47649c.size()) {
            this.f47649c.get(this.f47647a).a(new u(this.f47647a + 1, basePayload, this.f47649c, this.f47650d));
            return;
        }
        this.f47650d.M(basePayload);
    }
}
