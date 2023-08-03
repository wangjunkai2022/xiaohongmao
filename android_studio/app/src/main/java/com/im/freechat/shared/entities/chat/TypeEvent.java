package com.im.freechat.shared.entities.chat;

import com.google.android.exoplayer2.text.ttml.d;
import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: TypeEvent.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0017"}, d2 = {"Lcom/im/freechat/shared/entities/chat/TypeEvent;", "", "userSign", "", b.f84734a, "", d.f25725o0, "", "(ILjava/lang/String;Z)V", "getChatId", "()Ljava/lang/String;", "getStart", "()Z", "getUserSign", "()I", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "toString", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class TypeEvent {
    @g
    private final String chatId;
    private final boolean start;
    private final int userSign;

    public TypeEvent(int i4, @g String chatId, boolean z9) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        this.userSign = i4;
        this.chatId = chatId;
        this.start = z9;
    }

    public static /* synthetic */ TypeEvent copy$default(TypeEvent typeEvent, int i4, String str, boolean z9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = typeEvent.userSign;
        }
        if ((i10 & 2) != 0) {
            str = typeEvent.chatId;
        }
        if ((i10 & 4) != 0) {
            z9 = typeEvent.start;
        }
        return typeEvent.copy(i4, str, z9);
    }

    public final int component1() {
        return this.userSign;
    }

    @g
    public final String component2() {
        return this.chatId;
    }

    public final boolean component3() {
        return this.start;
    }

    @g
    public final TypeEvent copy(int i4, @g String chatId, boolean z9) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        return new TypeEvent(i4, chatId, z9);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TypeEvent) {
            TypeEvent typeEvent = (TypeEvent) obj;
            return this.userSign == typeEvent.userSign && Intrinsics.areEqual(this.chatId, typeEvent.chatId) && this.start == typeEvent.start;
        }
        return false;
    }

    @g
    public final String getChatId() {
        return this.chatId;
    }

    public final boolean getStart() {
        return this.start;
    }

    public final int getUserSign() {
        return this.userSign;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.userSign * 31) + this.chatId.hashCode()) * 31;
        boolean z9 = this.start;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        return hashCode + i4;
    }

    @g
    public String toString() {
        return "TypeEvent(userSign=" + this.userSign + ", chatId=" + this.chatId + ", start=" + this.start + ')';
    }
}
