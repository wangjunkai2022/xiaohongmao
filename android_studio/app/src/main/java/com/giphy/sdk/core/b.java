package com.giphy.sdk.core;

import com.giphy.sdk.core.network.response.ListMediaResponse;
import com.giphy.sdk.core.network.response.MediaResponse;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: GPHCore.kt */
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u0014JJ\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022:\u0010\f\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\u0004J\\\u0010\u0012\u001a\u00020\u000b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000e2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00022:\u0010\f\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0011¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\u0004¨\u0006\u0015"}, d2 = {"Lcom/giphy/sdk/core/b;", "", "", "gifId", "Lkotlin/Function2;", "Lcom/giphy/sdk/core/network/response/MediaResponse;", "Lkotlin/ParameterName;", "name", "result", "", "e", "", "completionHandler", "a", "", "gifIds", "context", "Lcom/giphy/sdk/core/network/response/ListMediaResponse;", "b", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class b {
    @g

    /* renamed from: a  reason: collision with root package name */
    public static final b f16900a = new b();

    /* compiled from: GPHCore.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¨\u0006\b"}, d2 = {"com/giphy/sdk/core/b$a", "Lcom/giphy/sdk/core/network/api/a;", "Lcom/giphy/sdk/core/network/response/MediaResponse;", "result", "", "e", "", "b", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class a implements com.giphy.sdk.core.network.api.a<MediaResponse> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function2 f16901a;

        a(Function2 function2) {
            this.f16901a = function2;
        }

        @Override // com.giphy.sdk.core.network.api.a
        /* renamed from: b */
        public void a(@h MediaResponse mediaResponse, @h Throwable th) {
            this.f16901a.invoke(mediaResponse, th);
        }
    }

    /* compiled from: GPHCore.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¨\u0006\b"}, d2 = {"com/giphy/sdk/core/b$b", "Lcom/giphy/sdk/core/network/api/a;", "Lcom/giphy/sdk/core/network/response/ListMediaResponse;", "result", "", "e", "", "b", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.giphy.sdk.core.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0131b implements com.giphy.sdk.core.network.api.a<ListMediaResponse> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function2 f16902a;

        C0131b(Function2 function2) {
            this.f16902a = function2;
        }

        @Override // com.giphy.sdk.core.network.api.a
        /* renamed from: b */
        public void a(@h ListMediaResponse listMediaResponse, @h Throwable th) {
            this.f16902a.invoke(listMediaResponse, th);
        }
    }

    private b() {
    }

    public static /* synthetic */ void c(b bVar, List list, String str, Function2 function2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            str = null;
        }
        bVar.b(list, str, function2);
    }

    public final void a(@g String gifId, @g Function2<? super MediaResponse, ? super Throwable, Unit> completionHandler) {
        Intrinsics.checkNotNullParameter(gifId, "gifId");
        Intrinsics.checkNotNullParameter(completionHandler, "completionHandler");
        c.f16910h.f().h(gifId, new a(completionHandler));
    }

    public final void b(@g List<String> gifIds, @h String str, @g Function2<? super ListMediaResponse, ? super Throwable, Unit> completionHandler) {
        Intrinsics.checkNotNullParameter(gifIds, "gifIds");
        Intrinsics.checkNotNullParameter(completionHandler, "completionHandler");
        c.f16910h.f().a(gifIds, new C0131b(completionHandler), str);
    }
}
