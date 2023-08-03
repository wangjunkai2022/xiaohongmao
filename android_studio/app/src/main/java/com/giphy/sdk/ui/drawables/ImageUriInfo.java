package com.giphy.sdk.ui.drawables;

import a8.d;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.imagepipeline.producers.n;
import com.qennnsad.aknkaksd.data.repository.f;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: ImageUriInfo.kt */
@d
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0005HÖ\u0001J\u0019\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0015"}, d2 = {"Lcom/giphy/sdk/ui/drawables/ImageUriInfo;", "Landroid/os/Parcelable;", "uri", "Landroid/net/Uri;", f.f47745b, "", n.f13104r, "Lcom/giphy/sdk/ui/drawables/ImageFormat;", "(Landroid/net/Uri;ILcom/giphy/sdk/ui/drawables/ImageFormat;)V", "getImageFormat", "()Lcom/giphy/sdk/ui/drawables/ImageFormat;", "getSize", "()I", "getUri", "()Landroid/net/Uri;", "describeContents", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class ImageUriInfo implements Parcelable {
    public static final Parcelable.Creator<ImageUriInfo> CREATOR = new a();
    @g
    private final ImageFormat imageFormat;
    private final int size;
    @g
    private final Uri uri;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static class a implements Parcelable.Creator<ImageUriInfo> {
        @Override // android.os.Parcelable.Creator
        @g
        /* renamed from: a */
        public final ImageUriInfo createFromParcel(@g Parcel in) {
            Intrinsics.checkNotNullParameter(in, "in");
            return new ImageUriInfo((Uri) in.readParcelable(ImageUriInfo.class.getClassLoader()), in.readInt(), (ImageFormat) Enum.valueOf(ImageFormat.class, in.readString()));
        }

        @Override // android.os.Parcelable.Creator
        @g
        /* renamed from: b */
        public final ImageUriInfo[] newArray(int i4) {
            return new ImageUriInfo[i4];
        }
    }

    public ImageUriInfo(@g Uri uri, int i4, @g ImageFormat imageFormat) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(imageFormat, "imageFormat");
        this.uri = uri;
        this.size = i4;
        this.imageFormat = imageFormat;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @g
    public final ImageFormat getImageFormat() {
        return this.imageFormat;
    }

    public final int getSize() {
        return this.size;
    }

    @g
    public final Uri getUri() {
        return this.uri;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel parcel, int i4) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeParcelable(this.uri, i4);
        parcel.writeInt(this.size);
        parcel.writeString(this.imageFormat.name());
    }
}
