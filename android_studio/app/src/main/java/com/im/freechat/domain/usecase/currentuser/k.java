package com.im.freechat.domain.usecase.currentuser;

import com.im.freechat.domain.t;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SetShowLastOnlineInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001f\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u000f¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/domain/usecase/currentuser/k;", "Lcom/im/freechat/domain/usecase/base/a;", "", "", "params", "c", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "Lcom/im/freechat/domain/c;", "b", "Lcom/im/freechat/domain/c;", "databaseRepository", "Lcom/im/freechat/domain/t;", "Lcom/im/freechat/domain/t;", "syncRepository", "<init>", "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/c;Lcom/im/freechat/domain/t;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class k extends com.im.freechat.domain.usecase.base.a<Boolean, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.k f41711a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.im.freechat.domain.c f41712b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final t f41713c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SetShowLastOnlineInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.currentuser.SetShowLastOnlineInteractor", f = "SetShowLastOnlineInteractor.kt", i = {0, 0, 1, 1, 2, 2, 3, 3}, l = {15, 19, 21, 23, 24}, m = "run", n = {"this", "params", "this", "it", "this", "it", "this", "it"}, s = {"L$0", "Z$0", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1"})
    /* loaded from: classes3.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41714a;

        /* renamed from: b  reason: collision with root package name */
        Object f41715b;

        /* renamed from: c  reason: collision with root package name */
        boolean f41716c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f41717d;

        /* renamed from: f  reason: collision with root package name */
        int f41719f;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41717d = obj;
            this.f41719f |= Integer.MIN_VALUE;
            return k.this.c(false, this);
        }
    }

    public k(@m8.g com.im.freechat.domain.k loginRepository, @m8.g com.im.freechat.domain.c databaseRepository, @m8.g t syncRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        Intrinsics.checkNotNullParameter(databaseRepository, "databaseRepository");
        Intrinsics.checkNotNullParameter(syncRepository, "syncRepository");
        this.f41711a = loginRepository;
        this.f41712b = databaseRepository;
        this.f41713c = syncRepository;
    }

    @Override // com.im.freechat.domain.usecase.base.a
    public /* bridge */ /* synthetic */ Object b(Boolean bool, Continuation<? super Unit> continuation) {
        return c(bool.booleanValue(), continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00cd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00de A[RETURN] */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected java.lang.Object c(boolean r25, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r26) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.currentuser.k.c(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
