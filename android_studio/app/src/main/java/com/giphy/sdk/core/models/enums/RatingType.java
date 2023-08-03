package com.giphy.sdk.core.models.enums;

import io.sentry.protocol.y;
import kotlin.Metadata;
import m8.g;

/* compiled from: RatingType.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/giphy/sdk/core/models/enums/RatingType;", "", "rating", "", "(Ljava/lang/String;ILjava/lang/String;)V", "toString", "r", y.b.f83920h, "g", "pg", "pg13", "unrated", "nsfw", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public enum RatingType {
    r("r"),
    y(y.b.f83920h),
    g("g"),
    pg("pg"),
    pg13("pg-13"),
    unrated("unrated"),
    nsfw("nsfw");
    
    private final String rating;

    RatingType(String str) {
        this.rating = str;
    }

    @Override // java.lang.Enum
    @g
    public String toString() {
        return this.rating;
    }
}
