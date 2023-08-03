package com.im.freechat.data;

import com.im.freechat.data.openapigen.api.FriendApi;
import com.im.freechat.data.sources.api.ApiService;
import com.im.freechat.data.sources.api.entities.banner.BannerResponseMapper;
import com.im.freechat.data.sources.api.entities.contact.ContactResponseMapper;
import com.im.freechat.domain.p;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;

/* compiled from: RemoteRepositoryImpl.kt */
@Metadata(bv = {}, d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010(\u001a\u00020&\u0012\u0006\u0010+\u001a\u00020)\u0012\u0006\u0010.\u001a\u00020,\u0012\u0006\u00101\u001a\u00020/¢\u0006\u0004\b2\u00103J1\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0096@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bJ+\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0006H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0006H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J)\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\t0\u00152\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017J)\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\t0\u00152\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u0017J)\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\t0\u00152\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u0017J/\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\t0\u00152\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0015H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ/\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u001f0\u001e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b \u0010\u0017J#\u0010\"\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\"\u0010\u0017J)\u0010$\u001a\b\u0012\u0004\u0012\u00020#0\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0096@ø\u0001\u0000¢\u0006\u0004\b$\u0010%R\u0014\u0010(\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010'R\u0014\u0010+\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010*R\u0014\u0010.\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010-R\u0014\u00101\u001a\u00020/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u00100\u0082\u0002\u0004\n\u0002\b\u0019¨\u00064"}, d2 = {"Lcom/im/freechat/data/j;", "Lcom/im/freechat/domain/p;", "", "token", "Lcom/im/freechat/shared/entities/contact/ContactType;", "type", "", com.qennnsad.aknkaksd.data.repository.f.f47744a, "Lcom/im/freechat/shared/entities/PagedList;", "Lcom/im/freechat/shared/entities/contact/UserModel;", "e", "(Ljava/lang/String;Lcom/im/freechat/shared/entities/contact/ContactType;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/shared/entities/contact/RelationOperationType;", "toUserId", "", "b", "(Ljava/lang/String;Lcom/im/freechat/shared/entities/contact/RelationOperationType;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "userId", "d", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "phone", "", "f", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "nickname", "searchContactByNickname", "g", "userIds", "searchContactByIds", "(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "", "a", "params", "c", "Lcom/im/freechat/shared/entities/banner/Banner;", "getBannerList", "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/data/sources/api/ApiService;", "Lcom/im/freechat/data/sources/api/ApiService;", "apiService", "Lcom/im/freechat/data/openapigen/api/FriendApi;", "Lcom/im/freechat/data/openapigen/api/FriendApi;", "friendApi", "Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;", "Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;", "contactResponseMapper", "Lcom/im/freechat/data/sources/api/entities/banner/BannerResponseMapper;", "Lcom/im/freechat/data/sources/api/entities/banner/BannerResponseMapper;", "bannerResponseMapper", "<init>", "(Lcom/im/freechat/data/sources/api/ApiService;Lcom/im/freechat/data/openapigen/api/FriendApi;Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;Lcom/im/freechat/data/sources/api/entities/banner/BannerResponseMapper;)V", "data_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes2.dex */
public final class j implements p {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final ApiService f40730a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final FriendApi f40731b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final ContactResponseMapper f40732c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final BannerResponseMapper f40733d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RemoteRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.RemoteRepositoryImpl", f = "RemoteRepositoryImpl.kt", i = {}, l = {65}, m = "deleteFriend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f40734a;

        /* renamed from: c  reason: collision with root package name */
        int f40736c;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40734a = obj;
            this.f40736c |= Integer.MIN_VALUE;
            return j.this.d(0, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RemoteRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.RemoteRepositoryImpl", f = "RemoteRepositoryImpl.kt", i = {0}, l = {141}, m = "getBannerList", n = {"this"}, s = {"L$0"})
    /* loaded from: classes2.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40737a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f40738b;

        /* renamed from: d  reason: collision with root package name */
        int f40740d;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40738b = obj;
            this.f40740d |= Integer.MIN_VALUE;
            return j.this.getBannerList(null, 0, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RemoteRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.RemoteRepositoryImpl", f = "RemoteRepositoryImpl.kt", i = {0, 0}, l = {33}, m = "getContactList", n = {"this", "type"}, s = {"L$0", "L$1"})
    /* loaded from: classes2.dex */
    public static final class c extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40741a;

        /* renamed from: b  reason: collision with root package name */
        Object f40742b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f40743c;

        /* renamed from: e  reason: collision with root package name */
        int f40745e;

        c(Continuation<? super c> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40743c = obj;
            this.f40745e |= Integer.MIN_VALUE;
            return j.this.e(null, null, 0, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RemoteRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.RemoteRepositoryImpl", f = "RemoteRepositoryImpl.kt", i = {0}, l = {123}, m = "getPinnedChats", n = {"this"}, s = {"L$0"})
    /* loaded from: classes2.dex */
    public static final class d extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40746a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f40747b;

        /* renamed from: d  reason: collision with root package name */
        int f40749d;

        d(Continuation<? super d> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40747b = obj;
            this.f40749d |= Integer.MIN_VALUE;
            return j.this.a(null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RemoteRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.RemoteRepositoryImpl", f = "RemoteRepositoryImpl.kt", i = {}, l = {54}, m = "relationOperation", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class e extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f40750a;

        /* renamed from: c  reason: collision with root package name */
        int f40752c;

        e(Continuation<? super e> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40750a = obj;
            this.f40752c |= Integer.MIN_VALUE;
            return j.this.b(null, null, 0, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RemoteRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.RemoteRepositoryImpl", f = "RemoteRepositoryImpl.kt", i = {0}, l = {95}, m = "searchContactById", n = {"this"}, s = {"L$0"})
    /* loaded from: classes2.dex */
    public static final class f extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40753a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f40754b;

        /* renamed from: d  reason: collision with root package name */
        int f40756d;

        f(Continuation<? super f> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40754b = obj;
            this.f40756d |= Integer.MIN_VALUE;
            return j.this.g(null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RemoteRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.RemoteRepositoryImpl", f = "RemoteRepositoryImpl.kt", i = {0}, l = {109}, m = "searchContactByIds", n = {"this"}, s = {"L$0"})
    /* loaded from: classes2.dex */
    public static final class g extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40757a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f40758b;

        /* renamed from: d  reason: collision with root package name */
        int f40760d;

        g(Continuation<? super g> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40758b = obj;
            this.f40760d |= Integer.MIN_VALUE;
            return j.this.searchContactByIds(null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RemoteRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.RemoteRepositoryImpl", f = "RemoteRepositoryImpl.kt", i = {0}, l = {81}, m = "searchContactByNickname", n = {"this"}, s = {"L$0"})
    /* loaded from: classes2.dex */
    public static final class h extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40761a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f40762b;

        /* renamed from: d  reason: collision with root package name */
        int f40764d;

        h(Continuation<? super h> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40762b = obj;
            this.f40764d |= Integer.MIN_VALUE;
            return j.this.searchContactByNickname(null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RemoteRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.RemoteRepositoryImpl", f = "RemoteRepositoryImpl.kt", i = {0}, l = {70}, m = "searchContactByPhone", n = {"this"}, s = {"L$0"})
    /* loaded from: classes2.dex */
    public static final class i extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40765a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f40766b;

        /* renamed from: d  reason: collision with root package name */
        int f40768d;

        i(Continuation<? super i> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40766b = obj;
            this.f40768d |= Integer.MIN_VALUE;
            return j.this.f(null, null, this);
        }
    }

    public j(@m8.g ApiService apiService, @m8.g FriendApi friendApi, @m8.g ContactResponseMapper contactResponseMapper, @m8.g BannerResponseMapper bannerResponseMapper) {
        Intrinsics.checkNotNullParameter(apiService, "apiService");
        Intrinsics.checkNotNullParameter(friendApi, "friendApi");
        Intrinsics.checkNotNullParameter(contactResponseMapper, "contactResponseMapper");
        Intrinsics.checkNotNullParameter(bannerResponseMapper, "bannerResponseMapper");
        this.f40730a = apiService;
        this.f40731b = friendApi;
        this.f40732c = contactResponseMapper;
        this.f40733d = bannerResponseMapper;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005c A[Catch: Exception -> 0x007b, TryCatch #0 {Exception -> 0x007b, blocks: (B:12:0x0029, B:21:0x0052, B:23:0x005c, B:25:0x006d, B:26:0x007a, B:17:0x0038), top: B:29:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006d A[Catch: Exception -> 0x007b, TryCatch #0 {Exception -> 0x007b, blocks: (B:12:0x0029, B:21:0x0052, B:23:0x005c, B:25:0x006d, B:26:0x007a, B:17:0x0038), top: B:29:0x0021 }] */
    @Override // com.im.freechat.domain.p
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object a(@m8.g java.lang.String r5, @m8.g java.lang.String r6, @m8.g kotlin.coroutines.Continuation<? super java.util.Map<java.lang.String, java.lang.Long>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.im.freechat.data.j.d
            if (r0 == 0) goto L13
            r0 = r7
            com.im.freechat.data.j$d r0 = (com.im.freechat.data.j.d) r0
            int r1 = r0.f40749d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f40749d = r1
            goto L18
        L13:
            com.im.freechat.data.j$d r0 = new com.im.freechat.data.j$d
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f40747b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f40749d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f40746a
            com.im.freechat.data.j r5 = (com.im.freechat.data.j) r5
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L7b
            goto L52
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r7)
            com.im.freechat.data.sources.api.ApiService r7 = r4.f40730a     // Catch: java.lang.Exception -> L7b
            int r6 = java.lang.Integer.parseInt(r6)     // Catch: java.lang.Exception -> L7b
            java.lang.Integer r6 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r6)     // Catch: java.lang.Exception -> L7b
            java.util.List r6 = kotlin.collections.CollectionsKt.listOf(r6)     // Catch: java.lang.Exception -> L7b
            r0.f40746a = r4     // Catch: java.lang.Exception -> L7b
            r0.f40749d = r3     // Catch: java.lang.Exception -> L7b
            java.lang.Object r7 = r7.searchContactByIds(r5, r6, r0)     // Catch: java.lang.Exception -> L7b
            if (r7 != r1) goto L51
            return r1
        L51:
            r5 = r4
        L52:
            com.im.freechat.data.sources.api.entities.Response r7 = (com.im.freechat.data.sources.api.entities.Response) r7     // Catch: java.lang.Exception -> L7b
            java.lang.Object r6 = r7.getData()     // Catch: java.lang.Exception -> L7b
            com.im.freechat.data.sources.api.entities.PagedListResponse r6 = (com.im.freechat.data.sources.api.entities.PagedListResponse) r6     // Catch: java.lang.Exception -> L7b
            if (r6 == 0) goto L6d
            com.im.freechat.data.sources.api.entities.contact.ContactResponseMapper r5 = r5.f40732c     // Catch: java.lang.Exception -> L7b
            java.util.List r6 = r6.getList()     // Catch: java.lang.Exception -> L7b
            java.lang.Object r6 = kotlin.collections.CollectionsKt.first(r6)     // Catch: java.lang.Exception -> L7b
            com.im.freechat.data.sources.api.entities.contact.ContactResponse r6 = (com.im.freechat.data.sources.api.entities.contact.ContactResponse) r6     // Catch: java.lang.Exception -> L7b
            java.util.Map r5 = r5.mapPinnedChats(r6)     // Catch: java.lang.Exception -> L7b
            return r5
        L6d:
            com.im.freechat.shared.entities.ApiException r5 = new com.im.freechat.shared.entities.ApiException     // Catch: java.lang.Exception -> L7b
            int r6 = r7.getCode()     // Catch: java.lang.Exception -> L7b
            java.lang.String r7 = r7.getMessage()     // Catch: java.lang.Exception -> L7b
            r5.<init>(r6, r7)     // Catch: java.lang.Exception -> L7b
            throw r5     // Catch: java.lang.Exception -> L7b
        L7b:
            java.util.Map r5 = kotlin.collections.MapsKt.emptyMap()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.j.a(java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0053  */
    @Override // com.im.freechat.domain.p
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g java.lang.String r5, @m8.g com.im.freechat.shared.entities.contact.RelationOperationType r6, int r7, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r4 = this;
            boolean r0 = r8 instanceof com.im.freechat.data.j.e
            if (r0 == 0) goto L13
            r0 = r8
            com.im.freechat.data.j$e r0 = (com.im.freechat.data.j.e) r0
            int r1 = r0.f40752c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f40752c = r1
            goto L18
        L13:
            com.im.freechat.data.j$e r0 = new com.im.freechat.data.j$e
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f40750a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f40752c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r8)
            goto L48
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r8)
            com.im.freechat.data.sources.api.ApiService r8 = r4.f40730a
            com.im.freechat.data.sources.api.entities.contact.RelationOperationBody r2 = new com.im.freechat.data.sources.api.entities.contact.RelationOperationBody
            java.lang.String r6 = r6.getType()
            r2.<init>(r6, r7)
            r0.f40752c = r3
            java.lang.Object r8 = r8.relationOperation(r5, r2, r0)
            if (r8 != r1) goto L48
            return r1
        L48:
            com.im.freechat.data.sources.api.entities.Response r8 = (com.im.freechat.data.sources.api.entities.Response) r8
            java.lang.Object r5 = r8.getData()
            if (r5 == 0) goto L53
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L53:
            com.im.freechat.shared.entities.ApiException r5 = new com.im.freechat.shared.entities.ApiException
            int r6 = r8.getCode()
            java.lang.String r7 = r8.getMessage()
            r5.<init>(r6, r7)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.j.b(java.lang.String, com.im.freechat.shared.entities.contact.RelationOperationType, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.p
    @m8.h
    public Object c(@m8.g String str, @m8.g String str2, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object updateUserInfo = this.f40730a.updateUserInfo(str, MultipartBody.Part.Companion.createFormData("check", null, RequestBody.Companion.create((MediaType) null, "")), str2, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return updateUserInfo == coroutine_suspended ? updateUserInfo : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004f  */
    @Override // com.im.freechat.domain.p
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object d(int r5, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.im.freechat.data.j.a
            if (r0 == 0) goto L13
            r0 = r6
            com.im.freechat.data.j$a r0 = (com.im.freechat.data.j.a) r0
            int r1 = r0.f40736c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f40736c = r1
            goto L18
        L13:
            com.im.freechat.data.j$a r0 = new com.im.freechat.data.j$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f40734a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f40736c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r6)
            goto L44
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r6)
            com.im.freechat.data.openapigen.api.FriendApi r6 = r4.f40731b
            com.im.freechat.data.openapigen.models.DeleteFriendRequest r2 = new com.im.freechat.data.openapigen.models.DeleteFriendRequest
            r2.<init>(r5)
            r0.f40736c = r3
            java.lang.Object r6 = r6.deleteFriend(r2, r0)
            if (r6 != r1) goto L44
            return r1
        L44:
            retrofit2.Response r6 = (retrofit2.Response) r6
            java.lang.Object r5 = r6.body()
            if (r5 == 0) goto L4f
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L4f:
            com.im.freechat.shared.entities.ApiException r5 = new com.im.freechat.shared.entities.ApiException
            okhttp3.Response r0 = r6.raw()
            int r0 = r0.code()
            okhttp3.ResponseBody r6 = r6.errorBody()
            java.lang.String r6 = java.lang.String.valueOf(r6)
            r5.<init>(r0, r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.j.d(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0069  */
    @Override // com.im.freechat.domain.p
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object e(@m8.g java.lang.String r7, @m8.g com.im.freechat.shared.entities.contact.ContactType r8, int r9, @m8.g kotlin.coroutines.Continuation<? super com.im.freechat.shared.entities.PagedList<com.im.freechat.shared.entities.contact.UserModel>> r10) {
        /*
            r6 = this;
            boolean r0 = r10 instanceof com.im.freechat.data.j.c
            if (r0 == 0) goto L13
            r0 = r10
            com.im.freechat.data.j$c r0 = (com.im.freechat.data.j.c) r0
            int r1 = r0.f40745e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f40745e = r1
            goto L18
        L13:
            com.im.freechat.data.j$c r0 = new com.im.freechat.data.j$c
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f40743c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f40745e
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r7 = r0.f40742b
            r8 = r7
            com.im.freechat.shared.entities.contact.ContactType r8 = (com.im.freechat.shared.entities.contact.ContactType) r8
            java.lang.Object r7 = r0.f40741a
            com.im.freechat.data.j r7 = (com.im.freechat.data.j) r7
            kotlin.ResultKt.throwOnFailure(r10)
            goto L58
        L32:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3a:
            kotlin.ResultKt.throwOnFailure(r10)
            com.im.freechat.data.sources.api.ApiService r10 = r6.f40730a
            com.im.freechat.data.sources.api.entities.contact.GetContactListBody r2 = new com.im.freechat.data.sources.api.entities.contact.GetContactListBody
            java.lang.String r4 = r8.getType()
            r5 = 30
            r2.<init>(r4, r5, r9)
            r0.f40741a = r6
            r0.f40742b = r8
            r0.f40745e = r3
            java.lang.Object r10 = r10.getContactList(r7, r2, r0)
            if (r10 != r1) goto L57
            return r1
        L57:
            r7 = r6
        L58:
            com.im.freechat.data.sources.api.entities.Response r10 = (com.im.freechat.data.sources.api.entities.Response) r10
            java.lang.Object r9 = r10.getData()
            com.im.freechat.data.sources.api.entities.PagedListResponse r9 = (com.im.freechat.data.sources.api.entities.PagedListResponse) r9
            if (r9 == 0) goto L69
            com.im.freechat.data.sources.api.entities.contact.ContactResponseMapper r7 = r7.f40732c
            com.im.freechat.shared.entities.PagedList r7 = r7.map(r9, r8)
            return r7
        L69:
            com.im.freechat.shared.entities.ApiException r7 = new com.im.freechat.shared.entities.ApiException
            int r8 = r10.getCode()
            java.lang.String r9 = r10.getMessage()
            r7.<init>(r8, r9)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.j.e(java.lang.String, com.im.freechat.shared.entities.contact.ContactType, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0061  */
    @Override // com.im.freechat.domain.p
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object f(@m8.g java.lang.String r7, @m8.g java.lang.String r8, @m8.g kotlin.coroutines.Continuation<? super java.util.List<com.im.freechat.shared.entities.contact.UserModel>> r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof com.im.freechat.data.j.i
            if (r0 == 0) goto L13
            r0 = r9
            com.im.freechat.data.j$i r0 = (com.im.freechat.data.j.i) r0
            int r1 = r0.f40768d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f40768d = r1
            goto L18
        L13:
            com.im.freechat.data.j$i r0 = new com.im.freechat.data.j$i
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f40766b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f40768d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r7 = r0.f40765a
            com.im.freechat.data.j r7 = (com.im.freechat.data.j) r7
            kotlin.ResultKt.throwOnFailure(r9)
            goto L50
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            kotlin.ResultKt.throwOnFailure(r9)
            com.im.freechat.data.sources.api.ApiService r9 = r6.f40730a
            com.im.freechat.data.sources.api.entities.contact.SearchContactByPhoneBody r2 = new com.im.freechat.data.sources.api.entities.contact.SearchContactByPhoneBody
            java.lang.String[] r4 = new java.lang.String[r3]
            r5 = 0
            r4[r5] = r8
            r2.<init>(r4)
            r0.f40765a = r6
            r0.f40768d = r3
            java.lang.Object r9 = r9.searchContactByPhone(r7, r2, r0)
            if (r9 != r1) goto L4f
            return r1
        L4f:
            r7 = r6
        L50:
            com.im.freechat.data.sources.api.entities.Response r9 = (com.im.freechat.data.sources.api.entities.Response) r9
            java.lang.Object r8 = r9.getData()
            java.util.List r8 = (java.util.List) r8
            if (r8 == 0) goto L61
            com.im.freechat.data.sources.api.entities.contact.ContactResponseMapper r7 = r7.f40732c
            java.util.List r7 = r7.mapSearch(r8)
            return r7
        L61:
            com.im.freechat.shared.entities.ApiException r7 = new com.im.freechat.shared.entities.ApiException
            int r8 = r9.getCode()
            java.lang.String r9 = r9.getMessage()
            r7.<init>(r8, r9)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.j.f(java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005c A[Catch: Exception -> 0x0075, TryCatch #0 {Exception -> 0x0075, blocks: (B:12:0x0029, B:21:0x0052, B:23:0x005c, B:25:0x0067, B:26:0x0074, B:17:0x0038), top: B:29:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0067 A[Catch: Exception -> 0x0075, TryCatch #0 {Exception -> 0x0075, blocks: (B:12:0x0029, B:21:0x0052, B:23:0x005c, B:25:0x0067, B:26:0x0074, B:17:0x0038), top: B:29:0x0021 }] */
    @Override // com.im.freechat.domain.p
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object g(@m8.g java.lang.String r5, @m8.g java.lang.String r6, @m8.g kotlin.coroutines.Continuation<? super java.util.List<com.im.freechat.shared.entities.contact.UserModel>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.im.freechat.data.j.f
            if (r0 == 0) goto L13
            r0 = r7
            com.im.freechat.data.j$f r0 = (com.im.freechat.data.j.f) r0
            int r1 = r0.f40756d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f40756d = r1
            goto L18
        L13:
            com.im.freechat.data.j$f r0 = new com.im.freechat.data.j$f
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f40754b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f40756d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f40753a
            com.im.freechat.data.j r5 = (com.im.freechat.data.j) r5
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L75
            goto L52
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r7)
            com.im.freechat.data.sources.api.ApiService r7 = r4.f40730a     // Catch: java.lang.Exception -> L75
            int r6 = java.lang.Integer.parseInt(r6)     // Catch: java.lang.Exception -> L75
            java.lang.Integer r6 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r6)     // Catch: java.lang.Exception -> L75
            java.util.List r6 = kotlin.collections.CollectionsKt.listOf(r6)     // Catch: java.lang.Exception -> L75
            r0.f40753a = r4     // Catch: java.lang.Exception -> L75
            r0.f40756d = r3     // Catch: java.lang.Exception -> L75
            java.lang.Object r7 = r7.searchContactByIds(r5, r6, r0)     // Catch: java.lang.Exception -> L75
            if (r7 != r1) goto L51
            return r1
        L51:
            r5 = r4
        L52:
            com.im.freechat.data.sources.api.entities.Response r7 = (com.im.freechat.data.sources.api.entities.Response) r7     // Catch: java.lang.Exception -> L75
            java.lang.Object r6 = r7.getData()     // Catch: java.lang.Exception -> L75
            com.im.freechat.data.sources.api.entities.PagedListResponse r6 = (com.im.freechat.data.sources.api.entities.PagedListResponse) r6     // Catch: java.lang.Exception -> L75
            if (r6 == 0) goto L67
            com.im.freechat.data.sources.api.entities.contact.ContactResponseMapper r5 = r5.f40732c     // Catch: java.lang.Exception -> L75
            java.util.List r6 = r6.getList()     // Catch: java.lang.Exception -> L75
            java.util.List r5 = r5.mapSearch(r6)     // Catch: java.lang.Exception -> L75
            return r5
        L67:
            com.im.freechat.shared.entities.ApiException r5 = new com.im.freechat.shared.entities.ApiException     // Catch: java.lang.Exception -> L75
            int r6 = r7.getCode()     // Catch: java.lang.Exception -> L75
            java.lang.String r7 = r7.getMessage()     // Catch: java.lang.Exception -> L75
            r5.<init>(r6, r7)     // Catch: java.lang.Exception -> L75
            throw r5     // Catch: java.lang.Exception -> L75
        L75:
            java.util.List r5 = kotlin.collections.CollectionsKt.emptyList()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.j.g(java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0057  */
    @Override // com.im.freechat.domain.p
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object getBannerList(@m8.g java.lang.String r5, int r6, @m8.g kotlin.coroutines.Continuation<? super com.im.freechat.shared.entities.PagedList<com.im.freechat.shared.entities.banner.Banner>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.im.freechat.data.j.b
            if (r0 == 0) goto L13
            r0 = r7
            com.im.freechat.data.j$b r0 = (com.im.freechat.data.j.b) r0
            int r1 = r0.f40740d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f40740d = r1
            goto L18
        L13:
            com.im.freechat.data.j$b r0 = new com.im.freechat.data.j$b
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f40738b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f40740d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f40737a
            com.im.freechat.data.j r5 = (com.im.freechat.data.j) r5
            kotlin.ResultKt.throwOnFailure(r7)
            goto L46
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r7)
            com.im.freechat.data.sources.api.ApiService r7 = r4.f40730a
            r0.f40737a = r4
            r0.f40740d = r3
            java.lang.Object r7 = r7.getBannerList(r5, r6, r0)
            if (r7 != r1) goto L45
            return r1
        L45:
            r5 = r4
        L46:
            com.im.freechat.data.sources.api.entities.Response r7 = (com.im.freechat.data.sources.api.entities.Response) r7
            java.lang.Object r6 = r7.getData()
            com.im.freechat.data.sources.api.entities.PagedListResponse r6 = (com.im.freechat.data.sources.api.entities.PagedListResponse) r6
            if (r6 == 0) goto L57
            com.im.freechat.data.sources.api.entities.banner.BannerResponseMapper r5 = r5.f40733d
            com.im.freechat.shared.entities.PagedList r5 = r5.map(r6)
            return r5
        L57:
            com.im.freechat.shared.entities.ApiException r5 = new com.im.freechat.shared.entities.ApiException
            int r6 = r7.getCode()
            java.lang.String r7 = r7.getMessage()
            r5.<init>(r6, r7)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.j.getBannerList(java.lang.String, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0050 A[Catch: Exception -> 0x0069, TryCatch #0 {Exception -> 0x0069, blocks: (B:12:0x0029, B:21:0x0046, B:23:0x0050, B:25:0x005b, B:26:0x0068, B:17:0x0038), top: B:29:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005b A[Catch: Exception -> 0x0069, TryCatch #0 {Exception -> 0x0069, blocks: (B:12:0x0029, B:21:0x0046, B:23:0x0050, B:25:0x005b, B:26:0x0068, B:17:0x0038), top: B:29:0x0021 }] */
    @Override // com.im.freechat.domain.p
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object searchContactByIds(@m8.g java.lang.String r5, @m8.g java.util.List<java.lang.Integer> r6, @m8.g kotlin.coroutines.Continuation<? super java.util.List<com.im.freechat.shared.entities.contact.UserModel>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.im.freechat.data.j.g
            if (r0 == 0) goto L13
            r0 = r7
            com.im.freechat.data.j$g r0 = (com.im.freechat.data.j.g) r0
            int r1 = r0.f40760d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f40760d = r1
            goto L18
        L13:
            com.im.freechat.data.j$g r0 = new com.im.freechat.data.j$g
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f40758b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f40760d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f40757a
            com.im.freechat.data.j r5 = (com.im.freechat.data.j) r5
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L69
            goto L46
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r7)
            com.im.freechat.data.sources.api.ApiService r7 = r4.f40730a     // Catch: java.lang.Exception -> L69
            r0.f40757a = r4     // Catch: java.lang.Exception -> L69
            r0.f40760d = r3     // Catch: java.lang.Exception -> L69
            java.lang.Object r7 = r7.searchContactByIds(r5, r6, r0)     // Catch: java.lang.Exception -> L69
            if (r7 != r1) goto L45
            return r1
        L45:
            r5 = r4
        L46:
            com.im.freechat.data.sources.api.entities.Response r7 = (com.im.freechat.data.sources.api.entities.Response) r7     // Catch: java.lang.Exception -> L69
            java.lang.Object r6 = r7.getData()     // Catch: java.lang.Exception -> L69
            com.im.freechat.data.sources.api.entities.PagedListResponse r6 = (com.im.freechat.data.sources.api.entities.PagedListResponse) r6     // Catch: java.lang.Exception -> L69
            if (r6 == 0) goto L5b
            com.im.freechat.data.sources.api.entities.contact.ContactResponseMapper r5 = r5.f40732c     // Catch: java.lang.Exception -> L69
            java.util.List r6 = r6.getList()     // Catch: java.lang.Exception -> L69
            java.util.List r5 = r5.mapSearch(r6)     // Catch: java.lang.Exception -> L69
            return r5
        L5b:
            com.im.freechat.shared.entities.ApiException r5 = new com.im.freechat.shared.entities.ApiException     // Catch: java.lang.Exception -> L69
            int r6 = r7.getCode()     // Catch: java.lang.Exception -> L69
            java.lang.String r7 = r7.getMessage()     // Catch: java.lang.Exception -> L69
            r5.<init>(r6, r7)     // Catch: java.lang.Exception -> L69
            throw r5     // Catch: java.lang.Exception -> L69
        L69:
            java.util.List r5 = kotlin.collections.CollectionsKt.emptyList()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.j.searchContactByIds(java.lang.String, java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0050 A[Catch: Exception -> 0x0069, TryCatch #0 {Exception -> 0x0069, blocks: (B:12:0x0029, B:21:0x0046, B:23:0x0050, B:25:0x005b, B:26:0x0068, B:17:0x0038), top: B:29:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005b A[Catch: Exception -> 0x0069, TryCatch #0 {Exception -> 0x0069, blocks: (B:12:0x0029, B:21:0x0046, B:23:0x0050, B:25:0x005b, B:26:0x0068, B:17:0x0038), top: B:29:0x0021 }] */
    @Override // com.im.freechat.domain.p
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object searchContactByNickname(@m8.g java.lang.String r5, @m8.g java.lang.String r6, @m8.g kotlin.coroutines.Continuation<? super java.util.List<com.im.freechat.shared.entities.contact.UserModel>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.im.freechat.data.j.h
            if (r0 == 0) goto L13
            r0 = r7
            com.im.freechat.data.j$h r0 = (com.im.freechat.data.j.h) r0
            int r1 = r0.f40764d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f40764d = r1
            goto L18
        L13:
            com.im.freechat.data.j$h r0 = new com.im.freechat.data.j$h
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f40762b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f40764d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f40761a
            com.im.freechat.data.j r5 = (com.im.freechat.data.j) r5
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L69
            goto L46
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r7)
            com.im.freechat.data.sources.api.ApiService r7 = r4.f40730a     // Catch: java.lang.Exception -> L69
            r0.f40761a = r4     // Catch: java.lang.Exception -> L69
            r0.f40764d = r3     // Catch: java.lang.Exception -> L69
            java.lang.Object r7 = r7.searchContactByNickname(r5, r6, r0)     // Catch: java.lang.Exception -> L69
            if (r7 != r1) goto L45
            return r1
        L45:
            r5 = r4
        L46:
            com.im.freechat.data.sources.api.entities.Response r7 = (com.im.freechat.data.sources.api.entities.Response) r7     // Catch: java.lang.Exception -> L69
            java.lang.Object r6 = r7.getData()     // Catch: java.lang.Exception -> L69
            com.im.freechat.data.sources.api.entities.contact.ContactResponse r6 = (com.im.freechat.data.sources.api.entities.contact.ContactResponse) r6     // Catch: java.lang.Exception -> L69
            if (r6 == 0) goto L5b
            com.im.freechat.data.sources.api.entities.contact.ContactResponseMapper r5 = r5.f40732c     // Catch: java.lang.Exception -> L69
            java.util.List r6 = kotlin.collections.CollectionsKt.listOf(r6)     // Catch: java.lang.Exception -> L69
            java.util.List r5 = r5.mapSearch(r6)     // Catch: java.lang.Exception -> L69
            return r5
        L5b:
            com.im.freechat.shared.entities.ApiException r5 = new com.im.freechat.shared.entities.ApiException     // Catch: java.lang.Exception -> L69
            int r6 = r7.getCode()     // Catch: java.lang.Exception -> L69
            java.lang.String r7 = r7.getMessage()     // Catch: java.lang.Exception -> L69
            r5.<init>(r6, r7)     // Catch: java.lang.Exception -> L69
            throw r5     // Catch: java.lang.Exception -> L69
        L69:
            java.util.List r5 = kotlin.collections.CollectionsKt.emptyList()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.j.searchContactByNickname(java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
