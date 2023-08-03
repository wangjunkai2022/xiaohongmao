package com.google.android.play.core.splitinstall;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final List f31857a;

    /* renamed from: b  reason: collision with root package name */
    private final List f31858b;

    /* synthetic */ e(a aVar, r rVar) {
        this.f31857a = new ArrayList(aVar.f31859a);
        this.f31858b = new ArrayList(aVar.f31860b);
    }

    @NonNull
    public static a c() {
        return new a(null);
    }

    public List<Locale> a() {
        return this.f31858b;
    }

    public List<String> b() {
        return this.f31857a;
    }

    public String toString() {
        return String.format("SplitInstallRequest{modulesNames=%s,languages=%s}", this.f31857a, this.f31858b);
    }

    /* compiled from: com.google.android.play:core@@1.10.3 */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final List f31859a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private final List f31860b = new ArrayList();

        private a() {
        }

        @NonNull
        public a a(@Nullable Locale locale) {
            this.f31860b.add(locale);
            return this;
        }

        public a b(String str) {
            this.f31859a.add(str);
            return this;
        }

        @NonNull
        public e c() {
            return new e(this, null);
        }

        /* synthetic */ a(q qVar) {
        }
    }
}
