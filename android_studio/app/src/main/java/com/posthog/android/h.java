package com.posthog.android;

import android.app.Activity;
import android.os.Bundle;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IntegrationOperation.java */
/* loaded from: classes3.dex */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    static final h f47477a = new d();

    /* renamed from: b  reason: collision with root package name */
    static final h f47478b = new e();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IntegrationOperation.java */
    /* loaded from: classes3.dex */
    public static class a extends h {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.posthog.android.payloads.e f47479c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(com.posthog.android.payloads.e eVar) {
            super(null);
            this.f47479c = eVar;
        }

        @Override // com.posthog.android.h
        public void l(com.posthog.android.g<?> gVar) {
            gVar.n(this.f47479c);
        }

        public String toString() {
            return this.f47479c.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IntegrationOperation.java */
    /* loaded from: classes3.dex */
    public static class b extends h {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.posthog.android.payloads.a f47480c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(com.posthog.android.payloads.a aVar) {
            super(null);
            this.f47480c = aVar;
        }

        @Override // com.posthog.android.h
        public void l(com.posthog.android.g<?> gVar) {
            gVar.a(this.f47480c);
        }

        public String toString() {
            return this.f47480c.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IntegrationOperation.java */
    /* loaded from: classes3.dex */
    public static class c extends h {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.posthog.android.payloads.c f47481c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(com.posthog.android.payloads.c cVar) {
            super(null);
            this.f47481c = cVar;
        }

        @Override // com.posthog.android.h
        void l(com.posthog.android.g<?> gVar) {
            gVar.d(this.f47481c);
        }

        public String toString() {
            return this.f47481c.toString();
        }
    }

    /* compiled from: IntegrationOperation.java */
    /* loaded from: classes3.dex */
    static class d extends h {
        d() {
            super(null);
        }

        @Override // com.posthog.android.h
        void l(com.posthog.android.g<?> gVar) {
            gVar.c();
        }

        public String toString() {
            return "Flush";
        }
    }

    /* compiled from: IntegrationOperation.java */
    /* loaded from: classes3.dex */
    static class e extends h {
        e() {
            super(null);
        }

        @Override // com.posthog.android.h
        void l(com.posthog.android.g<?> gVar) {
            gVar.m();
        }

        public String toString() {
            return "Reset";
        }
    }

    /* compiled from: IntegrationOperation.java */
    /* loaded from: classes3.dex */
    static class f extends h {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Activity f47482c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Bundle f47483d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(Activity activity, Bundle bundle) {
            super(null);
            this.f47482c = activity;
            this.f47483d = bundle;
        }

        @Override // com.posthog.android.h
        public void l(com.posthog.android.g<?> gVar) {
            gVar.f(this.f47482c, this.f47483d);
        }

        public String toString() {
            return "Activity Created";
        }
    }

    /* compiled from: IntegrationOperation.java */
    /* loaded from: classes3.dex */
    static class g extends h {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Activity f47484c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(Activity activity) {
            super(null);
            this.f47484c = activity;
        }

        @Override // com.posthog.android.h
        public void l(com.posthog.android.g<?> gVar) {
            gVar.k(this.f47484c);
        }

        public String toString() {
            return "Activity Started";
        }
    }

    /* compiled from: IntegrationOperation.java */
    /* renamed from: com.posthog.android.h$h  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    static class C0399h extends h {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Activity f47485c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0399h(Activity activity) {
            super(null);
            this.f47485c = activity;
        }

        @Override // com.posthog.android.h
        public void l(com.posthog.android.g<?> gVar) {
            gVar.i(this.f47485c);
        }

        public String toString() {
            return "Activity Resumed";
        }
    }

    /* compiled from: IntegrationOperation.java */
    /* loaded from: classes3.dex */
    static class i extends h {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Activity f47486c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(Activity activity) {
            super(null);
            this.f47486c = activity;
        }

        @Override // com.posthog.android.h
        public void l(com.posthog.android.g<?> gVar) {
            gVar.h(this.f47486c);
        }

        public String toString() {
            return "Activity Paused";
        }
    }

    /* compiled from: IntegrationOperation.java */
    /* loaded from: classes3.dex */
    static class j extends h {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Activity f47487c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(Activity activity) {
            super(null);
            this.f47487c = activity;
        }

        @Override // com.posthog.android.h
        public void l(com.posthog.android.g<?> gVar) {
            gVar.l(this.f47487c);
        }

        public String toString() {
            return "Activity Stopped";
        }
    }

    /* compiled from: IntegrationOperation.java */
    /* loaded from: classes3.dex */
    static class k extends h {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Activity f47488c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Bundle f47489d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(Activity activity, Bundle bundle) {
            super(null);
            this.f47488c = activity;
            this.f47489d = bundle;
        }

        @Override // com.posthog.android.h
        public void l(com.posthog.android.g<?> gVar) {
            gVar.j(this.f47488c, this.f47489d);
        }

        public String toString() {
            return "Activity Save Instance";
        }
    }

    /* compiled from: IntegrationOperation.java */
    /* loaded from: classes3.dex */
    static class l extends h {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Activity f47490c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(Activity activity) {
            super(null);
            this.f47490c = activity;
        }

        @Override // com.posthog.android.h
        public void l(com.posthog.android.g<?> gVar) {
            gVar.g(this.f47490c);
        }

        public String toString() {
            return "Activity Destroyed";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IntegrationOperation.java */
    /* loaded from: classes3.dex */
    public static class m extends h {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.posthog.android.payloads.d f47491c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(com.posthog.android.payloads.d dVar) {
            super(null);
            this.f47491c = dVar;
        }

        @Override // com.posthog.android.h
        public void l(com.posthog.android.g<?> gVar) {
            gVar.e(this.f47491c);
        }

        public String toString() {
            return this.f47491c.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IntegrationOperation.java */
    /* loaded from: classes3.dex */
    public static class n extends h {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.posthog.android.payloads.b f47492c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(com.posthog.android.payloads.b bVar) {
            super(null);
            this.f47492c = bVar;
        }

        @Override // com.posthog.android.h
        public void l(com.posthog.android.g<?> gVar) {
            gVar.b(this.f47492c);
        }

        public String toString() {
            return this.f47492c.toString();
        }
    }

    /* synthetic */ h(f fVar) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h a(com.posthog.android.payloads.a aVar) {
        return new b(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h b(com.posthog.android.payloads.b bVar) {
        return new n(bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h c(com.posthog.android.payloads.c cVar) {
        return new c(cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h d(com.posthog.android.payloads.d dVar) {
        return new m(dVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h e(Activity activity, Bundle bundle) {
        return new f(activity, bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h f(Activity activity) {
        return new l(activity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h g(Activity activity) {
        return new i(activity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h h(Activity activity) {
        return new C0399h(activity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h i(Activity activity, Bundle bundle) {
        return new k(activity, bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h j(Activity activity) {
        return new g(activity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h k(Activity activity) {
        return new j(activity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h m(com.posthog.android.payloads.e eVar) {
        return new a(eVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void l(com.posthog.android.g<?> gVar);

    private h() {
    }
}
