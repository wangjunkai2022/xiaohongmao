package com.im.freechat.domain.usecase.currentuser;

import com.im.freechat.domain.p;
import com.im.freechat.shared.entities.auth.UserInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SyncCurrentUserInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001f\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u000f¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/domain/usecase/currentuser/m;", "Lcom/im/freechat/domain/usecase/base/a;", "", "Lcom/im/freechat/shared/entities/auth/UserInfo;", "params", "c", "(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "Lcom/im/freechat/domain/c;", "b", "Lcom/im/freechat/domain/c;", "databaseRepository", "Lcom/im/freechat/domain/p;", "Lcom/im/freechat/domain/p;", "remoteRepository", "<init>", "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/c;Lcom/im/freechat/domain/p;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class m extends com.im.freechat.domain.usecase.base.a<Unit, UserInfo> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.k f41724a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.im.freechat.domain.c f41725b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final p f41726c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncCurrentUserInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.currentuser.SyncCurrentUserInteractor", f = "SyncCurrentUserInteractor.kt", i = {0, 1, 2, 2, 3, 3, 3, 4}, l = {16, 17, 18, 20, 21}, m = "run", n = {"this", "this", "this", "it", "this", "it", "data", "it"}, s = {"L$0", "L$0", "L$0", "L$1", "L$0", "L$1", "L$2", "L$0"})
    /* loaded from: classes3.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41727a;

        /* renamed from: b  reason: collision with root package name */
        Object f41728b;

        /* renamed from: c  reason: collision with root package name */
        Object f41729c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f41730d;

        /* renamed from: f  reason: collision with root package name */
        int f41732f;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41730d = obj;
            this.f41732f |= Integer.MIN_VALUE;
            return m.this.b(null, this);
        }
    }

    public m(@m8.g com.im.freechat.domain.k loginRepository, @m8.g com.im.freechat.domain.c databaseRepository, @m8.g p remoteRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        Intrinsics.checkNotNullParameter(databaseRepository, "databaseRepository");
        Intrinsics.checkNotNullParameter(remoteRepository, "remoteRepository");
        this.f41724a = loginRepository;
        this.f41725b = databaseRepository;
        this.f41726c = remoteRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0093 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00eb A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ff A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0100  */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g kotlin.Unit r22, @m8.g kotlin.coroutines.Continuation<? super com.im.freechat.shared.entities.auth.UserInfo> r23) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.currentuser.m.b(kotlin.Unit, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
