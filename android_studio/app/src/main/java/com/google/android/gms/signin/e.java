package com.google.android.gms.signin;

import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.y;
import com.google.android.gms.common.n;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final a.g<com.google.android.gms.signin.internal.a> f31091a;
    @y

    /* renamed from: b  reason: collision with root package name */
    public static final a.g<com.google.android.gms.signin.internal.a> f31092b;

    /* renamed from: c  reason: collision with root package name */
    public static final a.AbstractC0193a<com.google.android.gms.signin.internal.a, a> f31093c;

    /* renamed from: d  reason: collision with root package name */
    static final a.AbstractC0193a<com.google.android.gms.signin.internal.a, d> f31094d;

    /* renamed from: e  reason: collision with root package name */
    public static final Scope f31095e;

    /* renamed from: f  reason: collision with root package name */
    public static final Scope f31096f;

    /* renamed from: g  reason: collision with root package name */
    public static final com.google.android.gms.common.api.a<a> f31097g;

    /* renamed from: h  reason: collision with root package name */
    public static final com.google.android.gms.common.api.a<d> f31098h;

    static {
        a.g<com.google.android.gms.signin.internal.a> gVar = new a.g<>();
        f31091a = gVar;
        a.g<com.google.android.gms.signin.internal.a> gVar2 = new a.g<>();
        f31092b = gVar2;
        b bVar = new b();
        f31093c = bVar;
        c cVar = new c();
        f31094d = cVar;
        f31095e = new Scope(n.f29237a);
        f31096f = new Scope("email");
        f31097g = new com.google.android.gms.common.api.a<>("SignIn.API", bVar, gVar);
        f31098h = new com.google.android.gms.common.api.a<>("SignIn.INTERNAL_API", cVar, gVar2);
    }
}
