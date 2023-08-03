package org.aspectj.lang;

import k8.z;

/* compiled from: JoinPoint.java */
/* loaded from: classes4.dex */
public interface c {

    /* renamed from: a  reason: collision with root package name */
    public static final String f91018a = "method-execution";

    /* renamed from: b  reason: collision with root package name */
    public static final String f91019b = "method-call";

    /* renamed from: c  reason: collision with root package name */
    public static final String f91020c = "constructor-execution";

    /* renamed from: d  reason: collision with root package name */
    public static final String f91021d = "constructor-call";

    /* renamed from: e  reason: collision with root package name */
    public static final String f91022e = "field-get";

    /* renamed from: f  reason: collision with root package name */
    public static final String f91023f = "field-set";

    /* renamed from: g  reason: collision with root package name */
    public static final String f91024g = "staticinitialization";

    /* renamed from: h  reason: collision with root package name */
    public static final String f91025h = "preinitialization";

    /* renamed from: i  reason: collision with root package name */
    public static final String f91026i = "initialization";

    /* renamed from: j  reason: collision with root package name */
    public static final String f91027j = "exception-handler";

    /* renamed from: k  reason: collision with root package name */
    public static final String f91028k = "lock";

    /* renamed from: l  reason: collision with root package name */
    public static final String f91029l = "unlock";

    /* renamed from: m  reason: collision with root package name */
    public static final String f91030m = "adviceexecution";

    /* compiled from: JoinPoint.java */
    /* loaded from: classes4.dex */
    public interface a extends b {
    }

    /* compiled from: JoinPoint.java */
    /* loaded from: classes4.dex */
    public interface b {
        String b();

        String d();

        z e();

        int getId();

        String getKind();

        e getSignature();

        String toString();
    }

    Object a();

    String b();

    b c();

    String d();

    z e();

    String getKind();

    e getSignature();

    Object h();

    Object[] i();

    String toString();
}
