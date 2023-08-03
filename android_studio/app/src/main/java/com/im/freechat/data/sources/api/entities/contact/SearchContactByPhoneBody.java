package com.im.freechat.data.sources.api.entities.contact;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: SearchContactByPhoneBody.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\b\u0001\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005R\u0019\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/contact/SearchContactByPhoneBody;", "", "phones", "", "", "([Ljava/lang/String;)V", "getPhones", "()[Ljava/lang/String;", "[Ljava/lang/String;", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class SearchContactByPhoneBody {
    @g
    private final String[] phones;

    public SearchContactByPhoneBody(@com.squareup.moshi.g(name = "phones") @g String[] phones) {
        Intrinsics.checkNotNullParameter(phones, "phones");
        this.phones = phones;
    }

    @g
    public final String[] getPhones() {
        return this.phones;
    }
}
