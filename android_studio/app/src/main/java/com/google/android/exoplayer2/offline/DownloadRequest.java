package com.google.android.exoplayer2.offline;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.util.z0;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class DownloadRequest implements Parcelable {
    public static final Parcelable.Creator<DownloadRequest> CREATOR = new a();
    @Nullable
    public final String customCacheKey;
    public final byte[] data;
    public final String id;
    @Nullable
    public final byte[] keySetId;
    @Nullable
    public final String mimeType;
    public final List<StreamKey> streamKeys;
    public final Uri uri;

    /* loaded from: classes2.dex */
    public static class UnsupportedRequestException extends IOException {
    }

    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<DownloadRequest> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public DownloadRequest createFromParcel(Parcel parcel) {
            return new DownloadRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public DownloadRequest[] newArray(int i4) {
            return new DownloadRequest[i4];
        }
    }

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f24265a;

        /* renamed from: b  reason: collision with root package name */
        private final Uri f24266b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private String f24267c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private List<StreamKey> f24268d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private byte[] f24269e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private String f24270f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private byte[] f24271g;

        public b(String str, Uri uri) {
            this.f24265a = str;
            this.f24266b = uri;
        }

        public DownloadRequest a() {
            String str = this.f24265a;
            Uri uri = this.f24266b;
            String str2 = this.f24267c;
            List list = this.f24268d;
            if (list == null) {
                list = ImmutableList.of();
            }
            return new DownloadRequest(str, uri, str2, list, this.f24269e, this.f24270f, this.f24271g, null);
        }

        public b b(@Nullable String str) {
            this.f24270f = str;
            return this;
        }

        public b c(@Nullable byte[] bArr) {
            this.f24271g = bArr;
            return this;
        }

        public b d(@Nullable byte[] bArr) {
            this.f24269e = bArr;
            return this;
        }

        public b e(@Nullable String str) {
            this.f24267c = str;
            return this;
        }

        public b f(@Nullable List<StreamKey> list) {
            this.f24268d = list;
            return this;
        }
    }

    /* synthetic */ DownloadRequest(String str, Uri uri, String str2, List list, byte[] bArr, String str3, byte[] bArr2, a aVar) {
        this(str, uri, str2, list, bArr, str3, bArr2);
    }

    public DownloadRequest copyWithId(String str) {
        return new DownloadRequest(str, this.uri, this.mimeType, this.streamKeys, this.keySetId, this.customCacheKey, this.data);
    }

    public DownloadRequest copyWithKeySetId(@Nullable byte[] bArr) {
        return new DownloadRequest(this.id, this.uri, this.mimeType, this.streamKeys, bArr, this.customCacheKey, this.data);
    }

    public DownloadRequest copyWithMergedRequest(DownloadRequest downloadRequest) {
        List emptyList;
        com.google.android.exoplayer2.util.a.a(this.id.equals(downloadRequest.id));
        if (!this.streamKeys.isEmpty() && !downloadRequest.streamKeys.isEmpty()) {
            emptyList = new ArrayList(this.streamKeys);
            for (int i4 = 0; i4 < downloadRequest.streamKeys.size(); i4++) {
                StreamKey streamKey = downloadRequest.streamKeys.get(i4);
                if (!emptyList.contains(streamKey)) {
                    emptyList.add(streamKey);
                }
            }
        } else {
            emptyList = Collections.emptyList();
        }
        return new DownloadRequest(this.id, downloadRequest.uri, downloadRequest.mimeType, emptyList, downloadRequest.keySetId, downloadRequest.customCacheKey, downloadRequest.data);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof DownloadRequest) {
            DownloadRequest downloadRequest = (DownloadRequest) obj;
            return this.id.equals(downloadRequest.id) && this.uri.equals(downloadRequest.uri) && z0.c(this.mimeType, downloadRequest.mimeType) && this.streamKeys.equals(downloadRequest.streamKeys) && Arrays.equals(this.keySetId, downloadRequest.keySetId) && z0.c(this.customCacheKey, downloadRequest.customCacheKey) && Arrays.equals(this.data, downloadRequest.data);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = ((this.id.hashCode() * 31 * 31) + this.uri.hashCode()) * 31;
        String str = this.mimeType;
        int hashCode2 = (((((hashCode + (str != null ? str.hashCode() : 0)) * 31) + this.streamKeys.hashCode()) * 31) + Arrays.hashCode(this.keySetId)) * 31;
        String str2 = this.customCacheKey;
        return ((hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + Arrays.hashCode(this.data);
    }

    public b1 toMediaItem() {
        return new b1.c().z(this.id).F(this.uri).j(this.customCacheKey).B(this.mimeType).C(this.streamKeys).l(this.keySetId).a();
    }

    public String toString() {
        String str = this.mimeType;
        String str2 = this.id;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.id);
        parcel.writeString(this.uri.toString());
        parcel.writeString(this.mimeType);
        parcel.writeInt(this.streamKeys.size());
        for (int i10 = 0; i10 < this.streamKeys.size(); i10++) {
            parcel.writeParcelable(this.streamKeys.get(i10), 0);
        }
        parcel.writeByteArray(this.keySetId);
        parcel.writeString(this.customCacheKey);
        parcel.writeByteArray(this.data);
    }

    private DownloadRequest(String str, Uri uri, @Nullable String str2, List<StreamKey> list, @Nullable byte[] bArr, @Nullable String str3, @Nullable byte[] bArr2) {
        int z02 = z0.z0(uri, str2);
        if (z02 == 0 || z02 == 2 || z02 == 1) {
            boolean z9 = str3 == null;
            StringBuilder sb = new StringBuilder(49);
            sb.append("customCacheKey must be null for type: ");
            sb.append(z02);
            com.google.android.exoplayer2.util.a.b(z9, sb.toString());
        }
        this.id = str;
        this.uri = uri;
        this.mimeType = str2;
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        this.streamKeys = Collections.unmodifiableList(arrayList);
        this.keySetId = bArr != null ? Arrays.copyOf(bArr, bArr.length) : null;
        this.customCacheKey = str3;
        this.data = bArr2 != null ? Arrays.copyOf(bArr2, bArr2.length) : z0.f27748f;
    }

    DownloadRequest(Parcel parcel) {
        this.id = (String) z0.k(parcel.readString());
        this.uri = Uri.parse((String) z0.k(parcel.readString()));
        this.mimeType = parcel.readString();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i4 = 0; i4 < readInt; i4++) {
            arrayList.add((StreamKey) parcel.readParcelable(StreamKey.class.getClassLoader()));
        }
        this.streamKeys = Collections.unmodifiableList(arrayList);
        this.keySetId = parcel.createByteArray();
        this.customCacheKey = parcel.readString();
        this.data = (byte[]) z0.k(parcel.createByteArray());
    }
}
