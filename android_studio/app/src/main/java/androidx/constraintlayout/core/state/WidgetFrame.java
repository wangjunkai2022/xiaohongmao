package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.parser.CLElement;
import androidx.constraintlayout.core.parser.CLKey;
import androidx.constraintlayout.core.parser.CLNumber;
import androidx.constraintlayout.core.parser.CLObject;
import androidx.constraintlayout.core.parser.CLParsingException;
import androidx.constraintlayout.core.state.Transition;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public class WidgetFrame {
    private static final boolean OLD_SYSTEM = true;
    public static float phone_orientation = Float.NaN;
    public float alpha;
    public int bottom;
    public float interpolatedPos;
    public int left;
    public final HashMap<String, CustomVariable> mCustom;
    public String name;
    public float pivotX;
    public float pivotY;
    public int right;
    public float rotationX;
    public float rotationY;
    public float rotationZ;
    public float scaleX;
    public float scaleY;
    public int top;
    public float translationX;
    public float translationY;
    public float translationZ;
    public int visibility;
    public ConstraintWidget widget;

    public WidgetFrame() {
        this.widget = null;
        this.left = 0;
        this.top = 0;
        this.right = 0;
        this.bottom = 0;
        this.pivotX = Float.NaN;
        this.pivotY = Float.NaN;
        this.rotationX = Float.NaN;
        this.rotationY = Float.NaN;
        this.rotationZ = Float.NaN;
        this.translationX = Float.NaN;
        this.translationY = Float.NaN;
        this.translationZ = Float.NaN;
        this.scaleX = Float.NaN;
        this.scaleY = Float.NaN;
        this.alpha = Float.NaN;
        this.interpolatedPos = Float.NaN;
        this.visibility = 0;
        this.mCustom = new HashMap<>();
        this.name = null;
    }

    private static void add(StringBuilder sb, String str, int i4) {
        sb.append(str);
        sb.append(": ");
        sb.append(i4);
        sb.append(",\n");
    }

    public static void interpolate(int i4, int i10, WidgetFrame widgetFrame, WidgetFrame widgetFrame2, WidgetFrame widgetFrame3, Transition transition, float f10) {
        int i11;
        float f11;
        int i12;
        float f12;
        float f13;
        int i13;
        float f14;
        int i14;
        int i15;
        int i16;
        int i17;
        float f15 = 100.0f * f10;
        int i18 = (int) f15;
        int i19 = widgetFrame2.left;
        int i20 = widgetFrame2.top;
        int i21 = widgetFrame3.left;
        int i22 = widgetFrame3.top;
        int i23 = widgetFrame2.right - i19;
        int i24 = widgetFrame2.bottom - i20;
        int i25 = widgetFrame3.right - i21;
        int i26 = widgetFrame3.bottom - i22;
        float f16 = widgetFrame2.alpha;
        float f17 = widgetFrame3.alpha;
        if (widgetFrame2.visibility == 8) {
            i19 = (int) (i19 - (i25 / 2.0f));
            i20 = (int) (i20 - (i26 / 2.0f));
            if (Float.isNaN(f16)) {
                i12 = i26;
                i11 = i25;
                f11 = 0.0f;
            } else {
                f11 = f16;
                i11 = i25;
                i12 = i26;
            }
        } else {
            i11 = i23;
            f11 = f16;
            i12 = i24;
        }
        if (widgetFrame3.visibility == 8) {
            i21 = (int) (i21 - (i11 / 2.0f));
            i22 = (int) (i22 - (i12 / 2.0f));
            i25 = i11;
            i26 = i12;
            if (Float.isNaN(f17)) {
                f17 = 0.0f;
            }
        }
        if (Float.isNaN(f11) && !Float.isNaN(f17)) {
            f11 = 1.0f;
        }
        if (!Float.isNaN(f11) && Float.isNaN(f17)) {
            f17 = 1.0f;
        }
        if (widgetFrame2.visibility == 4) {
            f13 = f17;
            f12 = 0.0f;
        } else {
            f12 = f11;
            f13 = f17;
        }
        float f18 = widgetFrame3.visibility == 4 ? 0.0f : f13;
        if (widgetFrame.widget == null || !transition.hasPositionKeyframes()) {
            i13 = i19;
            f14 = f10;
        } else {
            Transition.KeyPosition findPreviousPosition = transition.findPreviousPosition(widgetFrame.widget.stringId, i18);
            i13 = i19;
            Transition.KeyPosition findNextPosition = transition.findNextPosition(widgetFrame.widget.stringId, i18);
            if (findPreviousPosition == findNextPosition) {
                findNextPosition = null;
            }
            if (findPreviousPosition != null) {
                i13 = (int) (findPreviousPosition.f421x * i4);
                i15 = i10;
                i20 = (int) (findPreviousPosition.f422y * i15);
                i16 = findPreviousPosition.frame;
                i14 = i4;
            } else {
                i14 = i4;
                i15 = i10;
                i16 = 0;
            }
            if (findNextPosition != null) {
                i21 = (int) (findNextPosition.f421x * i14);
                i22 = (int) (findNextPosition.f422y * i15);
                i17 = findNextPosition.frame;
            } else {
                i17 = 100;
            }
            f14 = (f15 - i16) / (i17 - i16);
        }
        int i27 = i13;
        widgetFrame.widget = widgetFrame2.widget;
        int i28 = (int) (i27 + ((i21 - i27) * f14));
        widgetFrame.left = i28;
        int i29 = (int) (i20 + (f14 * (i22 - i20)));
        widgetFrame.top = i29;
        float f19 = 1.0f - f10;
        widgetFrame.right = i28 + ((int) ((i11 * f19) + (i25 * f10)));
        widgetFrame.bottom = i29 + ((int) ((f19 * i12) + (i26 * f10)));
        widgetFrame.pivotX = interpolate(widgetFrame2.pivotX, widgetFrame3.pivotX, 0.5f, f10);
        widgetFrame.pivotY = interpolate(widgetFrame2.pivotY, widgetFrame3.pivotY, 0.5f, f10);
        widgetFrame.rotationX = interpolate(widgetFrame2.rotationX, widgetFrame3.rotationX, 0.0f, f10);
        widgetFrame.rotationY = interpolate(widgetFrame2.rotationY, widgetFrame3.rotationY, 0.0f, f10);
        widgetFrame.rotationZ = interpolate(widgetFrame2.rotationZ, widgetFrame3.rotationZ, 0.0f, f10);
        widgetFrame.scaleX = interpolate(widgetFrame2.scaleX, widgetFrame3.scaleX, 1.0f, f10);
        widgetFrame.scaleY = interpolate(widgetFrame2.scaleY, widgetFrame3.scaleY, 1.0f, f10);
        widgetFrame.translationX = interpolate(widgetFrame2.translationX, widgetFrame3.translationX, 0.0f, f10);
        widgetFrame.translationY = interpolate(widgetFrame2.translationY, widgetFrame3.translationY, 0.0f, f10);
        widgetFrame.translationZ = interpolate(widgetFrame2.translationZ, widgetFrame3.translationZ, 0.0f, f10);
        widgetFrame.alpha = interpolate(f12, f18, 1.0f, f10);
        Set<String> keySet = widgetFrame3.mCustom.keySet();
        widgetFrame.mCustom.clear();
        for (String str : keySet) {
            if (widgetFrame2.mCustom.containsKey(str)) {
                CustomVariable customVariable = widgetFrame2.mCustom.get(str);
                CustomVariable customVariable2 = widgetFrame3.mCustom.get(str);
                CustomVariable customVariable3 = new CustomVariable(customVariable);
                widgetFrame.mCustom.put(str, customVariable3);
                if (customVariable.numberOfInterpolatedValues() == 1) {
                    customVariable3.setValue(Float.valueOf(interpolate(customVariable.getValueToInterpolate(), customVariable2.getValueToInterpolate(), 0.0f, f10)));
                } else {
                    int numberOfInterpolatedValues = customVariable.numberOfInterpolatedValues();
                    float[] fArr = new float[numberOfInterpolatedValues];
                    float[] fArr2 = new float[numberOfInterpolatedValues];
                    customVariable.getValuesToInterpolate(fArr);
                    customVariable2.getValuesToInterpolate(fArr2);
                    for (int i30 = 0; i30 < numberOfInterpolatedValues; i30++) {
                        fArr[i30] = interpolate(fArr[i30], fArr2[i30], 0.0f, f10);
                        customVariable3.setValue(fArr);
                    }
                }
            }
        }
    }

    private void serializeAnchor(StringBuilder sb, ConstraintAnchor.Type type) {
        ConstraintAnchor anchor = this.widget.getAnchor(type);
        if (anchor == null || anchor.mTarget == null) {
            return;
        }
        sb.append("Anchor");
        sb.append(type.name());
        sb.append(": ['");
        String str = anchor.mTarget.getOwner().stringId;
        if (str == null) {
            str = "#PARENT";
        }
        sb.append(str);
        sb.append("', '");
        sb.append(anchor.mTarget.getType().name());
        sb.append("', '");
        sb.append(anchor.mMargin);
        sb.append("'],\n");
    }

    public void addCustomColor(String str, int i4) {
        setCustomAttribute(str, 902, i4);
    }

    public void addCustomFloat(String str, float f10) {
        setCustomAttribute(str, 901, f10);
    }

    public float centerX() {
        int i4 = this.left;
        return i4 + ((this.right - i4) / 2.0f);
    }

    public float centerY() {
        int i4 = this.top;
        return i4 + ((this.bottom - i4) / 2.0f);
    }

    public CustomVariable getCustomAttribute(String str) {
        return this.mCustom.get(str);
    }

    public Set<String> getCustomAttributeNames() {
        return this.mCustom.keySet();
    }

    public int getCustomColor(String str) {
        if (this.mCustom.containsKey(str)) {
            return this.mCustom.get(str).getColorValue();
        }
        return -21880;
    }

    public float getCustomFloat(String str) {
        if (this.mCustom.containsKey(str)) {
            return this.mCustom.get(str).getFloatValue();
        }
        return Float.NaN;
    }

    public int height() {
        return Math.max(0, this.bottom - this.top);
    }

    public boolean isDefaultTransform() {
        return Float.isNaN(this.rotationX) && Float.isNaN(this.rotationY) && Float.isNaN(this.rotationZ) && Float.isNaN(this.translationX) && Float.isNaN(this.translationY) && Float.isNaN(this.translationZ) && Float.isNaN(this.scaleX) && Float.isNaN(this.scaleY) && Float.isNaN(this.alpha);
    }

    void logv(String str) {
        String str2;
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str3 = (".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName()) + " " + (hashCode() % 1000);
        if (this.widget != null) {
            str2 = str3 + "/" + (this.widget.hashCode() % 1000);
        } else {
            str2 = str3 + "/NULL";
        }
        System.out.println(str2 + " " + str);
    }

    void parseCustom(CLElement cLElement) throws CLParsingException {
        CLObject cLObject = (CLObject) cLElement;
        int size = cLObject.size();
        for (int i4 = 0; i4 < size; i4++) {
            CLKey cLKey = (CLKey) cLObject.get(i4);
            cLKey.content();
            CLElement value = cLKey.getValue();
            String content = value.content();
            if (content.matches("#[0-9a-fA-F]+")) {
                setCustomAttribute(cLKey.content(), 902, Integer.parseInt(content.substring(1), 16));
            } else if (value instanceof CLNumber) {
                setCustomAttribute(cLKey.content(), 901, value.getFloat());
            } else {
                setCustomAttribute(cLKey.content(), TypedValues.Custom.TYPE_STRING, content);
            }
        }
    }

    void printCustomAttributes() {
        String str;
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str2 = (".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName()) + " " + (hashCode() % 1000);
        if (this.widget != null) {
            str = str2 + "/" + (this.widget.hashCode() % 1000) + " ";
        } else {
            str = str2 + "/NULL ";
        }
        HashMap<String, CustomVariable> hashMap = this.mCustom;
        if (hashMap != null) {
            Iterator<String> it = hashMap.keySet().iterator();
            while (it.hasNext()) {
                System.out.println(str + this.mCustom.get(it.next()).toString());
            }
        }
    }

    public StringBuilder serialize(StringBuilder sb) {
        return serialize(sb, false);
    }

    public void setCustomAttribute(String str, int i4, float f10) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setFloatValue(f10);
        } else {
            this.mCustom.put(str, new CustomVariable(str, i4, f10));
        }
    }

    public boolean setValue(String str, CLElement cLElement) throws CLParsingException {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1881940865:
                if (str.equals("phone_orientation")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1383228885:
                if (str.equals("bottom")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1349088399:
                if (str.equals("custom")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1249320806:
                if (str.equals("rotationX")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c10 = 4;
                    break;
                }
                break;
            case -1249320804:
                if (str.equals("rotationZ")) {
                    c10 = 5;
                    break;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c10 = 6;
                    break;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c10 = 7;
                    break;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c10 = '\b';
                    break;
                }
                break;
            case -987906986:
                if (str.equals("pivotX")) {
                    c10 = '\t';
                    break;
                }
                break;
            case -987906985:
                if (str.equals("pivotY")) {
                    c10 = '\n';
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c10 = 11;
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 115029:
                if (str.equals("top")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 3317767:
                if (str.equals(com.google.android.exoplayer2.text.ttml.d.f25720l0)) {
                    c10 = 14;
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c10 = 15;
                    break;
                }
                break;
            case 108511772:
                if (str.equals(com.google.android.exoplayer2.text.ttml.d.f25723n0)) {
                    c10 = 16;
                    break;
                }
                break;
            case 642850769:
                if (str.equals("interpolatedPos")) {
                    c10 = 17;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                phone_orientation = cLElement.getFloat();
                break;
            case 1:
                this.bottom = cLElement.getInt();
                break;
            case 2:
                parseCustom(cLElement);
                break;
            case 3:
                this.rotationX = cLElement.getFloat();
                break;
            case 4:
                this.rotationY = cLElement.getFloat();
                break;
            case 5:
                this.rotationZ = cLElement.getFloat();
                break;
            case 6:
                this.translationX = cLElement.getFloat();
                break;
            case 7:
                this.translationY = cLElement.getFloat();
                break;
            case '\b':
                this.translationZ = cLElement.getFloat();
                break;
            case '\t':
                this.pivotX = cLElement.getFloat();
                break;
            case '\n':
                this.pivotY = cLElement.getFloat();
                break;
            case 11:
                this.scaleX = cLElement.getFloat();
                break;
            case '\f':
                this.scaleY = cLElement.getFloat();
                break;
            case '\r':
                this.top = cLElement.getInt();
                break;
            case 14:
                this.left = cLElement.getInt();
                break;
            case 15:
                this.alpha = cLElement.getFloat();
                break;
            case 16:
                this.right = cLElement.getInt();
                break;
            case 17:
                this.interpolatedPos = cLElement.getFloat();
                break;
            default:
                return false;
        }
        return true;
    }

    public WidgetFrame update() {
        ConstraintWidget constraintWidget = this.widget;
        if (constraintWidget != null) {
            this.left = constraintWidget.getLeft();
            this.top = this.widget.getTop();
            this.right = this.widget.getRight();
            this.bottom = this.widget.getBottom();
            updateAttributes(this.widget.frame);
        }
        return this;
    }

    public void updateAttributes(WidgetFrame widgetFrame) {
        this.pivotX = widgetFrame.pivotX;
        this.pivotY = widgetFrame.pivotY;
        this.rotationX = widgetFrame.rotationX;
        this.rotationY = widgetFrame.rotationY;
        this.rotationZ = widgetFrame.rotationZ;
        this.translationX = widgetFrame.translationX;
        this.translationY = widgetFrame.translationY;
        this.translationZ = widgetFrame.translationZ;
        this.scaleX = widgetFrame.scaleX;
        this.scaleY = widgetFrame.scaleY;
        this.alpha = widgetFrame.alpha;
        this.visibility = widgetFrame.visibility;
        this.mCustom.clear();
        for (CustomVariable customVariable : widgetFrame.mCustom.values()) {
            this.mCustom.put(customVariable.getName(), customVariable.copy());
        }
    }

    public int width() {
        return Math.max(0, this.right - this.left);
    }

    public StringBuilder serialize(StringBuilder sb, boolean z9) {
        sb.append("{\n");
        add(sb, com.google.android.exoplayer2.text.ttml.d.f25720l0, this.left);
        add(sb, "top", this.top);
        add(sb, com.google.android.exoplayer2.text.ttml.d.f25723n0, this.right);
        add(sb, "bottom", this.bottom);
        add(sb, "pivotX", this.pivotX);
        add(sb, "pivotY", this.pivotY);
        add(sb, "rotationX", this.rotationX);
        add(sb, "rotationY", this.rotationY);
        add(sb, "rotationZ", this.rotationZ);
        add(sb, "translationX", this.translationX);
        add(sb, "translationY", this.translationY);
        add(sb, "translationZ", this.translationZ);
        add(sb, "scaleX", this.scaleX);
        add(sb, "scaleY", this.scaleY);
        add(sb, "alpha", this.alpha);
        add(sb, "visibility", this.left);
        add(sb, "interpolatedPos", this.interpolatedPos);
        if (this.widget != null) {
            for (ConstraintAnchor.Type type : ConstraintAnchor.Type.values()) {
                serializeAnchor(sb, type);
            }
        }
        if (z9) {
            add(sb, "phone_orientation", phone_orientation);
        }
        if (z9) {
            add(sb, "phone_orientation", phone_orientation);
        }
        if (this.mCustom.size() != 0) {
            sb.append("custom : {\n");
            for (String str : this.mCustom.keySet()) {
                CustomVariable customVariable = this.mCustom.get(str);
                sb.append(str);
                sb.append(": ");
                switch (customVariable.getType()) {
                    case 900:
                        sb.append(customVariable.getIntegerValue());
                        sb.append(",\n");
                        break;
                    case 901:
                    case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                        sb.append(customVariable.getFloatValue());
                        sb.append(",\n");
                        break;
                    case 902:
                        sb.append("'");
                        sb.append(CustomVariable.colorString(customVariable.getIntegerValue()));
                        sb.append("',\n");
                        break;
                    case TypedValues.Custom.TYPE_STRING /* 903 */:
                        sb.append("'");
                        sb.append(customVariable.getStringValue());
                        sb.append("',\n");
                        break;
                    case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                        sb.append("'");
                        sb.append(customVariable.getBooleanValue());
                        sb.append("',\n");
                        break;
                }
            }
            sb.append("}\n");
        }
        sb.append("}\n");
        return sb;
    }

    public void setCustomAttribute(String str, int i4, int i10) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setIntValue(i10);
        } else {
            this.mCustom.put(str, new CustomVariable(str, i4, i10));
        }
    }

    private static void add(StringBuilder sb, String str, float f10) {
        if (Float.isNaN(f10)) {
            return;
        }
        sb.append(str);
        sb.append(": ");
        sb.append(f10);
        sb.append(",\n");
    }

    public void setCustomAttribute(String str, int i4, boolean z9) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setBooleanValue(z9);
        } else {
            this.mCustom.put(str, new CustomVariable(str, i4, z9));
        }
    }

    public WidgetFrame update(ConstraintWidget constraintWidget) {
        if (constraintWidget == null) {
            return this;
        }
        this.widget = constraintWidget;
        update();
        return this;
    }

    public void setCustomAttribute(String str, int i4, String str2) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setStringValue(str2);
        } else {
            this.mCustom.put(str, new CustomVariable(str, i4, str2));
        }
    }

    public WidgetFrame(ConstraintWidget constraintWidget) {
        this.widget = null;
        this.left = 0;
        this.top = 0;
        this.right = 0;
        this.bottom = 0;
        this.pivotX = Float.NaN;
        this.pivotY = Float.NaN;
        this.rotationX = Float.NaN;
        this.rotationY = Float.NaN;
        this.rotationZ = Float.NaN;
        this.translationX = Float.NaN;
        this.translationY = Float.NaN;
        this.translationZ = Float.NaN;
        this.scaleX = Float.NaN;
        this.scaleY = Float.NaN;
        this.alpha = Float.NaN;
        this.interpolatedPos = Float.NaN;
        this.visibility = 0;
        this.mCustom = new HashMap<>();
        this.name = null;
        this.widget = constraintWidget;
    }

    public WidgetFrame(WidgetFrame widgetFrame) {
        this.widget = null;
        this.left = 0;
        this.top = 0;
        this.right = 0;
        this.bottom = 0;
        this.pivotX = Float.NaN;
        this.pivotY = Float.NaN;
        this.rotationX = Float.NaN;
        this.rotationY = Float.NaN;
        this.rotationZ = Float.NaN;
        this.translationX = Float.NaN;
        this.translationY = Float.NaN;
        this.translationZ = Float.NaN;
        this.scaleX = Float.NaN;
        this.scaleY = Float.NaN;
        this.alpha = Float.NaN;
        this.interpolatedPos = Float.NaN;
        this.visibility = 0;
        this.mCustom = new HashMap<>();
        this.name = null;
        this.widget = widgetFrame.widget;
        this.left = widgetFrame.left;
        this.top = widgetFrame.top;
        this.right = widgetFrame.right;
        this.bottom = widgetFrame.bottom;
        updateAttributes(widgetFrame);
    }

    private static float interpolate(float f10, float f11, float f12, float f13) {
        boolean isNaN = Float.isNaN(f10);
        boolean isNaN2 = Float.isNaN(f11);
        if (isNaN && isNaN2) {
            return Float.NaN;
        }
        if (isNaN) {
            f10 = f12;
        }
        if (isNaN2) {
            f11 = f12;
        }
        return f10 + (f13 * (f11 - f10));
    }
}
