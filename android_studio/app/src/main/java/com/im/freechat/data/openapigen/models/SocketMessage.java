package com.im.freechat.data.openapigen.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: SocketMessage.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/im/freechat/data/openapigen/models/SocketMessage;", "", "className", "", "getClassName", "()Ljava/lang/String;", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public interface SocketMessage {

    /* compiled from: SocketMessage.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class DefaultImpls {
        @g
        public static String getClassName(@g SocketMessage socketMessage) {
            String simpleName = socketMessage.getClass().getSimpleName();
            Intrinsics.checkNotNullExpressionValue(simpleName, "this::class.java.simpleName");
            return simpleName;
        }
    }

    @g
    String getClassName();
}
