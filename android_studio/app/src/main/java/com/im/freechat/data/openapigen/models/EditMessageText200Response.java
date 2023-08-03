package com.im.freechat.data.openapigen.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: EditMessageText200Response.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;", "", "code", "", "msg", "", "(ILjava/lang/String;)V", "getCode", "()I", "getMsg", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class EditMessageText200Response {
    private final int code;
    @g
    private final String msg;

    public EditMessageText200Response() {
        this(0, null, 3, null);
    }

    public EditMessageText200Response(@com.squareup.moshi.g(name = "code") int i4, @com.squareup.moshi.g(name = "msg") @g String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        this.code = i4;
        this.msg = msg;
    }

    public static /* synthetic */ EditMessageText200Response copy$default(EditMessageText200Response editMessageText200Response, int i4, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = editMessageText200Response.code;
        }
        if ((i10 & 2) != 0) {
            str = editMessageText200Response.msg;
        }
        return editMessageText200Response.copy(i4, str);
    }

    public final int component1() {
        return this.code;
    }

    @g
    public final String component2() {
        return this.msg;
    }

    @g
    public final EditMessageText200Response copy(@com.squareup.moshi.g(name = "code") int i4, @com.squareup.moshi.g(name = "msg") @g String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        return new EditMessageText200Response(i4, msg);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof EditMessageText200Response) {
            EditMessageText200Response editMessageText200Response = (EditMessageText200Response) obj;
            return this.code == editMessageText200Response.code && Intrinsics.areEqual(this.msg, editMessageText200Response.msg);
        }
        return false;
    }

    public final int getCode() {
        return this.code;
    }

    @g
    public final String getMsg() {
        return this.msg;
    }

    public int hashCode() {
        return (this.code * 31) + this.msg.hashCode();
    }

    @g
    public String toString() {
        return "EditMessageText200Response(code=" + this.code + ", msg=" + this.msg + ')';
    }

    public /* synthetic */ EditMessageText200Response(int i4, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0 : i4, (i10 & 2) != 0 ? "ok" : str);
    }
}
