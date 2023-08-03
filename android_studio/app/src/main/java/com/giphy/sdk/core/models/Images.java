package com.giphy.sdk.core.models;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import com.giphy.sdk.core.models.enums.RenditionType;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Images.kt */
@d
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000e\n\u0002\b\"\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001Bõ\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u0010\u0018J\t\u00109\u001a\u00020:HÖ\u0001J\u0006\u0010;\u001a\u00020<J\u0019\u0010=\u001a\u00020<2\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020:HÖ\u0001R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001aR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001aR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001aR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001aR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001aR \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u001a\"\u0004\b!\u0010\"R \u0010\t\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001a\"\u0004\b$\u0010\"R \u0010\n\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u001a\"\u0004\b&\u0010\"R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001aR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u001aR \u0010\b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u001a\"\u0004\b*\u0010\"R \u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u001a\"\u0004\b,\u0010\"R \u0010\f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u001a\"\u0004\b.\u0010\"R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\u001aR\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b0\u0010\u001aR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u001a\"\u0004\b6\u0010\"R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u0010\u001aR\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b8\u0010\u001a¨\u0006A"}, d2 = {"Lcom/giphy/sdk/core/models/Images;", "Landroid/os/Parcelable;", "fixedHeight", "Lcom/giphy/sdk/core/models/Image;", "fixedHeightStill", "fixedHeightDownsampled", "fixedWidth", "fixedWidthStill", "fixedWidthDownsampled", "fixedHeightSmall", "fixedHeightSmallStill", "fixedWidthSmall", "fixedWidthSmallStill", "downsized", "downsizedStill", "downsizedLarge", "downsizedMedium", "original", "originalStill", "looping", "preview", "downsizedSmall", "mediaId", "", "(Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Ljava/lang/String;)V", "getDownsized", "()Lcom/giphy/sdk/core/models/Image;", "getDownsizedLarge", "getDownsizedMedium", "getDownsizedSmall", "getDownsizedStill", "getFixedHeight", "getFixedHeightDownsampled", "setFixedHeightDownsampled", "(Lcom/giphy/sdk/core/models/Image;)V", "getFixedHeightSmall", "setFixedHeightSmall", "getFixedHeightSmallStill", "setFixedHeightSmallStill", "getFixedHeightStill", "getFixedWidth", "getFixedWidthDownsampled", "setFixedWidthDownsampled", "getFixedWidthSmall", "setFixedWidthSmall", "getFixedWidthSmallStill", "setFixedWidthSmallStill", "getFixedWidthStill", "getLooping", "getMediaId", "()Ljava/lang/String;", "setMediaId", "(Ljava/lang/String;)V", "getOriginal", "setOriginal", "getOriginalStill", "getPreview", "describeContents", "", "postProcess", "", "writeToParcel", "parcel", "Landroid/os/Parcel;", "flags", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class Images implements Parcelable {
    public static final Parcelable.Creator<Images> CREATOR = new Creator();
    @h
    private final Image downsized;
    @SerializedName("downsized_large")
    @h
    private final Image downsizedLarge;
    @SerializedName("downsized_medium")
    @h
    private final Image downsizedMedium;
    @SerializedName("downsized_small")
    @h
    private final Image downsizedSmall;
    @SerializedName("downsized_still")
    @h
    private final Image downsizedStill;
    @SerializedName("fixed_height")
    @h
    private final Image fixedHeight;
    @SerializedName("fixed_height_downsampled")
    @h
    private Image fixedHeightDownsampled;
    @SerializedName("fixed_height_small")
    @h
    private Image fixedHeightSmall;
    @SerializedName("fixed_height_small_still")
    @h
    private Image fixedHeightSmallStill;
    @SerializedName("fixed_height_still")
    @h
    private final Image fixedHeightStill;
    @SerializedName("fixed_width")
    @h
    private final Image fixedWidth;
    @SerializedName("fixed_width_downsampled")
    @h
    private Image fixedWidthDownsampled;
    @SerializedName("fixed_width_small")
    @h
    private Image fixedWidthSmall;
    @SerializedName("fixed_width_small_still")
    @h
    private Image fixedWidthSmallStill;
    @SerializedName("fixed_width_still")
    @h
    private final Image fixedWidthStill;
    @h
    private final Image looping;
    @h
    private String mediaId;
    @h
    private Image original;
    @SerializedName("original_still")
    @h
    private final Image originalStill;
    @h
    private final Image preview;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static class Creator implements Parcelable.Creator<Images> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final Images createFromParcel(@g Parcel in) {
            Intrinsics.checkNotNullParameter(in, "in");
            return new Images(in.readInt() != 0 ? Image.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Image.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Image.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Image.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Image.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Image.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Image.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Image.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Image.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Image.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Image.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Image.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Image.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Image.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Image.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Image.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Image.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Image.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Image.CREATOR.createFromParcel(in) : null, in.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final Images[] newArray(int i4) {
            return new Images[i4];
        }
    }

    public Images() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1048575, null);
    }

    public Images(@h Image image, @h Image image2, @h Image image3, @h Image image4, @h Image image5, @h Image image6, @h Image image7, @h Image image8, @h Image image9, @h Image image10, @h Image image11, @h Image image12, @h Image image13, @h Image image14, @h Image image15, @h Image image16, @h Image image17, @h Image image18, @h Image image19, @h String str) {
        this.fixedHeight = image;
        this.fixedHeightStill = image2;
        this.fixedHeightDownsampled = image3;
        this.fixedWidth = image4;
        this.fixedWidthStill = image5;
        this.fixedWidthDownsampled = image6;
        this.fixedHeightSmall = image7;
        this.fixedHeightSmallStill = image8;
        this.fixedWidthSmall = image9;
        this.fixedWidthSmallStill = image10;
        this.downsized = image11;
        this.downsizedStill = image12;
        this.downsizedLarge = image13;
        this.downsizedMedium = image14;
        this.original = image15;
        this.originalStill = image16;
        this.looping = image17;
        this.preview = image18;
        this.downsizedSmall = image19;
        this.mediaId = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @h
    public final Image getDownsized() {
        return this.downsized;
    }

    @h
    public final Image getDownsizedLarge() {
        return this.downsizedLarge;
    }

    @h
    public final Image getDownsizedMedium() {
        return this.downsizedMedium;
    }

    @h
    public final Image getDownsizedSmall() {
        return this.downsizedSmall;
    }

    @h
    public final Image getDownsizedStill() {
        return this.downsizedStill;
    }

    @h
    public final Image getFixedHeight() {
        return this.fixedHeight;
    }

    @h
    public final Image getFixedHeightDownsampled() {
        return this.fixedHeightDownsampled;
    }

    @h
    public final Image getFixedHeightSmall() {
        return this.fixedHeightSmall;
    }

    @h
    public final Image getFixedHeightSmallStill() {
        return this.fixedHeightSmallStill;
    }

    @h
    public final Image getFixedHeightStill() {
        return this.fixedHeightStill;
    }

    @h
    public final Image getFixedWidth() {
        return this.fixedWidth;
    }

    @h
    public final Image getFixedWidthDownsampled() {
        return this.fixedWidthDownsampled;
    }

    @h
    public final Image getFixedWidthSmall() {
        return this.fixedWidthSmall;
    }

    @h
    public final Image getFixedWidthSmallStill() {
        return this.fixedWidthSmallStill;
    }

    @h
    public final Image getFixedWidthStill() {
        return this.fixedWidthStill;
    }

    @h
    public final Image getLooping() {
        return this.looping;
    }

    @h
    public final String getMediaId() {
        return this.mediaId;
    }

    @h
    public final Image getOriginal() {
        return this.original;
    }

    @h
    public final Image getOriginalStill() {
        return this.originalStill;
    }

    @h
    public final Image getPreview() {
        return this.preview;
    }

    public final void postProcess() {
        Image image = this.original;
        if (image != null) {
            Intrinsics.checkNotNull(image);
            image.setMediaId(this.mediaId);
            Image image2 = this.original;
            Intrinsics.checkNotNull(image2);
            image2.setRenditionType(RenditionType.original);
        }
        Image image3 = this.originalStill;
        if (image3 != null) {
            image3.setMediaId(this.mediaId);
            this.originalStill.setRenditionType(RenditionType.originalStill);
        }
        Image image4 = this.fixedHeight;
        if (image4 != null) {
            image4.setMediaId(this.mediaId);
            this.fixedHeight.setRenditionType(RenditionType.fixedHeight);
        }
        Image image5 = this.fixedHeightStill;
        if (image5 != null) {
            image5.setMediaId(this.mediaId);
            this.fixedHeightStill.setRenditionType(RenditionType.fixedHeightStill);
        }
        Image image6 = this.fixedHeightDownsampled;
        if (image6 != null) {
            Intrinsics.checkNotNull(image6);
            image6.setMediaId(this.mediaId);
            Image image7 = this.fixedHeightDownsampled;
            Intrinsics.checkNotNull(image7);
            image7.setRenditionType(RenditionType.fixedHeightDownsampled);
        }
        Image image8 = this.fixedWidth;
        if (image8 != null) {
            image8.setMediaId(this.mediaId);
            this.fixedWidth.setRenditionType(RenditionType.fixedWidth);
        }
        Image image9 = this.fixedWidthStill;
        if (image9 != null) {
            image9.setMediaId(this.mediaId);
            this.fixedWidthStill.setRenditionType(RenditionType.fixedWidthStill);
        }
        Image image10 = this.fixedWidthDownsampled;
        if (image10 != null) {
            Intrinsics.checkNotNull(image10);
            image10.setMediaId(this.mediaId);
            Image image11 = this.fixedWidthDownsampled;
            Intrinsics.checkNotNull(image11);
            image11.setRenditionType(RenditionType.fixedWidthDownsampled);
        }
        Image image12 = this.fixedHeightSmall;
        if (image12 != null) {
            Intrinsics.checkNotNull(image12);
            image12.setMediaId(this.mediaId);
            Image image13 = this.fixedHeightSmall;
            Intrinsics.checkNotNull(image13);
            image13.setRenditionType(RenditionType.fixedHeightSmall);
        }
        Image image14 = this.fixedHeightSmallStill;
        if (image14 != null) {
            Intrinsics.checkNotNull(image14);
            image14.setMediaId(this.mediaId);
            Image image15 = this.fixedHeightSmallStill;
            Intrinsics.checkNotNull(image15);
            image15.setRenditionType(RenditionType.fixedHeightSmallStill);
        }
        Image image16 = this.fixedWidthSmall;
        if (image16 != null) {
            Intrinsics.checkNotNull(image16);
            image16.setMediaId(this.mediaId);
            Image image17 = this.fixedWidthSmall;
            Intrinsics.checkNotNull(image17);
            image17.setRenditionType(RenditionType.fixedWidthSmall);
        }
        Image image18 = this.fixedWidthSmallStill;
        if (image18 != null) {
            Intrinsics.checkNotNull(image18);
            image18.setMediaId(this.mediaId);
            Image image19 = this.fixedWidthSmallStill;
            Intrinsics.checkNotNull(image19);
            image19.setRenditionType(RenditionType.fixedWidthSmallStill);
        }
        Image image20 = this.downsized;
        if (image20 != null) {
            image20.setMediaId(this.mediaId);
            this.downsized.setRenditionType(RenditionType.downsized);
        }
        Image image21 = this.downsizedStill;
        if (image21 != null) {
            image21.setMediaId(this.mediaId);
            this.downsizedStill.setRenditionType(RenditionType.downsizedStill);
        }
        Image image22 = this.downsizedLarge;
        if (image22 != null) {
            image22.setMediaId(this.mediaId);
            this.downsizedLarge.setRenditionType(RenditionType.downsizedLarge);
        }
        Image image23 = this.downsizedMedium;
        if (image23 != null) {
            image23.setMediaId(this.mediaId);
            this.downsizedMedium.setRenditionType(RenditionType.downsizedMedium);
        }
        Image image24 = this.looping;
        if (image24 != null) {
            image24.setMediaId(this.mediaId);
            this.looping.setRenditionType(RenditionType.looping);
        }
        Image image25 = this.preview;
        if (image25 != null) {
            image25.setMediaId(this.mediaId);
            this.preview.setRenditionType(RenditionType.preview);
        }
        Image image26 = this.downsizedSmall;
        if (image26 != null) {
            image26.setMediaId(this.mediaId);
            this.downsizedSmall.setRenditionType(RenditionType.downsizedSmall);
        }
    }

    public final void setFixedHeightDownsampled(@h Image image) {
        this.fixedHeightDownsampled = image;
    }

    public final void setFixedHeightSmall(@h Image image) {
        this.fixedHeightSmall = image;
    }

    public final void setFixedHeightSmallStill(@h Image image) {
        this.fixedHeightSmallStill = image;
    }

    public final void setFixedWidthDownsampled(@h Image image) {
        this.fixedWidthDownsampled = image;
    }

    public final void setFixedWidthSmall(@h Image image) {
        this.fixedWidthSmall = image;
    }

    public final void setFixedWidthSmallStill(@h Image image) {
        this.fixedWidthSmallStill = image;
    }

    public final void setMediaId(@h String str) {
        this.mediaId = str;
    }

    public final void setOriginal(@h Image image) {
        this.original = image;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel parcel, int i4) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        Image image = this.fixedHeight;
        if (image != null) {
            parcel.writeInt(1);
            image.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Image image2 = this.fixedHeightStill;
        if (image2 != null) {
            parcel.writeInt(1);
            image2.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Image image3 = this.fixedHeightDownsampled;
        if (image3 != null) {
            parcel.writeInt(1);
            image3.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Image image4 = this.fixedWidth;
        if (image4 != null) {
            parcel.writeInt(1);
            image4.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Image image5 = this.fixedWidthStill;
        if (image5 != null) {
            parcel.writeInt(1);
            image5.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Image image6 = this.fixedWidthDownsampled;
        if (image6 != null) {
            parcel.writeInt(1);
            image6.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Image image7 = this.fixedHeightSmall;
        if (image7 != null) {
            parcel.writeInt(1);
            image7.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Image image8 = this.fixedHeightSmallStill;
        if (image8 != null) {
            parcel.writeInt(1);
            image8.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Image image9 = this.fixedWidthSmall;
        if (image9 != null) {
            parcel.writeInt(1);
            image9.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Image image10 = this.fixedWidthSmallStill;
        if (image10 != null) {
            parcel.writeInt(1);
            image10.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Image image11 = this.downsized;
        if (image11 != null) {
            parcel.writeInt(1);
            image11.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Image image12 = this.downsizedStill;
        if (image12 != null) {
            parcel.writeInt(1);
            image12.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Image image13 = this.downsizedLarge;
        if (image13 != null) {
            parcel.writeInt(1);
            image13.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Image image14 = this.downsizedMedium;
        if (image14 != null) {
            parcel.writeInt(1);
            image14.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Image image15 = this.original;
        if (image15 != null) {
            parcel.writeInt(1);
            image15.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Image image16 = this.originalStill;
        if (image16 != null) {
            parcel.writeInt(1);
            image16.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Image image17 = this.looping;
        if (image17 != null) {
            parcel.writeInt(1);
            image17.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Image image18 = this.preview;
        if (image18 != null) {
            parcel.writeInt(1);
            image18.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Image image19 = this.downsizedSmall;
        if (image19 != null) {
            parcel.writeInt(1);
            image19.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.mediaId);
    }

    public /* synthetic */ Images(Image image, Image image2, Image image3, Image image4, Image image5, Image image6, Image image7, Image image8, Image image9, Image image10, Image image11, Image image12, Image image13, Image image14, Image image15, Image image16, Image image17, Image image18, Image image19, String str, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : image, (i4 & 2) != 0 ? null : image2, (i4 & 4) != 0 ? null : image3, (i4 & 8) != 0 ? null : image4, (i4 & 16) != 0 ? null : image5, (i4 & 32) != 0 ? null : image6, (i4 & 64) != 0 ? null : image7, (i4 & 128) != 0 ? null : image8, (i4 & 256) != 0 ? null : image9, (i4 & 512) != 0 ? null : image10, (i4 & 1024) != 0 ? null : image11, (i4 & 2048) != 0 ? null : image12, (i4 & 4096) != 0 ? null : image13, (i4 & 8192) != 0 ? null : image14, (i4 & 16384) != 0 ? null : image15, (i4 & 32768) != 0 ? null : image16, (i4 & 65536) != 0 ? null : image17, (i4 & 131072) != 0 ? null : image18, (i4 & 262144) != 0 ? null : image19, (i4 & 524288) != 0 ? null : str);
    }
}
