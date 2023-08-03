package com.im.freechat.data.sources.api.entities.contact;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: RelationOperationBody.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/contact/RelationOperationBody;", "", "type", "", "toUserId", "", "(Ljava/lang/String;I)V", "getToUserId", "()I", "getType", "()Ljava/lang/String;", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class RelationOperationBody {
    private final int toUserId;
    @g
    private final String type;

    public RelationOperationBody(@com.squareup.moshi.g(name = "type") @g String type, @com.squareup.moshi.g(name = "to_user_id") int i4) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.toUserId = i4;
    }

    public final int getToUserId() {
        return this.toUserId;
    }

    @g
    public final String getType() {
        return this.type;
    }
}
