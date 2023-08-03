package com.giphy.sdk.ui.utils;

import android.os.Parcelable;
import com.giphy.sdk.core.models.Asset;
import com.giphy.sdk.core.models.Assets;
import com.giphy.sdk.core.models.Image;
import com.giphy.sdk.core.models.Media;
import com.giphy.sdk.core.models.Video;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MediaExtension.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\u001a\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0002\u001a\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\"\u0015\u0010\n\u001a\u00020\u0002*\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\b\u0010\t\"\u0015\u0010\f\u001a\u00020\u0002*\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\t\"\u0017\u0010\u0010\u001a\u0004\u0018\u00010\r*\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/giphy/sdk/core/models/Asset;", com.facebook.common.util.f.f11056f, "", "a", "Lcom/giphy/sdk/core/models/Image;", "image", "b", "Lcom/giphy/sdk/core/models/Media;", "c", "(Lcom/giphy/sdk/core/models/Media;)F", "aspectRatio", "d", "videoAspectRatio", "", "e", "(Lcom/giphy/sdk/core/models/Media;)Ljava/lang/String;", "videoUrl", "giphy-ui-2.1.9_release"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class h {
    private static final float a(Asset asset) {
        return asset.getWidth() / asset.getHeight();
    }

    private static final float b(Image image) {
        return image.getWidth() / image.getHeight();
    }

    public static final float c(@m8.g Media aspectRatio) {
        Intrinsics.checkNotNullParameter(aspectRatio, "$this$aspectRatio");
        Image original = aspectRatio.getImages().getOriginal();
        if (original != null) {
            int width = original.getWidth();
            int height = original.getHeight();
            if (height == 0) {
                return 0.0f;
            }
            return width / height;
        }
        return 0.0f;
    }

    public static final float d(@m8.g Media videoAspectRatio) {
        Assets assets;
        Assets assets2;
        Assets assets3;
        Assets assets4;
        Intrinsics.checkNotNullParameter(videoAspectRatio, "$this$videoAspectRatio");
        Parcelable[] parcelableArr = new Parcelable[7];
        Video video = videoAspectRatio.getVideo();
        Asset asset = null;
        parcelableArr[0] = (video == null || (assets4 = video.getAssets()) == null) ? null : assets4.getSize360p();
        Video video2 = videoAspectRatio.getVideo();
        parcelableArr[1] = (video2 == null || (assets3 = video2.getAssets()) == null) ? null : assets3.getSize1080p();
        Video video3 = videoAspectRatio.getVideo();
        parcelableArr[2] = (video3 == null || (assets2 = video3.getAssets()) == null) ? null : assets2.getSize720p();
        Video video4 = videoAspectRatio.getVideo();
        if (video4 != null && (assets = video4.getAssets()) != null) {
            asset = assets.getSize480p();
        }
        parcelableArr[3] = asset;
        parcelableArr[4] = videoAspectRatio.getImages().getOriginal();
        parcelableArr[5] = videoAspectRatio.getImages().getPreview();
        parcelableArr[6] = videoAspectRatio.getImages().getFixedWidth();
        for (int i4 = 0; i4 < 7; i4++) {
            Parcelable parcelable = parcelableArr[i4];
            if (parcelable instanceof Asset) {
                return a((Asset) parcelable);
            }
            if (parcelable instanceof Image) {
                return b((Image) parcelable);
            }
        }
        return 1.7777778f;
    }

    @m8.h
    public static final String e(@m8.g Media videoUrl) {
        ArrayList arrayListOf;
        Object obj;
        boolean z9;
        Assets assets;
        Assets assets2;
        Assets assets3;
        Assets assets4;
        Assets assets5;
        Intrinsics.checkNotNullParameter(videoUrl, "$this$videoUrl");
        Asset[] assetArr = new Asset[5];
        Video video = videoUrl.getVideo();
        assetArr[0] = (video == null || (assets5 = video.getAssets()) == null) ? null : assets5.getSize720p();
        Video video2 = videoUrl.getVideo();
        assetArr[1] = (video2 == null || (assets4 = video2.getAssets()) == null) ? null : assets4.getSize1080p();
        Video video3 = videoUrl.getVideo();
        assetArr[2] = (video3 == null || (assets3 = video3.getAssets()) == null) ? null : assets3.getSize480p();
        Video video4 = videoUrl.getVideo();
        assetArr[3] = (video4 == null || (assets2 = video4.getAssets()) == null) ? null : assets2.getSize360p();
        Video video5 = videoUrl.getVideo();
        assetArr[4] = (video5 == null || (assets = video5.getAssets()) == null) ? null : assets.getSource();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(assetArr);
        Iterator it = arrayListOf.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            Asset asset = (Asset) obj;
            if ((asset != null ? asset.getWidth() : 0) > 0) {
                z9 = true;
                continue;
            } else {
                z9 = false;
                continue;
            }
            if (z9) {
                break;
            }
        }
        Asset asset2 = (Asset) obj;
        if (asset2 != null) {
            return asset2.getUrl();
        }
        return null;
    }
}
