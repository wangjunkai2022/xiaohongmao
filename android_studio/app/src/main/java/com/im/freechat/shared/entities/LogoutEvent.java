package com.im.freechat.shared.entities;

import kotlin.Metadata;
import m8.g;

/* compiled from: SocketEvent.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/im/freechat/shared/entities/LogoutEvent;", "Lcom/im/freechat/shared/entities/SocketEvent;", "()V", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LogoutEvent extends SocketEvent {
    @g
    public static final LogoutEvent INSTANCE = new LogoutEvent();

    private LogoutEvent() {
        super(null);
    }
}
