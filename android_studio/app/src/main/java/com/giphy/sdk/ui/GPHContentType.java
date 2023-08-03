package com.giphy.sdk.ui;

import android.os.Parcel;
import android.os.Parcelable;
import com.giphy.sdk.core.models.enums.MediaType;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GPHContentType.kt */
@a8.d
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\t\u0010\u0004\u001a\u00020\u0005HÖ\u0001J\u0006\u0010\u0006\u001a\u00020\u0007J\u0019\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0005HÖ\u0001j\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lcom/giphy/sdk/ui/GPHContentType;", "", "Landroid/os/Parcelable;", "(Ljava/lang/String;I)V", "describeContents", "", "getMediaType", "Lcom/giphy/sdk/core/models/enums/MediaType;", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "clips", "gif", "sticker", "text", "emoji", "recents", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public enum GPHContentType implements Parcelable {
    clips,
    gif,
    sticker,
    text,
    emoji,
    recents;
    
    public static final Parcelable.Creator<GPHContentType> CREATOR = new Parcelable.Creator<GPHContentType>() { // from class: com.giphy.sdk.ui.GPHContentType.a
        @Override // android.os.Parcelable.Creator
        @m8.g
        /* renamed from: a */
        public final GPHContentType createFromParcel(@m8.g Parcel in) {
            Intrinsics.checkNotNullParameter(in, "in");
            return (GPHContentType) Enum.valueOf(GPHContentType.class, in.readString());
        }

        @Override // android.os.Parcelable.Creator
        @m8.g
        /* renamed from: b */
        public final GPHContentType[] newArray(int i4) {
            return new GPHContentType[i4];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @m8.g
    public final MediaType getMediaType() {
        switch (f.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                return MediaType.video;
            case 2:
                return MediaType.gif;
            case 3:
                return MediaType.sticker;
            case 4:
                return MediaType.text;
            case 5:
                return MediaType.gif;
            case 6:
                return MediaType.gif;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@m8.g Parcel parcel, int i4) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeString(name());
    }
}
