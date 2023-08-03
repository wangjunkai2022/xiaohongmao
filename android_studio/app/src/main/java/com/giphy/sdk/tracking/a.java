package com.giphy.sdk.tracking;

import com.giphy.sdk.core.models.Media;
import com.giphy.sdk.core.models.Meta;
import com.giphy.sdk.core.models.Pagination;
import com.giphy.sdk.core.network.response.ListMediaResponse;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.h;

/* compiled from: CompletionHandlerExtension.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u001a,\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000*\b\u0012\u0004\u0012\u00020\u00010\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u0002H\u0000¨\u0006\u0006"}, d2 = {"Lcom/giphy/sdk/core/network/api/a;", "Lcom/giphy/sdk/core/network/response/ListMediaResponse;", "", "isEmoji", "isText", "a", "giphy-ui-2.1.9_release"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CompletionHandlerExtension.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u00042\b\u0010\u0001\u001a\u0004\u0018\u00010\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n¢\u0006\u0004\b\u0001\u0010\u0005"}, d2 = {"Lcom/giphy/sdk/core/network/response/ListMediaResponse;", "a", "", "g", "", "(Lcom/giphy/sdk/core/network/response/ListMediaResponse;Ljava/lang/Throwable;)V"}, k = 3, mv = {1, 4, 1})
    /* renamed from: com.giphy.sdk.tracking.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0136a extends Lambda implements Function2<ListMediaResponse, Throwable, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.giphy.sdk.core.network.api.a f16986a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0136a(com.giphy.sdk.core.network.api.a aVar) {
            super(2);
            this.f16986a = aVar;
        }

        public final void a(@h ListMediaResponse listMediaResponse, @h Throwable th) {
            this.f16986a.a(listMediaResponse, th);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(ListMediaResponse listMediaResponse, Throwable th) {
            a(listMediaResponse, th);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: CompletionHandlerExtension.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¨\u0006\b"}, d2 = {"com/giphy/sdk/tracking/a$b", "Lcom/giphy/sdk/core/network/api/a;", "Lcom/giphy/sdk/core/network/response/ListMediaResponse;", "result", "", "e", "", "b", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class b implements com.giphy.sdk.core.network.api.a<ListMediaResponse> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f16987a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f16988b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ C0136a f16989c;

        b(boolean z9, boolean z10, C0136a c0136a) {
            this.f16987a = z9;
            this.f16988b = z10;
            this.f16989c = c0136a;
        }

        @Override // com.giphy.sdk.core.network.api.a
        /* renamed from: b */
        public void a(@h ListMediaResponse listMediaResponse, @h Throwable th) {
            Integer offset;
            if ((listMediaResponse != null ? listMediaResponse.getData() : null) != null && listMediaResponse.getMeta() != null) {
                List<Media> data = listMediaResponse.getData();
                Intrinsics.checkNotNull(data);
                int i4 = 0;
                for (Object obj : data) {
                    int i10 = i4 + 1;
                    if (i4 < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    Media media = (Media) obj;
                    Meta meta = listMediaResponse.getMeta();
                    Intrinsics.checkNotNull(meta);
                    f.j(media, meta.getResponseId());
                    if (this.f16987a) {
                        f.g(media, Boolean.TRUE);
                    }
                    if (this.f16988b) {
                        f.k(media, Boolean.TRUE);
                    }
                    Pagination pagination = listMediaResponse.getPagination();
                    f.i(media, Integer.valueOf(i4 + ((pagination == null || (offset = pagination.getOffset()) == null) ? 0 : offset.intValue())));
                    i4 = i10;
                }
            }
            this.f16989c.a(listMediaResponse, th);
        }
    }

    @m8.g
    public static final com.giphy.sdk.core.network.api.a<ListMediaResponse> a(@m8.g com.giphy.sdk.core.network.api.a<? super ListMediaResponse> completionHandlerWithUserDictionary, boolean z9, boolean z10) {
        Intrinsics.checkNotNullParameter(completionHandlerWithUserDictionary, "$this$completionHandlerWithUserDictionary");
        return new b(z9, z10, new C0136a(completionHandlerWithUserDictionary));
    }

    public static /* synthetic */ com.giphy.sdk.core.network.api.a b(com.giphy.sdk.core.network.api.a aVar, boolean z9, boolean z10, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z9 = false;
        }
        if ((i4 & 2) != 0) {
            z10 = false;
        }
        return a(aVar, z9, z10);
    }
}
