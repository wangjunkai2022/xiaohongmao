package com.giphy.sdk.core.network.api;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.common.callercontext.ContextChain;
import com.giphy.sdk.core.models.enums.LangType;
import com.giphy.sdk.core.models.enums.MediaType;
import com.giphy.sdk.core.models.enums.RatingType;
import com.giphy.sdk.core.network.response.ChannelsSearchResponse;
import com.giphy.sdk.core.network.response.ListMediaResponse;
import com.giphy.sdk.core.network.response.MediaResponse;
import com.giphy.sdk.core.network.response.TrendingSearchesResponse;
import io.sentry.protocol.y;
import java.util.List;
import java.util.concurrent.Future;
import kotlin.Metadata;
import m8.g;
import m8.h;
import s2.d;

/* compiled from: GPHApi.kt */
@Metadata(bv = {}, d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\b\b`\u0018\u00002\u00020\u0001J[\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u00102\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00062\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH&¢\u0006\u0004\b\u0011\u0010\u0012JI\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\u00102\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00062\b\u0010\n\u001a\u0004\u0018\u00010\t2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH&¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0016\u001a\u0006\u0012\u0002\b\u00030\u00102\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00150\rH&J6\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\u00102\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00170\rH&J6\u0010\u001b\u001a\u0006\u0012\u0002\b\u00030\u00102\u0006\u0010\u0019\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\n\u001a\u0004\u0018\u00010\t2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u001a0\rH&J\"\u0010\u001d\u001a\u0006\u0012\u0002\b\u00030\u00102\u0006\u0010\u001c\u001a\u00020\u00022\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u001a0\rH&J4\u0010!\u001a\u0006\u0012\u0002\b\u00030\u00102\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00020\u001e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0002H&J5\u0010\"\u001a\u0006\u0012\u0002\b\u00030\u00102\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00062\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH&¢\u0006\u0004\b\"\u0010#J,\u0010%\u001a\u0006\u0012\u0002\b\u00030\u00102\u0006\u0010$\u001a\u00020\u00022\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH&¨\u0006&"}, d2 = {"Lcom/giphy/sdk/core/network/api/b;", "", "", "searchQuery", "Lcom/giphy/sdk/core/models/enums/MediaType;", "type", "", "limit", TypedValues.Cycle.S_WAVE_OFFSET, "Lcom/giphy/sdk/core/models/enums/RatingType;", "rating", "Lcom/giphy/sdk/core/models/enums/LangType;", "lang", "Lcom/giphy/sdk/core/network/api/a;", "Lcom/giphy/sdk/core/network/response/ListMediaResponse;", "completionHandler", "Ljava/util/concurrent/Future;", "d", "(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/models/enums/LangType;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;", "e", "(Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;", "Lcom/giphy/sdk/core/network/response/TrendingSearchesResponse;", ContextChain.TAG_INFRA, "Lcom/giphy/sdk/core/network/response/ChannelsSearchResponse;", "c", y.b.f83916d, "Lcom/giphy/sdk/core/network/response/MediaResponse;", "f", "gifId", "h", "", "gifIds", "context", "a", "b", "(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;", d.f93273b, "g", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public interface b {

    /* compiled from: GPHApi.kt */
    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class a {
        public static /* synthetic */ Future a(b bVar, String str, int i4, int i10, com.giphy.sdk.core.network.api.a aVar, int i11, Object obj) {
            if (obj == null) {
                if ((i11 & 2) != 0) {
                    i4 = 25;
                }
                if ((i11 & 4) != 0) {
                    i10 = 0;
                }
                return bVar.c(str, i4, i10, aVar);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: channelsSearch");
        }

        public static /* synthetic */ Future b(b bVar, List list, com.giphy.sdk.core.network.api.a aVar, String str, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 4) != 0) {
                    str = null;
                }
                return bVar.a(list, aVar, str);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: gifsByIds");
        }
    }

    @g
    Future<?> a(@g List<String> list, @g com.giphy.sdk.core.network.api.a<? super ListMediaResponse> aVar, @h String str);

    @g
    Future<?> b(@h Integer num, @h Integer num2, @g com.giphy.sdk.core.network.api.a<? super ListMediaResponse> aVar);

    @g
    Future<?> c(@g String str, int i4, int i10, @g com.giphy.sdk.core.network.api.a<? super ChannelsSearchResponse> aVar);

    @g
    Future<?> d(@g String str, @h MediaType mediaType, @h Integer num, @h Integer num2, @h RatingType ratingType, @h LangType langType, @g com.giphy.sdk.core.network.api.a<? super ListMediaResponse> aVar);

    @g
    Future<?> e(@h MediaType mediaType, @h Integer num, @h Integer num2, @h RatingType ratingType, @g com.giphy.sdk.core.network.api.a<? super ListMediaResponse> aVar);

    @g
    Future<?> f(@g String str, @h MediaType mediaType, @h RatingType ratingType, @g com.giphy.sdk.core.network.api.a<? super MediaResponse> aVar);

    @g
    Future<?> g(@g String str, @h LangType langType, @g com.giphy.sdk.core.network.api.a<? super ListMediaResponse> aVar);

    @g
    Future<?> h(@g String str, @g com.giphy.sdk.core.network.api.a<? super MediaResponse> aVar);

    @g
    Future<?> i(@g com.giphy.sdk.core.network.api.a<? super TrendingSearchesResponse> aVar);
}
