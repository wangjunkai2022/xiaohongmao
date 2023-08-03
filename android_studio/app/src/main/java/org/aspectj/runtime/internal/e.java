package org.aspectj.runtime.internal;

/* compiled from: Conversions.java */
/* loaded from: classes4.dex */
public final class e {
    private e() {
    }

    public static Object a(boolean z9) {
        return new Boolean(z9);
    }

    public static boolean b(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(obj.getClass().getName());
        stringBuffer.append(" can not be converted to boolean");
        throw new ClassCastException(stringBuffer.toString());
    }

    public static Object c(byte b10) {
        return new Byte(b10);
    }

    public static byte d(Object obj) {
        if (obj == null) {
            return (byte) 0;
        }
        if (obj instanceof Number) {
            return ((Number) obj).byteValue();
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(obj.getClass().getName());
        stringBuffer.append(" can not be converted to byte");
        throw new ClassCastException(stringBuffer.toString());
    }

    public static Object e(char c10) {
        return new Character(c10);
    }

    public static char f(Object obj) {
        if (obj == null) {
            return (char) 0;
        }
        if (obj instanceof Character) {
            return ((Character) obj).charValue();
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(obj.getClass().getName());
        stringBuffer.append(" can not be converted to char");
        throw new ClassCastException(stringBuffer.toString());
    }

    public static Object g(double d4) {
        return new Double(d4);
    }

    public static double h(Object obj) {
        if (obj == null) {
            return 0.0d;
        }
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(obj.getClass().getName());
        stringBuffer.append(" can not be converted to double");
        throw new ClassCastException(stringBuffer.toString());
    }

    public static Object i(float f10) {
        return new Float(f10);
    }

    public static float j(Object obj) {
        if (obj == null) {
            return 0.0f;
        }
        if (obj instanceof Number) {
            return ((Number) obj).floatValue();
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(obj.getClass().getName());
        stringBuffer.append(" can not be converted to float");
        throw new ClassCastException(stringBuffer.toString());
    }

    public static Object k(int i4) {
        return new Integer(i4);
    }

    public static int l(Object obj) {
        if (obj == null) {
            return 0;
        }
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(obj.getClass().getName());
        stringBuffer.append(" can not be converted to int");
        throw new ClassCastException(stringBuffer.toString());
    }

    public static Object m(long j4) {
        return new Long(j4);
    }

    public static long n(Object obj) {
        if (obj == null) {
            return 0L;
        }
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(obj.getClass().getName());
        stringBuffer.append(" can not be converted to long");
        throw new ClassCastException(stringBuffer.toString());
    }

    public static Object o(short s9) {
        return new Short(s9);
    }

    public static short p(Object obj) {
        if (obj == null) {
            return (short) 0;
        }
        if (obj instanceof Number) {
            return ((Number) obj).shortValue();
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(obj.getClass().getName());
        stringBuffer.append(" can not be converted to short");
        throw new ClassCastException(stringBuffer.toString());
    }

    public static Object q() {
        return null;
    }

    public static Object r(Object obj) {
        return obj;
    }
}
