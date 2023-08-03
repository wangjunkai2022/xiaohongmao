package com.google.common.base;

import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: JdkPattern.java */
@h3.c
/* loaded from: classes2.dex */
final class t extends g implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    private static final long f32306b = 0;

    /* renamed from: a  reason: collision with root package name */
    private final Pattern f32307a;

    /* compiled from: JdkPattern.java */
    /* loaded from: classes2.dex */
    private static final class a extends f {

        /* renamed from: a  reason: collision with root package name */
        final Matcher f32308a;

        a(Matcher matcher) {
            this.f32308a = (Matcher) a0.E(matcher);
        }

        @Override // com.google.common.base.f
        public int a() {
            return this.f32308a.end();
        }

        @Override // com.google.common.base.f
        public boolean b() {
            return this.f32308a.find();
        }

        @Override // com.google.common.base.f
        public boolean c(int i4) {
            return this.f32308a.find(i4);
        }

        @Override // com.google.common.base.f
        public boolean d() {
            return this.f32308a.matches();
        }

        @Override // com.google.common.base.f
        public String e(String str) {
            return this.f32308a.replaceAll(str);
        }

        @Override // com.google.common.base.f
        public int f() {
            return this.f32308a.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(Pattern pattern) {
        this.f32307a = (Pattern) a0.E(pattern);
    }

    @Override // com.google.common.base.g
    public int b() {
        return this.f32307a.flags();
    }

    @Override // com.google.common.base.g
    public f d(CharSequence charSequence) {
        return new a(this.f32307a.matcher(charSequence));
    }

    @Override // com.google.common.base.g
    public String e() {
        return this.f32307a.pattern();
    }

    @Override // com.google.common.base.g
    public String toString() {
        return this.f32307a.toString();
    }
}
