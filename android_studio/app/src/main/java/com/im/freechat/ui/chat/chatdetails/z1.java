package com.im.freechat.ui.chat.chatdetails;

import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.shared.entities.message.Message;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChatDetailsViewModel.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b#\u0010$J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\t\u0010\u0005\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\u0012\u0010\t\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003J@\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00062\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b2\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0013\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0014\u001a\u00020\bHÖ\u0001J\u0013\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\f\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\r\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0019\u0010\u000e\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\u001e\u001a\u0004\b\u001f\u0010\nR\u001d\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010 \u001a\u0004\b!\u0010\"¨\u0006%"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/z1;", "", "", "Lcom/im/freechat/shared/entities/message/Message;", "h", "a", "Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;", "b", "", "c", "()Ljava/lang/Integer;", "d", "extraMessage", "extraMessageType", "originalChat", "additionalMessages", "e", "(Lcom/im/freechat/shared/entities/message/Message;Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;Ljava/lang/Integer;Ljava/util/List;)Lcom/im/freechat/ui/chat/chatdetails/z1;", "", "toString", "hashCode", "other", "", "equals", "Lcom/im/freechat/shared/entities/message/Message;", ContextChain.TAG_INFRA, "()Lcom/im/freechat/shared/entities/message/Message;", "Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;", "j", "()Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;", "Ljava/lang/Integer;", "k", "Ljava/util/List;", "g", "()Ljava/util/List;", "<init>", "(Lcom/im/freechat/shared/entities/message/Message;Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;Ljava/lang/Integer;Ljava/util/List;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class z1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Message f42686a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Message.ExtraMessageType f42687b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private final Integer f42688c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final List<Message> f42689d;

    public z1(@m8.g Message extraMessage, @m8.g Message.ExtraMessageType extraMessageType, @m8.h Integer num, @m8.g List<Message> additionalMessages) {
        Intrinsics.checkNotNullParameter(extraMessage, "extraMessage");
        Intrinsics.checkNotNullParameter(extraMessageType, "extraMessageType");
        Intrinsics.checkNotNullParameter(additionalMessages, "additionalMessages");
        this.f42686a = extraMessage;
        this.f42687b = extraMessageType;
        this.f42688c = num;
        this.f42689d = additionalMessages;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ z1 f(z1 z1Var, Message message, Message.ExtraMessageType extraMessageType, Integer num, List list, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            message = z1Var.f42686a;
        }
        if ((i4 & 2) != 0) {
            extraMessageType = z1Var.f42687b;
        }
        if ((i4 & 4) != 0) {
            num = z1Var.f42688c;
        }
        if ((i4 & 8) != 0) {
            list = z1Var.f42689d;
        }
        return z1Var.e(message, extraMessageType, num, list);
    }

    @m8.g
    public final Message a() {
        return this.f42686a;
    }

    @m8.g
    public final Message.ExtraMessageType b() {
        return this.f42687b;
    }

    @m8.h
    public final Integer c() {
        return this.f42688c;
    }

    @m8.g
    public final List<Message> d() {
        return this.f42689d;
    }

    @m8.g
    public final z1 e(@m8.g Message extraMessage, @m8.g Message.ExtraMessageType extraMessageType, @m8.h Integer num, @m8.g List<Message> additionalMessages) {
        Intrinsics.checkNotNullParameter(extraMessage, "extraMessage");
        Intrinsics.checkNotNullParameter(extraMessageType, "extraMessageType");
        Intrinsics.checkNotNullParameter(additionalMessages, "additionalMessages");
        return new z1(extraMessage, extraMessageType, num, additionalMessages);
    }

    public boolean equals(@m8.h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof z1) {
            z1 z1Var = (z1) obj;
            return Intrinsics.areEqual(this.f42686a, z1Var.f42686a) && this.f42687b == z1Var.f42687b && Intrinsics.areEqual(this.f42688c, z1Var.f42688c) && Intrinsics.areEqual(this.f42689d, z1Var.f42689d);
        }
        return false;
    }

    @m8.g
    public final List<Message> g() {
        return this.f42689d;
    }

    @m8.g
    public final List<Message> h() {
        List<Message> plus;
        plus = CollectionsKt___CollectionsKt.plus((Collection<? extends Message>) ((Collection<? extends Object>) this.f42689d), this.f42686a);
        return plus;
    }

    public int hashCode() {
        int hashCode = ((this.f42686a.hashCode() * 31) + this.f42687b.hashCode()) * 31;
        Integer num = this.f42688c;
        return ((hashCode + (num == null ? 0 : num.hashCode())) * 31) + this.f42689d.hashCode();
    }

    @m8.g
    public final Message i() {
        return this.f42686a;
    }

    @m8.g
    public final Message.ExtraMessageType j() {
        return this.f42687b;
    }

    @m8.h
    public final Integer k() {
        return this.f42688c;
    }

    @m8.g
    public String toString() {
        return "ExtraMessageInfo(extraMessage=" + this.f42686a + ", extraMessageType=" + this.f42687b + ", originalChat=" + this.f42688c + ", additionalMessages=" + this.f42689d + ')';
    }

    public /* synthetic */ z1(Message message, Message.ExtraMessageType extraMessageType, Integer num, List list, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(message, extraMessageType, (i4 & 4) != 0 ? null : num, (i4 & 8) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
    }
}
