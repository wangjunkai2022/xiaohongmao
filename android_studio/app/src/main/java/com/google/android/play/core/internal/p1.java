package com.google.android.play.core.internal;

import java.util.Objects;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class p1 implements r1, n1 {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f31737c = new Object();

    /* renamed from: a  reason: collision with root package name */
    private volatile r1 f31738a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Object f31739b = f31737c;

    private p1(r1 r1Var) {
        this.f31738a = r1Var;
    }

    public static n1 a(r1 r1Var) {
        if (r1Var instanceof n1) {
            return (n1) r1Var;
        }
        Objects.requireNonNull(r1Var);
        return new p1(r1Var);
    }

    public static r1 b(r1 r1Var) {
        Objects.requireNonNull(r1Var);
        return r1Var instanceof p1 ? r1Var : new p1(r1Var);
    }

    @Override // com.google.android.play.core.internal.r1
    public final Object zza() {
        Object obj = this.f31739b;
        Object obj2 = f31737c;
        if (obj == obj2) {
            synchronized (this) {
                obj = this.f31739b;
                if (obj == obj2) {
                    obj = this.f31738a.zza();
                    Object obj3 = this.f31739b;
                    if (obj3 != obj2 && obj3 != obj) {
                        String valueOf = String.valueOf(obj3);
                        String valueOf2 = String.valueOf(obj);
                        StringBuilder sb = new StringBuilder(valueOf.length() + 118 + valueOf2.length());
                        sb.append("Scoped provider was invoked recursively returning different results: ");
                        sb.append(valueOf);
                        sb.append(" & ");
                        sb.append(valueOf2);
                        sb.append(". This is likely due to a circular dependency.");
                        throw new IllegalStateException(sb.toString());
                    }
                    this.f31739b = obj;
                    this.f31738a = null;
                }
            }
        }
        return obj;
    }
}
