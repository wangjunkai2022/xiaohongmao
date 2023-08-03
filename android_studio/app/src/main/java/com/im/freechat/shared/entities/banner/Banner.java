package com.im.freechat.shared.entities.banner;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Banner.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J;\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\r¨\u0006\u001c"}, d2 = {"Lcom/im/freechat/shared/entities/banner/Banner;", "", "id", "", "link", "", "path", "pathSmall", "pathBig", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()I", "getLink", "()Ljava/lang/String;", "getPath", "getPathBig", "getPathSmall", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class Banner {
    private final int id;
    @g
    private final String link;
    @g
    private final String path;
    @g
    private final String pathBig;
    @g
    private final String pathSmall;

    public Banner(int i4, @g String link, @g String path, @g String pathSmall, @g String pathBig) {
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

    public static /* synthetic */ Banner copy$default(Banner banner, int i4, String str, String str2, String str3, String str4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = banner.id;
        }
        if ((i10 & 2) != 0) {
            str = banner.link;
        }
        String str5 = str;
        if ((i10 & 4) != 0) {
            str2 = banner.path;
        }
        String str6 = str2;
        if ((i10 & 8) != 0) {
            str3 = banner.pathSmall;
        }
        String str7 = str3;
        if ((i10 & 16) != 0) {
            str4 = banner.pathBig;
        }
        return banner.copy(i4, str5, str6, str7, str4);
    }

    public final int component1() {
        return this.id;
    }

    @g
    public final String component2() {
        return this.link;
    }

    @g
    public final String component3() {
        return this.path;
    }

    @g
    public final String component4() {
        return this.pathSmall;
    }

    @g
    public final String component5() {
        return this.pathBig;
    }

    @g
    public final Banner copy(int i4, @g String link, @g String path, @g String pathSmall, @g String pathBig) {
        Intrinsics.checkNotNullParameter(link, "link");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(pathSmall, "pathSmall");
        Intrinsics.checkNotNullParameter(pathBig, "pathBig");
        return new Banner(i4, link, path, pathSmall, pathBig);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Banner) {
            Banner banner = (Banner) obj;
            return this.id == banner.id && Intrinsics.areEqual(this.link, banner.link) && Intrinsics.areEqual(this.path, banner.path) && Intrinsics.areEqual(this.pathSmall, banner.pathSmall) && Intrinsics.areEqual(this.pathBig, banner.pathBig);
        }
        return false;
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

    public int hashCode() {
        return (((((((this.id * 31) + this.link.hashCode()) * 31) + this.path.hashCode()) * 31) + this.pathSmall.hashCode()) * 31) + this.pathBig.hashCode();
    }

    @g
    public String toString() {
        return "Banner(id=" + this.id + ", link=" + this.link + ", path=" + this.path + ", pathSmall=" + this.pathSmall + ", pathBig=" + this.pathBig + ')';
    }
}
