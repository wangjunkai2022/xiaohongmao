package com.im.freechat.data.sources.api.entities.contact;

import com.qennnsad.aknkaksd.data.repository.f;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: GetContactListBody.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/contact/GetContactListBody;", "", "type", "", f.f47745b, "", f.f47744a, "(Ljava/lang/String;II)V", "getPage", "()I", "getSize", "getType", "()Ljava/lang/String;", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class GetContactListBody {
    private final int page;
    private final int size;
    @g
    private final String type;

    public GetContactListBody(@com.squareup.moshi.g(name = "type") @g String type, @com.squareup.moshi.g(name = "size") int i4, @com.squareup.moshi.g(name = "page") int i10) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.size = i4;
        this.page = i10;
    }

    public final int getPage() {
        return this.page;
    }

    public final int getSize() {
        return this.size;
    }

    @g
    public final String getType() {
        return this.type;
    }
}
