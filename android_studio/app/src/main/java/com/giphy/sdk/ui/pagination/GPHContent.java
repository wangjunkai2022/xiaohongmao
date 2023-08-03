package com.giphy.sdk.ui.pagination;

import androidx.annotation.Keep;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.common.callercontext.ContextChain;
import com.giphy.sdk.analytics.models.enums.EventType;
import com.giphy.sdk.core.models.Media;
import com.giphy.sdk.core.models.enums.MediaType;
import com.giphy.sdk.core.models.enums.RatingType;
import com.giphy.sdk.core.network.api.GPHApiClient;
import com.giphy.sdk.core.network.response.ListMediaResponse;
import com.giphy.sdk.tracking.f;
import com.giphy.sdk.ui.GPHRequestType;
import com.giphy.sdk.ui.l;
import io.sentry.protocol.y;
import java.util.List;
import java.util.concurrent.Future;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: GPHContent.kt */
@Metadata(bv = {}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0017\u0018\u0000 \u001b2\u00020\u0001:\u0001FB\u0007¢\u0006\u0004\bD\u0010EJ(\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002J \u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\n2\u0006\u0010\t\u001a\u00020\b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0017\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\fH\u0000¢\u0006\u0004\b\u000e\u0010\u000fR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010'\u001a\u00020 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\"\u0010/\u001a\u00020(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\"\u00107\u001a\u0002008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\"\u0010;\u001a\u0002008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00102\u001a\u0004\b9\u00104\"\u0004\b:\u00106R\"\u0010A\u001a\u00020\f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u0014\u0010C\u001a\u00020 8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bB\u0010$¨\u0006G"}, d2 = {"Lcom/giphy/sdk/ui/pagination/GPHContent;", "", "Lcom/giphy/sdk/core/network/api/a;", "Lcom/giphy/sdk/core/network/response/ListMediaResponse;", "completionHandler", "Lcom/giphy/sdk/analytics/models/enums/EventType;", "eventType", "g", "", TypedValues.Cycle.S_WAVE_OFFSET, "Ljava/util/concurrent/Future;", "q", "Lcom/giphy/sdk/core/network/api/GPHApiClient;", "newClient", y.b.f83920h, "(Lcom/giphy/sdk/core/network/api/GPHApiClient;)Lcom/giphy/sdk/ui/pagination/GPHContent;", "Lcom/giphy/sdk/core/models/enums/MediaType;", "a", "Lcom/giphy/sdk/core/models/enums/MediaType;", "k", "()Lcom/giphy/sdk/core/models/enums/MediaType;", "t", "(Lcom/giphy/sdk/core/models/enums/MediaType;)V", "mediaType", "Lcom/giphy/sdk/ui/GPHRequestType;", "b", "Lcom/giphy/sdk/ui/GPHRequestType;", "n", "()Lcom/giphy/sdk/ui/GPHRequestType;", "w", "(Lcom/giphy/sdk/ui/GPHRequestType;)V", "requestType", "Lcom/giphy/sdk/core/models/enums/RatingType;", "c", "Lcom/giphy/sdk/core/models/enums/RatingType;", "l", "()Lcom/giphy/sdk/core/models/enums/RatingType;", "u", "(Lcom/giphy/sdk/core/models/enums/RatingType;)V", "rating", "", "d", "Ljava/lang/String;", "o", "()Ljava/lang/String;", y.b.f83919g, "(Ljava/lang/String;)V", "searchQuery", "", "e", "Z", "m", "()Z", "v", "(Z)V", "requestInFlight", "f", "j", "s", "hasPagination", "Lcom/giphy/sdk/core/network/api/GPHApiClient;", ContextChain.TAG_INFRA, "()Lcom/giphy/sdk/core/network/api/GPHApiClient;", "r", "(Lcom/giphy/sdk/core/network/api/GPHApiClient;)V", "apiClient", "p", "_rating", "<init>", "()V", "Companion", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class GPHContent {
    @g

    /* renamed from: h  reason: collision with root package name */
    private static final GPHContent f18783h;
    @g

    /* renamed from: i  reason: collision with root package name */
    private static final GPHContent f18784i;
    @g

    /* renamed from: j  reason: collision with root package name */
    private static final GPHContent f18785j;
    @g

    /* renamed from: k  reason: collision with root package name */
    private static final GPHContent f18786k;
    @g

    /* renamed from: l  reason: collision with root package name */
    private static final GPHContent f18787l;
    @g

    /* renamed from: m  reason: collision with root package name */
    private static final GPHContent f18788m;
    @g

    /* renamed from: n  reason: collision with root package name */
    public static final Companion f18789n = new Companion(null);

    /* renamed from: e  reason: collision with root package name */
    private boolean f18794e;
    @g

    /* renamed from: a  reason: collision with root package name */
    private MediaType f18790a = MediaType.gif;
    @g

    /* renamed from: b  reason: collision with root package name */
    private GPHRequestType f18791b = GPHRequestType.trending;
    @g

    /* renamed from: c  reason: collision with root package name */
    private RatingType f18792c = RatingType.pg13;
    @g

    /* renamed from: d  reason: collision with root package name */
    private String f18793d = "";

    /* renamed from: f  reason: collision with root package name */
    private boolean f18795f = true;
    @g

    /* renamed from: g  reason: collision with root package name */
    private GPHApiClient f18796g = com.giphy.sdk.core.c.f16910h.f();

    /* compiled from: GPHContent.kt */
    @Keep
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0013J\"\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00132\b\b\u0002\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u0019J\u0018\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u0019R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0006R\u0011\u0010\r\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u0006R\u0011\u0010\u000f\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0006¨\u0006\u001b"}, d2 = {"Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;", "", "()V", "emoji", "Lcom/giphy/sdk/ui/pagination/GPHContent;", "getEmoji", "()Lcom/giphy/sdk/ui/pagination/GPHContent;", "recents", "getRecents", "trendingGifs", "getTrendingGifs", "trendingStickers", "getTrendingStickers", "trendingText", "getTrendingText", "trendingVideos", "getTrendingVideos", "animate", "input", "", "searchQuery", "search", "mediaType", "Lcom/giphy/sdk/core/models/enums/MediaType;", "ratingType", "Lcom/giphy/sdk/core/models/enums/RatingType;", "trending", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class Companion {
        private Companion() {
        }

        public static /* synthetic */ GPHContent searchQuery$default(Companion companion, String str, MediaType mediaType, RatingType ratingType, int i4, Object obj) {
            if ((i4 & 2) != 0) {
                mediaType = MediaType.gif;
            }
            if ((i4 & 4) != 0) {
                ratingType = RatingType.pg13;
            }
            return companion.searchQuery(str, mediaType, ratingType);
        }

        public static /* synthetic */ GPHContent trending$default(Companion companion, MediaType mediaType, RatingType ratingType, int i4, Object obj) {
            if ((i4 & 2) != 0) {
                ratingType = RatingType.pg13;
            }
            return companion.trending(mediaType, ratingType);
        }

        @g
        public final GPHContent animate(@g String input) {
            Intrinsics.checkNotNullParameter(input, "input");
            GPHContent gPHContent = new GPHContent();
            gPHContent.s(false);
            gPHContent.x(input);
            gPHContent.t(MediaType.text);
            gPHContent.w(GPHRequestType.animate);
            return gPHContent;
        }

        @g
        public final GPHContent getEmoji() {
            return GPHContent.f18787l;
        }

        @g
        public final GPHContent getRecents() {
            return GPHContent.f18788m;
        }

        @g
        public final GPHContent getTrendingGifs() {
            return GPHContent.f18784i;
        }

        @g
        public final GPHContent getTrendingStickers() {
            return GPHContent.f18785j;
        }

        @g
        public final GPHContent getTrendingText() {
            return GPHContent.f18786k;
        }

        @g
        public final GPHContent getTrendingVideos() {
            return GPHContent.f18783h;
        }

        @g
        public final GPHContent searchQuery(@g String search, @g MediaType mediaType, @g RatingType ratingType) {
            Intrinsics.checkNotNullParameter(search, "search");
            Intrinsics.checkNotNullParameter(mediaType, "mediaType");
            Intrinsics.checkNotNullParameter(ratingType, "ratingType");
            GPHContent gPHContent = new GPHContent();
            gPHContent.x(search);
            gPHContent.t(mediaType);
            gPHContent.u(ratingType);
            gPHContent.w(GPHRequestType.search);
            return gPHContent;
        }

        @g
        public final GPHContent trending(@g MediaType mediaType, @g RatingType ratingType) {
            GPHContent trendingGifs;
            Intrinsics.checkNotNullParameter(mediaType, "mediaType");
            Intrinsics.checkNotNullParameter(ratingType, "ratingType");
            int i4 = com.giphy.sdk.ui.pagination.a.$EnumSwitchMapping$0[mediaType.ordinal()];
            if (i4 == 1) {
                trendingGifs = getTrendingGifs();
            } else if (i4 == 2) {
                trendingGifs = getTrendingStickers();
            } else if (i4 == 3) {
                trendingGifs = getTrendingText();
            } else if (i4 == 4) {
                trendingGifs = getEmoji();
            } else if (i4 != 5) {
                throw new NoWhenBranchMatchedException();
            } else {
                trendingGifs = getTrendingVideos();
            }
            trendingGifs.u(ratingType);
            return trendingGifs;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: GPHContent.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¨\u0006\b"}, d2 = {"com/giphy/sdk/ui/pagination/GPHContent$a", "Lcom/giphy/sdk/core/network/api/a;", "Lcom/giphy/sdk/core/network/response/ListMediaResponse;", "result", "", "e", "", "b", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class a implements com.giphy.sdk.core.network.api.a<ListMediaResponse> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ EventType f18797a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.giphy.sdk.core.network.api.a f18798b;

        a(EventType eventType, com.giphy.sdk.core.network.api.a aVar) {
            this.f18797a = eventType;
            this.f18798b = aVar;
        }

        @Override // com.giphy.sdk.core.network.api.a
        /* renamed from: b */
        public void a(@h ListMediaResponse listMediaResponse, @h Throwable th) {
            List<Media> data;
            if (listMediaResponse != null && (data = listMediaResponse.getData()) != null) {
                for (Media media : data) {
                    Boolean d4 = f.d(media);
                    Boolean bool = Boolean.TRUE;
                    if (Intrinsics.areEqual(d4, bool)) {
                        media.setType(MediaType.emoji);
                    } else if (Intrinsics.areEqual(f.e(media), bool)) {
                        media.setType(MediaType.text);
                    } else if (media.isSticker()) {
                        media.setType(MediaType.sticker);
                    }
                    f.h(media, this.f18797a);
                }
            }
            this.f18798b.a(listMediaResponse, th);
        }
    }

    static {
        GPHContent gPHContent = new GPHContent();
        gPHContent.f18790a = MediaType.video;
        GPHRequestType gPHRequestType = GPHRequestType.trending;
        gPHContent.f18791b = gPHRequestType;
        f18783h = gPHContent;
        GPHContent gPHContent2 = new GPHContent();
        MediaType mediaType = MediaType.gif;
        gPHContent2.f18790a = mediaType;
        gPHContent2.f18791b = gPHRequestType;
        f18784i = gPHContent2;
        GPHContent gPHContent3 = new GPHContent();
        gPHContent3.f18790a = MediaType.sticker;
        gPHContent3.f18791b = gPHRequestType;
        f18785j = gPHContent3;
        GPHContent gPHContent4 = new GPHContent();
        gPHContent4.f18790a = MediaType.text;
        gPHContent4.f18791b = gPHRequestType;
        f18786k = gPHContent4;
        GPHContent gPHContent5 = new GPHContent();
        gPHContent5.f18790a = MediaType.emoji;
        gPHContent5.f18791b = GPHRequestType.emoji;
        f18787l = gPHContent5;
        GPHContent gPHContent6 = new GPHContent();
        gPHContent6.f18790a = mediaType;
        gPHContent6.f18791b = GPHRequestType.recents;
        gPHContent6.f18795f = false;
        f18788m = gPHContent6;
    }

    private final com.giphy.sdk.core.network.api.a<ListMediaResponse> g(com.giphy.sdk.core.network.api.a<? super ListMediaResponse> aVar, EventType eventType) {
        return new a(eventType, aVar);
    }

    static /* synthetic */ com.giphy.sdk.core.network.api.a h(GPHContent gPHContent, com.giphy.sdk.core.network.api.a aVar, EventType eventType, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            eventType = null;
        }
        return gPHContent.g(aVar, eventType);
    }

    private final RatingType p() {
        int i4 = b.$EnumSwitchMapping$0[this.f18792c.ordinal()];
        if (i4 != 1 && i4 != 2 && i4 != 3) {
            return this.f18792c;
        }
        return RatingType.pg13;
    }

    @g
    public final GPHApiClient i() {
        return this.f18796g;
    }

    public final boolean j() {
        return this.f18795f;
    }

    @g
    public final MediaType k() {
        return this.f18790a;
    }

    @g
    public final RatingType l() {
        return this.f18792c;
    }

    public final boolean m() {
        return this.f18794e;
    }

    @g
    public final GPHRequestType n() {
        return this.f18791b;
    }

    @g
    public final String o() {
        return this.f18793d;
    }

    @g
    public final Future<?> q(int i4, @g com.giphy.sdk.core.network.api.a<? super ListMediaResponse> completionHandler) {
        Intrinsics.checkNotNullParameter(completionHandler, "completionHandler");
        this.f18794e = true;
        int i10 = b.$EnumSwitchMapping$1[this.f18791b.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 == 5) {
                            return this.f18796g.g(this.f18793d, null, h(this, completionHandler, null, 2, null));
                        }
                        throw new NoWhenBranchMatchedException();
                    }
                    return this.f18796g.a(l.f17075f.l().d(), g(com.giphy.sdk.tracking.a.b(completionHandler, false, false, 3, null), EventType.GIF_RECENT), "GIF_RECENT");
                }
                return this.f18796g.b(25, Integer.valueOf(i4), h(this, completionHandler, null, 2, null));
            }
            return this.f18796g.d(this.f18793d, this.f18790a, 25, Integer.valueOf(i4), p(), null, h(this, completionHandler, null, 2, null));
        }
        return this.f18796g.e(this.f18790a, 25, Integer.valueOf(i4), p(), h(this, completionHandler, null, 2, null));
    }

    public final void r(@g GPHApiClient gPHApiClient) {
        Intrinsics.checkNotNullParameter(gPHApiClient, "<set-?>");
        this.f18796g = gPHApiClient;
    }

    public final void s(boolean z9) {
        this.f18795f = z9;
    }

    public final void t(@g MediaType mediaType) {
        Intrinsics.checkNotNullParameter(mediaType, "<set-?>");
        this.f18790a = mediaType;
    }

    public final void u(@g RatingType ratingType) {
        Intrinsics.checkNotNullParameter(ratingType, "<set-?>");
        this.f18792c = ratingType;
    }

    public final void v(boolean z9) {
        this.f18794e = z9;
    }

    public final void w(@g GPHRequestType gPHRequestType) {
        Intrinsics.checkNotNullParameter(gPHRequestType, "<set-?>");
        this.f18791b = gPHRequestType;
    }

    public final void x(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f18793d = str;
    }

    @g
    public final GPHContent y(@g GPHApiClient newClient) {
        Intrinsics.checkNotNullParameter(newClient, "newClient");
        this.f18796g = newClient;
        return this;
    }
}
