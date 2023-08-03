package com.google.android.gms.common;

import android.accounts.Account;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class a {

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    /* renamed from: com.google.android.gms.common.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0191a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private Account f28494a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f28495b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private ArrayList<Account> f28496c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private ArrayList<String> f28497d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f28498e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private String f28499f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private Bundle f28500g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f28501h;

        /* renamed from: i  reason: collision with root package name */
        private int f28502i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private String f28503j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f28504k;
        @Nullable

        /* renamed from: l  reason: collision with root package name */
        private s f28505l;
        @Nullable

        /* renamed from: m  reason: collision with root package name */
        private String f28506m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f28507n;

        /* renamed from: o  reason: collision with root package name */
        private boolean f28508o;

        /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
        /* renamed from: com.google.android.gms.common.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0192a {
            @Nullable

            /* renamed from: a  reason: collision with root package name */
            private Account f28509a;
            @Nullable

            /* renamed from: b  reason: collision with root package name */
            private ArrayList<Account> f28510b;
            @Nullable

            /* renamed from: c  reason: collision with root package name */
            private ArrayList<String> f28511c;

            /* renamed from: d  reason: collision with root package name */
            private boolean f28512d = false;
            @Nullable

            /* renamed from: e  reason: collision with root package name */
            private String f28513e;
            @Nullable

            /* renamed from: f  reason: collision with root package name */
            private Bundle f28514f;

            @NonNull
            public C0191a a() {
                com.google.android.gms.common.internal.u.b(true, "We only support hostedDomain filter for account chip styled account picker");
                com.google.android.gms.common.internal.u.b(true, "Consent is only valid for account chip styled account picker");
                C0191a c0191a = new C0191a();
                c0191a.f28497d = this.f28511c;
                c0191a.f28496c = this.f28510b;
                c0191a.f28498e = this.f28512d;
                c0191a.f28505l = null;
                c0191a.f28503j = null;
                c0191a.f28500g = this.f28514f;
                c0191a.f28494a = this.f28509a;
                c0191a.f28495b = false;
                c0191a.f28501h = false;
                c0191a.f28506m = null;
                c0191a.f28502i = 0;
                c0191a.f28499f = this.f28513e;
                c0191a.f28504k = false;
                c0191a.f28507n = false;
                c0191a.f28508o = false;
                return c0191a;
            }

            @NonNull
            public C0192a b(@Nullable List<Account> list) {
                this.f28510b = list == null ? null : new ArrayList<>(list);
                return this;
            }

            @NonNull
            public C0192a c(@Nullable List<String> list) {
                this.f28511c = list == null ? null : new ArrayList<>(list);
                return this;
            }

            @NonNull
            public C0192a d(boolean z9) {
                this.f28512d = z9;
                return this;
            }

            @NonNull
            public C0192a e(@Nullable Bundle bundle) {
                this.f28514f = bundle;
                return this;
            }

            @NonNull
            public C0192a f(@Nullable Account account) {
                this.f28509a = account;
                return this;
            }

            @NonNull
            public C0192a g(@Nullable String str) {
                this.f28513e = str;
                return this;
            }
        }
    }

    private a() {
    }

    @NonNull
    @Deprecated
    public static Intent a(@Nullable Account account, @Nullable ArrayList<Account> arrayList, @Nullable String[] strArr, boolean z9, @Nullable String str, @Nullable String str2, @Nullable String[] strArr2, @Nullable Bundle bundle) {
        Intent intent = new Intent();
        com.google.android.gms.common.internal.u.b(true, "We only support hostedDomain filter for account chip styled account picker");
        intent.setAction("com.google.android.gms.common.account.CHOOSE_ACCOUNT");
        intent.setPackage("com.google.android.gms");
        intent.putExtra("allowableAccounts", arrayList);
        intent.putExtra("allowableAccountTypes", strArr);
        intent.putExtra("addAccountOptions", bundle);
        intent.putExtra("selectedAccount", account);
        intent.putExtra("alwaysPromptForAccount", z9);
        intent.putExtra("descriptionTextOverride", str);
        intent.putExtra("authTokenType", str2);
        intent.putExtra("addAccountRequiredFeatures", strArr2);
        intent.putExtra("setGmsCoreAccount", false);
        intent.putExtra("overrideTheme", 0);
        intent.putExtra("overrideCustomTheme", 0);
        intent.putExtra("hostedDomainFilter", (String) null);
        return intent;
    }

    @NonNull
    public static Intent b(@NonNull C0191a c0191a) {
        Intent intent = new Intent();
        boolean unused = c0191a.f28504k;
        String unused2 = c0191a.f28503j;
        com.google.android.gms.common.internal.u.b(true, "We only support hostedDomain filter for account chip styled account picker");
        s unused3 = c0191a.f28505l;
        com.google.android.gms.common.internal.u.b(true, "Consent is only valid for account chip styled account picker");
        boolean unused4 = c0191a.f28495b;
        com.google.android.gms.common.internal.u.b(true, "Making the selected account non-clickable is only supported for the theme THEME_DAY_NIGHT_GOOGLE_MATERIAL2");
        boolean unused5 = c0191a.f28504k;
        intent.setAction("com.google.android.gms.common.account.CHOOSE_ACCOUNT");
        intent.setPackage("com.google.android.gms");
        intent.putExtra("allowableAccounts", c0191a.f28496c);
        if (c0191a.f28497d != null) {
            intent.putExtra("allowableAccountTypes", (String[]) c0191a.f28497d.toArray(new String[0]));
        }
        intent.putExtra("addAccountOptions", c0191a.f28500g);
        intent.putExtra("selectedAccount", c0191a.f28494a);
        boolean unused6 = c0191a.f28495b;
        intent.putExtra("selectedAccountIsNotClickable", false);
        intent.putExtra("alwaysPromptForAccount", c0191a.f28498e);
        intent.putExtra("descriptionTextOverride", c0191a.f28499f);
        boolean unused7 = c0191a.f28501h;
        intent.putExtra("setGmsCoreAccount", false);
        String unused8 = c0191a.f28506m;
        intent.putExtra("realClientPackage", (String) null);
        int unused9 = c0191a.f28502i;
        intent.putExtra("overrideTheme", 0);
        boolean unused10 = c0191a.f28504k;
        intent.putExtra("overrideCustomTheme", 0);
        String unused11 = c0191a.f28503j;
        intent.putExtra("hostedDomainFilter", (String) null);
        Bundle bundle = new Bundle();
        boolean unused12 = c0191a.f28504k;
        s unused13 = c0191a.f28505l;
        boolean unused14 = c0191a.f28507n;
        boolean unused15 = c0191a.f28508o;
        if (!bundle.isEmpty()) {
            intent.putExtra("first_party_options_bundle", bundle);
        }
        return intent;
    }
}
