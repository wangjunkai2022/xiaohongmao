package com.tangxiaolv.telegramgallery;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public class GalleryConfig implements Parcelable {
    public static final Parcelable.Creator<GalleryConfig> CREATOR = new a();
    private String[] filterMimeTypes;
    private String hintOfPick;
    private int limitPickPhoto;
    private boolean singlePhoto;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<GalleryConfig> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public GalleryConfig createFromParcel(Parcel parcel) {
            return new GalleryConfig(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public GalleryConfig[] newArray(int i4) {
            return new GalleryConfig[i4];
        }
    }

    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private String[] f56244a;

        /* renamed from: b  reason: collision with root package name */
        private String f56245b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f56246c = false;

        /* renamed from: d  reason: collision with root package name */
        private int f56247d = 9;

        public GalleryConfig a() {
            int i4;
            int i10 = 1;
            if (!this.f56246c && (i4 = this.f56247d) > 0) {
                i10 = i4;
            }
            this.f56247d = i10;
            return new GalleryConfig(this.f56244a, this.f56245b, this.f56246c, this.f56247d, null);
        }

        public b b(String[] strArr) {
            this.f56244a = strArr;
            return this;
        }

        public b c(String str) {
            this.f56245b = str;
            return this;
        }

        public b d(int i4) {
            this.f56247d = i4;
            return this;
        }

        public b e(boolean z9) {
            this.f56246c = z9;
            return this;
        }
    }

    /* synthetic */ GalleryConfig(String[] strArr, String str, boolean z9, int i4, a aVar) {
        this(strArr, str, z9, i4);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String[] getFilterMimeTypes() {
        return this.filterMimeTypes;
    }

    public String getHintOfPick() {
        return this.hintOfPick;
    }

    public int getLimitPickPhoto() {
        return this.limitPickPhoto;
    }

    public boolean isSinglePhoto() {
        return this.singlePhoto;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeStringArray(this.filterMimeTypes);
        parcel.writeString(this.hintOfPick);
        parcel.writeByte(this.singlePhoto ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.limitPickPhoto);
    }

    private GalleryConfig() {
    }

    private GalleryConfig(String[] strArr, String str, boolean z9, int i4) {
        this.filterMimeTypes = strArr;
        this.hintOfPick = str;
        this.singlePhoto = z9;
        this.limitPickPhoto = i4;
    }

    protected GalleryConfig(Parcel parcel) {
        this.filterMimeTypes = parcel.createStringArray();
        this.hintOfPick = parcel.readString();
        this.singlePhoto = parcel.readByte() != 0;
        this.limitPickPhoto = parcel.readInt();
    }
}
