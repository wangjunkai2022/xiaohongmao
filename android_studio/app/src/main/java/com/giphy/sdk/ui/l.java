package com.giphy.sdk.ui;

import android.content.Context;
import com.facebook.common.statfs.StatFsHelper;
import com.facebook.imagepipeline.core.i;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.s0;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* compiled from: Giphy.kt */
@Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b0\u00101J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J^\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\n2$\b\u0002\u0010\u000e\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\fj\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006`\r2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0007R\"\u0010\u0018\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u0013R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R$\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\"\u0010*\u001a\u00020)8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/¨\u00062"}, d2 = {"Lcom/giphy/sdk/ui/l;", "", "Landroid/content/Context;", "context", "", "n", "", "apiKey", "", "verificationMode", "", "videoCacheMaxBytes", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", com.google.android.exoplayer2.text.ttml.d.f25744y, "Lcom/giphy/sdk/ui/m;", "frescoHandler", "h", "a", "Z", "j", "()Z", "o", "(Z)V", "autoPlay", "c", "initialized", "Lcom/giphy/sdk/ui/o;", "d", "Lcom/giphy/sdk/ui/o;", "l", "()Lcom/giphy/sdk/ui/o;", "q", "(Lcom/giphy/sdk/ui/o;)V", "recents", "e", "Lcom/giphy/sdk/ui/m;", "k", "()Lcom/giphy/sdk/ui/m;", "p", "(Lcom/giphy/sdk/ui/m;)V", "Li2/e;", "themeUsed", "Li2/e;", "m", "()Li2/e;", "r", "(Li2/e;)V", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: c */
    private static boolean f17072c;

    /* renamed from: d */
    public static o f17073d;
    @m8.h

    /* renamed from: e */
    private static m f17074e;
    @m8.g

    /* renamed from: f */
    public static final l f17075f = new l();

    /* renamed from: a */
    private static boolean f17070a = true;
    @m8.g

    /* renamed from: b */
    private static i2.e f17071b = i2.d.f69302n;

    /* compiled from: Giphy.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/s0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 1})
    @DebugMetadata(c = "com.giphy.sdk.ui.Giphy$configure$1", f = "Giphy.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f17076a;

        /* renamed from: b */
        final /* synthetic */ HashMap f17077b;

        /* renamed from: c */
        final /* synthetic */ Context f17078c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(HashMap hashMap, Context context, Continuation continuation) {
            super(2, continuation);
            this.f17077b = hashMap;
            this.f17078c = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> completion) {
            Intrinsics.checkNotNullParameter(completion, "completion");
            return new a(this.f17077b, this.f17078c, completion);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(s0 s0Var, Continuation<? super Unit> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object value;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f17076a == 0) {
                ResultKt.throwOnFailure(obj);
                l lVar = l.f17075f;
                if (!l.f17072c) {
                    com.giphy.sdk.core.c cVar = com.giphy.sdk.core.c.f16910h;
                    String h4 = cVar.h();
                    cVar.n(h4 + ",UISDK");
                    String i4 = cVar.i();
                    cVar.o(i4 + ",2.1.9");
                    if (this.f17077b.containsKey("RNSDK")) {
                        String h10 = cVar.h();
                        cVar.n(h10 + ",RNSDK");
                        String i10 = cVar.i();
                        StringBuilder sb = new StringBuilder();
                        sb.append(i10);
                        sb.append(',');
                        value = MapsKt__MapsKt.getValue(this.f17077b, "RNSDK");
                        sb.append((String) value);
                        cVar.o(sb.toString());
                    }
                    Context applicationContext = this.f17078c.getApplicationContext();
                    Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
                    lVar.n(applicationContext);
                    com.giphy.sdk.tracking.d.f16994p.c("UI-2.1.9");
                    l.f17072c = true;
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* compiled from: Giphy.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lokhttp3/Response;", "kotlin.jvm.PlatformType", "chain", "Lokhttp3/Interceptor$Chain;", "intercept"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class b implements Interceptor {

        /* renamed from: a */
        public static final b f17079a = new b();

        b() {
        }

        @Override // okhttp3.Interceptor
        public final Response intercept(Interceptor.Chain chain) {
            Request.Builder newBuilder = chain.request().newBuilder();
            for (Map.Entry<String, String> entry : com.giphy.sdk.core.c.f16910h.e().entrySet()) {
                newBuilder.addHeader(entry.getKey(), entry.getValue());
            }
            return chain.proceed(newBuilder.build());
        }
    }

    private l() {
    }

    public static /* synthetic */ void i(l lVar, Context context, String str, boolean z9, long j4, HashMap hashMap, m mVar, int i4, Object obj) {
        lVar.h(context, str, (i4 & 4) != 0 ? false : z9, (i4 & 8) != 0 ? 104857600L : j4, (i4 & 16) != 0 ? new HashMap() : hashMap, (i4 & 32) != 0 ? null : mVar);
    }

    public final void n(Context context) {
        com.facebook.cache.disk.c n9 = com.facebook.cache.disk.c.n(context).w(StatFsHelper.f11025i).n();
        com.facebook.cache.disk.c n10 = com.facebook.cache.disk.c.n(context).w(262144000L).n();
        new HashSet().add(new q1.g());
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        m mVar = f17074e;
        if (mVar != null) {
            mVar.b(builder);
        }
        builder.addInterceptor(b.f17079a);
        i.b config = com.facebook.imagepipeline.backends.okhttp3.b.a(context, builder.build()).y0(n9).o0(n10);
        m mVar2 = f17074e;
        if (mVar2 != null) {
            Intrinsics.checkNotNullExpressionValue(config, "config");
            mVar2.a(config);
        }
        com.facebook.drawee.backends.pipeline.d.f(context, config.K());
    }

    @JvmOverloads
    public final void d(@m8.g Context context, @m8.g String str) {
        i(this, context, str, false, 0L, null, null, 60, null);
    }

    @JvmOverloads
    public final void e(@m8.g Context context, @m8.g String str, boolean z9) {
        i(this, context, str, z9, 0L, null, null, 56, null);
    }

    @JvmOverloads
    public final void f(@m8.g Context context, @m8.g String str, boolean z9, long j4) {
        i(this, context, str, z9, j4, null, null, 48, null);
    }

    @JvmOverloads
    public final void g(@m8.g Context context, @m8.g String str, boolean z9, long j4, @m8.g HashMap<String, String> hashMap) {
        i(this, context, str, z9, j4, hashMap, null, 32, null);
    }

    @JvmOverloads
    public final void h(@m8.g Context context, @m8.g String apiKey, boolean z9, long j4, @m8.g HashMap<String, String> metadata, @m8.h m mVar) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        f17074e = mVar;
        kotlinx.coroutines.k.b(null, new a(metadata, context, null), 1, null);
        com.giphy.sdk.ui.utils.j.f18934d.f(context, j4);
        com.giphy.sdk.core.c.f16910h.a(context, apiKey, z9);
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        f17073d = new o(applicationContext);
        i2.a.f69274n.n(context);
        i2.d.f69302n.n(context);
    }

    public final boolean j() {
        return f17070a;
    }

    @m8.h
    public final m k() {
        return f17074e;
    }

    @m8.g
    public final o l() {
        o oVar = f17073d;
        if (oVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recents");
        }
        return oVar;
    }

    @m8.g
    public final i2.e m() {
        return f17071b;
    }

    public final void o(boolean z9) {
        f17070a = z9;
    }

    public final void p(@m8.h m mVar) {
        f17074e = mVar;
    }

    public final void q(@m8.g o oVar) {
        Intrinsics.checkNotNullParameter(oVar, "<set-?>");
        f17073d = oVar;
    }

    public final void r(@m8.g i2.e eVar) {
        Intrinsics.checkNotNullParameter(eVar, "<set-?>");
        f17071b = eVar;
    }
}
