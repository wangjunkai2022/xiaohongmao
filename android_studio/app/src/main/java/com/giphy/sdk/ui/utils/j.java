package com.giphy.sdk.ui.utils;

import android.content.Context;
import android.net.Uri;
import com.facebook.common.callercontext.ContextChain;
import com.facebook.common.statfs.StatFsHelper;
import com.giphy.sdk.core.models.Media;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.b;
import com.google.android.exoplayer2.upstream.cache.k;
import com.google.android.exoplayer2.upstream.cache.t;
import com.google.android.exoplayer2.upstream.cache.v;
import com.google.android.exoplayer2.upstream.o;
import com.google.android.exoplayer2.util.z0;
import com.koushikdutta.async.http.cache.ResponseCacheMiddleware;
import java.io.File;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.l;
import kotlinx.coroutines.s0;
import timber.log.Timber;

/* compiled from: VideoCache.kt */
@Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b#\u0010$J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\bJ\u000e\u0010\f\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u001b\u001a\u00020\u00158\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0010\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\"\u001a\u00020\u001c8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001d\u0010\u001f\"\u0004\b \u0010!¨\u0006%"}, d2 = {"Lcom/giphy/sdk/ui/utils/j;", "", "Lcom/giphy/sdk/core/models/Media;", "media", "Lcom/google/android/exoplayer2/upstream/o;", "e", "Landroid/content/Context;", "context", "", "maxBytes", "", "f", "h", "Lcom/google/android/exoplayer2/upstream/cache/Cache;", "a", "Lcom/google/android/exoplayer2/upstream/cache/Cache;", "b", "()Lcom/google/android/exoplayer2/upstream/cache/Cache;", ContextChain.TAG_INFRA, "(Lcom/google/android/exoplayer2/upstream/cache/Cache;)V", ResponseCacheMiddleware.f44810o, "Lcom/google/android/exoplayer2/upstream/cache/b$d;", "Lcom/google/android/exoplayer2/upstream/cache/b$d;", "d", "()Lcom/google/android/exoplayer2/upstream/cache/b$d;", "k", "(Lcom/google/android/exoplayer2/upstream/cache/b$d;)V", "cacheDataSourceFactory", "Lcom/google/android/exoplayer2/upstream/cache/b;", "c", "Lcom/google/android/exoplayer2/upstream/cache/b;", "()Lcom/google/android/exoplayer2/upstream/cache/b;", "j", "(Lcom/google/android/exoplayer2/upstream/cache/b;)V", "cacheDataSource", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static Cache f18931a;

    /* renamed from: b  reason: collision with root package name */
    public static b.d f18932b;

    /* renamed from: c  reason: collision with root package name */
    public static com.google.android.exoplayer2.upstream.cache.b f18933c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    public static final j f18934d = new j();

    /* compiled from: VideoCache.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/s0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 1})
    @DebugMetadata(c = "com.giphy.sdk.ui.utils.VideoCache$prepareVideo$1", f = "VideoCache.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f18935a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Media f18936b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Media media, Continuation continuation) {
            super(2, continuation);
            this.f18936b = media;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> completion) {
            Intrinsics.checkNotNullParameter(completion, "completion");
            return new a(this.f18936b, completion);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(s0 s0Var, Continuation<? super Unit> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f18935a == 0) {
                ResultKt.throwOnFailure(obj);
                try {
                    j jVar = j.f18934d;
                    new k(jVar.c(), jVar.e(this.f18936b), true, null, null).a();
                } catch (Exception e4) {
                    Timber.j(e4, "error caching " + this.f18936b.getId() + ' ' + h.e(this.f18936b), new Object[0]);
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private j() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final o e(Media media) {
        o.b h4 = new o.b().j(Uri.parse(h.e(media))).i(0L).h(-1);
        Intrinsics.checkNotNullExpressionValue(h4, "DataSpec.Builder()\n     …(C.LENGTH_UNSET.toLong())");
        o a10 = h4.a();
        Intrinsics.checkNotNullExpressionValue(a10, "builder.build()");
        return a10;
    }

    public static /* synthetic */ void g(j jVar, Context context, long j4, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            j4 = StatFsHelper.f11027k;
        }
        jVar.f(context, j4);
    }

    @m8.g
    public final Cache b() {
        Cache cache = f18931a;
        if (cache == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ResponseCacheMiddleware.f44810o);
        }
        return cache;
    }

    @m8.g
    public final com.google.android.exoplayer2.upstream.cache.b c() {
        com.google.android.exoplayer2.upstream.cache.b bVar = f18933c;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cacheDataSource");
        }
        return bVar;
    }

    @m8.g
    public final b.d d() {
        b.d dVar = f18932b;
        if (dVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cacheDataSourceFactory");
        }
        return dVar;
    }

    public final void f(@m8.g Context context, long j4) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (f18931a != null) {
            return;
        }
        f18931a = new v(new File(context.getFilesDir(), "video-cache"), new t(j4), new com.google.android.exoplayer2.database.c(context));
        b.d dVar = new b.d();
        Cache cache = f18931a;
        if (cache == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ResponseCacheMiddleware.f44810o);
        }
        Intrinsics.checkNotNull(cache);
        dVar.k(cache);
        dVar.q(new com.google.android.exoplayer2.upstream.t(context, z0.t0(context, "GiphySDK")));
        f18932b = dVar;
        com.google.android.exoplayer2.upstream.cache.b a10 = dVar.a();
        Intrinsics.checkNotNullExpressionValue(a10, "cacheDataSourceFactory.createDataSource()");
        f18933c = a10;
    }

    public final void h(@m8.g Media media) {
        Intrinsics.checkNotNullParameter(media, "media");
        Timber.e("prepareVideo " + media.getId(), new Object[0]);
        l.f(a2.f84781a, i1.c(), null, new a(media, null), 2, null);
    }

    public final void i(@m8.g Cache cache) {
        Intrinsics.checkNotNullParameter(cache, "<set-?>");
        f18931a = cache;
    }

    public final void j(@m8.g com.google.android.exoplayer2.upstream.cache.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<set-?>");
        f18933c = bVar;
    }

    public final void k(@m8.g b.d dVar) {
        Intrinsics.checkNotNullParameter(dVar, "<set-?>");
        f18932b = dVar;
    }
}
