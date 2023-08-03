package com.im.freechat.shared.entities;

import io.sentry.protocol.t;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: ChatMemberInfo.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0003\t\n\u000bB\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0011\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0000H\u0096\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0003\f\r\u000e¨\u0006\u000f"}, d2 = {"Lcom/im/freechat/shared/entities/Type;", "", t.b.f83857b, "", "(I)V", "getPriority", "()I", "compareTo", "other", "ChatMemberMask", "LocalMask", "NicknameMask", "Lcom/im/freechat/shared/entities/Type$ChatMemberMask;", "Lcom/im/freechat/shared/entities/Type$LocalMask;", "Lcom/im/freechat/shared/entities/Type$NicknameMask;", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class Type implements Comparable<Type> {
    private final int priority;

    /* compiled from: ChatMemberInfo.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/im/freechat/shared/entities/Type$ChatMemberMask;", "Lcom/im/freechat/shared/entities/Type;", "()V", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class ChatMemberMask extends Type {
        @g
        public static final ChatMemberMask INSTANCE = new ChatMemberMask();

        private ChatMemberMask() {
            super(2, null);
        }
    }

    /* compiled from: ChatMemberInfo.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/im/freechat/shared/entities/Type$LocalMask;", "Lcom/im/freechat/shared/entities/Type;", "()V", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class LocalMask extends Type {
        @g
        public static final LocalMask INSTANCE = new LocalMask();

        private LocalMask() {
            super(3, null);
        }
    }

    /* compiled from: ChatMemberInfo.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/im/freechat/shared/entities/Type$NicknameMask;", "Lcom/im/freechat/shared/entities/Type;", "()V", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class NicknameMask extends Type {
        @g
        public static final NicknameMask INSTANCE = new NicknameMask();

        private NicknameMask() {
            super(2, null);
        }
    }

    private Type(int i4) {
        this.priority = i4;
    }

    public /* synthetic */ Type(int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4);
    }

    public final int getPriority() {
        return this.priority;
    }

    @Override // java.lang.Comparable
    public int compareTo(@g Type other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return this.priority - other.priority;
    }
}
