package com.im.freechat.di;

import com.im.freechat.data.openapigen.api.ChatApi;
import com.im.freechat.data.openapigen.api.FileApi;
import com.im.freechat.data.openapigen.api.FriendApi;
import com.im.freechat.data.openapigen.api.MessageApi;
import com.im.freechat.data.openapigen.api.PingApi;
import com.im.freechat.data.openapigen.api.UserApi;
import com.im.freechat.data.openapigen.models.Error;
import com.im.freechat.data.openapigen.models.FriendDeleted;
import com.im.freechat.data.openapigen.models.FriendRequestAccepted;
import com.im.freechat.data.openapigen.models.FriendRequestCancelled;
import com.im.freechat.data.openapigen.models.FriendRequestReceived;
import com.im.freechat.data.openapigen.models.FriendRequestRejected;
import com.im.freechat.data.openapigen.models.LoggedInSuccessfully;
import com.im.freechat.data.openapigen.models.MessageEdited;
import com.im.freechat.data.openapigen.models.MessagePinned;
import com.im.freechat.data.openapigen.models.MessageRead;
import com.im.freechat.data.openapigen.models.MessageReceived;
import com.im.freechat.data.openapigen.models.MessageUnpinned;
import com.im.freechat.data.openapigen.models.MessagesDeleted;
import com.im.freechat.data.openapigen.models.Ping;
import com.im.freechat.data.openapigen.models.SocketMessage;
import com.im.freechat.data.openapigen.models.UnknownSocketMessage;
import com.im.freechat.data.openapigen.models.UserEndedTyping;
import com.im.freechat.data.openapigen.models.UserIsOffline;
import com.im.freechat.data.openapigen.models.UserIsOnline;
import com.im.freechat.data.openapigen.models.UserStartedTyping;
import com.im.freechat.data.sources.api.ApiService;
import com.im.freechat.data.sources.api.RemoteApi;
import com.im.freechat.data.sources.api.entities.auth.UserResponseMapper;
import com.im.freechat.data.sources.api.entities.banner.BannerResponseMapper;
import com.im.freechat.data.sources.api.entities.contact.ContactResponseMapper;
import com.im.freechat.data.sources.websocket.WsService;
import com.im.freechat.data.sources.websocket.entities.WsSocketMessageType;
import com.im.freechat.domain.q;
import com.im.freechat.domain.t;
import com.im.freechat.sdk.SDKManager;
import com.squareup.moshi.u;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSession;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.s0;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.logging.HttpLoggingInterceptor;
import org.koin.core.definition.Kind;
import org.koin.core.registry.c;
import org.koin.core.scope.Scope;
import retrofit2.Retrofit;
import retrofit2.converter.moshi.MoshiConverterFactory;
import timber.log.Timber;

/* compiled from: ApiModule.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lx8/a;", "", "a", "(Lx8/a;)V"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
final class ApiModuleKt$apiModule$1 extends Lambda implements Function1<x8.a, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public static final ApiModuleKt$apiModule$1 f41204a = new ApiModuleKt$apiModule$1();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ApiModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Lokhttp3/OkHttpClient;", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Lokhttp3/OkHttpClient;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function2<Scope, y8.a, OkHttpClient> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f41205a = new a();

        /* compiled from: OkHttpClient.kt */
        @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "intercept", "okhttp3/OkHttpClient$Builder$addInterceptor$2"}, k = 3, mv = {1, 7, 1})
        /* renamed from: com.im.freechat.di.ApiModuleKt$apiModule$1$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0309a implements Interceptor {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ com.im.freechat.domain.d f41206a;

            public C0309a(com.im.freechat.domain.d dVar) {
                this.f41206a = dVar;
            }

            @Override // okhttp3.Interceptor
            @m8.g
            public final Response intercept(@m8.g Interceptor.Chain chain) {
                HttpUrl httpUrl;
                Intrinsics.checkNotNullParameter(chain, "chain");
                Request request = chain.request();
                try {
                    HttpUrl httpUrl2 = HttpUrl.Companion.get(this.f41206a.a());
                    HttpUrl.Builder scheme = request.url().newBuilder().scheme(httpUrl2.scheme());
                    String host = httpUrl2.url().getHost();
                    Intrinsics.checkNotNullExpressionValue(host, "host.toUrl().host");
                    httpUrl = scheme.host(host).build();
                } catch (Exception e4) {
                    Timber.f93860a.e(e4);
                    httpUrl = null;
                }
                Request.Builder newBuilder = chain.request().newBuilder();
                newBuilder.addHeader("IM-APP-ID", SDKManager.f41970a.f());
                if (httpUrl != null) {
                    newBuilder.url(httpUrl);
                }
                return chain.proceed(newBuilder.build());
            }
        }

        /* compiled from: OkHttpClient.kt */
        @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "intercept", "okhttp3/OkHttpClient$Builder$addInterceptor$2"}, k = 3, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class b implements Interceptor {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ q f41207a;

            public b(q qVar) {
                this.f41207a = qVar;
            }

            @Override // okhttp3.Interceptor
            @m8.g
            public final Response intercept(@m8.g Interceptor.Chain chain) {
                Intrinsics.checkNotNullParameter(chain, "chain");
                Response proceed = chain.proceed(chain.request());
                this.f41207a.b(proceed.headers().getDate("date"));
                return proceed;
            }
        }

        a() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.g
        /* renamed from: a */
        public final OkHttpClient invoke(@m8.g Scope single, @m8.g y8.a it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            OkHttpClient.Builder addInterceptor = builder.connectTimeout(60L, timeUnit).readTimeout(60L, timeUnit).addInterceptor(new C0309a((com.im.freechat.domain.d) single.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.d.class), null, null)));
            HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(null, 1, null);
            httpLoggingInterceptor.level(HttpLoggingInterceptor.Level.NONE);
            return addInterceptor.addInterceptor(httpLoggingInterceptor).addInterceptor(new b((q) single.p(Reflection.getOrCreateKotlinClass(q.class), null, null))).build();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ApiModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Lokhttp3/OkHttpClient;", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Lokhttp3/OkHttpClient;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function2<Scope, y8.a, OkHttpClient> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f41208a = new b();

        b() {
            super(2);
        }

        private static final boolean b(String str, SSLSession sSLSession) {
            return true;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.g
        /* renamed from: a */
        public final OkHttpClient invoke(@m8.g Scope scoped, @m8.g y8.a it) {
            Intrinsics.checkNotNullParameter(scoped, "$this$scoped");
            Intrinsics.checkNotNullParameter(it, "it");
            return new OkHttpClient.Builder().pingInterval(25L, TimeUnit.SECONDS).retryOnConnectionFailure(true).build();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ApiModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Lcom/squareup/moshi/u;", "kotlin.jvm.PlatformType", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/squareup/moshi/u;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function2<Scope, y8.a, u> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f41209a = new c();

        c() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final u invoke(@m8.g Scope scoped, @m8.g y8.a it) {
            Intrinsics.checkNotNullParameter(scoped, "$this$scoped");
            Intrinsics.checkNotNullParameter(it, "it");
            return new u.c().a(com.squareup.moshi.adapters.c.b(SocketMessage.class, "type").e(LoggedInSuccessfully.class, WsSocketMessageType.LOGIN_SUCCESS.getType()).e(MessageReceived.class, WsSocketMessageType.MESSAGE_RECEIVED.getType()).e(MessageEdited.class, WsSocketMessageType.MESSAGE_EDITED.getType()).e(MessageRead.class, WsSocketMessageType.MESSAGE_READ.getType()).e(MessagesDeleted.class, WsSocketMessageType.MESSAGES_DELETED.getType()).e(MessagePinned.class, WsSocketMessageType.MESSAGE_PINNED.getType()).e(MessageUnpinned.class, WsSocketMessageType.MESSAGE_UNPINNED.getType()).e(FriendRequestReceived.class, WsSocketMessageType.FRIEND_REQUEST_RECEIVED.getType()).e(FriendRequestAccepted.class, WsSocketMessageType.FRIEND_REQUEST_ACCEPTED.getType()).e(FriendRequestCancelled.class, WsSocketMessageType.FRIEND_REQUEST_CANCELLED.getType()).e(FriendRequestRejected.class, WsSocketMessageType.FRIEND_REQUEST_REJECTED.getType()).e(FriendDeleted.class, WsSocketMessageType.FRIEND_DELETED.getType()).e(UserIsOnline.class, WsSocketMessageType.USER_ONLINE.getType()).e(UserIsOffline.class, WsSocketMessageType.USER_OFFLINE.getType()).e(UserStartedTyping.class, WsSocketMessageType.USER_TYPING_START.getType()).e(UserEndedTyping.class, WsSocketMessageType.USER_TYPING_END.getType()).e(Error.class, WsSocketMessageType.ERROR.getType()).e(Ping.class, WsSocketMessageType.PING.getType()).c(new UnknownSocketMessage(null, 1, null))).a(new v5.b()).i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ApiModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Lokhttp3/OkHttpClient;", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Lokhttp3/OkHttpClient;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function2<Scope, y8.a, OkHttpClient> {

        /* renamed from: a  reason: collision with root package name */
        public static final d f41210a = new d();

        d() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.g
        /* renamed from: a */
        public final OkHttpClient invoke(@m8.g Scope single, @m8.g y8.a it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            OkHttpClient.Builder readTimeout = builder.connectTimeout(60L, timeUnit).readTimeout(60L, timeUnit);
            HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(null, 1, null);
            httpLoggingInterceptor.level(HttpLoggingInterceptor.Level.NONE);
            return readTimeout.addInterceptor(httpLoggingInterceptor).build();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ApiModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Lcom/im/freechat/data/sources/api/RemoteApi;", "kotlin.jvm.PlatformType", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/im/freechat/data/sources/api/RemoteApi;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function2<Scope, y8.a, RemoteApi> {

        /* renamed from: a  reason: collision with root package name */
        public static final e f41211a = new e();

        e() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final RemoteApi invoke(@m8.g Scope single, @m8.g y8.a it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return (RemoteApi) new Retrofit.Builder().addConverterFactory(MoshiConverterFactory.create((u) single.p(Reflection.getOrCreateKotlinClass(u.class), null, null))).client((OkHttpClient) single.p(Reflection.getOrCreateKotlinClass(OkHttpClient.class), z8.b.e("dns"), null)).baseUrl("https://messenger.api.wd946.com").build().create(RemoteApi.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ApiModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Lcom/im/freechat/data/openapigen/api/PingApi;", "kotlin.jvm.PlatformType", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/im/freechat/data/openapigen/api/PingApi;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class f extends Lambda implements Function2<Scope, y8.a, PingApi> {

        /* renamed from: a  reason: collision with root package name */
        public static final f f41212a = new f();

        f() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final PingApi invoke(@m8.g Scope single, @m8.g y8.a it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return (PingApi) new Retrofit.Builder().addConverterFactory(MoshiConverterFactory.create((u) single.p(Reflection.getOrCreateKotlinClass(u.class), null, null))).baseUrl("https://messenger.api.wd946.com").client((OkHttpClient) single.p(Reflection.getOrCreateKotlinClass(OkHttpClient.class), z8.b.e("dns"), null)).build().create(PingApi.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ApiModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Lokhttp3/OkHttpClient;", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Lokhttp3/OkHttpClient;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class g extends Lambda implements Function2<Scope, y8.a, OkHttpClient> {

        /* renamed from: a  reason: collision with root package name */
        public static final g f41213a = new g();

        /* compiled from: ApiModule.kt */
        @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.di.ApiModuleKt$apiModule$1$2$1$1$1", f = "ApiModule.kt", i = {}, l = {115}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f41214a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ com.im.freechat.domain.k f41215b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Scope f41216c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(com.im.freechat.domain.k kVar, Scope scope, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f41215b = kVar;
                this.f41216c = scope;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                return new a(this.f41215b, this.f41216c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
                return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f41214a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    com.im.freechat.domain.k kVar = this.f41215b;
                    this.f41214a = 1;
                    if (kVar.t(this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                ((t) this.f41216c.p(Reflection.getOrCreateKotlinClass(t.class), null, null)).u(false);
                return Unit.INSTANCE;
            }
        }

        /* compiled from: OkHttpClient.kt */
        @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "intercept", "okhttp3/OkHttpClient$Builder$addInterceptor$2"}, k = 3, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class b implements Interceptor {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ com.im.freechat.domain.d f41217a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ com.im.freechat.domain.k f41218b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Scope f41219c;

            public b(com.im.freechat.domain.d dVar, com.im.freechat.domain.k kVar, Scope scope) {
                this.f41217a = dVar;
                this.f41218b = kVar;
                this.f41219c = scope;
            }

            @Override // okhttp3.Interceptor
            @m8.g
            public final Response intercept(@m8.g Interceptor.Chain chain) {
                HttpUrl httpUrl;
                Intrinsics.checkNotNullParameter(chain, "chain");
                Request request = chain.request();
                try {
                    HttpUrl httpUrl2 = HttpUrl.Companion.get(this.f41217a.a());
                    HttpUrl.Builder scheme = request.url().newBuilder().scheme(httpUrl2.scheme());
                    String host = httpUrl2.url().getHost();
                    Intrinsics.checkNotNullExpressionValue(host, "host.toUrl().host");
                    httpUrl = scheme.host(host).build();
                } catch (Exception e4) {
                    Timber.f93860a.e(e4);
                    httpUrl = null;
                }
                Request.Builder newBuilder = request.newBuilder();
                String header = request.header("Authorization");
                String m9 = this.f41218b.m();
                if (!request.url().pathSegments().contains("upload")) {
                    if (header == null && m9 != null) {
                        newBuilder.addHeader("Authorization", "Bearer " + m9);
                    } else {
                        newBuilder.header("Authorization", "Bearer " + header);
                    }
                    newBuilder.addHeader("IM-APP-ID", SDKManager.f41970a.f());
                    if (httpUrl != null) {
                        newBuilder.url(httpUrl);
                    }
                }
                Response proceed = chain.proceed(newBuilder.build());
                if (proceed.code() == 401) {
                    kotlinx.coroutines.k.b(null, new a(this.f41218b, this.f41219c, null), 1, null);
                }
                return proceed;
            }
        }

        /* compiled from: OkHttpClient.kt */
        @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "intercept", "okhttp3/OkHttpClient$Builder$addInterceptor$2"}, k = 3, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class c implements Interceptor {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ q f41220a;

            public c(q qVar) {
                this.f41220a = qVar;
            }

            @Override // okhttp3.Interceptor
            @m8.g
            public final Response intercept(@m8.g Interceptor.Chain chain) {
                Intrinsics.checkNotNullParameter(chain, "chain");
                Response proceed = chain.proceed(chain.request());
                this.f41220a.b(proceed.headers().getDate("date"));
                return proceed;
            }
        }

        g() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.g
        /* renamed from: a */
        public final OkHttpClient invoke(@m8.g Scope single, @m8.g y8.a it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            OkHttpClient.Builder addInterceptor = builder.connectTimeout(60L, timeUnit).readTimeout(60L, timeUnit).addInterceptor(new b((com.im.freechat.domain.d) single.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.d.class), null, null), (com.im.freechat.domain.k) single.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.k.class), null, null), single));
            HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(null, 1, null);
            httpLoggingInterceptor.level(HttpLoggingInterceptor.Level.NONE);
            return addInterceptor.addInterceptor(httpLoggingInterceptor).addInterceptor(new c((q) single.p(Reflection.getOrCreateKotlinClass(q.class), null, null))).build();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ApiModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Lcom/im/freechat/data/sources/api/ApiService;", "kotlin.jvm.PlatformType", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/im/freechat/data/sources/api/ApiService;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class h extends Lambda implements Function2<Scope, y8.a, ApiService> {

        /* renamed from: a  reason: collision with root package name */
        public static final h f41221a = new h();

        h() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final ApiService invoke(@m8.g Scope single, @m8.g y8.a it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return (ApiService) new Retrofit.Builder().addConverterFactory(MoshiConverterFactory.create((u) single.p(Reflection.getOrCreateKotlinClass(u.class), null, null))).baseUrl("https://messenger.api.wd946.com").client((OkHttpClient) single.p(Reflection.getOrCreateKotlinClass(OkHttpClient.class), null, null)).build().create(ApiService.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ApiModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Lcom/im/freechat/data/openapigen/api/ChatApi;", "kotlin.jvm.PlatformType", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/im/freechat/data/openapigen/api/ChatApi;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class i extends Lambda implements Function2<Scope, y8.a, ChatApi> {

        /* renamed from: a  reason: collision with root package name */
        public static final i f41222a = new i();

        i() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final ChatApi invoke(@m8.g Scope single, @m8.g y8.a it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return (ChatApi) new Retrofit.Builder().addConverterFactory(MoshiConverterFactory.create((u) single.p(Reflection.getOrCreateKotlinClass(u.class), null, null))).baseUrl("https://messenger.api.wd946.com").client((OkHttpClient) single.p(Reflection.getOrCreateKotlinClass(OkHttpClient.class), z8.b.e("WithToken"), null)).build().create(ChatApi.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ApiModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Lcom/im/freechat/data/openapigen/api/MessageApi;", "kotlin.jvm.PlatformType", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/im/freechat/data/openapigen/api/MessageApi;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class j extends Lambda implements Function2<Scope, y8.a, MessageApi> {

        /* renamed from: a  reason: collision with root package name */
        public static final j f41223a = new j();

        j() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final MessageApi invoke(@m8.g Scope single, @m8.g y8.a it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return (MessageApi) new Retrofit.Builder().addConverterFactory(MoshiConverterFactory.create((u) single.p(Reflection.getOrCreateKotlinClass(u.class), null, null))).baseUrl("https://messenger.api.wd946.com").client((OkHttpClient) single.p(Reflection.getOrCreateKotlinClass(OkHttpClient.class), z8.b.e("WithToken"), null)).build().create(MessageApi.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ApiModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Lcom/im/freechat/data/openapigen/api/FileApi;", "kotlin.jvm.PlatformType", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/im/freechat/data/openapigen/api/FileApi;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class k extends Lambda implements Function2<Scope, y8.a, FileApi> {

        /* renamed from: a  reason: collision with root package name */
        public static final k f41224a = new k();

        k() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final FileApi invoke(@m8.g Scope single, @m8.g y8.a it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return (FileApi) new Retrofit.Builder().addConverterFactory(MoshiConverterFactory.create((u) single.p(Reflection.getOrCreateKotlinClass(u.class), null, null))).baseUrl("https://messenger.api.wd946.com").client((OkHttpClient) single.p(Reflection.getOrCreateKotlinClass(OkHttpClient.class), z8.b.e("WithToken"), null)).build().create(FileApi.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ApiModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Lcom/im/freechat/data/openapigen/api/FriendApi;", "kotlin.jvm.PlatformType", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/im/freechat/data/openapigen/api/FriendApi;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class l extends Lambda implements Function2<Scope, y8.a, FriendApi> {

        /* renamed from: a  reason: collision with root package name */
        public static final l f41225a = new l();

        l() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final FriendApi invoke(@m8.g Scope single, @m8.g y8.a it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return (FriendApi) new Retrofit.Builder().addConverterFactory(MoshiConverterFactory.create((u) single.p(Reflection.getOrCreateKotlinClass(u.class), null, null))).baseUrl("https://messenger.api.wd946.com").client((OkHttpClient) single.p(Reflection.getOrCreateKotlinClass(OkHttpClient.class), z8.b.e("WithToken"), null)).build().create(FriendApi.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ApiModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Lcom/im/freechat/data/openapigen/api/UserApi;", "kotlin.jvm.PlatformType", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/im/freechat/data/openapigen/api/UserApi;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class m extends Lambda implements Function2<Scope, y8.a, UserApi> {

        /* renamed from: a  reason: collision with root package name */
        public static final m f41226a = new m();

        m() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final UserApi invoke(@m8.g Scope single, @m8.g y8.a it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return (UserApi) new Retrofit.Builder().addConverterFactory(MoshiConverterFactory.create((u) single.p(Reflection.getOrCreateKotlinClass(u.class), null, null))).baseUrl("https://messenger.api.wd946.com").client((OkHttpClient) single.p(Reflection.getOrCreateKotlinClass(OkHttpClient.class), z8.b.e("WithToken"), null)).build().create(UserApi.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ApiModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Lcom/squareup/moshi/u;", "kotlin.jvm.PlatformType", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/squareup/moshi/u;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class n extends Lambda implements Function2<Scope, y8.a, u> {

        /* renamed from: a  reason: collision with root package name */
        public static final n f41227a = new n();

        n() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final u invoke(@m8.g Scope single, @m8.g y8.a it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new u.c().a(new v5.b()).i();
        }
    }

    ApiModuleKt$apiModule$1() {
        super(1);
    }

    public final void a(@m8.g x8.a module) {
        List emptyList;
        List emptyList2;
        List emptyList3;
        List emptyList4;
        List emptyList5;
        List emptyList6;
        List emptyList7;
        List emptyList8;
        List emptyList9;
        List emptyList10;
        List emptyList11;
        List emptyList12;
        List emptyList13;
        List emptyList14;
        List emptyList15;
        List emptyList16;
        List emptyList17;
        List emptyList18;
        List emptyList19;
        List emptyList20;
        List emptyList21;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        a aVar = a.f41205a;
        c.a aVar2 = org.koin.core.registry.c.f92526e;
        z8.c a10 = aVar2.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(OkHttpClient.class), null, aVar, kind, emptyList));
        module.p(fVar);
        if (module.l()) {
            module.u(fVar);
        }
        new Pair(module, fVar);
        z8.c e4 = z8.b.e("WithToken");
        g gVar = g.f41213a;
        z8.c a11 = aVar2.a();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar2 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a11, Reflection.getOrCreateKotlinClass(OkHttpClient.class), e4, gVar, kind, emptyList2));
        module.p(fVar2);
        if (module.l()) {
            module.u(fVar2);
        }
        new Pair(module, fVar2);
        h hVar = h.f41221a;
        z8.c a12 = aVar2.a();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar3 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a12, Reflection.getOrCreateKotlinClass(ApiService.class), null, hVar, kind, emptyList3));
        module.p(fVar3);
        if (module.l()) {
            module.u(fVar3);
        }
        new Pair(module, fVar3);
        i iVar = i.f41222a;
        z8.c a13 = aVar2.a();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar4 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a13, Reflection.getOrCreateKotlinClass(ChatApi.class), null, iVar, kind, emptyList4));
        module.p(fVar4);
        if (module.l()) {
            module.u(fVar4);
        }
        new Pair(module, fVar4);
        j jVar = j.f41223a;
        z8.c a14 = aVar2.a();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar5 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a14, Reflection.getOrCreateKotlinClass(MessageApi.class), null, jVar, kind, emptyList5));
        module.p(fVar5);
        if (module.l()) {
            module.u(fVar5);
        }
        new Pair(module, fVar5);
        k kVar = k.f41224a;
        z8.c a15 = aVar2.a();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar6 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a15, Reflection.getOrCreateKotlinClass(FileApi.class), null, kVar, kind, emptyList6));
        module.p(fVar6);
        if (module.l()) {
            module.u(fVar6);
        }
        new Pair(module, fVar6);
        l lVar = l.f41225a;
        z8.c a16 = aVar2.a();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar7 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a16, Reflection.getOrCreateKotlinClass(FriendApi.class), null, lVar, kind, emptyList7));
        module.p(fVar7);
        if (module.l()) {
            module.u(fVar7);
        }
        new Pair(module, fVar7);
        m mVar = m.f41226a;
        z8.c a17 = aVar2.a();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar8 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a17, Reflection.getOrCreateKotlinClass(UserApi.class), null, mVar, kind, emptyList8));
        module.p(fVar8);
        if (module.l()) {
            module.u(fVar8);
        }
        new Pair(module, fVar8);
        n nVar = n.f41227a;
        z8.c a18 = aVar2.a();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar9 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a18, Reflection.getOrCreateKotlinClass(u.class), null, nVar, kind, emptyList9));
        module.p(fVar9);
        if (module.l()) {
            module.u(fVar9);
        }
        new Pair(module, fVar9);
        z8.a dVar = new z8.d(Reflection.getOrCreateKotlinClass(WsService.class));
        b9.d dVar2 = new b9.d(dVar, module);
        z8.c e10 = z8.b.e("WsClient");
        b bVar = b.f41208a;
        z8.a d4 = dVar2.d();
        Kind kind2 = Kind.Scoped;
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.e eVar = new org.koin.core.instance.e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(OkHttpClient.class), e10, bVar, kind2, emptyList10));
        dVar2.c().p(eVar);
        new Pair(dVar2.c(), eVar);
        z8.c e11 = z8.b.e("WsMoshi");
        c cVar = c.f41209a;
        z8.a d10 = dVar2.d();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.e eVar2 = new org.koin.core.instance.e(new org.koin.core.definition.a(d10, Reflection.getOrCreateKotlinClass(u.class), e11, cVar, kind2, emptyList11));
        dVar2.c().p(eVar2);
        new Pair(dVar2.c(), eVar2);
        module.j().add(dVar);
        z8.c e12 = z8.b.e("dns");
        d dVar3 = d.f41210a;
        z8.c a19 = aVar2.a();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar10 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a19, Reflection.getOrCreateKotlinClass(OkHttpClient.class), e12, dVar3, kind, emptyList12));
        module.p(fVar10);
        if (module.l()) {
            module.u(fVar10);
        }
        new Pair(module, fVar10);
        e eVar3 = e.f41211a;
        z8.c a20 = aVar2.a();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar11 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a20, Reflection.getOrCreateKotlinClass(RemoteApi.class), null, eVar3, kind, emptyList13));
        module.p(fVar11);
        if (module.l()) {
            module.u(fVar11);
        }
        new Pair(module, fVar11);
        f fVar12 = f.f41212a;
        z8.c a21 = aVar2.a();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar13 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a21, Reflection.getOrCreateKotlinClass(PingApi.class), null, fVar12, kind, emptyList14));
        module.p(fVar13);
        if (module.l()) {
            module.u(fVar13);
        }
        new Pair(module, fVar13);
        ApiModuleKt$apiModule$1$invoke$$inlined$singleOf$1 apiModuleKt$apiModule$1$invoke$$inlined$singleOf$1 = new ApiModuleKt$apiModule$1$invoke$$inlined$singleOf$1();
        z8.c a22 = aVar2.a();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar14 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a22, Reflection.getOrCreateKotlinClass(com.im.freechat.data.c.class), null, apiModuleKt$apiModule$1$invoke$$inlined$singleOf$1, kind, emptyList15));
        module.p(fVar14);
        if (module.l()) {
            module.u(fVar14);
        }
        b9.a.b(new Pair(module, fVar14), Reflection.getOrCreateKotlinClass(com.im.freechat.domain.d.class));
        ApiModuleKt$apiModule$1$invoke$$inlined$singleOf$2 apiModuleKt$apiModule$1$invoke$$inlined$singleOf$2 = new ApiModuleKt$apiModule$1$invoke$$inlined$singleOf$2();
        z8.c a23 = aVar2.a();
        emptyList16 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar15 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a23, Reflection.getOrCreateKotlinClass(com.im.freechat.data.k.class), null, apiModuleKt$apiModule$1$invoke$$inlined$singleOf$2, kind, emptyList16));
        module.p(fVar15);
        if (module.l()) {
            module.u(fVar15);
        }
        b9.a.b(new Pair(module, fVar15), Reflection.getOrCreateKotlinClass(q.class));
        ApiModuleKt$apiModule$1$invoke$$inlined$factoryOf$1 apiModuleKt$apiModule$1$invoke$$inlined$factoryOf$1 = new ApiModuleKt$apiModule$1$invoke$$inlined$factoryOf$1();
        z8.c a24 = aVar2.a();
        Kind kind3 = Kind.Factory;
        emptyList17 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.d<?> aVar3 = new org.koin.core.instance.a<>(new org.koin.core.definition.a(a24, Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.dns.b.class), null, apiModuleKt$apiModule$1$invoke$$inlined$factoryOf$1, kind3, emptyList17));
        module.p(aVar3);
        new Pair(module, aVar3);
        ApiModuleKt$apiModule$1$invoke$$inlined$factoryOf$2 apiModuleKt$apiModule$1$invoke$$inlined$factoryOf$2 = new ApiModuleKt$apiModule$1$invoke$$inlined$factoryOf$2();
        z8.c a25 = aVar2.a();
        emptyList18 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.d<?> aVar4 = new org.koin.core.instance.a<>(new org.koin.core.definition.a(a25, Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.dns.a.class), null, apiModuleKt$apiModule$1$invoke$$inlined$factoryOf$2, kind3, emptyList18));
        module.p(aVar4);
        new Pair(module, aVar4);
        ApiModuleKt$apiModule$1$invoke$$inlined$singleOf$3 apiModuleKt$apiModule$1$invoke$$inlined$singleOf$3 = new ApiModuleKt$apiModule$1$invoke$$inlined$singleOf$3();
        z8.c a26 = aVar2.a();
        emptyList19 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar16 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a26, Reflection.getOrCreateKotlinClass(UserResponseMapper.class), null, apiModuleKt$apiModule$1$invoke$$inlined$singleOf$3, kind, emptyList19));
        module.p(fVar16);
        if (module.l()) {
            module.u(fVar16);
        }
        new Pair(module, fVar16);
        ApiModuleKt$apiModule$1$invoke$$inlined$singleOf$4 apiModuleKt$apiModule$1$invoke$$inlined$singleOf$4 = new ApiModuleKt$apiModule$1$invoke$$inlined$singleOf$4();
        z8.c a27 = aVar2.a();
        emptyList20 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar17 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a27, Reflection.getOrCreateKotlinClass(ContactResponseMapper.class), null, apiModuleKt$apiModule$1$invoke$$inlined$singleOf$4, kind, emptyList20));
        module.p(fVar17);
        if (module.l()) {
            module.u(fVar17);
        }
        new Pair(module, fVar17);
        ApiModuleKt$apiModule$1$invoke$$inlined$singleOf$5 apiModuleKt$apiModule$1$invoke$$inlined$singleOf$5 = new ApiModuleKt$apiModule$1$invoke$$inlined$singleOf$5();
        z8.c a28 = aVar2.a();
        emptyList21 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar18 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a28, Reflection.getOrCreateKotlinClass(BannerResponseMapper.class), null, apiModuleKt$apiModule$1$invoke$$inlined$singleOf$5, kind, emptyList21));
        module.p(fVar18);
        if (module.l()) {
            module.u(fVar18);
        }
        new Pair(module, fVar18);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(x8.a aVar) {
        a(aVar);
        return Unit.INSTANCE;
    }
}
