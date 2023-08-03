package com.giphy.sdk.core.network.api;

import android.net.Uri;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import com.giphy.sdk.core.models.enums.LangType;
import com.giphy.sdk.core.models.enums.MediaType;
import com.giphy.sdk.core.models.enums.RatingType;
import com.giphy.sdk.core.network.api.Constants;
import com.giphy.sdk.core.network.response.ChannelsSearchResponse;
import com.giphy.sdk.core.network.response.ListMediaResponse;
import com.giphy.sdk.core.network.response.MediaResponse;
import com.giphy.sdk.core.network.response.RandomGifResponse;
import com.giphy.sdk.core.network.response.TrendingSearchesResponse;
import com.koushikdutta.async.http.AsyncHttpDelete;
import com.koushikdutta.async.http.AsyncHttpGet;
import com.koushikdutta.async.http.AsyncHttpPost;
import com.koushikdutta.async.http.AsyncHttpPut;
import io.sentry.protocol.y;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsJVMKt;
import m8.g;
import m8.h;

/* compiled from: GPHApiClient.kt */
@Metadata(bv = {}, d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000 \u00142\u00020\u0001:\u0002\"CB%\b\u0007\u0012\u0006\u00106\u001a\u00020\u0004\u0012\b\b\u0002\u0010;\u001a\u000207\u0012\b\b\u0002\u0010@\u001a\u00020<¢\u0006\u0004\bA\u0010BJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J[\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\u00112\u0006\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016¢\u0006\u0004\b\u0012\u0010\u0013JI\u0010\u0014\u001a\u0006\u0012\u0002\b\u00030\u00112\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u00112\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00160\u000eH\u0016J2\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u00112\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00180\u000eH\u0016J6\u0010\u001c\u001a\u0006\u0012\u0002\b\u00030\u00112\u0006\u0010\u001a\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u001b0\u000eH\u0016J\"\u0010\u001e\u001a\u0006\u0012\u0002\b\u00030\u00112\u0006\u0010\u001d\u001a\u00020\u00042\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u001b0\u000eH\u0016J2\u0010\"\u001a\u0006\u0012\u0002\b\u00030\u00112\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040\u001f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\b\u0010!\u001a\u0004\u0018\u00010\u0004H\u0016JN\u0010.\u001a\b\u0012\u0004\u0012\u00028\u00000-\"\u0004\b\u0000\u0010#2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010(\u001a\u00020'2\f\u0010*\u001a\b\u0012\u0004\u0012\u00028\u00000)2\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010+J5\u0010/\u001a\u0006\u0012\u0002\b\u00030\u00112\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u00072\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016¢\u0006\u0004\b/\u00100J,\u00102\u001a\u0006\u0012\u0002\b\u00030\u00112\u0006\u00101\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016R\u0017\u00106\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\"\u00103\u001a\u0004\b4\u00105R\u0017\u0010;\u001a\u0002078\u0006¢\u0006\f\n\u0004\b/\u00108\u001a\u0004\b9\u0010:R\u0017\u0010@\u001a\u00020<8\u0006¢\u0006\f\n\u0004\b\u0019\u0010=\u001a\u0004\b>\u0010?¨\u0006D"}, d2 = {"Lcom/giphy/sdk/core/network/api/GPHApiClient;", "Lcom/giphy/sdk/core/network/api/b;", "Lcom/giphy/sdk/core/models/enums/MediaType;", "type", "", "m", "searchQuery", "", "limit", TypedValues.Cycle.S_WAVE_OFFSET, "Lcom/giphy/sdk/core/models/enums/RatingType;", "rating", "Lcom/giphy/sdk/core/models/enums/LangType;", "lang", "Lcom/giphy/sdk/core/network/api/a;", "Lcom/giphy/sdk/core/network/response/ListMediaResponse;", "completionHandler", "Ljava/util/concurrent/Future;", "d", "(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/models/enums/LangType;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;", "e", "(Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;", "Lcom/giphy/sdk/core/network/response/TrendingSearchesResponse;", ContextChain.TAG_INFRA, "Lcom/giphy/sdk/core/network/response/ChannelsSearchResponse;", "c", y.b.f83916d, "Lcom/giphy/sdk/core/network/response/MediaResponse;", "f", "gifId", "h", "", "gifIds", "context", "a", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/net/Uri;", "serverUrl", "path", "Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;", "method", "Ljava/lang/Class;", "responseClass", "", "queryStrings", "Lcom/giphy/sdk/core/threading/a;", "n", "b", "(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;", s2.d.f93273b, "g", "Ljava/lang/String;", "k", "()Ljava/lang/String;", "apiKey", "Lcom/giphy/sdk/core/network/engine/b;", "Lcom/giphy/sdk/core/network/engine/b;", "l", "()Lcom/giphy/sdk/core/network/engine/b;", "networkSession", "Lcom/giphy/sdk/analytics/batching/a;", "Lcom/giphy/sdk/analytics/batching/a;", "j", "()Lcom/giphy/sdk/analytics/batching/a;", "analyticsId", "<init>", "(Ljava/lang/String;Lcom/giphy/sdk/core/network/engine/b;Lcom/giphy/sdk/analytics/batching/a;)V", "HTTPMethod", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class GPHApiClient implements com.giphy.sdk.core.network.api.b {
    @g

    /* renamed from: d  reason: collision with root package name */
    public static final String f16935d = "api_key";
    @g

    /* renamed from: e  reason: collision with root package name */
    public static final a f16936e = new a(null);
    @g

    /* renamed from: a  reason: collision with root package name */
    private final String f16937a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final com.giphy.sdk.core.network.engine.b f16938b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final com.giphy.sdk.analytics.batching.a f16939c;

    /* compiled from: GPHApiClient.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;", "", "(Ljava/lang/String;I)V", AsyncHttpGet.f44554o, AsyncHttpPost.f44556o, AsyncHttpPut.f44557o, AsyncHttpDelete.f44553o, "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public enum HTTPMethod {
        GET,
        POST,
        PUT,
        DELETE
    }

    /* compiled from: GPHApiClient.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/giphy/sdk/core/network/api/GPHApiClient$a;", "", "", "API_KEY", "Ljava/lang/String;", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: GPHApiClient.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class b implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.giphy.sdk.core.network.api.a f16942b;

        /* compiled from: GPHApiClient.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes2.dex */
        static final class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                b.this.f16942b.a(null, new IllegalArgumentException("gifId must not be blank"));
            }
        }

        b(com.giphy.sdk.core.network.api.a aVar) {
            this.f16942b = aVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            GPHApiClient.this.l().b().execute(new a());
        }
    }

    /* compiled from: GPHApiClient.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class c implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.giphy.sdk.core.network.api.a f16945b;

        /* compiled from: GPHApiClient.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes2.dex */
        static final class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                c.this.f16945b.a(null, new IllegalArgumentException("gifId must not be blank"));
            }
        }

        c(com.giphy.sdk.core.network.api.a aVar) {
            this.f16945b = aVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            GPHApiClient.this.l().b().execute(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GPHApiClient.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0004\n\u0002\b\u0005\u0010\u0000\u001a\n \u0002*\u0004\u0018\u0001H\u0001H\u0001\"\u0004\b\u0000\u0010\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "call", "()Ljava/lang/Object;"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class d<V> implements Callable<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Map f16948b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Uri f16949c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f16950d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ HTTPMethod f16951e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Class f16952f;

        d(Map map, Uri uri, String str, HTTPMethod hTTPMethod, Class cls) {
            this.f16948b = map;
            this.f16949c = uri;
            this.f16950d = str;
            this.f16951e = hTTPMethod;
            this.f16952f = cls;
        }

        /* JADX WARN: Type inference failed for: r0v8, types: [T, java.lang.Object] */
        @Override // java.util.concurrent.Callable
        public final T call() {
            Map<String, String> mutableMap;
            String e4 = GPHApiClient.this.j().e();
            Map map = this.f16948b;
            if (map != null) {
                String str = (String) map.put("random_id", e4);
            }
            com.giphy.sdk.core.c cVar = com.giphy.sdk.core.c.f16910h;
            mutableMap = MapsKt__MapsKt.toMutableMap(cVar.e());
            mutableMap.put(com.google.common.net.b.M, "Android " + cVar.h() + " v" + cVar.i());
            return GPHApiClient.this.l().c(this.f16949c, this.f16950d, this.f16951e, this.f16952f, this.f16948b, mutableMap).m();
        }
    }

    /* compiled from: GPHApiClient.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¨\u0006\b"}, d2 = {"com/giphy/sdk/core/network/api/GPHApiClient$e", "Lcom/giphy/sdk/core/network/api/a;", "Lcom/giphy/sdk/core/network/response/RandomGifResponse;", "result", "", "e", "", "b", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class e implements com.giphy.sdk.core.network.api.a<RandomGifResponse> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.giphy.sdk.core.network.api.a f16953a;

        e(com.giphy.sdk.core.network.api.a aVar) {
            this.f16953a = aVar;
        }

        @Override // com.giphy.sdk.core.network.api.a
        /* renamed from: b */
        public void a(@h RandomGifResponse randomGifResponse, @h Throwable th) {
            if (randomGifResponse != null) {
                this.f16953a.a(randomGifResponse.toGifResponse(), null);
            } else {
                this.f16953a.a(null, th);
            }
        }
    }

    @JvmOverloads
    public GPHApiClient(@g String str) {
        this(str, null, null, 6, null);
    }

    @JvmOverloads
    public GPHApiClient(@g String str, @g com.giphy.sdk.core.network.engine.b bVar) {
        this(str, bVar, null, 4, null);
    }

    @JvmOverloads
    public GPHApiClient(@g String apiKey, @g com.giphy.sdk.core.network.engine.b networkSession, @g com.giphy.sdk.analytics.batching.a analyticsId) {
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(networkSession, "networkSession");
        Intrinsics.checkNotNullParameter(analyticsId, "analyticsId");
        this.f16937a = apiKey;
        this.f16938b = networkSession;
        this.f16939c = analyticsId;
    }

    private final String m(MediaType mediaType) {
        return mediaType == MediaType.sticker ? "stickers" : mediaType == MediaType.text ? "text" : mediaType == MediaType.video ? "videos" : "gifs";
    }

    @Override // com.giphy.sdk.core.network.api.b
    @g
    public Future<?> a(@g List<String> gifIds, @g com.giphy.sdk.core.network.api.a<? super ListMediaResponse> completionHandler, @h String str) {
        HashMap hashMapOf;
        boolean isBlank;
        Intrinsics.checkNotNullParameter(gifIds, "gifIds");
        Intrinsics.checkNotNullParameter(completionHandler, "completionHandler");
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.to(f16935d, this.f16937a));
        if (str != null) {
            hashMapOf.put("context", str);
        }
        StringBuilder sb = new StringBuilder();
        int size = gifIds.size();
        for (int i4 = 0; i4 < size; i4++) {
            isBlank = StringsKt__StringsJVMKt.isBlank(gifIds.get(i4));
            if (isBlank) {
                Future<?> submit = this.f16938b.d().submit(new c(completionHandler));
                Intrinsics.checkNotNullExpressionValue(submit, "networkSession.networkRe…      }\n                }");
                return submit;
            }
            sb.append(gifIds.get(i4));
            if (i4 < gifIds.size() - 1) {
                sb.append(",");
            }
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "str.toString()");
        hashMapOf.put("ids", sb2);
        return n(Constants.f16922h.g(), Constants.a.f16934k.e(), HTTPMethod.GET, ListMediaResponse.class, hashMapOf).k(completionHandler);
    }

    @Override // com.giphy.sdk.core.network.api.b
    @g
    public Future<?> b(@h Integer num, @h Integer num2, @g com.giphy.sdk.core.network.api.a<? super ListMediaResponse> completionHandler) {
        HashMap hashMapOf;
        Intrinsics.checkNotNullParameter(completionHandler, "completionHandler");
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.to(f16935d, this.f16937a));
        if (num != null) {
            hashMapOf.put("limit", String.valueOf(num.intValue()));
        }
        if (num2 != null) {
            hashMapOf.put(TypedValues.Cycle.S_WAVE_OFFSET, String.valueOf(num2.intValue()));
        }
        return n(Constants.f16922h.g(), Constants.a.f16934k.c(), HTTPMethod.GET, ListMediaResponse.class, hashMapOf).k(com.giphy.sdk.tracking.a.b(completionHandler, true, false, 2, null));
    }

    @Override // com.giphy.sdk.core.network.api.b
    @g
    public Future<?> c(@g String searchQuery, int i4, int i10, @g com.giphy.sdk.core.network.api.a<? super ChannelsSearchResponse> completionHandler) {
        HashMap hashMapOf;
        Intrinsics.checkNotNullParameter(searchQuery, "searchQuery");
        Intrinsics.checkNotNullParameter(completionHandler, "completionHandler");
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.to(f16935d, this.f16937a), TuplesKt.to("q", searchQuery));
        hashMapOf.put("limit", String.valueOf(i4));
        hashMapOf.put(TypedValues.Cycle.S_WAVE_OFFSET, String.valueOf(i10));
        return n(Constants.f16922h.g(), Constants.a.f16934k.b(), HTTPMethod.GET, ChannelsSearchResponse.class, hashMapOf).k(completionHandler);
    }

    @Override // com.giphy.sdk.core.network.api.b
    @g
    public Future<?> d(@g String searchQuery, @h MediaType mediaType, @h Integer num, @h Integer num2, @h RatingType ratingType, @h LangType langType, @g com.giphy.sdk.core.network.api.a<? super ListMediaResponse> completionHandler) {
        HashMap hashMapOf;
        Intrinsics.checkNotNullParameter(searchQuery, "searchQuery");
        Intrinsics.checkNotNullParameter(completionHandler, "completionHandler");
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.to(f16935d, this.f16937a), TuplesKt.to("q", searchQuery), TuplesKt.to("pingback_id", e2.a.f62216j.i().o().d()));
        if (num != null) {
            hashMapOf.put("limit", String.valueOf(num.intValue()));
        }
        if (num2 != null) {
            hashMapOf.put(TypedValues.Cycle.S_WAVE_OFFSET, String.valueOf(num2.intValue()));
        }
        if (ratingType != null) {
            hashMapOf.put("rating", ratingType.toString());
        } else {
            hashMapOf.put("rating", RatingType.pg13.toString());
        }
        if (langType != null) {
            hashMapOf.put("lang", langType.toString());
        }
        Uri g4 = Constants.f16922h.g();
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(Constants.a.f16934k.h(), Arrays.copyOf(new Object[]{m(mediaType)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
        return n(g4, format, HTTPMethod.GET, ListMediaResponse.class, hashMapOf).k(com.giphy.sdk.tracking.a.b(completionHandler, false, mediaType == MediaType.text, 1, null));
    }

    @Override // com.giphy.sdk.core.network.api.b
    @g
    public Future<?> e(@h MediaType mediaType, @h Integer num, @h Integer num2, @h RatingType ratingType, @g com.giphy.sdk.core.network.api.a<? super ListMediaResponse> completionHandler) {
        HashMap hashMapOf;
        Intrinsics.checkNotNullParameter(completionHandler, "completionHandler");
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.to(f16935d, this.f16937a), TuplesKt.to("pingback_id", e2.a.f62216j.i().o().d()));
        if (num != null) {
            hashMapOf.put("limit", String.valueOf(num.intValue()));
        }
        if (num2 != null) {
            hashMapOf.put(TypedValues.Cycle.S_WAVE_OFFSET, String.valueOf(num2.intValue()));
        }
        if (ratingType != null) {
            hashMapOf.put("rating", ratingType.toString());
        } else {
            hashMapOf.put("rating", RatingType.pg13.toString());
        }
        Uri g4 = Constants.f16922h.g();
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(Constants.a.f16934k.i(), Arrays.copyOf(new Object[]{m(mediaType)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
        return n(g4, format, HTTPMethod.GET, ListMediaResponse.class, hashMapOf).k(com.giphy.sdk.tracking.a.b(completionHandler, false, mediaType == MediaType.text, 1, null));
    }

    @Override // com.giphy.sdk.core.network.api.b
    @g
    public Future<?> f(@g String tag, @h MediaType mediaType, @h RatingType ratingType, @g com.giphy.sdk.core.network.api.a<? super MediaResponse> completionHandler) {
        HashMap hashMapOf;
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(completionHandler, "completionHandler");
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.to(f16935d, this.f16937a), TuplesKt.to(y.b.f83916d, tag));
        if (ratingType != null) {
            hashMapOf.put("rating", ratingType.toString());
        } else {
            hashMapOf.put("rating", RatingType.pg13.toString());
        }
        e eVar = new e(completionHandler);
        Uri g4 = Constants.f16922h.g();
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(Constants.a.f16934k.g(), Arrays.copyOf(new Object[]{m(mediaType)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
        return n(g4, format, HTTPMethod.GET, RandomGifResponse.class, hashMapOf).k(eVar);
    }

    @Override // com.giphy.sdk.core.network.api.b
    @g
    public Future<?> g(@g String query, @h LangType langType, @g com.giphy.sdk.core.network.api.a<? super ListMediaResponse> completionHandler) {
        HashMap hashMapOf;
        Intrinsics.checkNotNullParameter(query, "query");
        Intrinsics.checkNotNullParameter(completionHandler, "completionHandler");
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.to(f16935d, this.f16937a), TuplesKt.to("m", query), TuplesKt.to("pingback_id", e2.a.f62216j.i().o().d()));
        if (langType != null) {
            hashMapOf.put("lang", langType.toString());
        }
        return n(Constants.f16922h.g(), Constants.a.f16934k.a(), HTTPMethod.GET, ListMediaResponse.class, hashMapOf).k(completionHandler);
    }

    @Override // com.giphy.sdk.core.network.api.b
    @g
    public Future<?> h(@g String gifId, @g com.giphy.sdk.core.network.api.a<? super MediaResponse> completionHandler) {
        boolean isBlank;
        HashMap hashMapOf;
        Intrinsics.checkNotNullParameter(gifId, "gifId");
        Intrinsics.checkNotNullParameter(completionHandler, "completionHandler");
        isBlank = StringsKt__StringsJVMKt.isBlank(gifId);
        if (isBlank) {
            Future<?> submit = this.f16938b.d().submit(new b(completionHandler));
            Intrinsics.checkNotNullExpressionValue(submit, "networkSession.networkRe…          }\n            }");
            return submit;
        }
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.to(f16935d, this.f16937a));
        Uri g4 = Constants.f16922h.g();
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(Constants.a.f16934k.d(), Arrays.copyOf(new Object[]{gifId}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
        return n(g4, format, HTTPMethod.GET, MediaResponse.class, hashMapOf).k(completionHandler);
    }

    @Override // com.giphy.sdk.core.network.api.b
    @g
    public Future<?> i(@g com.giphy.sdk.core.network.api.a<? super TrendingSearchesResponse> completionHandler) {
        HashMap hashMapOf;
        Intrinsics.checkNotNullParameter(completionHandler, "completionHandler");
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.to(f16935d, this.f16937a));
        return n(Constants.f16922h.g(), Constants.a.f16934k.j(), HTTPMethod.GET, TrendingSearchesResponse.class, hashMapOf).k(completionHandler);
    }

    @g
    public final com.giphy.sdk.analytics.batching.a j() {
        return this.f16939c;
    }

    @g
    public final String k() {
        return this.f16937a;
    }

    @g
    public final com.giphy.sdk.core.network.engine.b l() {
        return this.f16938b;
    }

    @g
    public final <T> com.giphy.sdk.core.threading.a<T> n(@g Uri serverUrl, @g String path, @g HTTPMethod method, @g Class<T> responseClass, @h Map<String, String> map) {
        Intrinsics.checkNotNullParameter(serverUrl, "serverUrl");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(responseClass, "responseClass");
        return new com.giphy.sdk.core.threading.a<>(new d(map, serverUrl, path, method, responseClass), this.f16938b.d(), this.f16938b.b());
    }

    public /* synthetic */ GPHApiClient(String str, com.giphy.sdk.core.network.engine.b bVar, com.giphy.sdk.analytics.batching.a aVar, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i4 & 2) != 0 ? new com.giphy.sdk.core.network.engine.a() : bVar, (i4 & 4) != 0 ? new com.giphy.sdk.analytics.batching.a(str, false, false, 6, null) : aVar);
    }
}
