package eltos.simpledialogfragment.form;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.BoolRes;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;

/* loaded from: classes3.dex */
public class Check extends FormElement<Check, eltos.simpledialogfragment.form.a> {
    public static final Parcelable.Creator<Check> CREATOR = new a();
    private Boolean preset;
    private int presetId;
    private String text;
    private int textResourceId;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<Check> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Check createFromParcel(Parcel parcel) {
            return new Check(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public Check[] newArray(int i4) {
            return new Check[i4];
        }
    }

    /* synthetic */ Check(Parcel parcel, a aVar) {
        this(parcel);
    }

    public static Check box(String str) {
        return new Check(str);
    }

    public Check check(boolean z9) {
        this.preset = Boolean.valueOf(z9);
        return this;
    }

    @Override // eltos.simpledialogfragment.form.FormElement, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean getInitialState(Context context) {
        Boolean bool = this.preset;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (this.presetId != -1) {
            return context.getResources().getBoolean(this.presetId);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.FormElement
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

    @Override // eltos.simpledialogfragment.form.FormElement, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        super.writeToParcel(parcel, i4);
        parcel.writeString(this.text);
        parcel.writeInt(this.textResourceId);
        Boolean bool = this.preset;
        parcel.writeByte((byte) (bool == null ? -1 : bool.booleanValue() ? 1 : 0));
        parcel.writeInt(this.presetId);
    }

    private Check(String str) {
        super(str);
        this.text = null;
        this.textResourceId = -1;
        this.preset = null;
        this.presetId = -1;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // eltos.simpledialogfragment.form.FormElement
    public eltos.simpledialogfragment.form.a buildViewHolder() {
        return new eltos.simpledialogfragment.form.a(this);
    }

    public Check check(@BoolRes int i4) {
        this.presetId = i4;
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // eltos.simpledialogfragment.form.FormElement
    public Check label(String str) {
        this.text = str;
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // eltos.simpledialogfragment.form.FormElement
    public Check label(@StringRes int i4) {
        this.textResourceId = i4;
        return this;
    }

    private Check(Parcel parcel) {
        super(parcel);
        Boolean bool = null;
        this.text = null;
        this.textResourceId = -1;
        this.preset = null;
        this.presetId = -1;
        this.text = parcel.readString();
        this.textResourceId = parcel.readInt();
        byte readByte = parcel.readByte();
        if (readByte >= 0) {
            bool = Boolean.valueOf(readByte != 0);
        }
        this.preset = bool;
        this.presetId = parcel.readInt();
    }
}
