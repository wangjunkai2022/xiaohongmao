package com.im.freechat.domain.usecase.contact;

import com.im.freechat.domain.p;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SyncContactsInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0019\u001a\u00020\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ)\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0082@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"Lcom/im/freechat/domain/usecase/contact/h;", "Lcom/im/freechat/domain/usecase/base/a;", "", "", "token", "Lcom/im/freechat/shared/entities/contact/ContactType;", "type", "", "Lcom/im/freechat/shared/entities/contact/UserModel;", "d", "(Ljava/lang/String;Lcom/im/freechat/shared/entities/contact/ContactType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "params", "e", "(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "Lcom/im/freechat/domain/p;", "b", "Lcom/im/freechat/domain/p;", "remoteRepository", "Lcom/im/freechat/domain/c;", "c", "Lcom/im/freechat/domain/c;", "databaseRepository", "<init>", "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/p;Lcom/im/freechat/domain/c;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class h extends com.im.freechat.domain.usecase.base.a<Unit, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.k f41634a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final p f41635b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.im.freechat.domain.c f41636c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncContactsInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.contact.SyncContactsInteractor", f = "SyncContactsInteractor.kt", i = {0, 0, 0, 0}, l = {41}, m = "loadAllContacts", n = {"this", "token", "type", "list"}, s = {"L$0", "L$1", "L$2", "L$3"})
    /* loaded from: classes3.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41637a;

        /* renamed from: b  reason: collision with root package name */
        Object f41638b;

        /* renamed from: c  reason: collision with root package name */
        Object f41639c;

        /* renamed from: d  reason: collision with root package name */
        Object f41640d;

        /* renamed from: e  reason: collision with root package name */
        /* synthetic */ Object f41641e;

        /* renamed from: g  reason: collision with root package name */
        int f41643g;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41641e = obj;
            this.f41643g |= Integer.MIN_VALUE;
            return h.this.d(null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncContactsInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.contact.SyncContactsInteractor", f = "SyncContactsInteractor.kt", i = {0, 1, 1, 2, 2}, l = {17, 21, 27, 33}, m = "run", n = {"this", "this", "data", "this", "data"}, s = {"L$0", "L$0", "L$1", "L$0", "L$1"})
    /* loaded from: classes3.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41644a;

        /* renamed from: b  reason: collision with root package name */
        Object f41645b;

        /* renamed from: c  reason: collision with root package name */
        Object f41646c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f41647d;

        /* renamed from: f  reason: collision with root package name */
        int f41649f;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41647d = obj;
            this.f41649f |= Integer.MIN_VALUE;
            return h.this.b(null, this);
        }
    }

    public h(@m8.g com.im.freechat.domain.k loginRepository, @m8.g p remoteRepository, @m8.g com.im.freechat.domain.c databaseRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        Intrinsics.checkNotNullParameter(remoteRepository, "remoteRepository");
        Intrinsics.checkNotNullParameter(databaseRepository, "databaseRepository");
        this.f41634a = loginRepository;
        this.f41635b = remoteRepository;
        this.f41636c = databaseRepository;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009c A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:12:0x003b). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object d(java.lang.String r9, com.im.freechat.shared.entities.contact.ContactType r10, kotlin.coroutines.Continuation<? super java.util.List<com.im.freechat.shared.entities.contact.UserModel>> r11) {
        /*
            r8 = this;
            boolean r0 = r11 instanceof com.im.freechat.domain.usecase.contact.h.a
            if (r0 == 0) goto L13
            r0 = r11
            com.im.freechat.domain.usecase.contact.h$a r0 = (com.im.freechat.domain.usecase.contact.h.a) r0
            int r1 = r0.f41643g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41643g = r1
            goto L18
        L13:
            com.im.freechat.domain.usecase.contact.h$a r0 = new com.im.freechat.domain.usecase.contact.h$a
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.f41641e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f41643g
            r3 = 1
            if (r2 == 0) goto L46
            if (r2 != r3) goto L3e
            java.lang.Object r9 = r0.f41640d
            java.util.List r9 = (java.util.List) r9
            java.lang.Object r10 = r0.f41639c
            com.im.freechat.shared.entities.contact.ContactType r10 = (com.im.freechat.shared.entities.contact.ContactType) r10
            java.lang.Object r2 = r0.f41638b
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r4 = r0.f41637a
            com.im.freechat.domain.usecase.contact.h r4 = (com.im.freechat.domain.usecase.contact.h) r4
            kotlin.ResultKt.throwOnFailure(r11)
            r7 = r0
            r0 = r10
            r10 = r2
        L3b:
            r2 = r1
            r1 = r7
            goto L6d
        L3e:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L46:
            kotlin.ResultKt.throwOnFailure(r11)
            java.util.List r11 = kotlin.collections.CollectionsKt.emptyList()
            r4 = r8
            r2 = 1
            r5 = 1
            r7 = r10
            r10 = r9
            r9 = r11
            r11 = r7
        L54:
            if (r2 == 0) goto L9c
            com.im.freechat.domain.p r2 = r4.f41635b
            r0.f41637a = r4
            r0.f41638b = r10
            r0.f41639c = r11
            r0.f41640d = r9
            r0.f41643g = r3
            java.lang.Object r2 = r2.e(r10, r11, r5, r0)
            if (r2 != r1) goto L69
            return r1
        L69:
            r7 = r0
            r0 = r11
            r11 = r2
            goto L3b
        L6d:
            com.im.freechat.shared.entities.PagedList r11 = (com.im.freechat.shared.entities.PagedList) r11
            java.util.List r5 = r11.getList()
            java.util.List r9 = kotlin.collections.CollectionsKt.plus(r9, r5)
            com.im.freechat.shared.entities.PageInfo r5 = r11.getPageInfo()
            int r5 = r5.getPage()
            com.im.freechat.shared.entities.PageInfo r6 = r11.getPageInfo()
            int r6 = r6.getTotalPage()
            if (r5 >= r6) goto L8b
            r5 = 1
            goto L8c
        L8b:
            r5 = 0
        L8c:
            com.im.freechat.shared.entities.PageInfo r11 = r11.getPageInfo()
            int r11 = r11.getPage()
            int r11 = r11 + r3
            r7 = r5
            r5 = r11
            r11 = r0
            r0 = r1
            r1 = r2
            r2 = r7
            goto L54
        L9c:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.contact.h.d(java.lang.String, com.im.freechat.shared.entities.contact.ContactType, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0099 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00be A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0118 A[RETURN] */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g kotlin.Unit r26, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r27) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.contact.h.b(kotlin.Unit, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
