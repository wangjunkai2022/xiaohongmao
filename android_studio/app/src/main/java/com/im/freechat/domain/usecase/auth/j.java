package com.im.freechat.domain.usecase.auth;

import com.im.freechat.shared.entities.auth.PhoneNumber;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SignInViaSmsInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\bB\u0017\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\u0006\u0010\u0012\u001a\u00020\r¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0015"}, d2 = {"Lcom/im/freechat/domain/usecase/auth/j;", "Lcom/im/freechat/domain/usecase/base/a;", "Lcom/im/freechat/domain/usecase/auth/j$a;", "", "params", "e", "(Lcom/im/freechat/domain/usecase/auth/j$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "d", "()Lcom/im/freechat/domain/k;", "loginRepository", "Lcom/im/freechat/domain/c;", "b", "Lcom/im/freechat/domain/c;", "c", "()Lcom/im/freechat/domain/c;", "databaseRepository", "<init>", "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/c;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class j extends com.im.freechat.domain.usecase.base.a<a, Boolean> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.k f41408a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.im.freechat.domain.c f41409b;

    /* compiled from: SignInViaSmsInteractor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u000b\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0005\u0010\t\u001a\u0004\b\u0003\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/im/freechat/domain/usecase/auth/j$a;", "", "Lcom/im/freechat/shared/entities/auth/PhoneNumber;", "a", "Lcom/im/freechat/shared/entities/auth/PhoneNumber;", "b", "()Lcom/im/freechat/shared/entities/auth/PhoneNumber;", "phoneNumber", "", "I", "()I", "code", "<init>", "(Lcom/im/freechat/shared/entities/auth/PhoneNumber;I)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final PhoneNumber f41410a;

        /* renamed from: b  reason: collision with root package name */
        private final int f41411b;

        public a(@m8.g PhoneNumber phoneNumber, int i4) {
            Intrinsics.checkNotNullParameter(phoneNumber, "phoneNumber");
            this.f41410a = phoneNumber;
            this.f41411b = i4;
        }

        public final int a() {
            return this.f41411b;
        }

        @m8.g
        public final PhoneNumber b() {
            return this.f41410a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SignInViaSmsInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.auth.SignInViaSmsInteractor", f = "SignInViaSmsInteractor.kt", i = {0, 1, 2, 2, 2, 3}, l = {17, 14, 19, 20}, m = "run", n = {"this", "this", "this", "info", "firstLogin", "firstLogin"}, s = {"L$0", "L$0", "L$0", "L$1", "Z$0", "Z$0"})
    /* loaded from: classes3.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41412a;

        /* renamed from: b  reason: collision with root package name */
        Object f41413b;

        /* renamed from: c  reason: collision with root package name */
        Object f41414c;

        /* renamed from: d  reason: collision with root package name */
        int f41415d;

        /* renamed from: e  reason: collision with root package name */
        boolean f41416e;

        /* renamed from: f  reason: collision with root package name */
        /* synthetic */ Object f41417f;

        /* renamed from: h  reason: collision with root package name */
        int f41419h;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41417f = obj;
            this.f41419h |= Integer.MIN_VALUE;
            return j.this.b(null, this);
        }
    }

    public j(@m8.g com.im.freechat.domain.k loginRepository, @m8.g com.im.freechat.domain.c databaseRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        Intrinsics.checkNotNullParameter(databaseRepository, "databaseRepository");
        this.f41408a = loginRepository;
        this.f41409b = databaseRepository;
    }

    @m8.g
    public final com.im.freechat.domain.c c() {
        return this.f41409b;
    }

    @m8.g
    public final com.im.freechat.domain.k d() {
        return this.f41408a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00bf A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d2 A[RETURN] */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g com.im.freechat.domain.usecase.auth.j.a r11, @m8.g kotlin.coroutines.Continuation<? super java.lang.Boolean> r12) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.auth.j.b(com.im.freechat.domain.usecase.auth.j$a, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
