package com.im.freechat.data.sources.websocket;

import com.im.freechat.data.openapigen.models.SocketMessage;
import kotlin.Metadata;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.t;
import m8.g;

/* compiled from: WsBinder.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J&\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH&J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H&J\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\u000eH&¨\u0006\u0010"}, d2 = {"Lcom/im/freechat/data/sources/websocket/WsBinder;", "", "Lcom/im/freechat/data/openapigen/models/SocketMessage;", "msg", "", "sendWebSocketMessage", "", "imToken", "deviceToken", "", "timeoutEnabled", "Lkotlinx/coroutines/flow/i;", "startSocket", "onTokenUpdate", "Lkotlinx/coroutines/flow/t;", "listenConnectionState", "data_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public interface WsBinder {
    @g
    t<Boolean> listenConnectionState();

    void onTokenUpdate(@g String str, @g String str2);

    void sendWebSocketMessage(@g SocketMessage socketMessage);

    @g
    i<SocketMessage> startSocket(@g String str, @g String str2, boolean z9);
}
