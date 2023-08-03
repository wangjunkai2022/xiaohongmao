package com.im.freechat.domain;

import com.im.freechat.shared.entities.SocketEvent;
import com.im.freechat.shared.entities.TypingEvent;
import com.im.freechat.shared.entities.auth.UserInfo;
import kotlin.Metadata;

/* compiled from: WebSocketRepository.kt */
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J&\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H&J\b\u0010\f\u001a\u00020\u000bH&J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH&J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH&J\u001f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH&¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\t0\bH&J\u000e\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00060\bH&¨\u0006\u0016"}, d2 = {"Lcom/im/freechat/domain/u;", "", "Lcom/im/freechat/shared/entities/auth/UserInfo;", "selfUser", "", "deviceToken", "", "timeoutEnabled", "Lkotlinx/coroutines/flow/i;", "Lcom/im/freechat/shared/entities/SocketEvent;", "f", "", "c", "", k4.b.f84734a, "a", "e", "Lcom/im/freechat/shared/entities/TypingEvent;", "b", "(Ljava/lang/Integer;)Lkotlinx/coroutines/flow/i;", "d", "listenConnectionState", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public interface u {
    void a(int i4);

    @m8.g
    kotlinx.coroutines.flow.i<TypingEvent> b(@m8.h Integer num);

    void c();

    @m8.g
    kotlinx.coroutines.flow.i<SocketEvent> d();

    void e(int i4);

    @m8.g
    kotlinx.coroutines.flow.i<SocketEvent> f(@m8.g UserInfo userInfo, @m8.g String str, boolean z9);

    @m8.g
    kotlinx.coroutines.flow.i<Boolean> listenConnectionState();
}
