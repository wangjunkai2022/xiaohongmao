package com.google.android.exoplayer2.metadata.emsg;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.f1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.z0;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class EventMessage implements Metadata.Entry {
    @VisibleForTesting
    public static final String ID3_SCHEME_ID_AOM = "https://aomedia.org/emsg/ID3";
    private static final String ID3_SCHEME_ID_APPLE = "https://developer.apple.com/streaming/emsg-id3";
    @VisibleForTesting
    public static final String SCTE35_SCHEME_ID = "urn:scte:scte35:2014:bin";
    public final long durationMs;
    private int hashCode;
    public final long id;
    public final byte[] messageData;
    public final String schemeIdUri;
    public final String value;
    private static final Format ID3_FORMAT = new Format.b().e0(a0.f27456m0).E();
    private static final Format SCTE35_FORMAT = new Format.b().e0(a0.f27478x0).E();
    public static final Parcelable.Creator<EventMessage> CREATOR = new a();

    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<EventMessage> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public EventMessage createFromParcel(Parcel parcel) {
            return new EventMessage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public EventMessage[] newArray(int i4) {
            return new EventMessage[i4];
        }
    }

    public EventMessage(String str, String str2, long j4, long j10, byte[] bArr) {
        this.schemeIdUri = str;
        this.value = str2;
        this.durationMs = j4;
        this.id = j10;
        this.messageData = bArr;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || EventMessage.class != obj.getClass()) {
            return false;
        }
        EventMessage eventMessage = (EventMessage) obj;
        return this.durationMs == eventMessage.durationMs && this.id == eventMessage.id && z0.c(this.schemeIdUri, eventMessage.schemeIdUri) && z0.c(this.value, eventMessage.value) && Arrays.equals(this.messageData, eventMessage.messageData);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    @Nullable
    public byte[] getWrappedMetadataBytes() {
        if (getWrappedMetadataFormat() != null) {
            return this.messageData;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    @Nullable
    public Format getWrappedMetadataFormat() {
        String str = this.schemeIdUri;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1468477611:
                if (str.equals(SCTE35_SCHEME_ID)) {
                    c10 = 0;
                    break;
                }
                break;
            case -795945609:
                if (str.equals(ID3_SCHEME_ID_AOM)) {
                    c10 = 1;
                    break;
                }
                break;
            case 1303648457:
                if (str.equals(ID3_SCHEME_ID_APPLE)) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return SCTE35_FORMAT;
            case 1:
            case 2:
                return ID3_FORMAT;
            default:
                return null;
        }
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            String str = this.schemeIdUri;
            int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.value;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            long j4 = this.durationMs;
            long j10 = this.id;
            this.hashCode = ((((((hashCode + hashCode2) * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + Arrays.hashCode(this.messageData);
        }
        return this.hashCode;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ void populateMediaMetadata(f1.b bVar) {
        com.google.android.exoplayer2.metadata.a.c(this, bVar);
    }

    public String toString() {
        String str = this.schemeIdUri;
        long j4 = this.id;
        long j10 = this.durationMs;
        String str2 = this.value;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 79 + String.valueOf(str2).length());
        sb.append("EMSG: scheme=");
        sb.append(str);
        sb.append(", id=");
        sb.append(j4);
        sb.append(", durationMs=");
        sb.append(j10);
        sb.append(", value=");
        sb.append(str2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.schemeIdUri);
        parcel.writeString(this.value);
        parcel.writeLong(this.durationMs);
        parcel.writeLong(this.id);
        parcel.writeByteArray(this.messageData);
    }

    EventMessage(Parcel parcel) {
        this.schemeIdUri = (String) z0.k(parcel.readString());
        this.value = (String) z0.k(parcel.readString());
        this.durationMs = parcel.readLong();
        this.id = parcel.readLong();
        this.messageData = (byte[]) z0.k(parcel.createByteArray());
    }
}
