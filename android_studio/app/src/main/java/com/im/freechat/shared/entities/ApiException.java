package com.im.freechat.shared.entities;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: ApiException.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/im/freechat/shared/entities/ApiException;", "Ljava/lang/Exception;", "code", "", "message", "", "(ILjava/lang/String;)V", "getCode", "()I", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ApiException extends Exception {
    private final int code;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApiException(int i4, @g String message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
        this.code = i4;
    }

    public final int getCode() {
        return this.code;
    }
}
