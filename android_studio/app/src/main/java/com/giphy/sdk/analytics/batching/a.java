package com.giphy.sdk.analytics.batching;

import android.util.Log;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: AnalyticsId.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u000e¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0003\u001a\u00020\u0002H\u0002R$\u0010\b\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0003\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R$\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\t\u0010\u0005\u001a\u0004\b\n\u0010\u0007R\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\u0005\u001a\u0004\b\t\u0010\u0007R\u0017\u0010\u0012\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000f\u001a\u0004\b\f\u0010\u0011¨\u0006\u0016"}, d2 = {"Lcom/giphy/sdk/analytics/batching/a;", "", "", "a", "<set-?>", "Ljava/lang/String;", "d", "()Ljava/lang/String;", "pingbackId", "b", "e", "verificationID", "c", "apikey", "", "Z", "f", "()Z", "isMainInstance", "enableVerificationMode", "<init>", "(Ljava/lang/String;ZZ)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class a {
    @g

    /* renamed from: a  reason: collision with root package name */
    private String f16840a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private String f16841b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final String f16842c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f16843d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f16844e;

    public a(@g String apikey, boolean z9, boolean z10) {
        Intrinsics.checkNotNullParameter(apikey, "apikey");
        this.f16842c = apikey;
        this.f16843d = z9;
        this.f16844e = z10;
        this.f16840a = "";
        this.f16841b = "";
        com.giphy.sdk.analytics.tracking.a aVar = new com.giphy.sdk.analytics.tracking.a(a());
        this.f16840a = aVar.b();
        String c10 = aVar.c();
        this.f16841b = c10;
        if (z10) {
            if (c10 == null || c10.length() == 0) {
                return;
            }
            Log.v(e2.a.f62208b, g2.a.a(this.f16841b));
        }
    }

    private final String a() {
        if (this.f16843d) {
            return "";
        }
        return this.f16842c + '_';
    }

    @g
    public final String b() {
        return this.f16842c;
    }

    public final boolean c() {
        return this.f16844e;
    }

    @g
    public final String d() {
        return this.f16840a;
    }

    @g
    public final String e() {
        return this.f16841b;
    }

    public final boolean f() {
        return this.f16843d;
    }

    public /* synthetic */ a(String str, boolean z9, boolean z10, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i4 & 2) != 0 ? false : z9, (i4 & 4) != 0 ? false : z10);
    }
}
