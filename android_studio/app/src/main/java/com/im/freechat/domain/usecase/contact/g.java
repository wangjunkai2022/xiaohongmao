package com.im.freechat.domain.usecase.contact;

import com.im.freechat.domain.p;
import com.im.freechat.shared.entities.contact.UserModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SearchContactInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lcom/im/freechat/domain/usecase/contact/g;", "Lcom/im/freechat/domain/usecase/base/a;", "", "", "Lcom/im/freechat/shared/entities/contact/UserModel;", "params", "c", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "Lcom/im/freechat/domain/p;", "b", "Lcom/im/freechat/domain/p;", "remoteRepository", "<init>", "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/p;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class g extends com.im.freechat.domain.usecase.base.a<String, List<? extends UserModel>> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.k f41626a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final p f41627b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchContactInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.contact.SearchContactInteractor", f = "SearchContactInteractor.kt", i = {0, 0, 1}, l = {14, 24}, m = "run", n = {"this", "params", "id"}, s = {"L$0", "L$1", "I$0"})
    /* loaded from: classes3.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41628a;

        /* renamed from: b  reason: collision with root package name */
        Object f41629b;

        /* renamed from: c  reason: collision with root package name */
        int f41630c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f41631d;

        /* renamed from: f  reason: collision with root package name */
        int f41633f;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41631d = obj;
            this.f41633f |= Integer.MIN_VALUE;
            return g.this.b(null, this);
        }
    }

    public g(@m8.g com.im.freechat.domain.k loginRepository, @m8.g p remoteRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        Intrinsics.checkNotNullParameter(remoteRepository, "remoteRepository");
        this.f41626a = loginRepository;
        this.f41627b = remoteRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0070 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0085  */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g java.lang.String r9, @m8.g kotlin.coroutines.Continuation<? super java.util.List<com.im.freechat.shared.entities.contact.UserModel>> r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof com.im.freechat.domain.usecase.contact.g.a
            if (r0 == 0) goto L13
            r0 = r10
            com.im.freechat.domain.usecase.contact.g$a r0 = (com.im.freechat.domain.usecase.contact.g.a) r0
            int r1 = r0.f41633f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41633f = r1
            goto L18
        L13:
            com.im.freechat.domain.usecase.contact.g$a r0 = new com.im.freechat.domain.usecase.contact.g$a
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f41631d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f41633f
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L42
            if (r2 == r4) goto L36
            if (r2 != r3) goto L2e
            int r9 = r0.f41630c
            kotlin.ResultKt.throwOnFailure(r10)
            goto L74
        L2e:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L36:
            java.lang.Object r9 = r0.f41629b
            java.lang.String r9 = (java.lang.String) r9
            java.lang.Object r2 = r0.f41628a
            com.im.freechat.domain.usecase.contact.g r2 = (com.im.freechat.domain.usecase.contact.g) r2
            kotlin.ResultKt.throwOnFailure(r10)
            goto L55
        L42:
            kotlin.ResultKt.throwOnFailure(r10)
            com.im.freechat.domain.k r10 = r8.f41626a
            r0.f41628a = r8
            r0.f41629b = r9
            r0.f41633f = r4
            java.lang.Object r10 = r10.v(r0)
            if (r10 != r1) goto L54
            return r1
        L54:
            r2 = r8
        L55:
            com.im.freechat.shared.entities.auth.UserInfo r10 = (com.im.freechat.shared.entities.auth.UserInfo) r10
            java.lang.String r5 = r10.getToken()
            int r10 = r10.getUserId()
            com.im.freechat.domain.p r2 = r2.f41627b
            r6 = 0
            r0.f41628a = r6
            r0.f41629b = r6
            r0.f41630c = r10
            r0.f41633f = r3
            java.lang.Object r9 = r2.g(r5, r9, r0)
            if (r9 != r1) goto L71
            return r1
        L71:
            r7 = r10
            r10 = r9
            r9 = r7
        L74:
            java.lang.Iterable r10 = (java.lang.Iterable) r10
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r10 = r10.iterator()
        L7f:
            boolean r1 = r10.hasNext()
            if (r1 == 0) goto L9b
            java.lang.Object r1 = r10.next()
            r2 = r1
            com.im.freechat.shared.entities.contact.UserModel r2 = (com.im.freechat.shared.entities.contact.UserModel) r2
            int r2 = r2.getUserId()
            if (r2 == r9) goto L94
            r2 = 1
            goto L95
        L94:
            r2 = 0
        L95:
            if (r2 == 0) goto L7f
            r0.add(r1)
            goto L7f
        L9b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.contact.g.b(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
