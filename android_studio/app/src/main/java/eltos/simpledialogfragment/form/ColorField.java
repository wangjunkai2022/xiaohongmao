package eltos.simpledialogfragment.form;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.ArrayRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;

/* loaded from: classes3.dex */
public class ColorField extends FormElement<ColorField, b> {
    @ColorInt
    public static final int AUTO = 16777215;
    public static final Parcelable.Creator<ColorField> CREATOR = new a();
    @ColorInt
    public static final int NONE = 0;
    protected boolean allowCustom;
    protected int[] colors;
    protected int outline;
    @ColorInt
    private int preset;
    private int presetId;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<ColorField> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ColorField createFromParcel(Parcel parcel) {
            return new ColorField(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public ColorField[] newArray(int i4) {
            return new ColorField[i4];
        }
    }

    private ColorField(String str) {
        super(str);
        this.preset = 0;
        this.presetId = -1;
        this.colors = eltos.simpledialogfragment.color.a.f65083x1;
        this.allowCustom = true;
        this.outline = 0;
    }

    public static ColorField picker(String str) {
        return new ColorField(str);
    }

    public ColorField allowCustom(boolean z9) {
        this.allowCustom = z9;
        return this;
    }

    public ColorField color(@ColorInt int i4) {
        this.preset = i4;
        return this;
    }

    public ColorField colorRes(@ColorRes int i4) {
        this.presetId = i4;
        return this;
    }

    public ColorField colors(@ColorInt int[] iArr) {
        this.colors = iArr;
        return this;
    }

    @Override // eltos.simpledialogfragment.form.FormElement, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @ColorInt
    public int getInitialColor(Context context) {
        if (this.presetId != -1) {
            return context.getResources().getColor(this.presetId);
        }
        return this.preset;
    }

    public ColorField showOutline(@ColorInt int i4) {
        this.outline = i4;
        return this;
    }

    @Override // eltos.simpledialogfragment.form.FormElement, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        super.writeToParcel(parcel, i4);
        parcel.writeInt(this.preset);
        parcel.writeInt(this.presetId);
        parcel.writeIntArray(this.colors);
        parcel.writeByte(this.allowCustom ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.outline);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // eltos.simpledialogfragment.form.FormElement
    public b buildViewHolder() {
        return new b(this);
    }

    public ColorField colors(Context context, @ArrayRes int i4) {
        return colors(context.getResources().getIntArray(i4));
    }

    protected ColorField(Parcel parcel) {
        super(parcel);
        this.preset = 0;
        this.presetId = -1;
        this.colors = eltos.simpledialogfragment.color.a.f65083x1;
        this.allowCustom = true;
        this.outline = 0;
        this.preset = parcel.readInt();
        this.presetId = parcel.readInt();
        this.colors = parcel.createIntArray();
        this.allowCustom = parcel.readByte() != 0;
        this.outline = parcel.readInt();
    }
}
