package eltos.simpledialogfragment.list;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public class SimpleListItem implements Parcelable {
    public static final Parcelable.Creator<SimpleListItem> CREATOR = new a();
    private long id;
    private String string;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<SimpleListItem> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SimpleListItem createFromParcel(Parcel parcel) {
            return new SimpleListItem(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public SimpleListItem[] newArray(int i4) {
            return new SimpleListItem[i4];
        }
    }

    /* synthetic */ SimpleListItem(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getId() {
        return this.id;
    }

    public String getString() {
        return this.string;
    }

    public void setId(long j4) {
        this.id = j4;
    }

    public void setString(String str) {
        this.string = str;
    }

    public String toString() {
        return getString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.string);
    }

    protected SimpleListItem(String str) {
        this(str, Long.MIN_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SimpleListItem(String str, long j4) {
        this.string = str;
        this.id = j4;
    }

    private SimpleListItem(Parcel parcel) {
        this.string = parcel.readString();
    }
}
