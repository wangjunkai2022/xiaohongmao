package e2;

import android.content.Context;
import android.content.SharedPreferences;
import com.facebook.common.callercontext.ContextChain;
import com.giphy.sdk.analytics.models.enums.ActionType;
import com.giphy.sdk.analytics.models.enums.EventType;
import java.util.HashMap;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m.b;
import m8.g;
import m8.h;

/* compiled from: GiphyPingbacks.kt */
@Metadata(bv = {}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b=\u0010>J \u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006J)\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\f\u0010\rJ\u0006\u0010\u000e\u001a\u00020\bJb\u0010\u001c\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0014\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0018\u001a\u0004\u0018\u00010\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001b\u001a\u00020\u001aH\u0007R\"\u0010\u001d\u001a\u00020\u000b8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0003\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u0010)\u001a\u00020(8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\"\u0010/\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R>\u00107\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000405j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`68\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<¨\u0006?"}, d2 = {"Le2/a;", "", "Landroid/content/Context;", "context", "", "apiKey", "", "verificationMode", "", "a", "instanceName", "Lcom/giphy/sdk/analytics/batching/b;", "c", "(Ljava/lang/String;Ljava/lang/String;Z)Lcom/giphy/sdk/analytics/batching/b;", "e", "loggedInUserId", "analyticsResponsePayload", "referrer", "Lcom/giphy/sdk/analytics/models/enums/EventType;", "eventType", "mediaId", b.f86919c, "Lcom/giphy/sdk/analytics/models/enums/ActionType;", "actionType", "sessionId", "layoutType", "", "position", "k", "pingbackCollector", "Lcom/giphy/sdk/analytics/batching/b;", ContextChain.TAG_INFRA, "()Lcom/giphy/sdk/analytics/batching/b;", "o", "(Lcom/giphy/sdk/analytics/batching/b;)V", "Landroid/content/Context;", "g", "()Landroid/content/Context;", "m", "(Landroid/content/Context;)V", "Landroid/content/SharedPreferences;", "sharedPref", "Landroid/content/SharedPreferences;", "j", "()Landroid/content/SharedPreferences;", "p", "(Landroid/content/SharedPreferences;)V", "logsEnabled", "Z", "h", "()Z", "n", "(Z)V", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "additionalHeaders", "Ljava/util/HashMap;", "f", "()Ljava/util/HashMap;", "l", "(Ljava/util/HashMap;)V", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62207a = "ACCOUNT_PREFS";
    @g

    /* renamed from: b  reason: collision with root package name */
    public static final String f62208b = "PINGBACK";

    /* renamed from: c  reason: collision with root package name */
    public static com.giphy.sdk.analytics.batching.b f62209c;

    /* renamed from: e  reason: collision with root package name */
    public static Context f62211e;

    /* renamed from: f  reason: collision with root package name */
    public static SharedPreferences f62212f;

    /* renamed from: g  reason: collision with root package name */
    private static boolean f62213g;

    /* renamed from: h  reason: collision with root package name */
    private static String f62214h;
    @g

    /* renamed from: j  reason: collision with root package name */
    public static final a f62216j = new a();

    /* renamed from: d  reason: collision with root package name */
    private static HashMap<String, com.giphy.sdk.analytics.batching.b> f62210d = new HashMap<>();
    @g

    /* renamed from: i  reason: collision with root package name */
    private static HashMap<String, String> f62215i = new HashMap<>();

    private a() {
    }

    public static /* synthetic */ void b(a aVar, Context context, String str, boolean z9, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            z9 = false;
        }
        aVar.a(context, str, z9);
    }

    public static /* synthetic */ com.giphy.sdk.analytics.batching.b d(a aVar, String str, String str2, boolean z9, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            z9 = false;
        }
        return aVar.c(str, str2, z9);
    }

    public final void a(@g Context context, @g String apiKey, boolean z9) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        SharedPreferences sharedPreferences = context.getSharedPreferences(f62207a, 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)");
        f62212f = sharedPreferences;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        f62211e = applicationContext;
        f62209c = new com.giphy.sdk.analytics.batching.b(apiKey, true, false, null, z9, 12, null);
    }

    @g
    public final com.giphy.sdk.analytics.batching.b c(@g String instanceName, @g String apiKey, boolean z9) {
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        com.giphy.sdk.analytics.batching.b bVar = new com.giphy.sdk.analytics.batching.b(apiKey, false, false, null, z9, 12, null);
        f62210d.put(instanceName, bVar);
        return bVar;
    }

    public final void e() {
        com.giphy.sdk.analytics.batching.b bVar = f62209c;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pingbackCollector");
        }
        bVar.m();
        for (Map.Entry<String, com.giphy.sdk.analytics.batching.b> entry : f62210d.entrySet()) {
            entry.getValue().m();
        }
    }

    @g
    public final HashMap<String, String> f() {
        return f62215i;
    }

    @g
    public final Context g() {
        Context context = f62211e;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
        }
        return context;
    }

    public final boolean h() {
        return f62213g;
    }

    @g
    public final com.giphy.sdk.analytics.batching.b i() {
        com.giphy.sdk.analytics.batching.b bVar = f62209c;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pingbackCollector");
        }
        return bVar;
    }

    @g
    public final SharedPreferences j() {
        SharedPreferences sharedPreferences = f62212f;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sharedPref");
        }
        return sharedPreferences;
    }

    @Deprecated(message = "Use the pingbackCollector variable to track pingbacks")
    public final void k(@g String loggedInUserId, @g String analyticsResponsePayload, @h String str, @h EventType eventType, @g String mediaId, @h String str2, @g ActionType actionType, @h String str3, @h String str4, int i4) {
        Intrinsics.checkNotNullParameter(loggedInUserId, "loggedInUserId");
        Intrinsics.checkNotNullParameter(analyticsResponsePayload, "analyticsResponsePayload");
        Intrinsics.checkNotNullParameter(mediaId, "mediaId");
        Intrinsics.checkNotNullParameter(actionType, "actionType");
        com.giphy.sdk.analytics.batching.b bVar = f62209c;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pingbackCollector");
        }
        com.giphy.sdk.analytics.batching.b.l(bVar, loggedInUserId, analyticsResponsePayload, str, eventType, mediaId, str2, actionType, str3, str4, i4, null, 1024, null);
    }

    public final void l(@g HashMap<String, String> hashMap) {
        Intrinsics.checkNotNullParameter(hashMap, "<set-?>");
        f62215i = hashMap;
    }

    public final void m(@g Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        f62211e = context;
    }

    public final void n(boolean z9) {
        f62213g = z9;
    }

    public final void o(@g com.giphy.sdk.analytics.batching.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<set-?>");
        f62209c = bVar;
    }

    public final void p(@g SharedPreferences sharedPreferences) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "<set-?>");
        f62212f = sharedPreferences;
    }
}
