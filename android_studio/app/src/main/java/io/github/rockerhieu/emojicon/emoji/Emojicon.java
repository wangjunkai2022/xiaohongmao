package io.github.rockerhieu.emojicon.emoji;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public class Emojicon implements Parcelable {
    public static final Parcelable.Creator<Emojicon> CREATOR = new a();
    public static final int TYPE_NATURE = 2;
    public static final int TYPE_OBJECTS = 3;
    public static final int TYPE_PEOPLE = 1;
    public static final int TYPE_PLACES = 4;
    public static final int TYPE_SYMBOLS = 5;
    public static final int TYPE_UNDEFINED = 0;
    private String emoji;
    private int icon;
    private char value;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<Emojicon> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Emojicon createFromParcel(Parcel parcel) {
            return new Emojicon(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public Emojicon[] newArray(int i4) {
            return new Emojicon[i4];
        }
    }

    /* loaded from: classes3.dex */
    public @interface b {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface c {
    }

    public Emojicon(int i4, char c10, String str) {
        this.icon = i4;
        this.value = c10;
        this.emoji = str;
    }

    public static Emojicon fromChar(char c10) {
        Emojicon emojicon = new Emojicon();
        emojicon.emoji = Character.toString(c10);
        return emojicon;
    }

    public static Emojicon fromChars(String str) {
        Emojicon emojicon = new Emojicon();
        emojicon.emoji = str;
        return emojicon;
    }

    public static Emojicon fromCodePoint(int i4) {
        Emojicon emojicon = new Emojicon();
        emojicon.emoji = newString(i4);
        return emojicon;
    }

    public static Emojicon fromResource(int i4, int i10) {
        Emojicon emojicon = new Emojicon();
        emojicon.icon = i4;
        emojicon.value = (char) i10;
        return emojicon;
    }

    public static Emojicon[] getEmojicons(int i4) {
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 3) {
                    if (i4 != 4) {
                        if (i4 == 5) {
                            return e.f69877a;
                        }
                        throw new IllegalArgumentException("Invalid emojicon type: " + i4);
                    }
                    return d.f69876a;
                }
                return io.github.rockerhieu.emojicon.emoji.b.f69874a;
            }
            return io.github.rockerhieu.emojicon.emoji.a.f69873a;
        }
        return io.github.rockerhieu.emojicon.emoji.c.f69875a;
    }

    public static final String newString(int i4) {
        if (Character.charCount(i4) == 1) {
            return String.valueOf(i4);
        }
        return new String(Character.toChars(i4));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Emojicon) && this.emoji.equals(((Emojicon) obj).emoji);
    }

    public String getEmoji() {
        return this.emoji;
    }

    public int getIcon() {
        return this.icon;
    }

    public char getValue() {
        return this.value;
    }

    public int hashCode() {
        return this.emoji.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.icon);
        parcel.writeInt(this.value);
        parcel.writeString(this.emoji);
    }

    public Emojicon(Parcel parcel) {
        this.icon = parcel.readInt();
        this.value = (char) parcel.readInt();
        this.emoji = parcel.readString();
    }

    private Emojicon() {
    }

    public Emojicon(String str) {
        this.emoji = str;
    }
}
