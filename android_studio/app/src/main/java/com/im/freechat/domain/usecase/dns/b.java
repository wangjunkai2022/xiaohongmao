package com.im.freechat.domain.usecase.dns;

import com.ksyun.media.player.d.d;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ResolveHostInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"Lcom/im/freechat/domain/usecase/dns/b;", "Lcom/im/freechat/domain/usecase/base/a;", "", "params", "c", "(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/d;", "a", "Lcom/im/freechat/domain/d;", "dnsRepository", "<init>", "(Lcom/im/freechat/domain/d;)V", d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b extends com.im.freechat.domain.usecase.base.a<Unit, Unit> {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.d f41751a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ResolveHostInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.dns.ResolveHostInteractor", f = "ResolveHostInteractor.kt", i = {}, l = {11}, m = "run", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f41752a;

        /* renamed from: c  reason: collision with root package name */
        int f41754c;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            this.f41752a = obj;
            this.f41754c |= Integer.MIN_VALUE;
            return b.this.b(null, this);
        }
    }

    public b(@g com.im.freechat.domain.d dnsRepository) {
        Intrinsics.checkNotNullParameter(dnsRepository, "dnsRepository");
        this.f41751a = dnsRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g kotlin.Unit r4, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r5) {
        /*
            r3 = this;
            boolean r4 = r5 instanceof com.im.freechat.domain.usecase.dns.b.a
            if (r4 == 0) goto L13
            r4 = r5
            com.im.freechat.domain.usecase.dns.b$a r4 = (com.im.freechat.domain.usecase.dns.b.a) r4
            int r0 = r4.f41754c
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r4.f41754c = r0
            goto L18
        L13:
            com.im.freechat.domain.usecase.dns.b$a r4 = new com.im.freechat.domain.usecase.dns.b$a
            r4.<init>(r5)
        L18:
            java.lang.Object r5 = r4.f41752a
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.f41754c
            r2 = 1
            if (r1 == 0) goto L31
            if (r1 != r2) goto L29
            kotlin.ResultKt.throwOnFailure(r5)
            goto L3f
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            com.im.freechat.domain.d r5 = r3.f41751a
            r4.f41754c = r2
            java.lang.Object r4 = r5.b(r4)
            if (r4 != r0) goto L3f
            return r0
        L3f:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.dns.b.b(kotlin.Unit, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
