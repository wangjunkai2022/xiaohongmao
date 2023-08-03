package com.giphy.sdk.ui;

import android.os.Parcel;
import android.os.Parcelable;
import com.giphy.sdk.core.models.enums.RatingType;
import com.giphy.sdk.core.models.enums.RenditionType;
import com.giphy.sdk.ui.drawables.ImageFormat;
import com.giphy.sdk.ui.themes.GPHTheme;
import com.giphy.sdk.ui.themes.GridType;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GPHSettings.kt */
@a8.d
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\bL\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B»\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000f\u0012\b\b\u0002\u0010\u0012\u001a\u00020\n\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u0015\u001a\u00020\b\u0012\b\b\u0002\u0010\u0016\u001a\u00020\n\u0012\b\b\u0002\u0010\u0017\u001a\u00020\n\u0012\b\b\u0002\u0010\u0018\u001a\u00020\n\u0012\b\b\u0002\u0010\u0019\u001a\u00020\n\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u001b¢\u0006\u0002\u0010\u001cJ\t\u0010R\u001a\u00020\u0003HÆ\u0003J\t\u0010S\u001a\u00020\nHÆ\u0003J\t\u0010T\u001a\u00020\u0014HÆ\u0003J\t\u0010U\u001a\u00020\bHÆ\u0003J\t\u0010V\u001a\u00020\nHÆ\u0003J\t\u0010W\u001a\u00020\nHÆ\u0003J\t\u0010X\u001a\u00020\nHÆ\u0003J\t\u0010Y\u001a\u00020\nHÆ\u0003J\t\u0010Z\u001a\u00020\u001bHÆ\u0003J\t\u0010[\u001a\u00020\u0005HÆ\u0003J\u0014\u0010\\\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003¢\u0006\u0002\u00102J\t\u0010]\u001a\u00020\nHÆ\u0003J\t\u0010^\u001a\u00020\nHÆ\u0003J\t\u0010_\u001a\u00020\rHÆ\u0003J\u000b\u0010`\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u0010a\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u0010b\u001a\u0004\u0018\u00010\u000fHÆ\u0003JÄ\u0001\u0010c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0012\u001a\u00020\n2\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\b2\b\b\u0002\u0010\u0016\u001a\u00020\n2\b\b\u0002\u0010\u0017\u001a\u00020\n2\b\b\u0002\u0010\u0018\u001a\u00020\n2\b\b\u0002\u0010\u0019\u001a\u00020\n2\b\b\u0002\u0010\u001a\u001a\u00020\u001bHÆ\u0001¢\u0006\u0002\u0010dJ\t\u0010e\u001a\u00020\u0014HÖ\u0001J\u0013\u0010f\u001a\u00020\n2\b\u0010g\u001a\u0004\u0018\u00010hHÖ\u0003J\t\u0010i\u001a\u00020\u0014HÖ\u0001J\t\u0010j\u001a\u00020kHÖ\u0001J\u0019\u0010l\u001a\u00020m2\u0006\u0010n\u001a\u00020o2\u0006\u0010p\u001a\u00020\u0014HÖ\u0001R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u001e\"\u0004\b\"\u0010 R\u001a\u0010\u0018\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001a\u0010\u0019\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010$\"\u0004\b(\u0010&R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\"\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u00105\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\u001e\"\u0004\b;\u0010 R\u001a\u0010\u0015\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\u001a\u0010\u000b\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010$\"\u0004\bA\u0010&R\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010$\"\u0004\bC\u0010&R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010$\"\u0004\bE\u0010&R\u001a\u0010\u0016\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010$\"\u0004\bG\u0010&R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\u001a\u0010\u0017\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bL\u0010$\"\u0004\bM\u0010&R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bN\u0010O\"\u0004\bP\u0010Q¨\u0006q"}, d2 = {"Lcom/giphy/sdk/ui/GPHSettings;", "Landroid/os/Parcelable;", "gridType", "Lcom/giphy/sdk/ui/themes/GridType;", "theme", "Lcom/giphy/sdk/ui/themes/GPHTheme;", "mediaTypeConfig", "", "Lcom/giphy/sdk/ui/GPHContentType;", "showConfirmationScreen", "", "showAttribution", "rating", "Lcom/giphy/sdk/core/models/enums/RatingType;", "renditionType", "Lcom/giphy/sdk/core/models/enums/RenditionType;", "clipsPreviewRenditionType", "confirmationRenditionType", "showCheckeredBackground", "stickerColumnCount", "", "selectedContentType", "showSuggestionsBar", "suggestionsBarFixedPosition", "enableDynamicText", "enablePartnerProfiles", com.facebook.imagepipeline.producers.n.f13104r, "Lcom/giphy/sdk/ui/drawables/ImageFormat;", "(Lcom/giphy/sdk/ui/themes/GridType;Lcom/giphy/sdk/ui/themes/GPHTheme;[Lcom/giphy/sdk/ui/GPHContentType;ZZLcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;ZILcom/giphy/sdk/ui/GPHContentType;ZZZZLcom/giphy/sdk/ui/drawables/ImageFormat;)V", "getClipsPreviewRenditionType", "()Lcom/giphy/sdk/core/models/enums/RenditionType;", "setClipsPreviewRenditionType", "(Lcom/giphy/sdk/core/models/enums/RenditionType;)V", "getConfirmationRenditionType", "setConfirmationRenditionType", "getEnableDynamicText", "()Z", "setEnableDynamicText", "(Z)V", "getEnablePartnerProfiles", "setEnablePartnerProfiles", "getGridType", "()Lcom/giphy/sdk/ui/themes/GridType;", "setGridType", "(Lcom/giphy/sdk/ui/themes/GridType;)V", "getImageFormat", "()Lcom/giphy/sdk/ui/drawables/ImageFormat;", "setImageFormat", "(Lcom/giphy/sdk/ui/drawables/ImageFormat;)V", "getMediaTypeConfig", "()[Lcom/giphy/sdk/ui/GPHContentType;", "setMediaTypeConfig", "([Lcom/giphy/sdk/ui/GPHContentType;)V", "[Lcom/giphy/sdk/ui/GPHContentType;", "getRating", "()Lcom/giphy/sdk/core/models/enums/RatingType;", "setRating", "(Lcom/giphy/sdk/core/models/enums/RatingType;)V", "getRenditionType", "setRenditionType", "getSelectedContentType", "()Lcom/giphy/sdk/ui/GPHContentType;", "setSelectedContentType", "(Lcom/giphy/sdk/ui/GPHContentType;)V", "getShowAttribution", "setShowAttribution", "getShowCheckeredBackground", "setShowCheckeredBackground", "getShowConfirmationScreen", "setShowConfirmationScreen", "getShowSuggestionsBar", "setShowSuggestionsBar", "getStickerColumnCount", "()I", "setStickerColumnCount", "(I)V", "getSuggestionsBarFixedPosition", "setSuggestionsBarFixedPosition", "getTheme", "()Lcom/giphy/sdk/ui/themes/GPHTheme;", "setTheme", "(Lcom/giphy/sdk/ui/themes/GPHTheme;)V", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/giphy/sdk/ui/themes/GridType;Lcom/giphy/sdk/ui/themes/GPHTheme;[Lcom/giphy/sdk/ui/GPHContentType;ZZLcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;ZILcom/giphy/sdk/ui/GPHContentType;ZZZZLcom/giphy/sdk/ui/drawables/ImageFormat;)Lcom/giphy/sdk/ui/GPHSettings;", "describeContents", "equals", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class GPHSettings implements Parcelable {
    public static final Parcelable.Creator<GPHSettings> CREATOR = new a();
    @m8.h
    private RenditionType clipsPreviewRenditionType;
    @m8.h
    private RenditionType confirmationRenditionType;
    private boolean enableDynamicText;
    private boolean enablePartnerProfiles;
    @m8.g
    private GridType gridType;
    @m8.g
    private ImageFormat imageFormat;
    @m8.g
    private GPHContentType[] mediaTypeConfig;
    @m8.g
    private RatingType rating;
    @m8.h
    private RenditionType renditionType;
    @m8.g
    private GPHContentType selectedContentType;
    private boolean showAttribution;
    private boolean showCheckeredBackground;
    private boolean showConfirmationScreen;
    private boolean showSuggestionsBar;
    private int stickerColumnCount;
    private boolean suggestionsBarFixedPosition;
    @m8.g
    private GPHTheme theme;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static class a implements Parcelable.Creator<GPHSettings> {
        @Override // android.os.Parcelable.Creator
        @m8.g
        /* renamed from: a */
        public final GPHSettings createFromParcel(@m8.g Parcel in) {
            Intrinsics.checkNotNullParameter(in, "in");
            GridType gridType = (GridType) Enum.valueOf(GridType.class, in.readString());
            GPHTheme gPHTheme = (GPHTheme) Enum.valueOf(GPHTheme.class, in.readString());
            int readInt = in.readInt();
            GPHContentType[] gPHContentTypeArr = new GPHContentType[readInt];
            for (int i4 = 0; readInt > i4; i4++) {
                gPHContentTypeArr[i4] = (GPHContentType) Enum.valueOf(GPHContentType.class, in.readString());
            }
            return new GPHSettings(gridType, gPHTheme, gPHContentTypeArr, in.readInt() != 0, in.readInt() != 0, (RatingType) Enum.valueOf(RatingType.class, in.readString()), in.readInt() != 0 ? (RenditionType) Enum.valueOf(RenditionType.class, in.readString()) : null, in.readInt() != 0 ? (RenditionType) Enum.valueOf(RenditionType.class, in.readString()) : null, in.readInt() != 0 ? (RenditionType) Enum.valueOf(RenditionType.class, in.readString()) : null, in.readInt() != 0, in.readInt(), (GPHContentType) Enum.valueOf(GPHContentType.class, in.readString()), in.readInt() != 0, in.readInt() != 0, in.readInt() != 0, in.readInt() != 0, (ImageFormat) Enum.valueOf(ImageFormat.class, in.readString()));
        }

        @Override // android.os.Parcelable.Creator
        @m8.g
        /* renamed from: b */
        public final GPHSettings[] newArray(int i4) {
            return new GPHSettings[i4];
        }
    }

    public GPHSettings() {
        this(null, null, null, false, false, null, null, null, null, false, 0, null, false, false, false, false, null, 131071, null);
    }

    public GPHSettings(@m8.g GridType gridType, @m8.g GPHTheme theme, @m8.g GPHContentType[] mediaTypeConfig, boolean z9, boolean z10, @m8.g RatingType rating, @m8.h RenditionType renditionType, @m8.h RenditionType renditionType2, @m8.h RenditionType renditionType3, boolean z11, int i4, @m8.g GPHContentType selectedContentType, boolean z12, boolean z13, boolean z14, boolean z15, @m8.g ImageFormat imageFormat) {
        Intrinsics.checkNotNullParameter(gridType, "gridType");
        Intrinsics.checkNotNullParameter(theme, "theme");
        Intrinsics.checkNotNullParameter(mediaTypeConfig, "mediaTypeConfig");
        Intrinsics.checkNotNullParameter(rating, "rating");
        Intrinsics.checkNotNullParameter(selectedContentType, "selectedContentType");
        Intrinsics.checkNotNullParameter(imageFormat, "imageFormat");
        this.gridType = gridType;
        this.theme = theme;
        this.mediaTypeConfig = mediaTypeConfig;
        this.showConfirmationScreen = z9;
        this.showAttribution = z10;
        this.rating = rating;
        this.renditionType = renditionType;
        this.clipsPreviewRenditionType = renditionType2;
        this.confirmationRenditionType = renditionType3;
        this.showCheckeredBackground = z11;
        this.stickerColumnCount = i4;
        this.selectedContentType = selectedContentType;
        this.showSuggestionsBar = z12;
        this.suggestionsBarFixedPosition = z13;
        this.enableDynamicText = z14;
        this.enablePartnerProfiles = z15;
        this.imageFormat = imageFormat;
    }

    @m8.g
    public final GridType component1() {
        return this.gridType;
    }

    public final boolean component10() {
        return this.showCheckeredBackground;
    }

    public final int component11() {
        return this.stickerColumnCount;
    }

    @m8.g
    public final GPHContentType component12() {
        return this.selectedContentType;
    }

    public final boolean component13() {
        return this.showSuggestionsBar;
    }

    public final boolean component14() {
        return this.suggestionsBarFixedPosition;
    }

    public final boolean component15() {
        return this.enableDynamicText;
    }

    public final boolean component16() {
        return this.enablePartnerProfiles;
    }

    @m8.g
    public final ImageFormat component17() {
        return this.imageFormat;
    }

    @m8.g
    public final GPHTheme component2() {
        return this.theme;
    }

    @m8.g
    public final GPHContentType[] component3() {
        return this.mediaTypeConfig;
    }

    public final boolean component4() {
        return this.showConfirmationScreen;
    }

    public final boolean component5() {
        return this.showAttribution;
    }

    @m8.g
    public final RatingType component6() {
        return this.rating;
    }

    @m8.h
    public final RenditionType component7() {
        return this.renditionType;
    }

    @m8.h
    public final RenditionType component8() {
        return this.clipsPreviewRenditionType;
    }

    @m8.h
    public final RenditionType component9() {
        return this.confirmationRenditionType;
    }

    @m8.g
    public final GPHSettings copy(@m8.g GridType gridType, @m8.g GPHTheme theme, @m8.g GPHContentType[] mediaTypeConfig, boolean z9, boolean z10, @m8.g RatingType rating, @m8.h RenditionType renditionType, @m8.h RenditionType renditionType2, @m8.h RenditionType renditionType3, boolean z11, int i4, @m8.g GPHContentType selectedContentType, boolean z12, boolean z13, boolean z14, boolean z15, @m8.g ImageFormat imageFormat) {
        Intrinsics.checkNotNullParameter(gridType, "gridType");
        Intrinsics.checkNotNullParameter(theme, "theme");
        Intrinsics.checkNotNullParameter(mediaTypeConfig, "mediaTypeConfig");
        Intrinsics.checkNotNullParameter(rating, "rating");
        Intrinsics.checkNotNullParameter(selectedContentType, "selectedContentType");
        Intrinsics.checkNotNullParameter(imageFormat, "imageFormat");
        return new GPHSettings(gridType, theme, mediaTypeConfig, z9, z10, rating, renditionType, renditionType2, renditionType3, z11, i4, selectedContentType, z12, z13, z14, z15, imageFormat);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@m8.h Object obj) {
        if (this != obj) {
            if (obj instanceof GPHSettings) {
                GPHSettings gPHSettings = (GPHSettings) obj;
                return Intrinsics.areEqual(this.gridType, gPHSettings.gridType) && Intrinsics.areEqual(this.theme, gPHSettings.theme) && Intrinsics.areEqual(this.mediaTypeConfig, gPHSettings.mediaTypeConfig) && this.showConfirmationScreen == gPHSettings.showConfirmationScreen && this.showAttribution == gPHSettings.showAttribution && Intrinsics.areEqual(this.rating, gPHSettings.rating) && Intrinsics.areEqual(this.renditionType, gPHSettings.renditionType) && Intrinsics.areEqual(this.clipsPreviewRenditionType, gPHSettings.clipsPreviewRenditionType) && Intrinsics.areEqual(this.confirmationRenditionType, gPHSettings.confirmationRenditionType) && this.showCheckeredBackground == gPHSettings.showCheckeredBackground && this.stickerColumnCount == gPHSettings.stickerColumnCount && Intrinsics.areEqual(this.selectedContentType, gPHSettings.selectedContentType) && this.showSuggestionsBar == gPHSettings.showSuggestionsBar && this.suggestionsBarFixedPosition == gPHSettings.suggestionsBarFixedPosition && this.enableDynamicText == gPHSettings.enableDynamicText && this.enablePartnerProfiles == gPHSettings.enablePartnerProfiles && Intrinsics.areEqual(this.imageFormat, gPHSettings.imageFormat);
            }
            return false;
        }
        return true;
    }

    @m8.h
    public final RenditionType getClipsPreviewRenditionType() {
        return this.clipsPreviewRenditionType;
    }

    @m8.h
    public final RenditionType getConfirmationRenditionType() {
        return this.confirmationRenditionType;
    }

    public final boolean getEnableDynamicText() {
        return this.enableDynamicText;
    }

    public final boolean getEnablePartnerProfiles() {
        return this.enablePartnerProfiles;
    }

    @m8.g
    public final GridType getGridType() {
        return this.gridType;
    }

    @m8.g
    public final ImageFormat getImageFormat() {
        return this.imageFormat;
    }

    @m8.g
    public final GPHContentType[] getMediaTypeConfig() {
        return this.mediaTypeConfig;
    }

    @m8.g
    public final RatingType getRating() {
        return this.rating;
    }

    @m8.h
    public final RenditionType getRenditionType() {
        return this.renditionType;
    }

    @m8.g
    public final GPHContentType getSelectedContentType() {
        return this.selectedContentType;
    }

    public final boolean getShowAttribution() {
        return this.showAttribution;
    }

    public final boolean getShowCheckeredBackground() {
        return this.showCheckeredBackground;
    }

    public final boolean getShowConfirmationScreen() {
        return this.showConfirmationScreen;
    }

    public final boolean getShowSuggestionsBar() {
        return this.showSuggestionsBar;
    }

    public final int getStickerColumnCount() {
        return this.stickerColumnCount;
    }

    public final boolean getSuggestionsBarFixedPosition() {
        return this.suggestionsBarFixedPosition;
    }

    @m8.g
    public final GPHTheme getTheme() {
        return this.theme;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        GridType gridType = this.gridType;
        int hashCode = (gridType != null ? gridType.hashCode() : 0) * 31;
        GPHTheme gPHTheme = this.theme;
        int hashCode2 = (hashCode + (gPHTheme != null ? gPHTheme.hashCode() : 0)) * 31;
        GPHContentType[] gPHContentTypeArr = this.mediaTypeConfig;
        int hashCode3 = (hashCode2 + (gPHContentTypeArr != null ? Arrays.hashCode(gPHContentTypeArr) : 0)) * 31;
        boolean z9 = this.showConfirmationScreen;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        int i10 = (hashCode3 + i4) * 31;
        boolean z10 = this.showAttribution;
        int i11 = z10;
        if (z10 != 0) {
            i11 = 1;
        }
        int i12 = (i10 + i11) * 31;
        RatingType ratingType = this.rating;
        int hashCode4 = (i12 + (ratingType != null ? ratingType.hashCode() : 0)) * 31;
        RenditionType renditionType = this.renditionType;
        int hashCode5 = (hashCode4 + (renditionType != null ? renditionType.hashCode() : 0)) * 31;
        RenditionType renditionType2 = this.clipsPreviewRenditionType;
        int hashCode6 = (hashCode5 + (renditionType2 != null ? renditionType2.hashCode() : 0)) * 31;
        RenditionType renditionType3 = this.confirmationRenditionType;
        int hashCode7 = (hashCode6 + (renditionType3 != null ? renditionType3.hashCode() : 0)) * 31;
        boolean z11 = this.showCheckeredBackground;
        int i13 = z11;
        if (z11 != 0) {
            i13 = 1;
        }
        int i14 = (((hashCode7 + i13) * 31) + this.stickerColumnCount) * 31;
        GPHContentType gPHContentType = this.selectedContentType;
        int hashCode8 = (i14 + (gPHContentType != null ? gPHContentType.hashCode() : 0)) * 31;
        boolean z12 = this.showSuggestionsBar;
        int i15 = z12;
        if (z12 != 0) {
            i15 = 1;
        }
        int i16 = (hashCode8 + i15) * 31;
        boolean z13 = this.suggestionsBarFixedPosition;
        int i17 = z13;
        if (z13 != 0) {
            i17 = 1;
        }
        int i18 = (i16 + i17) * 31;
        boolean z14 = this.enableDynamicText;
        int i19 = z14;
        if (z14 != 0) {
            i19 = 1;
        }
        int i20 = (i18 + i19) * 31;
        boolean z15 = this.enablePartnerProfiles;
        int i21 = (i20 + (z15 ? 1 : z15 ? 1 : 0)) * 31;
        ImageFormat imageFormat = this.imageFormat;
        return i21 + (imageFormat != null ? imageFormat.hashCode() : 0);
    }

    public final void setClipsPreviewRenditionType(@m8.h RenditionType renditionType) {
        this.clipsPreviewRenditionType = renditionType;
    }

    public final void setConfirmationRenditionType(@m8.h RenditionType renditionType) {
        this.confirmationRenditionType = renditionType;
    }

    public final void setEnableDynamicText(boolean z9) {
        this.enableDynamicText = z9;
    }

    public final void setEnablePartnerProfiles(boolean z9) {
        this.enablePartnerProfiles = z9;
    }

    public final void setGridType(@m8.g GridType gridType) {
        Intrinsics.checkNotNullParameter(gridType, "<set-?>");
        this.gridType = gridType;
    }

    public final void setImageFormat(@m8.g ImageFormat imageFormat) {
        Intrinsics.checkNotNullParameter(imageFormat, "<set-?>");
        this.imageFormat = imageFormat;
    }

    public final void setMediaTypeConfig(@m8.g GPHContentType[] gPHContentTypeArr) {
        Intrinsics.checkNotNullParameter(gPHContentTypeArr, "<set-?>");
        this.mediaTypeConfig = gPHContentTypeArr;
    }

    public final void setRating(@m8.g RatingType ratingType) {
        Intrinsics.checkNotNullParameter(ratingType, "<set-?>");
        this.rating = ratingType;
    }

    public final void setRenditionType(@m8.h RenditionType renditionType) {
        this.renditionType = renditionType;
    }

    public final void setSelectedContentType(@m8.g GPHContentType gPHContentType) {
        Intrinsics.checkNotNullParameter(gPHContentType, "<set-?>");
        this.selectedContentType = gPHContentType;
    }

    public final void setShowAttribution(boolean z9) {
        this.showAttribution = z9;
    }

    public final void setShowCheckeredBackground(boolean z9) {
        this.showCheckeredBackground = z9;
    }

    public final void setShowConfirmationScreen(boolean z9) {
        this.showConfirmationScreen = z9;
    }

    public final void setShowSuggestionsBar(boolean z9) {
        this.showSuggestionsBar = z9;
    }

    public final void setStickerColumnCount(int i4) {
        this.stickerColumnCount = i4;
    }

    public final void setSuggestionsBarFixedPosition(boolean z9) {
        this.suggestionsBarFixedPosition = z9;
    }

    public final void setTheme(@m8.g GPHTheme gPHTheme) {
        Intrinsics.checkNotNullParameter(gPHTheme, "<set-?>");
        this.theme = gPHTheme;
    }

    @m8.g
    public String toString() {
        return "GPHSettings(gridType=" + this.gridType + ", theme=" + this.theme + ", mediaTypeConfig=" + Arrays.toString(this.mediaTypeConfig) + ", showConfirmationScreen=" + this.showConfirmationScreen + ", showAttribution=" + this.showAttribution + ", rating=" + this.rating + ", renditionType=" + this.renditionType + ", clipsPreviewRenditionType=" + this.clipsPreviewRenditionType + ", confirmationRenditionType=" + this.confirmationRenditionType + ", showCheckeredBackground=" + this.showCheckeredBackground + ", stickerColumnCount=" + this.stickerColumnCount + ", selectedContentType=" + this.selectedContentType + ", showSuggestionsBar=" + this.showSuggestionsBar + ", suggestionsBarFixedPosition=" + this.suggestionsBarFixedPosition + ", enableDynamicText=" + this.enableDynamicText + ", enablePartnerProfiles=" + this.enablePartnerProfiles + ", imageFormat=" + this.imageFormat + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@m8.g Parcel parcel, int i4) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeString(this.gridType.name());
        parcel.writeString(this.theme.name());
        GPHContentType[] gPHContentTypeArr = this.mediaTypeConfig;
        int length = gPHContentTypeArr.length;
        parcel.writeInt(length);
        for (int i10 = 0; length > i10; i10++) {
            parcel.writeString(gPHContentTypeArr[i10].name());
        }
        parcel.writeInt(this.showConfirmationScreen ? 1 : 0);
        parcel.writeInt(this.showAttribution ? 1 : 0);
        parcel.writeString(this.rating.name());
        RenditionType renditionType = this.renditionType;
        if (renditionType != null) {
            parcel.writeInt(1);
            parcel.writeString(renditionType.name());
        } else {
            parcel.writeInt(0);
        }
        RenditionType renditionType2 = this.clipsPreviewRenditionType;
        if (renditionType2 != null) {
            parcel.writeInt(1);
            parcel.writeString(renditionType2.name());
        } else {
            parcel.writeInt(0);
        }
        RenditionType renditionType3 = this.confirmationRenditionType;
        if (renditionType3 != null) {
            parcel.writeInt(1);
            parcel.writeString(renditionType3.name());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.showCheckeredBackground ? 1 : 0);
        parcel.writeInt(this.stickerColumnCount);
        parcel.writeString(this.selectedContentType.name());
        parcel.writeInt(this.showSuggestionsBar ? 1 : 0);
        parcel.writeInt(this.suggestionsBarFixedPosition ? 1 : 0);
        parcel.writeInt(this.enableDynamicText ? 1 : 0);
        parcel.writeInt(this.enablePartnerProfiles ? 1 : 0);
        parcel.writeString(this.imageFormat.name());
    }

    public /* synthetic */ GPHSettings(GridType gridType, GPHTheme gPHTheme, GPHContentType[] gPHContentTypeArr, boolean z9, boolean z10, RatingType ratingType, RenditionType renditionType, RenditionType renditionType2, RenditionType renditionType3, boolean z11, int i4, GPHContentType gPHContentType, boolean z12, boolean z13, boolean z14, boolean z15, ImageFormat imageFormat, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? GridType.waterfall : gridType, (i10 & 2) != 0 ? GPHTheme.Automatic : gPHTheme, (i10 & 4) != 0 ? new GPHContentType[]{GPHContentType.recents, GPHContentType.gif, GPHContentType.sticker, GPHContentType.text, GPHContentType.emoji} : gPHContentTypeArr, (i10 & 8) != 0 ? false : z9, (i10 & 16) != 0 ? true : z10, (i10 & 32) != 0 ? RatingType.pg13 : ratingType, (i10 & 64) != 0 ? null : renditionType, (i10 & 128) != 0 ? null : renditionType2, (i10 & 256) == 0 ? renditionType3 : null, (i10 & 512) != 0 ? false : z11, (i10 & 1024) == 0 ? i4 : 2, (i10 & 2048) != 0 ? GPHContentType.gif : gPHContentType, (i10 & 4096) != 0 ? true : z12, (i10 & 8192) != 0 ? false : z13, (i10 & 16384) != 0 ? false : z14, (i10 & 32768) != 0 ? true : z15, (i10 & 65536) != 0 ? ImageFormat.WEBP : imageFormat);
    }
}
