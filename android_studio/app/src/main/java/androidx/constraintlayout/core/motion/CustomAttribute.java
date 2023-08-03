package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.utils.Utils;
import androidx.core.view.ViewCompat;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;

/* loaded from: classes.dex */
public class CustomAttribute {
    private static final String TAG = "TransitionLayout";
    boolean mBooleanValue;
    private int mColorValue;
    private float mFloatValue;
    private int mIntegerValue;
    private boolean mMethod;
    String mName;
    private String mStringValue;
    private AttributeType mType;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.core.motion.CustomAttribute$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType;

        static {
            int[] iArr = new int[AttributeType.values().length];
            $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType = iArr;
            try {
                iArr[AttributeType.REFERENCE_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[AttributeType.BOOLEAN_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[AttributeType.STRING_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[AttributeType.COLOR_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[AttributeType.COLOR_DRAWABLE_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[AttributeType.INT_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[AttributeType.FLOAT_TYPE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[AttributeType.DIMENSION_TYPE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* loaded from: classes.dex */
    public enum AttributeType {
        INT_TYPE,
        FLOAT_TYPE,
        COLOR_TYPE,
        COLOR_DRAWABLE_TYPE,
        STRING_TYPE,
        BOOLEAN_TYPE,
        DIMENSION_TYPE,
        REFERENCE_TYPE
    }

    public CustomAttribute(String str, AttributeType attributeType) {
        this.mMethod = false;
        this.mName = str;
        this.mType = attributeType;
    }

    private static int clamp(int i4) {
        int i10 = (i4 & (~(i4 >> 31))) - 255;
        return (i10 & (i10 >> 31)) + 255;
    }

    public static HashMap<String, CustomAttribute> extractAttributes(HashMap<String, CustomAttribute> hashMap, Object obj) {
        HashMap<String, CustomAttribute> hashMap2 = new HashMap<>();
        Class<?> cls = obj.getClass();
        for (String str : hashMap.keySet()) {
            CustomAttribute customAttribute = hashMap.get(str);
            try {
                hashMap2.put(str, new CustomAttribute(customAttribute, cls.getMethod("getMap" + str, new Class[0]).invoke(obj, new Object[0])));
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (NoSuchMethodException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
        return hashMap2;
    }

    public static int hsvToRgb(float f10, float f11, float f12) {
        float f13 = f10 * 6.0f;
        int i4 = (int) f13;
        float f14 = f13 - i4;
        float f15 = f12 * 255.0f;
        int i10 = (int) (((1.0f - f11) * f15) + 0.5f);
        int i11 = (int) (((1.0f - (f14 * f11)) * f15) + 0.5f);
        int i12 = (int) (((1.0f - ((1.0f - f14) * f11)) * f15) + 0.5f);
        int i13 = (int) (f15 + 0.5f);
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 != 4) {
                            if (i4 != 5) {
                                return 0;
                            }
                            return ((i13 << 16) + (i10 << 8) + i11) | ViewCompat.MEASURED_STATE_MASK;
                        }
                        return ((i12 << 16) + (i10 << 8) + i13) | ViewCompat.MEASURED_STATE_MASK;
                    }
                    return ((i10 << 16) + (i11 << 8) + i13) | ViewCompat.MEASURED_STATE_MASK;
                }
                return ((i10 << 16) + (i13 << 8) + i12) | ViewCompat.MEASURED_STATE_MASK;
            }
            return ((i11 << 16) + (i13 << 8) + i10) | ViewCompat.MEASURED_STATE_MASK;
        }
        return ((i13 << 16) + (i12 << 8) + i10) | ViewCompat.MEASURED_STATE_MASK;
    }

    public static void setAttributes(Object obj, HashMap<String, CustomAttribute> hashMap) {
        Class<?> cls = obj.getClass();
        for (String str : hashMap.keySet()) {
            CustomAttribute customAttribute = hashMap.get(str);
            String str2 = customAttribute.mMethod ? str : "set" + str;
            try {
                switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[customAttribute.mType.ordinal()]) {
                    case 1:
                        cls.getMethod(str2, Integer.TYPE).invoke(obj, Integer.valueOf(customAttribute.mIntegerValue));
                        break;
                    case 2:
                        cls.getMethod(str2, Boolean.TYPE).invoke(obj, Boolean.valueOf(customAttribute.mBooleanValue));
                        break;
                    case 3:
                        cls.getMethod(str2, CharSequence.class).invoke(obj, customAttribute.mStringValue);
                        break;
                    case 4:
                        cls.getMethod(str2, Integer.TYPE).invoke(obj, Integer.valueOf(customAttribute.mColorValue));
                        break;
                    case 6:
                        cls.getMethod(str2, Integer.TYPE).invoke(obj, Integer.valueOf(customAttribute.mIntegerValue));
                        break;
                    case 7:
                        cls.getMethod(str2, Float.TYPE).invoke(obj, Float.valueOf(customAttribute.mFloatValue));
                        break;
                    case 8:
                        cls.getMethod(str2, Float.TYPE).invoke(obj, Float.valueOf(customAttribute.mFloatValue));
                        break;
                }
            } catch (IllegalAccessException e4) {
                Utils.loge(TAG, " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                e4.printStackTrace();
            } catch (NoSuchMethodException e10) {
                Utils.loge(TAG, e10.getMessage());
                Utils.loge(TAG, " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                StringBuilder sb = new StringBuilder();
                sb.append(cls.getName());
                sb.append(" must have a method ");
                sb.append(str2);
                Utils.loge(TAG, sb.toString());
            } catch (InvocationTargetException e11) {
                Utils.loge(TAG, " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                e11.printStackTrace();
            }
        }
    }

    public void applyCustom(Object obj) {
        String str;
        Class<?> cls = obj.getClass();
        String str2 = this.mName;
        if (this.mMethod) {
            str = str2;
        } else {
            str = "set" + str2;
        }
        try {
            switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()]) {
                case 1:
                case 6:
                    cls.getMethod(str, Integer.TYPE).invoke(obj, Integer.valueOf(this.mIntegerValue));
                    return;
                case 2:
                    cls.getMethod(str, Boolean.TYPE).invoke(obj, Boolean.valueOf(this.mBooleanValue));
                    return;
                case 3:
                    cls.getMethod(str, CharSequence.class).invoke(obj, this.mStringValue);
                    return;
                case 4:
                    cls.getMethod(str, Integer.TYPE).invoke(obj, Integer.valueOf(this.mColorValue));
                    return;
                case 5:
                default:
                    return;
                case 7:
                    cls.getMethod(str, Float.TYPE).invoke(obj, Float.valueOf(this.mFloatValue));
                    return;
                case 8:
                    cls.getMethod(str, Float.TYPE).invoke(obj, Float.valueOf(this.mFloatValue));
                    return;
            }
        } catch (IllegalAccessException e4) {
            Utils.loge(TAG, " Custom Attribute \"" + str2 + "\" not found on " + cls.getName());
            e4.printStackTrace();
        } catch (NoSuchMethodException e10) {
            Utils.loge(TAG, e10.getMessage());
            Utils.loge(TAG, " Custom Attribute \"" + str2 + "\" not found on " + cls.getName());
            StringBuilder sb = new StringBuilder();
            sb.append(cls.getName());
            sb.append(" must have a method ");
            sb.append(str);
            Utils.loge(TAG, sb.toString());
        } catch (InvocationTargetException e11) {
            Utils.loge(TAG, " Custom Attribute \"" + str2 + "\" not found on " + cls.getName());
            e11.printStackTrace();
        }
    }

    public boolean diff(CustomAttribute customAttribute) {
        AttributeType attributeType;
        if (customAttribute == null || (attributeType = this.mType) != customAttribute.mType) {
            return false;
        }
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[attributeType.ordinal()]) {
            case 1:
            case 6:
                return this.mIntegerValue == customAttribute.mIntegerValue;
            case 2:
                return this.mBooleanValue == customAttribute.mBooleanValue;
            case 3:
                return this.mIntegerValue == customAttribute.mIntegerValue;
            case 4:
            case 5:
                return this.mColorValue == customAttribute.mColorValue;
            case 7:
                return this.mFloatValue == customAttribute.mFloatValue;
            case 8:
                return this.mFloatValue == customAttribute.mFloatValue;
            default:
                return false;
        }
    }

    public AttributeType getType() {
        return this.mType;
    }

    public float getValueToInterpolate() {
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()]) {
            case 2:
                return this.mBooleanValue ? 1.0f : 0.0f;
            case 3:
                throw new RuntimeException("Cannot interpolate String");
            case 4:
            case 5:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 6:
                return this.mIntegerValue;
            case 7:
                return this.mFloatValue;
            case 8:
                return this.mFloatValue;
            default:
                return Float.NaN;
        }
    }

    public void getValuesToInterpolate(float[] fArr) {
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()]) {
            case 2:
                fArr[0] = this.mBooleanValue ? 1.0f : 0.0f;
                return;
            case 3:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 4:
            case 5:
                int i4 = this.mColorValue;
                float pow = (float) Math.pow(((i4 >> 16) & 255) / 255.0f, 2.2d);
                float pow2 = (float) Math.pow(((i4 >> 8) & 255) / 255.0f, 2.2d);
                fArr[0] = pow;
                fArr[1] = pow2;
                fArr[2] = (float) Math.pow((i4 & 255) / 255.0f, 2.2d);
                fArr[3] = ((i4 >> 24) & 255) / 255.0f;
                return;
            case 6:
                fArr[0] = this.mIntegerValue;
                return;
            case 7:
                fArr[0] = this.mFloatValue;
                return;
            case 8:
                fArr[0] = this.mFloatValue;
                return;
            default:
                return;
        }
    }

    public boolean isContinuous() {
        int i4 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()];
        return (i4 == 1 || i4 == 2 || i4 == 3) ? false : true;
    }

    public int numberOfInterpolatedValues() {
        int i4 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()];
        return (i4 == 4 || i4 == 5) ? 4 : 1;
    }

    public void setColorValue(int i4) {
        this.mColorValue = i4;
    }

    public void setFloatValue(float f10) {
        this.mFloatValue = f10;
    }

    public void setIntValue(int i4) {
        this.mIntegerValue = i4;
    }

    public void setInterpolatedValue(Object obj, float[] fArr) {
        Class<?> cls = obj.getClass();
        String str = "set" + this.mName;
        try {
            int i4 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()];
            boolean z9 = true;
            if (i4 == 2) {
                Method method = cls.getMethod(str, Boolean.TYPE);
                Object[] objArr = new Object[1];
                if (fArr[0] <= 0.5f) {
                    z9 = false;
                }
                objArr[0] = Boolean.valueOf(z9);
                method.invoke(obj, objArr);
            } else if (i4 == 3) {
                throw new RuntimeException("unable to interpolate strings " + this.mName);
            } else if (i4 == 4) {
                cls.getMethod(str, Integer.TYPE).invoke(obj, Integer.valueOf((clamp((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | (clamp((int) (fArr[3] * 255.0f)) << 24) | (clamp((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | clamp((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f))));
            } else if (i4 == 6) {
                cls.getMethod(str, Integer.TYPE).invoke(obj, Integer.valueOf((int) fArr[0]));
            } else if (i4 == 7) {
                cls.getMethod(str, Float.TYPE).invoke(obj, Float.valueOf(fArr[0]));
            } else if (i4 != 8) {
            } else {
                cls.getMethod(str, Float.TYPE).invoke(obj, Float.valueOf(fArr[0]));
            }
        } catch (IllegalAccessException e4) {
            Utils.loge(TAG, "cannot access method " + str + " on View \"" + obj.getClass().getName() + "\"");
            e4.printStackTrace();
        } catch (NoSuchMethodException e10) {
            Utils.loge(TAG, "no method " + str + " on View \"" + obj.getClass().getName() + "\"");
            e10.printStackTrace();
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
        }
    }

    public void setStringValue(String str) {
        this.mStringValue = str;
    }

    public void setValue(float[] fArr) {
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()]) {
            case 1:
            case 6:
                this.mIntegerValue = (int) fArr[0];
                return;
            case 2:
                this.mBooleanValue = ((double) fArr[0]) > 0.5d;
                return;
            case 3:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 4:
            case 5:
                int hsvToRgb = hsvToRgb(fArr[0], fArr[1], fArr[2]);
                this.mColorValue = hsvToRgb;
                this.mColorValue = (clamp((int) (fArr[3] * 255.0f)) << 24) | (hsvToRgb & 16777215);
                return;
            case 7:
                this.mFloatValue = fArr[0];
                return;
            case 8:
                this.mFloatValue = fArr[0];
                return;
            default:
                return;
        }
    }

    public CustomAttribute(String str, AttributeType attributeType, Object obj, boolean z9) {
        this.mName = str;
        this.mType = attributeType;
        this.mMethod = z9;
        setValue(obj);
    }

    public void setValue(Object obj) {
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()]) {
            case 1:
            case 6:
                this.mIntegerValue = ((Integer) obj).intValue();
                return;
            case 2:
                this.mBooleanValue = ((Boolean) obj).booleanValue();
                return;
            case 3:
                this.mStringValue = (String) obj;
                return;
            case 4:
            case 5:
                this.mColorValue = ((Integer) obj).intValue();
                return;
            case 7:
                this.mFloatValue = ((Float) obj).floatValue();
                return;
            case 8:
                this.mFloatValue = ((Float) obj).floatValue();
                return;
            default:
                return;
        }
    }

    public CustomAttribute(CustomAttribute customAttribute, Object obj) {
        this.mMethod = false;
        this.mName = customAttribute.mName;
        this.mType = customAttribute.mType;
        setValue(obj);
    }
}
