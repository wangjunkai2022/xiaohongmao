package com.im.freechat.domain;

import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.shared.entities.LoginState;
import com.im.freechat.shared.entities.auth.PhoneNumber;
import com.im.freechat.shared.entities.auth.UserInfo;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* compiled from: LoginRepository.kt */
@Metadata(bv = {}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\t\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018\u00002\u00020\u0001J\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J7\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH¦@ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\n\u0010\u0010\u001a\u0004\u0018\u00010\tH&J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\tH&J\u0013\u0010\u0013\u001a\u00020\tH¦@ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\fH¦@ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017JU\u0010 \u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\t2\b\u0010\u0019\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\u001eH¦@ø\u0001\u0000¢\u0006\u0004\b \u0010!J\u0013\u0010\"\u001a\u00020\fH¦@ø\u0001\u0000¢\u0006\u0004\b\"\u0010\u0014J\b\u0010#\u001a\u00020\u0007H&J\u0013\u0010$\u001a\u00020\tH¦@ø\u0001\u0000¢\u0006\u0004\b$\u0010\u0014J\u001b\u0010&\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\tH¦@ø\u0001\u0000¢\u0006\u0004\b&\u0010'J\u001b\u0010)\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\rH¦@ø\u0001\u0000¢\u0006\u0004\b)\u0010*J\b\u0010+\u001a\u00020\rH&J\u001b\u0010,\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\rH¦@ø\u0001\u0000¢\u0006\u0004\b,\u0010*J\b\u0010-\u001a\u00020\rH&J\u001b\u0010/\u001a\u00020\u00042\u0006\u0010.\u001a\u00020\u0007H¦@ø\u0001\u0000¢\u0006\u0004\b/\u00100J\b\u00101\u001a\u00020\u0007H&J\n\u00102\u001a\u0004\u0018\u00010\tH&J\u0013\u00103\u001a\u00020\u0004H¦@ø\u0001\u0000¢\u0006\u0004\b3\u0010\u0014J\u000e\u00106\u001a\b\u0012\u0004\u0012\u00020504H&J\u0013\u00107\u001a\u00020\rH¦@ø\u0001\u0000¢\u0006\u0004\b7\u0010\u0014J\u0013\u00108\u001a\u00020\u001eH¦@ø\u0001\u0000¢\u0006\u0004\b8\u0010\u0014J\u001b\u0010:\u001a\u00020\u00042\u0006\u00109\u001a\u00020\u001eH¦@ø\u0001\u0000¢\u0006\u0004\b:\u0010;\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006<"}, d2 = {"Lcom/im/freechat/domain/k;", "", "Lcom/im/freechat/shared/entities/auth/PhoneNumber;", "phoneNumber", "", "b", "(Lcom/im/freechat/shared/entities/auth/PhoneNumber;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "smsCode", "", "deviceId", "Lkotlin/Pair;", "Lcom/im/freechat/shared/entities/auth/UserInfo;", "", "f", "(Lcom/im/freechat/shared/entities/auth/PhoneNumber;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "m", "token", "g", "c", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "userInfo", "p", "(Lcom/im/freechat/shared/entities/auth/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "nickName", "avatar", "userId", "role", "isMystery", "imToken", "", "lastSeen", "j", "(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "v", "n", "q", "code", "a", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "enabled", "d", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "e", "r", "k", "height", "l", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "o", "u", "t", "Lkotlinx/coroutines/flow/i;", "Lcom/im/freechat/shared/entities/LoginState;", ContextChain.TAG_INFRA, "h", "w", com.qennnsad.aknkaksd.domain.usecase.anchor.j.f47980a, "s", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public interface k {
    @m8.h
    Object a(@m8.g String str, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object b(@m8.g PhoneNumber phoneNumber, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object c(@m8.g Continuation<? super String> continuation);

    @m8.h
    Object d(boolean z9, @m8.g Continuation<? super Unit> continuation);

    boolean e();

    @m8.h
    Object f(@m8.g PhoneNumber phoneNumber, int i4, @m8.g String str, @m8.g Continuation<? super Pair<UserInfo, Boolean>> continuation);

    void g(@m8.g String str);

    @m8.h
    Object h(@m8.g Continuation<? super Boolean> continuation);

    @m8.g
    kotlinx.coroutines.flow.i<LoginState> i();

    @m8.h
    Object j(@m8.g String str, @m8.h String str2, int i4, int i10, boolean z9, @m8.g String str3, @m8.g String str4, long j4, @m8.g Continuation<? super Unit> continuation);

    boolean k();

    @m8.h
    Object l(int i4, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    String m();

    int n();

    int o();

    @m8.h
    Object p(@m8.g UserInfo userInfo, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object q(@m8.g Continuation<? super String> continuation);

    @m8.h
    Object r(boolean z9, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object s(long j4, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object t(@m8.g Continuation<? super Unit> continuation);

    @m8.h
    String u();

    @m8.h
    Object v(@m8.g Continuation<? super UserInfo> continuation);

    @m8.h
    Object w(@m8.g Continuation<? super Long> continuation);
}
