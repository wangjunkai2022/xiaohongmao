package com.giphy.sdk.ui;

import com.giphy.sdk.core.models.Channel;
import com.giphy.sdk.core.models.User;
import com.giphy.sdk.core.network.api.b;
import com.giphy.sdk.core.network.response.ChannelsSearchResponse;
import com.giphy.sdk.core.network.response.TrendingSearchesResponse;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GPHSuggestions.kt */
@Metadata(bv = {}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000 \u000f2\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u001d\u001a\u00020\u0018¢\u0006\u0004\b\u001e\u0010\u001fJ`\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062>\u0010\u0011\u001a:\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\n0\t¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0015\u0012\u0013\u0018\u00010\u000e¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\bH\u0016R&\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\t0\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0014R&\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\t0\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014R\u0017\u0010\u001d\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c¨\u0006 "}, d2 = {"Lcom/giphy/sdk/ui/j;", "Lcom/giphy/sdk/ui/i;", "Lcom/giphy/sdk/ui/GPHSearchSuggestionType;", "type", "", "term", "", "ignoreCache", "Lkotlin/Function2;", "", "Lcom/giphy/sdk/ui/h;", "Lkotlin/ParameterName;", "name", "result", "", "e", "", "completionHandler", "a", "Lcom/giphy/sdk/ui/d;", "Lcom/giphy/sdk/ui/d;", "trendingCache", "b", "channelsCache", "Lcom/giphy/sdk/ui/g;", "c", "Lcom/giphy/sdk/ui/g;", "d", "()Lcom/giphy/sdk/ui/g;", "recentSearches", "<init>", "(Lcom/giphy/sdk/ui/g;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class j implements i {

    /* renamed from: d  reason: collision with root package name */
    private static final String f17058d = "last";
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    public static final a f17059e = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final d<String, List<String>> f17060a;

    /* renamed from: b  reason: collision with root package name */
    private final d<String, List<String>> f17061b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final g f17062c;

    /* compiled from: GPHSuggestions.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/giphy/sdk/ui/j$a;", "", "", "KEY_LAST", "Ljava/lang/String;", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: GPHSuggestions.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¨\u0006\b"}, d2 = {"com/giphy/sdk/ui/j$b", "Lcom/giphy/sdk/core/network/api/a;", "Lcom/giphy/sdk/core/network/response/TrendingSearchesResponse;", "result", "", "e", "", "b", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class b implements com.giphy.sdk.core.network.api.a<TrendingSearchesResponse> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function2 f17064b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ GPHSearchSuggestionType f17065c;

        b(Function2 function2, GPHSearchSuggestionType gPHSearchSuggestionType) {
            this.f17064b = function2;
            this.f17065c = gPHSearchSuggestionType;
        }

        @Override // com.giphy.sdk.core.network.api.a
        /* renamed from: b */
        public void a(@m8.h TrendingSearchesResponse trendingSearchesResponse, @m8.h Throwable th) {
            List<String> emptyList;
            int collectionSizeOrDefault;
            if (trendingSearchesResponse == null || (emptyList = trendingSearchesResponse.getData()) == null) {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
            }
            if (th == null) {
                j.this.f17060a.set(j.f17058d, emptyList);
            }
            Function2 function2 = this.f17064b;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(emptyList, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (String str : emptyList) {
                arrayList.add(new h(this.f17065c, str));
            }
            function2.invoke(arrayList, th);
        }
    }

    /* compiled from: GPHSuggestions.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¨\u0006\b"}, d2 = {"com/giphy/sdk/ui/j$c", "Lcom/giphy/sdk/core/network/api/a;", "Lcom/giphy/sdk/core/network/response/ChannelsSearchResponse;", "result", "", "e", "", "b", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class c implements com.giphy.sdk.core.network.api.a<ChannelsSearchResponse> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f17067b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function2 f17068c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ GPHSearchSuggestionType f17069d;

        c(String str, Function2 function2, GPHSearchSuggestionType gPHSearchSuggestionType) {
            this.f17067b = str;
            this.f17068c = function2;
            this.f17069d = gPHSearchSuggestionType;
        }

        @Override // com.giphy.sdk.core.network.api.a
        /* renamed from: b */
        public void a(@m8.h ChannelsSearchResponse channelsSearchResponse, @m8.h Throwable th) {
            Collection<String> emptyList;
            int collectionSizeOrDefault;
            List<Channel> data;
            int collectionSizeOrDefault2;
            String str;
            if (channelsSearchResponse != null && (data = channelsSearchResponse.getData()) != null) {
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(data, 10);
                emptyList = new ArrayList(collectionSizeOrDefault2);
                for (Channel channel : data) {
                    StringBuilder sb = new StringBuilder();
                    sb.append('@');
                    User user = channel.getUser();
                    if (user == null || (str = user.getUsername()) == null) {
                        str = "";
                    }
                    sb.append(str);
                    emptyList.add(sb.toString());
                }
            } else {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
            }
            if (th == null) {
                j.this.f17061b.set(this.f17067b, emptyList);
            }
            Function2 function2 = this.f17068c;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(emptyList, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (String str2 : emptyList) {
                arrayList.add(new h(this.f17069d, str2));
            }
            function2.invoke(arrayList, th);
        }
    }

    public j(@m8.g g recentSearches) {
        Intrinsics.checkNotNullParameter(recentSearches, "recentSearches");
        this.f17062c = recentSearches;
        this.f17060a = new d<>(TimeUnit.MINUTES.toMillis(15L));
        this.f17061b = new d<>(TimeUnit.SECONDS.toMillis(30L));
    }

    @Override // com.giphy.sdk.ui.i
    public void a(@m8.g GPHSearchSuggestionType type, @m8.g String term, boolean z9, @m8.g Function2<? super List<h>, ? super Throwable, Unit> completionHandler) {
        int collectionSizeOrDefault;
        List emptyList;
        int collectionSizeOrDefault2;
        int collectionSizeOrDefault3;
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(term, "term");
        Intrinsics.checkNotNullParameter(completionHandler, "completionHandler");
        switch (k.$EnumSwitchMapping$0[type.ordinal()]) {
            case 1:
            case 2:
                List<String> list = this.f17060a.get(f17058d);
                if (list != null) {
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                    ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                    for (String str : list) {
                        arrayList.add(new h(type, str));
                    }
                    completionHandler.invoke(arrayList, null);
                    return;
                }
                com.giphy.sdk.core.c.f16910h.f().i(new b(completionHandler, type));
                return;
            case 3:
            case 4:
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                completionHandler.invoke(emptyList, null);
                return;
            case 5:
                List<String> d4 = this.f17062c.d();
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(d4, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
                for (String str2 : d4) {
                    arrayList2.add(new h(type, str2));
                }
                completionHandler.invoke(arrayList2, null);
                return;
            case 6:
                List<String> list2 = this.f17061b.get(term);
                if (list2 != null) {
                    collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
                    ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault3);
                    for (String str3 : list2) {
                        arrayList3.add(new h(type, str3));
                    }
                    completionHandler.invoke(arrayList3, null);
                    return;
                }
                b.a.a(com.giphy.sdk.core.c.f16910h.f(), term, 0, 0, new c(term, completionHandler, type), 6, null);
                return;
            default:
                return;
        }
    }

    @m8.g
    public final g d() {
        return this.f17062c;
    }
}
