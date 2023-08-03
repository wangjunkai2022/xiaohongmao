package eltos.simpledialogfragment.form;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import eltos.simpledialogfragment.form.FormElement;
import eltos.simpledialogfragment.form.d;

/* loaded from: classes3.dex */
public abstract class FormElement<T extends FormElement, V extends d> implements Parcelable {
    protected static final int NO_ID = -1;
    protected boolean required;
    protected String resultKey;
    private String text;
    private int textResourceId;

    /* JADX INFO: Access modifiers changed from: protected */
    public FormElement(String str) {
        this.required = false;
        this.text = null;
        this.textResourceId = -1;
        this.resultKey = str;
    }

    public abstract V buildViewHolder();

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public String getText(Context context) {
        String str = this.text;
        if (str != null) {
            return str;
        }
        int i4 = this.textResourceId;
        if (i4 != -1) {
            return context.getString(i4);
        }
        return null;
    }

    public T label(String str) {
        this.text = str;
        return this;
    }

    public T required() {
        return required(true);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.resultKey);
        parcel.writeByte(this.required ? (byte) 1 : (byte) 0);
        parcel.writeString(this.text);
        parcel.writeInt(this.textResourceId);
    }

    public T label(@StringRes int i4) {
        this.textResourceId = i4;
        return this;
    }

    public T required(boolean z9) {
        this.required = z9;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public FormElement(Parcel parcel) {
        this.required = false;
        this.text = null;
        this.textResourceId = -1;
        this.resultKey = parcel.readString();
        this.required = parcel.readByte() != 0;
        this.text = parcel.readString();
        this.textResourceId = parcel.readInt();
    }
}
