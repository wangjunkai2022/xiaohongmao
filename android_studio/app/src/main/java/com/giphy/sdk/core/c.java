package com.giphy.sdk.core;

import android.content.Context;
import com.facebook.common.callercontext.ContextChain;
import com.giphy.sdk.core.network.api.GPHApiClient;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: GiphyCore.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001d\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b2\u00103J \u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006J \u0010\r\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u0006J\u000e\u0010\u000f\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0004R\"\u0010\u0015\u001a\u00020\f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\t\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R>\u0010\u001e\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0016j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010\u000e\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010'\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u001f\u001a\u0004\b%\u0010!\"\u0004\b&\u0010#R*\u0010.\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00068\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u0016\u00100\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0011\u0010/R2\u00101\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\f0\u0016j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\f`\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010\u0019¨\u00064"}, d2 = {"Lcom/giphy/sdk/core/c;", "", "Landroid/content/Context;", "context", "", "apiKey", "", "verificationMode", "", "a", "instanceName", "enableVerificationMode", "Lcom/giphy/sdk/core/network/api/GPHApiClient;", "c", "name", "j", "Lcom/giphy/sdk/core/network/api/GPHApiClient;", "f", "()Lcom/giphy/sdk/core/network/api/GPHApiClient;", "l", "(Lcom/giphy/sdk/core/network/api/GPHApiClient;)V", "apiClient", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "b", "Ljava/util/HashMap;", "e", "()Ljava/util/HashMap;", "k", "(Ljava/util/HashMap;)V", "additionalHeaders", "Ljava/lang/String;", "h", "()Ljava/lang/String;", "n", "(Ljava/lang/String;)V", "d", ContextChain.TAG_INFRA, "o", "versionName", "value", "Z", "g", "()Z", "m", "(Z)V", "logsEnabled", "Landroid/content/Context;", "applicationContext", "secondaryApiClientInstances", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static GPHApiClient f16903a;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f16907e;

    /* renamed from: f  reason: collision with root package name */
    private static Context f16908f;
    @g

    /* renamed from: h  reason: collision with root package name */
    public static final c f16910h = new c();
    @g

    /* renamed from: b  reason: collision with root package name */
    private static HashMap<String, String> f16904b = new HashMap<>();
    @g

    /* renamed from: c  reason: collision with root package name */
    private static String f16905c = "CoreSDK";
    @g

    /* renamed from: d  reason: collision with root package name */
    private static String f16906d = "3.1.9";

    /* renamed from: g  reason: collision with root package name */
    private static HashMap<String, GPHApiClient> f16909g = new HashMap<>();

    private c() {
    }

    public static /* synthetic */ void b(c cVar, Context context, String str, boolean z9, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            z9 = false;
        }
        cVar.a(context, str, z9);
    }

    public static /* synthetic */ GPHApiClient d(c cVar, String str, String str2, boolean z9, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            z9 = false;
        }
        return cVar.c(str, str2, z9);
    }

    public final void a(@g Context context, @g String apiKey, boolean z9) {
        HashMap<String, String> hashMapOf;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        f16908f = applicationContext;
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.to("X-GIPHY-SDK-VERSION", f16906d), TuplesKt.to("X-GIPHY-SDK-NAME", f16905c), TuplesKt.to("X-GIPHY-SDK-PLATFORM", "Android"), TuplesKt.to("X-GIPHY-UI-SDK-IS-EXTENSION", String.valueOf(d.f16911a.a(context))), TuplesKt.to(com.google.common.net.b.f34629j, "gzip,br"));
        f16904b = hashMapOf;
        e2.a aVar = e2.a.f62216j;
        aVar.l(f16904b);
        Context applicationContext2 = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext2, "context.applicationContext");
        aVar.a(applicationContext2, apiKey, z9);
        f16903a = new GPHApiClient(apiKey, null, new com.giphy.sdk.analytics.batching.a(apiKey, true, z9), 2, null);
    }

    @g
    public final GPHApiClient c(@g String instanceName, @g String apiKey, boolean z9) {
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        GPHApiClient gPHApiClient = new GPHApiClient(apiKey, null, new com.giphy.sdk.analytics.batching.a(apiKey, false, z9), 2, null);
        f16909g.put(instanceName, gPHApiClient);
        return gPHApiClient;
    }

    @g
    public final HashMap<String, String> e() {
        return f16904b;
    }

    @g
    public final GPHApiClient f() {
        GPHApiClient gPHApiClient = f16903a;
        if (gPHApiClient == null) {
            Intrinsics.throwUninitializedPropertyAccessException("apiClient");
        }
        return gPHApiClient;
    }

    public final boolean g() {
        return f16907e;
    }

    @g
    public final String h() {
        return f16905c;
    }

    @g
    public final String i() {
        return f16906d;
    }

    @g
    public final GPHApiClient j(@g String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        GPHApiClient gPHApiClient = f16909g.get(name);
        if (gPHApiClient != null) {
            return gPHApiClient;
        }
        throw new Exception("An instance with name=" + name + " was never configured.");
    }

    public final void k(@g HashMap<String, String> hashMap) {
        Intrinsics.checkNotNullParameter(hashMap, "<set-?>");
        f16904b = hashMap;
    }

    public final void l(@g GPHApiClient gPHApiClient) {
        Intrinsics.checkNotNullParameter(gPHApiClient, "<set-?>");
        f16903a = gPHApiClient;
    }

    public final void m(boolean z9) {
        f16907e = z9;
        e2.a.f62216j.n(z9);
    }

    public final void n(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        f16905c = str;
    }

    public final void o(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        f16906d = str;
    }
}
