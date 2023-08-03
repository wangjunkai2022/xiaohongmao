package com.giphy.sdk.core.models;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import com.giphy.sdk.core.models.enums.MediaType;
import com.google.gson.annotations.SerializedName;
import io.sentry.g4;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Channel.kt */
@d
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b(\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012\u0012\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0012¢\u0006\u0002\u0010\u0015J\t\u0010:\u001a\u00020\u0003HÖ\u0001J\u0019\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020\u0003HÖ\u0001R\"\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R \u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR \u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R \u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001b\"\u0004\b#\u0010\u001dR \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u001b\"\u0004\b%\u0010\u001dR \u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R \u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u001b\"\u0004\b/\u0010\u001dR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\u001b\"\u0004\b1\u0010\u001dR\"\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u0017\"\u0004\b3\u0010\u0019R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u001b\"\u0004\b5\u0010\u001dR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00107\"\u0004\b8\u00109¨\u0006@"}, d2 = {"Lcom/giphy/sdk/core/models/Channel;", "Landroid/os/Parcelable;", "id", "", "slug", "", "displayName", "shortDisplayName", "type", "contentType", "Lcom/giphy/sdk/core/models/enums/MediaType;", "descriptionText", "bannerImage", "featuredGif", "Lcom/giphy/sdk/core/models/Media;", "user", "Lcom/giphy/sdk/core/models/User;", "tags", "", "Lcom/giphy/sdk/core/models/ChannelTag;", "ancestors", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/core/models/User;Ljava/util/List;Ljava/util/List;)V", "getAncestors", "()Ljava/util/List;", "setAncestors", "(Ljava/util/List;)V", "getBannerImage", "()Ljava/lang/String;", "setBannerImage", "(Ljava/lang/String;)V", "getContentType", "()Lcom/giphy/sdk/core/models/enums/MediaType;", "setContentType", "(Lcom/giphy/sdk/core/models/enums/MediaType;)V", "getDescriptionText", "setDescriptionText", "getDisplayName", "setDisplayName", "getFeaturedGif", "()Lcom/giphy/sdk/core/models/Media;", "setFeaturedGif", "(Lcom/giphy/sdk/core/models/Media;)V", "getId", "()I", "setId", "(I)V", "getShortDisplayName", "setShortDisplayName", "getSlug", "setSlug", "getTags", "setTags", "getType", "setType", "getUser", "()Lcom/giphy/sdk/core/models/User;", "setUser", "(Lcom/giphy/sdk/core/models/User;)V", "describeContents", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class Channel implements Parcelable {
    public static final Parcelable.Creator<Channel> CREATOR = new Creator();
    @h
    private List<Channel> ancestors;
    @SerializedName("banner_image")
    @h
    private String bannerImage;
    @SerializedName(g4.b.f83237a)
    @h
    private MediaType contentType;
    @SerializedName("description")
    @h
    private String descriptionText;
    @SerializedName("display_name")
    @h
    private String displayName;
    @SerializedName("featured_gif")
    @h
    private Media featuredGif;
    private int id;
    @SerializedName("short_display_name")
    @h
    private String shortDisplayName;
    @h
    private String slug;
    @h
    private List<ChannelTag> tags;
    @h
    private String type;
    @h
    private User user;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static class Creator implements Parcelable.Creator<Channel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final Channel createFromParcel(@g Parcel in) {
            ArrayList arrayList;
            Intrinsics.checkNotNullParameter(in, "in");
            int readInt = in.readInt();
            String readString = in.readString();
            String readString2 = in.readString();
            String readString3 = in.readString();
            String readString4 = in.readString();
            ArrayList arrayList2 = null;
            MediaType mediaType = in.readInt() != 0 ? (MediaType) Enum.valueOf(MediaType.class, in.readString()) : null;
            String readString5 = in.readString();
            String readString6 = in.readString();
            Media createFromParcel = in.readInt() != 0 ? Media.CREATOR.createFromParcel(in) : null;
            User createFromParcel2 = in.readInt() != 0 ? User.CREATOR.createFromParcel(in) : null;
            if (in.readInt() != 0) {
                int readInt2 = in.readInt();
                arrayList = new ArrayList(readInt2);
                while (readInt2 != 0) {
                    arrayList.add(ChannelTag.CREATOR.createFromParcel(in));
                    readInt2--;
                }
            } else {
                arrayList = null;
            }
            if (in.readInt() != 0) {
                int readInt3 = in.readInt();
                arrayList2 = new ArrayList(readInt3);
                while (readInt3 != 0) {
                    arrayList2.add(Channel.CREATOR.createFromParcel(in));
                    readInt3--;
                }
            }
            return new Channel(readInt, readString, readString2, readString3, readString4, mediaType, readString5, readString6, createFromParcel, createFromParcel2, arrayList, arrayList2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final Channel[] newArray(int i4) {
            return new Channel[i4];
        }
    }

    public Channel(int i4, @h String str, @h String str2, @h String str3, @h String str4, @h MediaType mediaType, @h String str5, @h String str6, @h Media media, @h User user, @h List<ChannelTag> list, @h List<Channel> list2) {
        this.id = i4;
        this.slug = str;
        this.displayName = str2;
        this.shortDisplayName = str3;
        this.type = str4;
        this.contentType = mediaType;
        this.descriptionText = str5;
        this.bannerImage = str6;
        this.featuredGif = media;
        this.user = user;
        this.tags = list;
        this.ancestors = list2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @h
    public final List<Channel> getAncestors() {
        return this.ancestors;
    }

    @h
    public final String getBannerImage() {
        return this.bannerImage;
    }

    @h
    public final MediaType getContentType() {
        return this.contentType;
    }

    @h
    public final String getDescriptionText() {
        return this.descriptionText;
    }

    @h
    public final String getDisplayName() {
        return this.displayName;
    }

    @h
    public final Media getFeaturedGif() {
        return this.featuredGif;
    }

    public final int getId() {
        return this.id;
    }

    @h
    public final String getShortDisplayName() {
        return this.shortDisplayName;
    }

    @h
    public final String getSlug() {
        return this.slug;
    }

    @h
    public final List<ChannelTag> getTags() {
        return this.tags;
    }

    @h
    public final String getType() {
        return this.type;
    }

    @h
    public final User getUser() {
        return this.user;
    }

    public final void setAncestors(@h List<Channel> list) {
        this.ancestors = list;
    }

    public final void setBannerImage(@h String str) {
        this.bannerImage = str;
    }

    public final void setContentType(@h MediaType mediaType) {
        this.contentType = mediaType;
    }

    public final void setDescriptionText(@h String str) {
        this.descriptionText = str;
    }

    public final void setDisplayName(@h String str) {
        this.displayName = str;
    }

    public final void setFeaturedGif(@h Media media) {
        this.featuredGif = media;
    }

    public final void setId(int i4) {
        this.id = i4;
    }

    public final void setShortDisplayName(@h String str) {
        this.shortDisplayName = str;
    }

    public final void setSlug(@h String str) {
        this.slug = str;
    }

    public final void setTags(@h List<ChannelTag> list) {
        this.tags = list;
    }

    public final void setType(@h String str) {
        this.type = str;
    }

    public final void setUser(@h User user) {
        this.user = user;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel parcel, int i4) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeInt(this.id);
        parcel.writeString(this.slug);
        parcel.writeString(this.displayName);
        parcel.writeString(this.shortDisplayName);
        parcel.writeString(this.type);
        MediaType mediaType = this.contentType;
        if (mediaType != null) {
            parcel.writeInt(1);
            parcel.writeString(mediaType.name());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.descriptionText);
        parcel.writeString(this.bannerImage);
        Media media = this.featuredGif;
        if (media != null) {
            parcel.writeInt(1);
            media.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        User user = this.user;
        if (user != null) {
            parcel.writeInt(1);
            user.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        List<ChannelTag> list = this.tags;
        if (list != null) {
            parcel.writeInt(1);
            parcel.writeInt(list.size());
            for (ChannelTag channelTag : list) {
                channelTag.writeToParcel(parcel, 0);
            }
        } else {
            parcel.writeInt(0);
        }
        List<Channel> list2 = this.ancestors;
        if (list2 == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeInt(list2.size());
        for (Channel channel : list2) {
            channel.writeToParcel(parcel, 0);
        }
    }

    public /* synthetic */ Channel(int i4, String str, String str2, String str3, String str4, MediaType mediaType, String str5, String str6, Media media, User user, List list, List list2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, str, str2, str3, str4, (i10 & 32) != 0 ? null : mediaType, str5, str6, media, user, list, list2);
    }
}
