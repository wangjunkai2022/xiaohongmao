package com.giphy.sdk.ui.utils;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.imagepipeline.producers.n;
import com.giphy.sdk.core.models.Image;
import com.giphy.sdk.core.models.Images;
import com.giphy.sdk.core.models.Media;
import com.giphy.sdk.core.models.enums.RenditionType;
import com.giphy.sdk.ui.drawables.ImageFormat;
import com.giphy.sdk.ui.drawables.ImageUriInfo;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GifUtils.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u001a\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\tJ\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002¨\u0006\u0014"}, d2 = {"Lcom/giphy/sdk/ui/utils/d;", "", "Lcom/giphy/sdk/core/models/Media;", "gif", "Lcom/giphy/sdk/core/models/enums/RenditionType;", "imageType", "Lcom/giphy/sdk/core/models/Image;", "a", "image", "Lcom/giphy/sdk/ui/drawables/ImageFormat;", n.f13104r, "Lcom/giphy/sdk/ui/drawables/ImageUriInfo;", "d", "imageData", "b", "media", "Landroid/content/Intent;", "c", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class d {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final d f18930a = new d();

    private d() {
    }

    @m8.h
    public final Image a(@m8.h Media media, @m8.g RenditionType imageType) {
        Images images;
        Images images2;
        Images images3;
        Images images4;
        Images images5;
        Images images6;
        Images images7;
        Images images8;
        Images images9;
        Intrinsics.checkNotNullParameter(imageType, "imageType");
        switch (c.$EnumSwitchMapping$0[imageType.ordinal()]) {
            case 1:
                if (media == null || (images = media.getImages()) == null) {
                    return null;
                }
                return images.getOriginal();
            case 2:
                if (media == null || (images2 = media.getImages()) == null) {
                    return null;
                }
                return images2.getDownsized();
            case 3:
                if (media == null || (images3 = media.getImages()) == null) {
                    return null;
                }
                return images3.getDownsizedMedium();
            case 4:
                if (media == null || (images4 = media.getImages()) == null) {
                    return null;
                }
                return images4.getDownsizedLarge();
            case 5:
                if (media == null || (images5 = media.getImages()) == null) {
                    return null;
                }
                return images5.getFixedWidth();
            case 6:
                if (media == null || (images6 = media.getImages()) == null) {
                    return null;
                }
                return images6.getFixedWidthDownsampled();
            case 7:
                if (media == null || (images7 = media.getImages()) == null) {
                    return null;
                }
                return images7.getFixedWidthStill();
            case 8:
                if (media == null || (images8 = media.getImages()) == null) {
                    return null;
                }
                return images8.getLooping();
            case 9:
                if (media == null || (images9 = media.getImages()) == null) {
                    return null;
                }
                return images9.getFixedHeight();
            default:
                return null;
        }
    }

    @m8.h
    public final ImageUriInfo b(@m8.g Image imageData, @m8.h ImageFormat imageFormat) {
        Intrinsics.checkNotNullParameter(imageData, "imageData");
        if (imageFormat != null) {
            return d(imageData, imageFormat);
        }
        if (TextUtils.isEmpty(imageData.getWebPUrl())) {
            return d(imageData, ImageFormat.GIF);
        }
        return d(imageData, ImageFormat.WEBP);
    }

    @m8.g
    public final Intent c(@m8.h Media media) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(media != null ? media.getUrl() : null));
        intent.setFlags(268435456);
        return intent;
    }

    @m8.h
    public final ImageUriInfo d(@m8.h Image image, @m8.g ImageFormat imageFormat) {
        Intrinsics.checkNotNullParameter(imageFormat, "imageFormat");
        int i4 = c.$EnumSwitchMapping$1[imageFormat.ordinal()];
        if (i4 == 1) {
            Intrinsics.checkNotNull(image);
            if (image.getWebPUrl() != null) {
                Uri parse = Uri.parse(image.getWebPUrl());
                Intrinsics.checkNotNullExpressionValue(parse, "Uri.parse(image.webPUrl)");
                return new ImageUriInfo(parse, image.getWebPSize(), imageFormat);
            }
            return null;
        } else if (i4 == 2) {
            Intrinsics.checkNotNull(image);
            if (image.getMp4Url() != null) {
                Uri parse2 = Uri.parse(image.getMp4Url());
                Intrinsics.checkNotNullExpressionValue(parse2, "Uri.parse(image.mp4Url)");
                return new ImageUriInfo(parse2, image.getMp4Size(), imageFormat);
            }
            return null;
        } else if (i4 == 3) {
            Intrinsics.checkNotNull(image);
            if (image.getGifUrl() != null) {
                Uri parse3 = Uri.parse(image.getGifUrl());
                Intrinsics.checkNotNullExpressionValue(parse3, "Uri.parse(image.gifUrl)");
                return new ImageUriInfo(parse3, image.getGifSize(), imageFormat);
            }
            return null;
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }
}
