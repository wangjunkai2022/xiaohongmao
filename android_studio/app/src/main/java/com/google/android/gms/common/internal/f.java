package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArraySet;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.i;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
@y2.d0
/* loaded from: classes2.dex */
public final class f {
    @r7.h

    /* renamed from: a  reason: collision with root package name */
    private final Account f29112a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<Scope> f29113b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<Scope> f29114c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<com.google.android.gms.common.api.a<?>, i0> f29115d;

    /* renamed from: e  reason: collision with root package name */
    private final int f29116e;
    @r7.h

    /* renamed from: f  reason: collision with root package name */
    private final View f29117f;

    /* renamed from: g  reason: collision with root package name */
    private final String f29118g;

    /* renamed from: h  reason: collision with root package name */
    private final String f29119h;

    /* renamed from: i  reason: collision with root package name */
    private final com.google.android.gms.signin.a f29120i;

    /* renamed from: j  reason: collision with root package name */
    private Integer f29121j;

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public static final class a {
        @r7.h

        /* renamed from: a  reason: collision with root package name */
        private Account f29122a;

        /* renamed from: b  reason: collision with root package name */
        private ArraySet<Scope> f29123b;

        /* renamed from: c  reason: collision with root package name */
        private String f29124c;

        /* renamed from: d  reason: collision with root package name */
        private String f29125d;

        /* renamed from: e  reason: collision with root package name */
        private com.google.android.gms.signin.a f29126e = com.google.android.gms.signin.a.f31081j;

        @NonNull
        @u2.a
        public f a() {
            return new f(this.f29122a, this.f29123b, null, 0, null, this.f29124c, this.f29125d, this.f29126e, false);
        }

        @NonNull
        @u2.a
        public a b(@NonNull String str) {
            this.f29124c = str;
            return this;
        }

        @NonNull
        public final a c(@NonNull Collection<Scope> collection) {
            if (this.f29123b == null) {
                this.f29123b = new ArraySet<>();
            }
            this.f29123b.addAll(collection);
            return this;
        }

        @NonNull
        public final a d(@r7.h Account account) {
            this.f29122a = account;
            return this;
        }

        @NonNull
        public final a e(@NonNull String str) {
            this.f29125d = str;
            return this;
        }
    }

    @u2.a
    public f(@NonNull Account account, @NonNull Set<Scope> set, @NonNull Map<com.google.android.gms.common.api.a<?>, i0> map, int i4, @r7.h View view, @NonNull String str, @NonNull String str2, @r7.h com.google.android.gms.signin.a aVar) {
        this(account, set, map, i4, view, str, str2, aVar, false);
    }

    @NonNull
    @u2.a
    public static f a(@NonNull Context context) {
        return new i.a(context).p();
    }

    @Nullable
    @u2.a
    public Account b() {
        return this.f29112a;
    }

    @Nullable
    @u2.a
    @Deprecated
    public String c() {
        Account account = this.f29112a;
        if (account != null) {
            return account.name;
        }
        return null;
    }

    @NonNull
    @u2.a
    public Account d() {
        Account account = this.f29112a;
        return account != null ? account : new Account("<<default account>>", b.f29059a);
    }

    @NonNull
    @u2.a
    public Set<Scope> e() {
        return this.f29114c;
    }

    @NonNull
    @u2.a
    public Set<Scope> f(@NonNull com.google.android.gms.common.api.a<?> aVar) {
        i0 i0Var = this.f29115d.get(aVar);
        if (i0Var != null && !i0Var.f29140a.isEmpty()) {
            HashSet hashSet = new HashSet(this.f29113b);
            hashSet.addAll(i0Var.f29140a);
            return hashSet;
        }
        return this.f29113b;
    }

    @u2.a
    public int g() {
        return this.f29116e;
    }

    @NonNull
    @u2.a
    public String h() {
        return this.f29118g;
    }

    @NonNull
    @u2.a
    public Set<Scope> i() {
        return this.f29113b;
    }

    @Nullable
    @u2.a
    public View j() {
        return this.f29117f;
    }

    @NonNull
    public final com.google.android.gms.signin.a k() {
        return this.f29120i;
    }

    @Nullable
    public final Integer l() {
        return this.f29121j;
    }

    @Nullable
    public final String m() {
        return this.f29119h;
    }

    @NonNull
    public final Map<com.google.android.gms.common.api.a<?>, i0> n() {
        return this.f29115d;
    }

    public final void o(@NonNull Integer num) {
        this.f29121j = num;
    }

    public f(@r7.h Account account, @NonNull Set<Scope> set, @NonNull Map<com.google.android.gms.common.api.a<?>, i0> map, int i4, @r7.h View view, @NonNull String str, @NonNull String str2, @r7.h com.google.android.gms.signin.a aVar, boolean z9) {
        this.f29112a = account;
        Set<Scope> emptySet = set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
        this.f29113b = emptySet;
        map = map == null ? Collections.emptyMap() : map;
        this.f29115d = map;
        this.f29117f = view;
        this.f29116e = i4;
        this.f29118g = str;
        this.f29119h = str2;
        this.f29120i = aVar == null ? com.google.android.gms.signin.a.f31081j : aVar;
        HashSet hashSet = new HashSet(emptySet);
        for (i0 i0Var : map.values()) {
            hashSet.addAll(i0Var.f29140a);
        }
        this.f29114c = Collections.unmodifiableSet(hashSet);
    }
}
