package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.f1;
import com.google.android.exoplayer2.util.z0;

/* loaded from: classes2.dex */
public final class TextInformationFrame extends Id3Frame {
    public static final Parcelable.Creator<TextInformationFrame> CREATOR = new a();
    @Nullable
    public final String description;
    public final String value;

    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<TextInformationFrame> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public TextInformationFrame createFromParcel(Parcel parcel) {
            return new TextInformationFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public TextInformationFrame[] newArray(int i4) {
            return new TextInformationFrame[i4];
        }
    }

    public TextInformationFrame(String str, @Nullable String str2, String str3) {
        super(str);
        this.description = str2;
        this.value = str3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TextInformationFrame.class != obj.getClass()) {
            return false;
        }
        TextInformationFrame textInformationFrame = (TextInformationFrame) obj;
        return z0.c(this.id, textInformationFrame.id) && z0.c(this.description, textInformationFrame.description) && z0.c(this.value, textInformationFrame.value);
    }

    public int hashCode() {
        int hashCode = (527 + this.id.hashCode()) * 31;
        String str = this.description;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.value;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame, com.google.android.exoplayer2.metadata.Metadata.Entry
    public void populateMediaMetadata(f1.b bVar) {
        String str = this.id;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 82815:
                if (str.equals("TAL")) {
                    c10 = 0;
                    break;
                }
                break;
            case 83253:
                if (str.equals("TP1")) {
                    c10 = 1;
                    break;
                }
                break;
            case 83254:
                if (str.equals("TP2")) {
                    c10 = 2;
                    break;
                }
                break;
            case 83341:
                if (str.equals("TRK")) {
                    c10 = 3;
                    break;
                }
                break;
            case 83378:
                if (str.equals("TT2")) {
                    c10 = 4;
                    break;
                }
                break;
            case 83552:
                if (str.equals("TYE")) {
                    c10 = 5;
                    break;
                }
                break;
            case 2567331:
                if (str.equals("TALB")) {
                    c10 = 6;
                    break;
                }
                break;
            case 2575251:
                if (str.equals("TIT2")) {
                    c10 = 7;
                    break;
                }
                break;
            case 2581512:
                if (str.equals("TPE1")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 2581513:
                if (str.equals("TPE2")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 2583398:
                if (str.equals("TRCK")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 2590194:
                if (str.equals("TYER")) {
                    c10 = 11;
                    break;
                }
                break;
        }
        try {
            switch (c10) {
                case 0:
                case 6:
                    bVar.w(this.value);
                    return;
                case 1:
                case '\b':
                    bVar.x(this.value);
                    return;
                case 2:
                case '\t':
                    bVar.v(this.value);
                    return;
                case 3:
                case '\n':
                    String[] l12 = z0.l1(this.value, "/");
                    bVar.K(Integer.valueOf(Integer.parseInt(l12[0]))).J(l12.length > 1 ? Integer.valueOf(Integer.parseInt(l12[1])) : null);
                    return;
                case 4:
                case 7:
                    bVar.I(this.value);
                    return;
                case 5:
                case 11:
                    bVar.M(Integer.valueOf(Integer.parseInt(this.value)));
                    return;
                default:
                    return;
            }
        } catch (NumberFormatException unused) {
        }
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        String str = this.id;
        String str2 = this.description;
        String str3 = this.value;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(": description=");
        sb.append(str2);
        sb.append(": value=");
        sb.append(str3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.id);
        parcel.writeString(this.description);
        parcel.writeString(this.value);
    }

    TextInformationFrame(Parcel parcel) {
        super((String) z0.k(parcel.readString()));
        this.description = parcel.readString();
        this.value = (String) z0.k(parcel.readString());
    }
}
