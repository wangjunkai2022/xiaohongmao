package eltos.simpledialogfragment.form;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.ArrayRes;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;

@Deprecated
/* loaded from: classes3.dex */
public class Spinner extends FormElement<Spinner, h> {
    public static final Parcelable.Creator<Spinner> CREATOR = new a();
    private int itemArrayRes;
    private int[] itemStringResArray;
    private String[] items;
    private String placeholder;
    private int placeholderResourceId;
    int position;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<Spinner> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Spinner createFromParcel(Parcel parcel) {
            return new Spinner(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public Spinner[] newArray(int i4) {
            return new Spinner[i4];
        }
    }

    private Spinner(String str) {
        super(str);
        this.itemArrayRes = -1;
        this.itemStringResArray = null;
        this.items = null;
        this.placeholder = null;
        this.placeholderResourceId = -1;
        this.position = -1;
    }

    public static Spinner plain(String str) {
        return new Spinner(str);
    }

    @Override // eltos.simpledialogfragment.form.FormElement, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public String[] getItems(Context context) {
        String[] strArr = this.items;
        if (strArr != null) {
            return strArr;
        }
        int[] iArr = this.itemStringResArray;
        if (iArr != null) {
            String[] strArr2 = new String[iArr.length];
            int i4 = 0;
            while (true) {
                int[] iArr2 = this.itemStringResArray;
                if (i4 >= iArr2.length) {
                    return strArr2;
                }
                strArr2[i4] = context.getString(iArr2[i4]);
                i4++;
            }
        } else if (this.itemArrayRes != -1) {
            return context.getResources().getStringArray(this.itemArrayRes);
        } else {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public String getPlaceholderText(Context context) {
        String str = this.placeholder;
        if (str != null) {
            return str;
        }
        int i4 = this.placeholderResourceId;
        if (i4 != -1) {
            return context.getString(i4);
        }
        return null;
    }

    public Spinner items(@ArrayRes int i4) {
        this.itemArrayRes = i4;
        return this;
    }

    public Spinner placeholder(String str) {
        this.placeholder = str;
        return this;
    }

    public Spinner preset(int i4) {
        this.position = i4;
        return this;
    }

    @Override // eltos.simpledialogfragment.form.FormElement, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.itemArrayRes);
        parcel.writeIntArray(this.itemStringResArray);
        parcel.writeStringArray(this.items);
        parcel.writeString(this.placeholder);
        parcel.writeInt(this.placeholderResourceId);
        parcel.writeInt(this.position);
    }

    @Override // eltos.simpledialogfragment.form.FormElement
    public h buildViewHolder() {
        return new h(this);
    }

    public Spinner items(@StringRes int... iArr) {
        if (iArr != null && iArr.length > 0) {
            this.itemStringResArray = iArr;
        }
        return this;
    }

    public Spinner placeholder(@StringRes int i4) {
        this.placeholderResourceId = i4;
        return this;
    }

    public Spinner items(String... strArr) {
        if (strArr != null && strArr.length > 0) {
            this.items = strArr;
        }
        return this;
    }

    protected Spinner(Parcel parcel) {
        super(parcel);
        this.itemArrayRes = -1;
        this.itemStringResArray = null;
        this.items = null;
        this.placeholder = null;
        this.placeholderResourceId = -1;
        this.position = -1;
        this.itemArrayRes = parcel.readInt();
        this.itemStringResArray = parcel.createIntArray();
        this.items = parcel.createStringArray();
        this.placeholder = parcel.readString();
        this.placeholderResourceId = parcel.readInt();
        this.position = parcel.readInt();
    }
}
