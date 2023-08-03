package com.im.freechat.domain.usecase.chat;

import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CreateGroupChatInteractor.kt */
@Deprecated(message = "Not yet implemented on backend")
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\bB\u001f\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u000f¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/domain/usecase/chat/b;", "Lcom/im/freechat/domain/usecase/base/a;", "Lcom/im/freechat/domain/usecase/chat/b$a;", "", "params", "c", "(Lcom/im/freechat/domain/usecase/chat/b$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "Lcom/im/freechat/domain/t;", "b", "Lcom/im/freechat/domain/t;", "syncRepository", "Lcom/im/freechat/domain/g;", "Lcom/im/freechat/domain/g;", "fileRepository", "<init>", "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/t;Lcom/im/freechat/domain/g;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b extends com.im.freechat.domain.usecase.base.a<a, Integer> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.k f41453a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.im.freechat.domain.t f41454b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.im.freechat.domain.g f41455c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CreateGroupChatInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.chat.CreateGroupChatInteractor", f = "CreateGroupChatInteractor.kt", i = {0, 0, 1, 1, 1, 2}, l = {16, 18, 21}, m = "run", n = {"this", "params", "this", "params", "data", "id"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2", "I$0"})
    /* renamed from: com.im.freechat.domain.usecase.chat.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0320b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41459a;

        /* renamed from: b  reason: collision with root package name */
        Object f41460b;

        /* renamed from: c  reason: collision with root package name */
        Object f41461c;

        /* renamed from: d  reason: collision with root package name */
        int f41462d;

        /* renamed from: e  reason: collision with root package name */
        /* synthetic */ Object f41463e;

        /* renamed from: g  reason: collision with root package name */
        int f41465g;

        C0320b(Continuation<? super C0320b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41463e = obj;
            this.f41465g |= Integer.MIN_VALUE;
            return b.this.b(null, this);
        }
    }

    public b(@m8.g com.im.freechat.domain.k loginRepository, @m8.g com.im.freechat.domain.t syncRepository, @m8.g com.im.freechat.domain.g fileRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        Intrinsics.checkNotNullParameter(syncRepository, "syncRepository");
        Intrinsics.checkNotNullParameter(fileRepository, "fileRepository");
        this.f41453a = loginRepository;
        this.f41454b = syncRepository;
        this.f41455c = fileRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ce  */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g com.im.freechat.domain.usecase.chat.b.a r11, @m8.g kotlin.coroutines.Continuation<? super java.lang.Integer> r12) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.chat.b.b(com.im.freechat.domain.usecase.chat.b$a, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* compiled from: CreateGroupChatInteractor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001d\u0010\r\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006¢\u0006\f\n\u0004\b\u0005\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0004\u001a\u0004\b\u0003\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/im/freechat/domain/usecase/chat/b$a;", "", "", "a", "Ljava/lang/String;", "b", "()Ljava/lang/String;", "chatName", "", "", "Ljava/util/List;", "c", "()Ljava/util/List;", "users", "avatar", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final String f41456a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final List<Integer> f41457b;
        @m8.h

        /* renamed from: c  reason: collision with root package name */
        private final String f41458c;

        public a(@m8.g String chatName, @m8.g List<Integer> users, @m8.h String str) {
            Intrinsics.checkNotNullParameter(chatName, "chatName");
            Intrinsics.checkNotNullParameter(users, "users");
            this.f41456a = chatName;
            this.f41457b = users;
            this.f41458c = str;
        }

        @m8.h
        public final String a() {
            return this.f41458c;
        }

        @m8.g
        public final String b() {
            return this.f41456a;
        }

        @m8.g
        public final List<Integer> c() {
            return this.f41457b;
        }

        public /* synthetic */ a(String str, List list, String str2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, list, (i4 & 4) != 0 ? null : str2);
        }
    }
}
