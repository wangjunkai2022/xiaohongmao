package com.im.freechat.domain.usecase.currentuser;

import com.im.freechat.domain.t;
import com.im.freechat.shared.entities.FileInfo;
import com.im.freechat.shared.entities.auth.UserInfo;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UpdateAvatarInteractor.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B'\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b\u0016\u0010\u0017J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"Lcom/im/freechat/domain/usecase/currentuser/n;", "Lcom/im/freechat/domain/usecase/base/a;", "Lcom/im/freechat/shared/entities/FileInfo;", "Lcom/im/freechat/shared/entities/auth/UserInfo;", "params", "c", "(Lcom/im/freechat/shared/entities/FileInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/g;", "a", "Lcom/im/freechat/domain/g;", "fileRepository", "Lcom/im/freechat/domain/c;", "b", "Lcom/im/freechat/domain/c;", "databaseRepository", "Lcom/im/freechat/domain/t;", "Lcom/im/freechat/domain/t;", "syncRepository", "Lcom/im/freechat/domain/k;", "d", "Lcom/im/freechat/domain/k;", "loginRepository", "<init>", "(Lcom/im/freechat/domain/g;Lcom/im/freechat/domain/c;Lcom/im/freechat/domain/t;Lcom/im/freechat/domain/k;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class n extends com.im.freechat.domain.usecase.base.a<FileInfo, UserInfo> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.g f41733a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.im.freechat.domain.c f41734b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final t f41735c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final com.im.freechat.domain.k f41736d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UpdateAvatarInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.currentuser.UpdateAvatarInteractor", f = "UpdateAvatarInteractor.kt", i = {0, 0, 1, 1, 2, 2, 3}, l = {19, 20, 22, 23}, m = "run", n = {"this", "params", "this", "userInfo", "this", "updatedInfo", "updatedInfo"}, s = {"L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0"})
    /* loaded from: classes3.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41737a;

        /* renamed from: b  reason: collision with root package name */
        Object f41738b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f41739c;

        /* renamed from: e  reason: collision with root package name */
        int f41741e;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41739c = obj;
            this.f41741e |= Integer.MIN_VALUE;
            return n.this.b(null, this);
        }
    }

    public n(@m8.g com.im.freechat.domain.g fileRepository, @m8.g com.im.freechat.domain.c databaseRepository, @m8.g t syncRepository, @m8.g com.im.freechat.domain.k loginRepository) {
        Intrinsics.checkNotNullParameter(fileRepository, "fileRepository");
        Intrinsics.checkNotNullParameter(databaseRepository, "databaseRepository");
        Intrinsics.checkNotNullParameter(syncRepository, "syncRepository");
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        this.f41733a = fileRepository;
        this.f41734b = databaseRepository;
        this.f41735c = syncRepository;
        this.f41736d = loginRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e9 A[RETURN] */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g com.im.freechat.shared.entities.FileInfo r28, @m8.g kotlin.coroutines.Continuation<? super com.im.freechat.shared.entities.auth.UserInfo> r29) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.currentuser.n.b(com.im.freechat.shared.entities.FileInfo, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
