package eltos.simpledialogfragment.form;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Date;

/* loaded from: classes3.dex */
public class DateTime extends FormElement<DateTime, c> {
    public static final Parcelable.Creator<DateTime> CREATOR = new a();
    protected Long date;
    protected Integer hour;
    protected Long max;
    protected Long min;
    protected Integer minute;
    protected Type type;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3.dex */
    public enum Type {
        DATE,
        TIME,
        DATETIME
    }

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<DateTime> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public DateTime createFromParcel(Parcel parcel) {
            return new DateTime(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public DateTime[] newArray(int i4) {
            return new DateTime[i4];
        }
    }

    private DateTime(String str) {
        super(str);
        this.type = Type.DATE;
    }

    public static DateTime date(String str) {
        return picker(str).type(Type.DATE);
    }

    public static DateTime datetime(String str) {
        return picker(str).type(Type.DATETIME);
    }

    public static DateTime picker(String str) {
        return new DateTime(str);
    }

    public static DateTime time(String str) {
        return picker(str).type(Type.TIME);
    }

    @Override // eltos.simpledialogfragment.form.FormElement, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public DateTime max(Date date) {
        this.max = Long.valueOf(date.getTime());
        return this;
    }

    public DateTime min(Date date) {
        this.min = Long.valueOf(date.getTime());
        return this;
    }

    public DateTime type(Type type) {
        this.type = type;
        return this;
    }

    @Override // eltos.simpledialogfragment.form.FormElement, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        super.writeToParcel(parcel, i4);
        parcel.writeString(this.type.name());
        Long l10 = this.date;
        parcel.writeLong(l10 == null ? 0L : l10.longValue());
        Long l11 = this.min;
        parcel.writeLong(l11 == null ? 0L : l11.longValue());
        Long l12 = this.max;
        parcel.writeLong(l12 != null ? l12.longValue() : 0L);
        Integer num = this.hour;
        parcel.writeInt(num == null ? -1 : num.intValue());
        Integer num2 = this.minute;
        parcel.writeInt(num2 != null ? num2.intValue() : -1);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // eltos.simpledialogfragment.form.FormElement
    public c buildViewHolder() {
        return new c(this);
    }

    public DateTime date(Date date) {
        this.date = Long.valueOf(date.getTime());
        this.hour = Integer.valueOf(date.getHours());
        this.minute = Integer.valueOf(date.getMinutes());
        return this;
    }

    public DateTime time(int i4, int i10) {
        this.hour = Integer.valueOf(i4);
        this.minute = Integer.valueOf(i10);
        return this;
    }

    protected DateTime(Parcel parcel) {
        super(parcel);
        this.type = Type.DATE;
        this.type = Type.valueOf(parcel.readString());
        Long valueOf = Long.valueOf(parcel.readLong());
        this.date = valueOf;
        this.date = valueOf.longValue() == 0 ? null : this.date;
        Long valueOf2 = Long.valueOf(parcel.readLong());
        this.min = valueOf2;
        this.min = valueOf2.longValue() == 0 ? null : this.min;
        Long valueOf3 = Long.valueOf(parcel.readLong());
        this.max = valueOf3;
        this.max = valueOf3.longValue() == 0 ? null : this.max;
        Integer valueOf4 = Integer.valueOf(parcel.readInt());
        this.hour = valueOf4;
        this.hour = valueOf4.intValue() == -1 ? null : this.hour;
        Integer valueOf5 = Integer.valueOf(parcel.readInt());
        this.minute = valueOf5;
        this.minute = valueOf5.intValue() != -1 ? this.minute : null;
    }
}
