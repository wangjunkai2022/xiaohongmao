package com.im.freechat.domain.usecase.currentuser;

import com.im.freechat.domain.p;
import com.im.freechat.domain.t;
import com.im.freechat.shared.entities.auth.UserInfo;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SetNicknameInteractor.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B'\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b\u0016\u0010\u0017J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"Lcom/im/freechat/domain/usecase/currentuser/i;", "Lcom/im/freechat/domain/usecase/base/a;", "", "Lcom/im/freechat/shared/entities/auth/UserInfo;", "params", "c", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "Lcom/im/freechat/domain/p;", "b", "Lcom/im/freechat/domain/p;", "remoteRepository", "Lcom/im/freechat/domain/t;", "Lcom/im/freechat/domain/t;", "syncRepository", "Lcom/im/freechat/domain/c;", "d", "Lcom/im/freechat/domain/c;", "databaseRepository", "<init>", "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/p;Lcom/im/freechat/domain/t;Lcom/im/freechat/domain/c;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class i extends com.im.freechat.domain.usecase.base.a<String, UserInfo> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.k f41697a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final p f41698b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final t f41699c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final com.im.freechat.domain.c f41700d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SetNicknameInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.currentuser.SetNicknameInteractor", f = "SetNicknameInteractor.kt", i = {0, 0, 1, 1, 1, 2, 2, 3, 3, 4}, l = {18, 19, 20, 21, 22}, m = "run", n = {"this", "params", "this", "params", "it", "this", "it", "this", "it", "it"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2", "L$0", "L$1", "L$0", "L$1", "L$0"})
    /* loaded from: classes3.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41701a;

        /* renamed from: b  reason: collision with root package name */
        Object f41702b;

        /* renamed from: c  reason: collision with root package name */
        Object f41703c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f41704d;

        /* renamed from: f  reason: collision with root package name */
        int f41706f;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41704d = obj;
            this.f41706f |= Integer.MIN_VALUE;
            return i.this.b(null, this);
        }
    }

    public i(@m8.g com.im.freechat.domain.k loginRepository, @m8.g p remoteRepository, @m8.g t syncRepository, @m8.g com.im.freechat.domain.c databaseRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        Intrinsics.checkNotNullParameter(remoteRepository, "remoteRepository");
        Intrinsics.checkNotNullParameter(syncRepository, "syncRepository");
        Intrinsics.checkNotNullParameter(databaseRepository, "databaseRepository");
        this.f41697a = loginRepository;
        this.f41698b = remoteRepository;
        this.f41699c = syncRepository;
        this.f41700d = databaseRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00db A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00eb A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00fc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00fd  */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g java.lang.String r25, @m8.g kotlin.coroutines.Continuation<? super com.im.freechat.shared.entities.auth.UserInfo> r26) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.currentuser.i.b(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
