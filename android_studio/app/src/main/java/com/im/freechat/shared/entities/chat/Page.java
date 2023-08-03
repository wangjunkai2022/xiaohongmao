package com.im.freechat.shared.entities.chat;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: Page.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B#\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/im/freechat/shared/entities/chat/Page;", "", "messages", "", "hasNext", "", "hasPrevious", "(Ljava/util/List;ZZ)V", "getHasNext", "()Z", "getHasPrevious", "getMessages", "()Ljava/util/List;", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class Page {
    private final boolean hasNext;
    private final boolean hasPrevious;
    @g
    private final List<Object> messages;

    public Page(@g List<? extends Object> messages, boolean z9, boolean z10) {
        Intrinsics.checkNotNullParameter(messages, "messages");
        this.messages = messages;
        this.hasNext = z9;
        this.hasPrevious = z10;
    }

    public final boolean getHasNext() {
        return this.hasNext;
    }

    public final boolean getHasPrevious() {
        return this.hasPrevious;
    }

    @g
    public final List<Object> getMessages() {
        return this.messages;
    }
}
