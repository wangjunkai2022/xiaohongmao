package eltos.simpledialogfragment.form;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.ArrayRes;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import com.google.android.exoplayer2.extractor.ts.h0;
import eltos.simpledialogfragment.c;
import java.util.ArrayList;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class Input extends FormElement<Input, f> {
    private static final String ALPHANUMERIC_PATTERN = "^[a-zA-Z0-9]*$";
    public static final Parcelable.Creator<Input> CREATOR = new a();
    private static final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
    private static final String LETTERS_PATTERN = "^[a-zA-Z]*$";
    private static final String STRONG_PW_PATTERN = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@%_/'!&#:;,<>=~\"\\|\\*\\+\\-\\$\\^\\?\\.\\(\\)\\{\\}\\[\\]\\\\])(?=\\S+$).*$";
    private Pattern compiledPattern;
    boolean forceSuggestion;
    private String hint;
    private int hintResourceId;
    int inputType;
    boolean isSpinner;
    int maxLength;
    int minLength;
    boolean passwordToggleVisible;
    String pattern;
    private String patternError;
    private int patternErrorId;
    private int suggestionArrayRes;
    private int[] suggestionStringResArray;
    private String[] suggestions;
    private String text;
    private int textResourceId;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<Input> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Input createFromParcel(Parcel parcel) {
            return new Input(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public Input[] newArray(int i4) {
            return new Input[i4];
        }
    }

    /* synthetic */ Input(Parcel parcel, a aVar) {
        this(parcel);
    }

    public static Input email(String str) {
        return new Input(str).inputType(33).validatePatternEmail().hint(c.n.M);
    }

    public static Input name(String str) {
        return new Input(str).inputType(8193).hint(c.n.K0);
    }

    public static Input password(String str) {
        return new Input(str).inputType(h0.G).showPasswordToggle().hint(c.n.L0);
    }

    public static Input phone(String str) {
        return new Input(str).inputType(3).hint(c.n.R0);
    }

    public static Input pin(String str) {
        return new Input(str).inputType(18).hint(c.n.S0);
    }

    public static Input plain(String str) {
        return new Input(str);
    }

    public static Input spinner(String str) {
        return new Input(str).asSpinner(true).forceSuggestion().inputType(0);
    }

    public Input asSpinner(boolean z9) {
        this.isSpinner = z9;
        return this;
    }

    @Override // eltos.simpledialogfragment.form.FormElement, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Input forceSuggestion() {
        return forceSuggestion(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public String getHint(Context context) {
        String str = this.hint;
        if (str != null) {
            return str;
        }
        int i4 = this.hintResourceId;
        if (i4 != -1) {
            return context.getString(i4);
        }
        return null;
    }

    @Nullable
    protected String getPatternError(Context context) {
        String str = this.patternError;
        if (str != null) {
            return str;
        }
        int i4 = this.patternErrorId;
        if (i4 != -1) {
            return context.getString(i4);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public String[] getSuggestions(Context context) {
        String[] strArr = this.suggestions;
        if (strArr != null) {
            return strArr;
        }
        int[] iArr = this.suggestionStringResArray;
        if (iArr != null) {
            String[] strArr2 = new String[iArr.length];
            int i4 = 0;
            while (true) {
                int[] iArr2 = this.suggestionStringResArray;
                if (i4 >= iArr2.length) {
                    return strArr2;
                }
                strArr2[i4] = context.getString(iArr2[i4]);
                i4++;
            }
        } else if (this.suggestionArrayRes != -1) {
            return context.getResources().getStringArray(this.suggestionArrayRes);
        } else {
            return null;
        }
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

    public Input hint(String str) {
        this.hint = str;
        return this;
    }

    public Input inputType(int i4) {
        this.inputType = i4;
        return this;
    }

    public Input max(@IntRange(from = 1) int i4) {
        this.maxLength = i4;
        return this;
    }

    public Input min(@IntRange(from = 1) int i4) {
        this.minLength = i4;
        return this;
    }

    public Input showPasswordToggle() {
        return showPasswordToggle(true);
    }

    public Input suggest(@ArrayRes int i4) {
        this.suggestionArrayRes = i4;
        return this;
    }

    public Input text(String str) {
        this.text = str;
        return this;
    }

    public Input validatePattern(String str, @Nullable String str2) {
        this.pattern = str;
        this.patternError = str2;
        return this;
    }

    public Input validatePatternAlphanumeric() {
        return validatePattern(ALPHANUMERIC_PATTERN, c.n.B);
    }

    public Input validatePatternEmail() {
        return validatePattern(EMAIL_PATTERN, c.n.V);
    }

    public Input validatePatternLetters() {
        return validatePattern(LETTERS_PATTERN, c.n.X);
    }

    public Input validatePatternStrongPassword() {
        if (this.minLength < 8) {
            min(8);
        }
        return validatePattern(STRONG_PW_PATTERN, c.n.X0);
    }

    @Override // eltos.simpledialogfragment.form.FormElement, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        super.writeToParcel(parcel, i4);
        parcel.writeString(this.hint);
        parcel.writeInt(this.hintResourceId);
        parcel.writeString(this.text);
        parcel.writeInt(this.textResourceId);
        parcel.writeInt(this.inputType);
        parcel.writeInt(this.maxLength);
        parcel.writeInt(this.minLength);
        parcel.writeInt(this.suggestionArrayRes);
        parcel.writeIntArray(this.suggestionStringResArray);
        parcel.writeStringArray(this.suggestions);
        parcel.writeByte(this.passwordToggleVisible ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.forceSuggestion ? (byte) 1 : (byte) 0);
        parcel.writeString(this.pattern);
        parcel.writeString(this.patternError);
        parcel.writeInt(this.patternErrorId);
        parcel.writeByte(this.isSpinner ? (byte) 1 : (byte) 0);
    }

    private Input(String str) {
        super(str);
        this.hint = null;
        this.hintResourceId = -1;
        this.text = null;
        this.textResourceId = -1;
        this.inputType = 1;
        this.maxLength = -1;
        this.minLength = -1;
        this.suggestionArrayRes = -1;
        this.suggestionStringResArray = null;
        this.suggestions = null;
        this.forceSuggestion = false;
        this.isSpinner = false;
        this.pattern = null;
        this.patternError = null;
        this.patternErrorId = -1;
        this.compiledPattern = null;
    }

    @Override // eltos.simpledialogfragment.form.FormElement
    public f buildViewHolder() {
        return new f(this);
    }

    public Input forceSuggestion(boolean z9) {
        this.forceSuggestion = z9;
        return this;
    }

    public Input hint(@StringRes int i4) {
        this.hintResourceId = i4;
        return this;
    }

    public Input showPasswordToggle(boolean z9) {
        this.passwordToggleVisible = z9;
        return this;
    }

    public Input suggest(@StringRes int... iArr) {
        if (iArr != null && iArr.length > 0) {
            this.suggestionStringResArray = iArr;
        }
        return this;
    }

    public Input text(@StringRes int i4) {
        this.textResourceId = i4;
        return this;
    }

    public Input validatePattern(String str, @StringRes int i4) {
        this.pattern = str;
        this.patternErrorId = i4;
        return this;
    }

    public Input suggest(String... strArr) {
        if (strArr != null && strArr.length > 0) {
            this.suggestions = strArr;
        }
        return this;
    }

    public static Input spinner(String str, @ArrayRes int i4) {
        return spinner(str).suggest(i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String validatePattern(Context context, @Nullable String str) {
        String str2 = this.pattern;
        if (str2 == null || str == null) {
            return null;
        }
        if (this.compiledPattern == null) {
            this.compiledPattern = Pattern.compile(str2);
        }
        if (this.compiledPattern.matcher(str).matches()) {
            return null;
        }
        return getPatternError(context);
    }

    public static Input spinner(String str, @StringRes int... iArr) {
        return spinner(str).suggest(iArr);
    }

    public Input suggest(ArrayList<String> arrayList) {
        return (arrayList == null || arrayList.size() <= 0) ? this : suggest((String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    public static Input spinner(String str, String... strArr) {
        return spinner(str).suggest(strArr);
    }

    public static Input spinner(String str, ArrayList<String> arrayList) {
        return spinner(str).suggest(arrayList);
    }

    private Input(Parcel parcel) {
        super(parcel);
        this.hint = null;
        this.hintResourceId = -1;
        this.text = null;
        this.textResourceId = -1;
        this.inputType = 1;
        this.maxLength = -1;
        this.minLength = -1;
        this.suggestionArrayRes = -1;
        this.suggestionStringResArray = null;
        this.suggestions = null;
        this.forceSuggestion = false;
        this.isSpinner = false;
        this.pattern = null;
        this.patternError = null;
        this.patternErrorId = -1;
        this.compiledPattern = null;
        this.hint = parcel.readString();
        this.hintResourceId = parcel.readInt();
        this.text = parcel.readString();
        this.textResourceId = parcel.readInt();
        this.inputType = parcel.readInt();
        this.maxLength = parcel.readInt();
        this.minLength = parcel.readInt();
        this.suggestionArrayRes = parcel.readInt();
        this.suggestionStringResArray = parcel.createIntArray();
        this.suggestions = parcel.createStringArray();
        this.passwordToggleVisible = parcel.readByte() != 0;
        this.forceSuggestion = parcel.readByte() != 0;
        this.pattern = parcel.readString();
        this.patternError = parcel.readString();
        this.patternErrorId = parcel.readInt();
        this.isSpinner = parcel.readByte() != 0;
    }
}
