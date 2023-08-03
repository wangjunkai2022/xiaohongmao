package com.giphy.sdk.ui.utils;

import android.net.Uri;
import com.facebook.imagepipeline.producers.n;
import com.giphy.sdk.core.models.Image;
import com.giphy.sdk.core.models.Media;
import com.giphy.sdk.core.models.enums.RenditionType;
import com.giphy.sdk.ui.drawables.ImageFormat;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ImageDownloadChooser.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0014\u0010\t\u001a\u0004\u0018\u00010\u0000*\u00020\u00062\u0006\u0010\b\u001a\u00020\u0007¨\u0006\n"}, d2 = {"Lcom/giphy/sdk/core/models/Image;", "Lcom/giphy/sdk/ui/drawables/ImageFormat;", n.f13104r, "Landroid/net/Uri;", "c", "b", "Lcom/giphy/sdk/core/models/Media;", "Lcom/giphy/sdk/core/models/enums/RenditionType;", "imageType", "a", "giphy-ui-2.1.9_release"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class f {
    @m8.h
    public static final Image a(@m8.g Media imageWithRenditionType, @m8.g RenditionType imageType) {
        Intrinsics.checkNotNullParameter(imageWithRenditionType, "$this$imageWithRenditionType");
        Intrinsics.checkNotNullParameter(imageType, "imageType");
        switch (e.$EnumSwitchMapping$1[imageType.ordinal()]) {
            case 1:
                return imageWithRenditionType.getImages().getOriginal();
            case 2:
                return imageWithRenditionType.getImages().getDownsized();
            case 3:
                return imageWithRenditionType.getImages().getDownsizedMedium();
            case 4:
                return imageWithRenditionType.getImages().getDownsizedLarge();
            case 5:
                return imageWithRenditionType.getImages().getFixedWidth();
            case 6:
                return imageWithRenditionType.getImages().getFixedWidthSmall();
            case 7:
                return imageWithRenditionType.getImages().getFixedWidthDownsampled();
            case 8:
                return imageWithRenditionType.getImages().getFixedWidthStill();
            case 9:
                return imageWithRenditionType.getImages().getLooping();
            case 10:
                return imageWithRenditionType.getImages().getFixedHeight();
            case 11:
                return imageWithRenditionType.getImages().getOriginalStill();
            case 12:
                return imageWithRenditionType.getImages().getPreview();
            case 13:
                return imageWithRenditionType.getImages().getFixedHeightStill();
            case 14:
                return imageWithRenditionType.getImages().getFixedHeightDownsampled();
            case 15:
                return imageWithRenditionType.getImages().getFixedHeightSmall();
            case 16:
                return imageWithRenditionType.getImages().getFixedHeightSmallStill();
            case 17:
                return imageWithRenditionType.getImages().getFixedWidthSmall();
            case 18:
                return imageWithRenditionType.getImages().getDownsizedSmall();
            case 19:
                return imageWithRenditionType.getImages().getDownsizedStill();
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @m8.h
    public static final Uri b(@m8.g Image uriWithFormat, @m8.g ImageFormat imageFormat) {
        Intrinsics.checkNotNullParameter(uriWithFormat, "$this$uriWithFormat");
        Intrinsics.checkNotNullParameter(imageFormat, "imageFormat");
        int i4 = e.$EnumSwitchMapping$0[imageFormat.ordinal()];
        boolean z9 = false;
        if (i4 == 1) {
            String webPUrl = uriWithFormat.getWebPUrl();
            if ((webPUrl == null || webPUrl.length() == 0) ? true : true) {
                return null;
            }
            return Uri.parse(uriWithFormat.getWebPUrl());
        } else if (i4 == 2) {
            String mp4Url = uriWithFormat.getMp4Url();
            if ((mp4Url == null || mp4Url.length() == 0) ? true : true) {
                return null;
            }
            return Uri.parse(uriWithFormat.getMp4Url());
        } else if (i4 == 3) {
            String gifUrl = uriWithFormat.getGifUrl();
            if ((gifUrl == null || gifUrl.length() == 0) ? true : true) {
                return null;
            }
            return Uri.parse(uriWithFormat.getGifUrl());
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @m8.h
    public static final Uri c(@m8.g Image uriWithFormatOrFallback, @m8.g ImageFormat imageFormat) {
        Intrinsics.checkNotNullParameter(uriWithFormatOrFallback, "$this$uriWithFormatOrFallback");
        Intrinsics.checkNotNullParameter(imageFormat, "imageFormat");
        Uri b10 = b(uriWithFormatOrFallback, imageFormat);
        if (b10 == null) {
            b10 = b(uriWithFormatOrFallback, ImageFormat.WEBP);
        }
        return b10 != null ? b10 : b(uriWithFormatOrFallback, ImageFormat.GIF);
    }
}
