package com.im.freechat.data.sources.api.entities.banner;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: BannerResponse.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u00002\u00020\u0001B7\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0001\u0010\b\u001a\u00020\u0005¢\u0006\u0002\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;", "", "id", "", "link", "", "path", "pathSmall", "pathBig", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()I", "getLink", "()Ljava/lang/String;", "getPath", "getPathBig", "getPathSmall", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class BannerResponse {
    private final int id;
    @g
    private final String link;
    @g
    private final String path;
    @g
    private final String pathBig;
    @g
    private final String pathSmall;

    public BannerResponse(@com.squareup.moshi.g(name = "id") int i4, @com.squareup.moshi.g(name = "link") @g String link, @com.squareup.moshi.g(name = "path_original") @g String path, @com.squareup.moshi.g(name = "path_small") @g String pathSmall, @com.squareup.moshi.g(name = "path_big") @g String pathBig) {
        Intrinsics.checkNotNullParameter(link, "link");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(pathSmall, "pathSmall");
        Intrinsics.checkNotNullParameter(pathBig, "pathBig");
        this.id = i4;
        this.link = link;
        this.path = path;
        this.pathSmall = pathSmall;
        this.pathBig = pathBig;
    }

    public final int getId() {
        return this.id;
    }

    @g
    public final String getLink() {
        return this.link;
    }

    @g
    public final String getPath() {
        return this.path;
    }

    @g
    public final String getPathBig() {
        return this.pathBig;
    }

    @g
    public final String getPathSmall() {
        return this.pathSmall;
    }
}
