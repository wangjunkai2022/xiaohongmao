package eltos.simpledialogfragment.form;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.StringRes;

/* loaded from: classes3.dex */
public class Hint extends FormElement<Hint, e> {
    public static final Parcelable.Creator<Hint> CREATOR = new a();

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<Hint> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Hint createFromParcel(Parcel parcel) {
            return new Hint(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public Hint[] newArray(int i4) {
            return new Hint[i4];
        }
    }

    public Hint() {
        super((String) null);
    }

    public static Hint plain(String str) {
        return new Hint().label(str);
    }

    @Override // eltos.simpledialogfragment.form.FormElement, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // eltos.simpledialogfragment.form.FormElement, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        super.writeToParcel(parcel, i4);
    }

    protected Hint(Parcel parcel) {
        super(parcel);
    }

    public static Hint plain(@StringRes int i4) {
        return new Hint().label(i4);
    }

    @Override // eltos.simpledialogfragment.form.FormElement
    public e buildViewHolder() {
        return new e(this);
    }
}
