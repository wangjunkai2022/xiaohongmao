package com.clj.fastble.scan;

import java.util.UUID;

/* compiled from: BleScanRuleConfig.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private UUID[] f9873a = null;

    /* renamed from: b  reason: collision with root package name */
    private String[] f9874b = null;

    /* renamed from: c  reason: collision with root package name */
    private String f9875c = null;

    /* renamed from: d  reason: collision with root package name */
    private boolean f9876d = false;

    /* renamed from: e  reason: collision with root package name */
    private boolean f9877e = false;

    /* renamed from: f  reason: collision with root package name */
    private long f9878f = 10000;

    /* compiled from: BleScanRuleConfig.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private UUID[] f9879a = null;

        /* renamed from: b  reason: collision with root package name */
        private String[] f9880b = null;

        /* renamed from: c  reason: collision with root package name */
        private String f9881c = null;

        /* renamed from: d  reason: collision with root package name */
        private boolean f9882d = false;

        /* renamed from: e  reason: collision with root package name */
        private boolean f9883e = false;

        /* renamed from: f  reason: collision with root package name */
        private long f9884f = 10000;

        void a(b bVar) {
            bVar.f9873a = this.f9879a;
            bVar.f9874b = this.f9880b;
            bVar.f9875c = this.f9881c;
            bVar.f9876d = this.f9882d;
            bVar.f9877e = this.f9883e;
            bVar.f9878f = this.f9884f;
        }

        public b b() {
            b bVar = new b();
            a(bVar);
            return bVar;
        }

        public a c(boolean z9) {
            this.f9882d = z9;
            return this;
        }

        public a d(String str) {
            this.f9881c = str;
            return this;
        }

        public a e(boolean z9, String... strArr) {
            this.f9883e = z9;
            this.f9880b = strArr;
            return this;
        }

        public a f(long j4) {
            this.f9884f = j4;
            return this;
        }

        public a g(UUID[] uuidArr) {
            this.f9879a = uuidArr;
            return this;
        }
    }

    public String g() {
        return this.f9875c;
    }

    public String[] h() {
        return this.f9874b;
    }

    public long i() {
        return this.f9878f;
    }

    public UUID[] j() {
        return this.f9873a;
    }

    public boolean k() {
        return this.f9876d;
    }

    public boolean l() {
        return this.f9877e;
    }
}
