package com.im.freechat.data.openapigen.models;

import com.squareup.moshi.g;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: MediaGroupItemsInner.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\r\u001a\u00020\u00002\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;", "", "photo", "Lcom/im/freechat/data/openapigen/models/Photo;", "video", "Lcom/im/freechat/data/openapigen/models/Video;", "(Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;)V", "getPhoto", "()Lcom/im/freechat/data/openapigen/models/Photo;", "getVideo", "()Lcom/im/freechat/data/openapigen/models/Video;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class MediaGroupItemsInner {
    @h
    private final Photo photo;
    @h
    private final Video video;

    public MediaGroupItemsInner() {
        this(null, null, 3, null);
    }

    public MediaGroupItemsInner(@g(name = "photo") @h Photo photo, @g(name = "video") @h Video video) {
        this.photo = photo;
        this.video = video;
    }

    public static /* synthetic */ MediaGroupItemsInner copy$default(MediaGroupItemsInner mediaGroupItemsInner, Photo photo, Video video, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            photo = mediaGroupItemsInner.photo;
        }
        if ((i4 & 2) != 0) {
            video = mediaGroupItemsInner.video;
        }
        return mediaGroupItemsInner.copy(photo, video);
    }

    @h
    public final Photo component1() {
        return this.photo;
    }

    @h
    public final Video component2() {
        return this.video;
    }

    @m8.g
    public final MediaGroupItemsInner copy(@g(name = "photo") @h Photo photo, @g(name = "video") @h Video video) {
        return new MediaGroupItemsInner(photo, video);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MediaGroupItemsInner) {
            MediaGroupItemsInner mediaGroupItemsInner = (MediaGroupItemsInner) obj;
            return Intrinsics.areEqual(this.photo, mediaGroupItemsInner.photo) && Intrinsics.areEqual(this.video, mediaGroupItemsInner.video);
        }
        return false;
    }

    @h
    public final Photo getPhoto() {
        return this.photo;
    }

    @h
    public final Video getVideo() {
        return this.video;
    }

    public int hashCode() {
        Photo photo = this.photo;
        int hashCode = (photo == null ? 0 : photo.hashCode()) * 31;
        Video video = this.video;
        return hashCode + (video != null ? video.hashCode() : 0);
    }

    @m8.g
    public String toString() {
        return "MediaGroupItemsInner(photo=" + this.photo + ", video=" + this.video + ')';
    }

    public /* synthetic */ MediaGroupItemsInner(Photo photo, Video video, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : photo, (i4 & 2) != 0 ? null : video);
    }
}
