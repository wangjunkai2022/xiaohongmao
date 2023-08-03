package com.im.freechat.domain.usecase.messages;

import com.im.freechat.domain.t;
import com.im.freechat.shared.entities.message.Message;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SendMessageInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\bB\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"Lcom/im/freechat/domain/usecase/messages/j;", "Lcom/im/freechat/domain/usecase/base/a;", "Lcom/im/freechat/domain/usecase/messages/j$a;", "", "params", "c", "(Lcom/im/freechat/domain/usecase/messages/j$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "Lcom/im/freechat/domain/t;", "b", "Lcom/im/freechat/domain/t;", "syncRepository", "<init>", "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/t;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class j extends com.im.freechat.domain.usecase.base.a<a, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.k f41906a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final t f41907b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SendMessageInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.messages.SendMessageInteractor", f = "SendMessageInteractor.kt", i = {0, 0}, l = {17, 21, 27, 35, 46}, m = "run", n = {"this", "$this$run_u24lambda_u2d1"}, s = {"L$0", "L$1"})
    /* loaded from: classes3.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41916a;

        /* renamed from: b  reason: collision with root package name */
        Object f41917b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f41918c;

        /* renamed from: e  reason: collision with root package name */
        int f41920e;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41918c = obj;
            this.f41920e |= Integer.MIN_VALUE;
            return j.this.b(null, this);
        }
    }

    public j(@m8.g com.im.freechat.domain.k loginRepository, @m8.g t syncRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        Intrinsics.checkNotNullParameter(syncRepository, "syncRepository");
        this.f41906a = loginRepository;
        this.f41907b = syncRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x012c  */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g com.im.freechat.domain.usecase.messages.j.a r12, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r13) {
        /*
            Method dump skipped, instructions count: 401
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.messages.j.b(com.im.freechat.domain.usecase.messages.j$a, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* compiled from: SendMessageInteractor.kt */
    @Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\b\u0018\u00002\u00020\u0001Bo\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\b\u0012\u000e\b\u0002\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0014\u0012\u000e\b\u0002\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\b0\r\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u001a\u0012\u0014\b\u0002\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b0\u001f\u0012\b\b\u0002\u0010$\u001a\u00020\u001a¢\u0006\u0004\b%\u0010&R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\f\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\u0005\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001d\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0015\u001a\u0004\b\u000f\u0010\u0016R\u001d\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\b0\r8\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0010\u001a\u0004\b\u0003\u0010\u0012R\u0017\u0010\u001e\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u0018\u0010\u001dR#\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b0\u001f8\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\u001b\u0010\"R\u0017\u0010$\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\n\u0010\u001c\u001a\u0004\b \u0010\u001d¨\u0006'"}, d2 = {"Lcom/im/freechat/domain/usecase/messages/j$a;", "", "", "a", "I", "b", "()I", k4.b.f84734a, "", "Ljava/lang/String;", "h", "()Ljava/lang/String;", "text", "", "Lcom/im/freechat/shared/entities/message/Message;", "c", "Ljava/util/List;", "d", "()Ljava/util/List;", "linkedMessages", "Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;", "Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;", "()Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;", "linkedMessageType", "e", "attachments", "", "f", "Z", "()Z", "mentionAll", "", "g", "Ljava/util/Map;", "()Ljava/util/Map;", "mentioned", "removeOnFail", "<init>", "(ILjava/lang/String;Ljava/util/List;Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;Ljava/util/List;ZLjava/util/Map;Z)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f41908a;
        @m8.h

        /* renamed from: b  reason: collision with root package name */
        private final String f41909b;
        @m8.g

        /* renamed from: c  reason: collision with root package name */
        private final List<Message> f41910c;
        @m8.h

        /* renamed from: d  reason: collision with root package name */
        private final Message.ExtraMessageType f41911d;
        @m8.g

        /* renamed from: e  reason: collision with root package name */
        private final List<String> f41912e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f41913f;
        @m8.g

        /* renamed from: g  reason: collision with root package name */
        private final Map<Integer, String> f41914g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean f41915h;

        public a(int i4, @m8.h String str, @m8.g List<Message> linkedMessages, @m8.h Message.ExtraMessageType extraMessageType, @m8.g List<String> attachments, boolean z9, @m8.g Map<Integer, String> mentioned, boolean z10) {
            Intrinsics.checkNotNullParameter(linkedMessages, "linkedMessages");
            Intrinsics.checkNotNullParameter(attachments, "attachments");
            Intrinsics.checkNotNullParameter(mentioned, "mentioned");
            this.f41908a = i4;
            this.f41909b = str;
            this.f41910c = linkedMessages;
            this.f41911d = extraMessageType;
            this.f41912e = attachments;
            this.f41913f = z9;
            this.f41914g = mentioned;
            this.f41915h = z10;
        }

        @m8.g
        public final List<String> a() {
            return this.f41912e;
        }

        public final int b() {
            return this.f41908a;
        }

        @m8.h
        public final Message.ExtraMessageType c() {
            return this.f41911d;
        }

        @m8.g
        public final List<Message> d() {
            return this.f41910c;
        }

        public final boolean e() {
            return this.f41913f;
        }

        @m8.g
        public final Map<Integer, String> f() {
            return this.f41914g;
        }

        public final boolean g() {
            return this.f41915h;
        }

        @m8.h
        public final String h() {
            return this.f41909b;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public /* synthetic */ a(int r12, java.lang.String r13, java.util.List r14, com.im.freechat.shared.entities.message.Message.ExtraMessageType r15, java.util.List r16, boolean r17, java.util.Map r18, boolean r19, int r20, kotlin.jvm.internal.DefaultConstructorMarker r21) {
            /*
                r11 = this;
                r0 = r20
                r1 = r0 & 4
                if (r1 == 0) goto Lc
                java.util.List r1 = kotlin.collections.CollectionsKt.emptyList()
                r5 = r1
                goto Ld
            Lc:
                r5 = r14
            Ld:
                r1 = r0 & 8
                if (r1 == 0) goto L14
                r1 = 0
                r6 = r1
                goto L15
            L14:
                r6 = r15
            L15:
                r1 = r0 & 16
                if (r1 == 0) goto L1f
                java.util.List r1 = kotlin.collections.CollectionsKt.emptyList()
                r7 = r1
                goto L21
            L1f:
                r7 = r16
            L21:
                r1 = r0 & 32
                r2 = 0
                if (r1 == 0) goto L28
                r8 = 0
                goto L2a
            L28:
                r8 = r17
            L2a:
                r1 = r0 & 64
                if (r1 == 0) goto L34
                java.util.Map r1 = kotlin.collections.MapsKt.emptyMap()
                r9 = r1
                goto L36
            L34:
                r9 = r18
            L36:
                r0 = r0 & 128(0x80, float:1.794E-43)
                if (r0 == 0) goto L3c
                r10 = 0
                goto L3e
            L3c:
                r10 = r19
            L3e:
                r2 = r11
                r3 = r12
                r4 = r13
                r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.messages.j.a.<init>(int, java.lang.String, java.util.List, com.im.freechat.shared.entities.message.Message$ExtraMessageType, java.util.List, boolean, java.util.Map, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }
}
