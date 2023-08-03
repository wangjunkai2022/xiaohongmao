package com.google.android.exoplayer2.source;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class TrackGroup implements Parcelable {
    public static final Parcelable.Creator<TrackGroup> CREATOR = new a();
    private static final String TAG = "TrackGroup";
    private final Format[] formats;
    private int hashCode;
    public final int length;

    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<TrackGroup> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public TrackGroup createFromParcel(Parcel parcel) {
            return new TrackGroup(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public TrackGroup[] newArray(int i4) {
            return new TrackGroup[i4];
        }
    }

    public TrackGroup(Format... formatArr) {
        com.google.android.exoplayer2.util.a.i(formatArr.length > 0);
        this.formats = formatArr;
        this.length = formatArr.length;
        verifyCorrectness();
    }

    private static void logErrorMessage(String str, @Nullable String str2, @Nullable String str3, int i4) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 78 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append("Different ");
        sb.append(str);
        sb.append(" combined in one TrackGroup: '");
        sb.append(str2);
        sb.append("' (track 0) and '");
        sb.append(str3);
        sb.append("' (track ");
        sb.append(i4);
        sb.append(")");
        com.google.android.exoplayer2.util.w.e(TAG, "", new IllegalStateException(sb.toString()));
    }

    private static String normalizeLanguage(@Nullable String str) {
        return (str == null || str.equals("und")) ? "" : str;
    }

    private static int normalizeRoleFlags(int i4) {
        return i4 | 16384;
    }

    private void verifyCorrectness() {
        String normalizeLanguage = normalizeLanguage(this.formats[0].language);
        int normalizeRoleFlags = normalizeRoleFlags(this.formats[0].roleFlags);
        int i4 = 1;
        while (true) {
            Format[] formatArr = this.formats;
            if (i4 >= formatArr.length) {
                return;
            }
            if (!normalizeLanguage.equals(normalizeLanguage(formatArr[i4].language))) {
                Format[] formatArr2 = this.formats;
                logErrorMessage("languages", formatArr2[0].language, formatArr2[i4].language, i4);
                return;
            } else if (normalizeRoleFlags != normalizeRoleFlags(this.formats[i4].roleFlags)) {
                logErrorMessage("role flags", Integer.toBinaryString(this.formats[0].roleFlags), Integer.toBinaryString(this.formats[i4].roleFlags), i4);
                return;
            } else {
                i4++;
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TrackGroup.class != obj.getClass()) {
            return false;
        }
        TrackGroup trackGroup = (TrackGroup) obj;
        return this.length == trackGroup.length && Arrays.equals(this.formats, trackGroup.formats);
    }

    public Format getFormat(int i4) {
        return this.formats[i4];
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = 527 + Arrays.hashCode(this.formats);
        }
        return this.hashCode;
    }

    public int indexOf(Format format) {
        int i4 = 0;
        while (true) {
            Format[] formatArr = this.formats;
            if (i4 >= formatArr.length) {
                return -1;
            }
            if (format == formatArr[i4]) {
                return i4;
            }
            i4++;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.length);
        for (int i10 = 0; i10 < this.length; i10++) {
            parcel.writeParcelable(this.formats[i10], 0);
        }
    }

    TrackGroup(Parcel parcel) {
        int readInt = parcel.readInt();
        this.length = readInt;
        this.formats = new Format[readInt];
        for (int i4 = 0; i4 < this.length; i4++) {
            this.formats[i4] = (Format) parcel.readParcelable(Format.class.getClassLoader());
        }
    }
}
