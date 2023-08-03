package com.giphy.sdk.core.models;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.VisibleForTesting;
import com.giphy.sdk.core.models.enums.MediaType;
import com.giphy.sdk.core.models.enums.RatingType;
import com.google.gson.annotations.SerializedName;
import io.sentry.protocol.c;
import io.sentry.protocol.v;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m.b;
import m8.g;
import m8.h;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: Media.kt */
@d
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b=\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001BÏ\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011\u0012\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001d\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001d\u0012\b\b\u0002\u0010!\u001a\u00020\"\u0012\b\b\u0002\u0010#\u001a\u00020\"\u0012\b\b\u0002\u0010$\u001a\u00020\"\u0012\b\b\u0002\u0010%\u001a\u00020\"\u0012\b\b\u0002\u0010&\u001a\u00020\"\u0012\b\b\u0002\u0010'\u001a\u00020\"\u0012\b\b\u0002\u0010(\u001a\u00020\"\u0012\b\b\u0002\u0010)\u001a\u00020\"\u0012\b\b\u0002\u0010*\u001a\u00020\"\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010,\u0012\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010/\u0012\b\b\u0002\u00100\u001a\u00020\"\u0012(\b\u0002\u00101\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u000102j\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u0001`3¢\u0006\u0002\u00104J\t\u0010p\u001a\u00020qHÖ\u0001J\u0006\u0010r\u001a\u00020sJ\u0019\u0010t\u001a\u00020s2\u0006\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020qHÖ\u0001R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u0018\u0010-\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u00106R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b8\u00106R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u00106R\u001e\u0010+\u001a\u0004\u0018\u00010,8\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u00106R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b?\u0010@R\u0013\u0010.\u001a\u0004\u0018\u00010/¢\u0006\b\n\u0000\u001a\u0004\bA\u0010BR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bC\u00106R\u001e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bD\u0010ER\u001e\u00100\u001a\u00020\"8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bJ\u00106\"\u0004\bK\u0010LR\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u0010N\"\u0004\bO\u0010PR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bQ\u0010@R\u0016\u0010%\u001a\u00020\"8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010GR\u0016\u0010$\u001a\u00020\"8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010GR\u0016\u0010*\u001a\u00020\"8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010GR\u0016\u0010&\u001a\u00020\"8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010GR\u0016\u0010!\u001a\u00020\"8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010GR\u0016\u0010(\u001a\u00020\"8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010GR\u0016\u0010'\u001a\u00020\"8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010GR\u0016\u0010#\u001a\u00020\"8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010GR\u0016\u0010)\u001a\u00020\"8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010GR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\bR\u0010SR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\bT\u00106R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\bU\u00106R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bV\u00106R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bW\u00106R\u0019\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\bX\u0010ER\u0013\u0010Y\u001a\u0004\u0018\u00010\u00038F¢\u0006\u0006\u001a\u0004\bZ\u00106R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b[\u00106R\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\\\u0010@R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\ba\u0010@R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bb\u00106\"\u0004\bc\u0010LR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bd\u0010e\"\u0004\bf\u0010gR:\u00101\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u000102j\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u0001`3X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bh\u0010i\"\u0004\bj\u0010kR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bl\u0010m\"\u0004\bn\u0010o¨\u0006x"}, d2 = {"Lcom/giphy/sdk/core/models/Media;", "Landroid/os/Parcelable;", "id", "", "type", "Lcom/giphy/sdk/core/models/enums/MediaType;", "slug", "url", "bitlyGifUrl", "bitlyUrl", "embedUrl", v.b.f83881a, MessageBundle.TITLE_ENTRY, "rating", "Lcom/giphy/sdk/core/models/enums/RatingType;", "contentUrl", "tags", "", "featuredTags", "user", "Lcom/giphy/sdk/core/models/User;", c.b.f83644b, "Lcom/giphy/sdk/core/models/Images;", "video", "Lcom/giphy/sdk/core/models/Video;", "analyticsResponsePayload", "sourceTld", "sourcePostUrl", "updateDate", "Ljava/util/Date;", "createDate", "importDate", "trendingDate", "isHidden", "", "isRemoved", "isCommunity", "isAnonymous", "isFeatured", "isRealtime", "isIndexable", "isSticker", "isDynamic", "bottleData", "Lcom/giphy/sdk/core/models/BottleData;", "animatedTextStyle", "cta", "Lcom/giphy/sdk/core/models/Cta;", "hasAttributions", "userDictionary", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/RatingType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/giphy/sdk/core/models/User;Lcom/giphy/sdk/core/models/Images;Lcom/giphy/sdk/core/models/Video;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZZZZZZZZZLcom/giphy/sdk/core/models/BottleData;Ljava/lang/String;Lcom/giphy/sdk/core/models/Cta;ZLjava/util/HashMap;)V", "getAnalyticsResponsePayload", "()Ljava/lang/String;", "getAnimatedTextStyle", "getBitlyGifUrl", "getBitlyUrl", "getBottleData", "()Lcom/giphy/sdk/core/models/BottleData;", "setBottleData", "(Lcom/giphy/sdk/core/models/BottleData;)V", "getContentUrl", "getCreateDate", "()Ljava/util/Date;", "getCta", "()Lcom/giphy/sdk/core/models/Cta;", "getEmbedUrl", "getFeaturedTags", "()Ljava/util/List;", "getHasAttributions", "()Z", "setHasAttributions", "(Z)V", "getId", "setId", "(Ljava/lang/String;)V", "getImages", "()Lcom/giphy/sdk/core/models/Images;", "setImages", "(Lcom/giphy/sdk/core/models/Images;)V", "getImportDate", "getRating", "()Lcom/giphy/sdk/core/models/enums/RatingType;", "getSlug", "getSource", "getSourcePostUrl", "getSourceTld", "getTags", b.f86919c, "getTid", "getTitle", "getTrendingDate", "getType", "()Lcom/giphy/sdk/core/models/enums/MediaType;", "setType", "(Lcom/giphy/sdk/core/models/enums/MediaType;)V", "getUpdateDate", "getUrl", "setUrl", "getUser", "()Lcom/giphy/sdk/core/models/User;", "setUser", "(Lcom/giphy/sdk/core/models/User;)V", "getUserDictionary", "()Ljava/util/HashMap;", "setUserDictionary", "(Ljava/util/HashMap;)V", "getVideo", "()Lcom/giphy/sdk/core/models/Video;", "setVideo", "(Lcom/giphy/sdk/core/models/Video;)V", "describeContents", "", "postProcess", "", "writeToParcel", "parcel", "Landroid/os/Parcel;", "flags", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class Media implements Parcelable {
    public static final Parcelable.Creator<Media> CREATOR = new Creator();
    @SerializedName("analytics_response_payload")
    @h
    private final String analyticsResponsePayload;
    @SerializedName("animated_text_style")
    @h
    private final String animatedTextStyle;
    @SerializedName("bitly_gif_url")
    @h
    private final String bitlyGifUrl;
    @SerializedName("bitly_url")
    @h
    private final String bitlyUrl;
    @SerializedName("bottle_data")
    @h
    private BottleData bottleData;
    @SerializedName("content_url")
    @h
    private final String contentUrl;
    @SerializedName("create_datetime")
    @h
    private final Date createDate;
    @h
    private final Cta cta;
    @SerializedName("embed_url")
    @h
    private final String embedUrl;
    @SerializedName("featured_tags")
    @h
    private final List<String> featuredTags;
    @SerializedName("has_attribution")
    private boolean hasAttributions;
    @g
    private String id;
    @g
    private Images images;
    @SerializedName("import_datetime")
    @h
    private final Date importDate;
    @SerializedName("is_anonymous")
    private final boolean isAnonymous;
    @SerializedName("is_community")
    private final boolean isCommunity;
    @SerializedName("is_dynamic")
    private final boolean isDynamic;
    @SerializedName("is_featured")
    private final boolean isFeatured;
    @SerializedName("is_hidden")
    private final boolean isHidden;
    @SerializedName("is_indexable")
    private final boolean isIndexable;
    @SerializedName("is_realtime")
    private final boolean isRealtime;
    @SerializedName("is_removed")
    private final boolean isRemoved;
    @SerializedName("is_sticker")
    private final boolean isSticker;
    @h
    private final RatingType rating;
    @h
    private final String slug;
    @h
    private final String source;
    @SerializedName("source_post_url")
    @h
    private final String sourcePostUrl;
    @SerializedName("source_tld")
    @h
    private final String sourceTld;
    @h
    private final List<String> tags;
    @h
    private final String title;
    @SerializedName("trending_datetime")
    @h
    private final Date trendingDate;
    @h
    private MediaType type;
    @SerializedName("update_datetime")
    @h
    private final Date updateDate;
    @h
    private String url;
    @h
    private User user;
    @h
    private HashMap<String, String> userDictionary;
    @h
    private Video video;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static class Creator implements Parcelable.Creator<Media> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final Media createFromParcel(@g Parcel in) {
            Intrinsics.checkNotNullParameter(in, "in");
            String readString = in.readString();
            HashMap hashMap = null;
            MediaType mediaType = in.readInt() != 0 ? (MediaType) Enum.valueOf(MediaType.class, in.readString()) : null;
            String readString2 = in.readString();
            String readString3 = in.readString();
            String readString4 = in.readString();
            String readString5 = in.readString();
            String readString6 = in.readString();
            String readString7 = in.readString();
            String readString8 = in.readString();
            RatingType ratingType = in.readInt() != 0 ? (RatingType) Enum.valueOf(RatingType.class, in.readString()) : null;
            String readString9 = in.readString();
            ArrayList<String> createStringArrayList = in.createStringArrayList();
            ArrayList<String> createStringArrayList2 = in.createStringArrayList();
            User createFromParcel = in.readInt() != 0 ? User.CREATOR.createFromParcel(in) : null;
            Images createFromParcel2 = Images.CREATOR.createFromParcel(in);
            Video createFromParcel3 = in.readInt() != 0 ? Video.CREATOR.createFromParcel(in) : null;
            String readString10 = in.readString();
            String readString11 = in.readString();
            String readString12 = in.readString();
            Date date = (Date) in.readSerializable();
            Date date2 = (Date) in.readSerializable();
            Date date3 = (Date) in.readSerializable();
            Date date4 = (Date) in.readSerializable();
            boolean z9 = in.readInt() != 0;
            boolean z10 = in.readInt() != 0;
            boolean z11 = in.readInt() != 0;
            boolean z12 = in.readInt() != 0;
            boolean z13 = in.readInt() != 0;
            boolean z14 = in.readInt() != 0;
            boolean z15 = in.readInt() != 0;
            boolean z16 = in.readInt() != 0;
            boolean z17 = in.readInt() != 0;
            BottleData createFromParcel4 = in.readInt() != 0 ? BottleData.CREATOR.createFromParcel(in) : null;
            String readString13 = in.readString();
            Cta createFromParcel5 = in.readInt() != 0 ? Cta.CREATOR.createFromParcel(in) : null;
            boolean z18 = in.readInt() != 0;
            if (in.readInt() != 0) {
                int readInt = in.readInt();
                hashMap = new HashMap(readInt);
                while (readInt != 0) {
                    hashMap.put(in.readString(), in.readString());
                    readInt--;
                    createStringArrayList = createStringArrayList;
                }
            }
            return new Media(readString, mediaType, readString2, readString3, readString4, readString5, readString6, readString7, readString8, ratingType, readString9, createStringArrayList, createStringArrayList2, createFromParcel, createFromParcel2, createFromParcel3, readString10, readString11, readString12, date, date2, date3, date4, z9, z10, z11, z12, z13, z14, z15, z16, z17, createFromParcel4, readString13, createFromParcel5, z18, hashMap);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final Media[] newArray(int i4) {
            return new Media[i4];
        }
    }

    public Media(@g String id, @h MediaType mediaType, @h String str, @h String str2, @h String str3, @h String str4, @h String str5, @h String str6, @h String str7, @h RatingType ratingType, @h String str8, @h List<String> list, @h List<String> list2, @h User user, @g Images images, @h Video video, @h String str9, @h String str10, @h String str11, @h Date date, @h Date date2, @h Date date3, @h Date date4, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, @h BottleData bottleData, @h String str12, @h Cta cta, boolean z18, @h HashMap<String, String> hashMap) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(images, "images");
        this.id = id;
        this.type = mediaType;
        this.slug = str;
        this.url = str2;
        this.bitlyGifUrl = str3;
        this.bitlyUrl = str4;
        this.embedUrl = str5;
        this.source = str6;
        this.title = str7;
        this.rating = ratingType;
        this.contentUrl = str8;
        this.tags = list;
        this.featuredTags = list2;
        this.user = user;
        this.images = images;
        this.video = video;
        this.analyticsResponsePayload = str9;
        this.sourceTld = str10;
        this.sourcePostUrl = str11;
        this.updateDate = date;
        this.createDate = date2;
        this.importDate = date3;
        this.trendingDate = date4;
        this.isHidden = z9;
        this.isRemoved = z10;
        this.isCommunity = z11;
        this.isAnonymous = z12;
        this.isFeatured = z13;
        this.isRealtime = z14;
        this.isIndexable = z15;
        this.isSticker = z16;
        this.isDynamic = z17;
        this.bottleData = bottleData;
        this.animatedTextStyle = str12;
        this.cta = cta;
        this.hasAttributions = z18;
        this.userDictionary = hashMap;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @h
    public final String getAnalyticsResponsePayload() {
        return this.analyticsResponsePayload;
    }

    @h
    public final String getAnimatedTextStyle() {
        return this.animatedTextStyle;
    }

    @h
    public final String getBitlyGifUrl() {
        return this.bitlyGifUrl;
    }

    @h
    public final String getBitlyUrl() {
        return this.bitlyUrl;
    }

    @h
    public final BottleData getBottleData() {
        return this.bottleData;
    }

    @h
    public final String getContentUrl() {
        return this.contentUrl;
    }

    @h
    public final Date getCreateDate() {
        return this.createDate;
    }

    @h
    public final Cta getCta() {
        return this.cta;
    }

    @h
    public final String getEmbedUrl() {
        return this.embedUrl;
    }

    @h
    public final List<String> getFeaturedTags() {
        return this.featuredTags;
    }

    public final boolean getHasAttributions() {
        return this.hasAttributions;
    }

    @g
    public final String getId() {
        return this.id;
    }

    @g
    public final Images getImages() {
        return this.images;
    }

    @h
    public final Date getImportDate() {
        return this.importDate;
    }

    @h
    public final RatingType getRating() {
        return this.rating;
    }

    @h
    public final String getSlug() {
        return this.slug;
    }

    @h
    public final String getSource() {
        return this.source;
    }

    @h
    public final String getSourcePostUrl() {
        return this.sourcePostUrl;
    }

    @h
    public final String getSourceTld() {
        return this.sourceTld;
    }

    @h
    public final List<String> getTags() {
        return this.tags;
    }

    @h
    public final String getTid() {
        BottleData bottleData = this.bottleData;
        if (bottleData != null) {
            Intrinsics.checkNotNull(bottleData);
            return bottleData.getTid();
        }
        return null;
    }

    @h
    public final String getTitle() {
        return this.title;
    }

    @h
    public final Date getTrendingDate() {
        return this.trendingDate;
    }

    @h
    public final MediaType getType() {
        return this.type;
    }

    @h
    public final Date getUpdateDate() {
        return this.updateDate;
    }

    @h
    public final String getUrl() {
        return this.url;
    }

    @h
    public final User getUser() {
        return this.user;
    }

    @h
    public final HashMap<String, String> getUserDictionary() {
        return this.userDictionary;
    }

    @h
    public final Video getVideo() {
        return this.video;
    }

    public final boolean isAnonymous() {
        return this.isAnonymous;
    }

    public final boolean isCommunity() {
        return this.isCommunity;
    }

    public final boolean isDynamic() {
        return this.isDynamic;
    }

    public final boolean isFeatured() {
        return this.isFeatured;
    }

    public final boolean isHidden() {
        return this.isHidden;
    }

    public final boolean isIndexable() {
        return this.isIndexable;
    }

    public final boolean isRealtime() {
        return this.isRealtime;
    }

    public final boolean isRemoved() {
        return this.isRemoved;
    }

    public final boolean isSticker() {
        return this.isSticker;
    }

    public final void postProcess() {
        this.images.setMediaId(this.id);
        this.images.postProcess();
    }

    @VisibleForTesting(otherwise = 2)
    public final void setBottleData(@h BottleData bottleData) {
        this.bottleData = bottleData;
    }

    public final void setHasAttributions(boolean z9) {
        this.hasAttributions = z9;
    }

    public final void setId(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    public final void setImages(@g Images images) {
        Intrinsics.checkNotNullParameter(images, "<set-?>");
        this.images = images;
    }

    public final void setType(@h MediaType mediaType) {
        this.type = mediaType;
    }

    public final void setUrl(@h String str) {
        this.url = str;
    }

    public final void setUser(@h User user) {
        this.user = user;
    }

    public final void setUserDictionary(@h HashMap<String, String> hashMap) {
        this.userDictionary = hashMap;
    }

    public final void setVideo(@h Video video) {
        this.video = video;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel parcel, int i4) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeString(this.id);
        MediaType mediaType = this.type;
        if (mediaType != null) {
            parcel.writeInt(1);
            parcel.writeString(mediaType.name());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.slug);
        parcel.writeString(this.url);
        parcel.writeString(this.bitlyGifUrl);
        parcel.writeString(this.bitlyUrl);
        parcel.writeString(this.embedUrl);
        parcel.writeString(this.source);
        parcel.writeString(this.title);
        RatingType ratingType = this.rating;
        if (ratingType != null) {
            parcel.writeInt(1);
            parcel.writeString(ratingType.name());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.contentUrl);
        parcel.writeStringList(this.tags);
        parcel.writeStringList(this.featuredTags);
        User user = this.user;
        if (user != null) {
            parcel.writeInt(1);
            user.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        this.images.writeToParcel(parcel, 0);
        Video video = this.video;
        if (video != null) {
            parcel.writeInt(1);
            video.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.analyticsResponsePayload);
        parcel.writeString(this.sourceTld);
        parcel.writeString(this.sourcePostUrl);
        parcel.writeSerializable(this.updateDate);
        parcel.writeSerializable(this.createDate);
        parcel.writeSerializable(this.importDate);
        parcel.writeSerializable(this.trendingDate);
        parcel.writeInt(this.isHidden ? 1 : 0);
        parcel.writeInt(this.isRemoved ? 1 : 0);
        parcel.writeInt(this.isCommunity ? 1 : 0);
        parcel.writeInt(this.isAnonymous ? 1 : 0);
        parcel.writeInt(this.isFeatured ? 1 : 0);
        parcel.writeInt(this.isRealtime ? 1 : 0);
        parcel.writeInt(this.isIndexable ? 1 : 0);
        parcel.writeInt(this.isSticker ? 1 : 0);
        parcel.writeInt(this.isDynamic ? 1 : 0);
        BottleData bottleData = this.bottleData;
        if (bottleData != null) {
            parcel.writeInt(1);
            bottleData.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.animatedTextStyle);
        Cta cta = this.cta;
        if (cta != null) {
            parcel.writeInt(1);
            cta.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.hasAttributions ? 1 : 0);
        HashMap<String, String> hashMap = this.userDictionary;
        if (hashMap == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeInt(hashMap.size());
        for (Map.Entry<String, String> entry : hashMap.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }

    public /* synthetic */ Media(String str, MediaType mediaType, String str2, String str3, String str4, String str5, String str6, String str7, String str8, RatingType ratingType, String str9, List list, List list2, User user, Images images, Video video, String str10, String str11, String str12, Date date, Date date2, Date date3, Date date4, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, BottleData bottleData, String str13, Cta cta, boolean z18, HashMap hashMap, int i4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i4 & 2) != 0 ? null : mediaType, (i4 & 4) != 0 ? null : str2, (i4 & 8) != 0 ? null : str3, (i4 & 16) != 0 ? null : str4, (i4 & 32) != 0 ? null : str5, (i4 & 64) != 0 ? null : str6, (i4 & 128) != 0 ? null : str7, (i4 & 256) != 0 ? null : str8, (i4 & 512) != 0 ? null : ratingType, (i4 & 1024) != 0 ? null : str9, (i4 & 2048) != 0 ? null : list, (i4 & 4096) != 0 ? null : list2, (i4 & 8192) != 0 ? null : user, images, (32768 & i4) != 0 ? null : video, (65536 & i4) != 0 ? null : str10, (131072 & i4) != 0 ? null : str11, (262144 & i4) != 0 ? null : str12, (524288 & i4) != 0 ? null : date, (1048576 & i4) != 0 ? null : date2, (2097152 & i4) != 0 ? null : date3, (4194304 & i4) != 0 ? null : date4, (8388608 & i4) != 0 ? false : z9, (16777216 & i4) != 0 ? false : z10, (33554432 & i4) != 0 ? false : z11, (67108864 & i4) != 0 ? false : z12, (134217728 & i4) != 0 ? false : z13, (268435456 & i4) != 0 ? false : z14, (536870912 & i4) != 0 ? false : z15, (1073741824 & i4) != 0 ? false : z16, (i4 & Integer.MIN_VALUE) != 0 ? false : z17, (i10 & 1) != 0 ? null : bottleData, (i10 & 2) != 0 ? null : str13, (i10 & 4) != 0 ? null : cta, (i10 & 8) != 0 ? false : z18, (i10 & 16) != 0 ? null : hashMap);
    }
}
