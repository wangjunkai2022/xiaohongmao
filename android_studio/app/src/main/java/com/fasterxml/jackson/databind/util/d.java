package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

/* compiled from: BeanUtil.java */
/* loaded from: classes2.dex */
public class d {
    public static String a(JavaType javaType) {
        String str;
        String str2;
        String name = javaType.getRawClass().getName();
        if (f(name)) {
            if (name.indexOf(46, 10) >= 0) {
                return null;
            }
            str = "Java 8 date/time";
            str2 = "com.fasterxml.jackson.datatype:jackson-datatype-jsr310";
        } else if (!h(name)) {
            return null;
        } else {
            str = "Joda date/time";
            str2 = "com.fasterxml.jackson.datatype:jackson-datatype-joda";
        }
        return String.format("%s type %s not supported by default: add Module \"%s\" to enable handling", str, g.P(javaType), str2);
    }

    public static Object b(JavaType javaType) {
        Class<?> rawClass = javaType.getRawClass();
        Class<?> n02 = g.n0(rawClass);
        if (n02 != null) {
            return g.o(n02);
        }
        if (!javaType.isContainerType() && !javaType.isReferenceType()) {
            if (rawClass == String.class) {
                return "";
            }
            if (javaType.isTypeOrSubTypeOf(Date.class)) {
                return new Date(0L);
            }
            if (javaType.isTypeOrSubTypeOf(Calendar.class)) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar();
                gregorianCalendar.setTimeInMillis(0L);
                return gregorianCalendar;
            }
            return null;
        }
        return JsonInclude.Include.NON_EMPTY;
    }

    protected static boolean c(AnnotatedMethod annotatedMethod) {
        Class<?> rawType = annotatedMethod.getRawType();
        if (rawType.isArray()) {
            String name = rawType.getComponentType().getName();
            if (name.contains(".cglib")) {
                return name.startsWith("net.sf.cglib") || name.startsWith("org.hibernate.repackage.cglib") || name.startsWith("org.springframework.cglib");
            }
            return false;
        }
        return false;
    }

    protected static boolean d(AnnotatedMethod annotatedMethod) {
        return annotatedMethod.getRawType().getName().startsWith("groovy.lang");
    }

    public static boolean e(Class<?> cls) {
        return f(cls.getName());
    }

    private static boolean f(String str) {
        return str.startsWith("java.time.");
    }

    public static boolean g(Class<?> cls) {
        return h(cls.getName());
    }

    private static boolean h(String str) {
        return str.startsWith("org.joda.time.");
    }

    protected static String i(String str, int i4) {
        int length = str.length();
        if (length == i4) {
            return null;
        }
        char charAt = str.charAt(i4);
        char lowerCase = Character.toLowerCase(charAt);
        if (charAt == lowerCase) {
            return str.substring(i4);
        }
        StringBuilder sb = new StringBuilder(length - i4);
        sb.append(lowerCase);
        while (true) {
            i4++;
            if (i4 >= length) {
                break;
            }
            char charAt2 = str.charAt(i4);
            char lowerCase2 = Character.toLowerCase(charAt2);
            if (charAt2 == lowerCase2) {
                sb.append((CharSequence) str, i4, length);
                break;
            }
            sb.append(lowerCase2);
        }
        return sb.toString();
    }

    @Deprecated
    public static String j(AnnotatedMethod annotatedMethod, boolean z9) {
        String name = annotatedMethod.getName();
        String k10 = k(annotatedMethod, name, z9);
        return k10 == null ? m(annotatedMethod, name, z9) : k10;
    }

    @Deprecated
    public static String k(AnnotatedMethod annotatedMethod, String str, boolean z9) {
        if (str.startsWith("is")) {
            Class<?> rawType = annotatedMethod.getRawType();
            if (rawType == Boolean.class || rawType == Boolean.TYPE) {
                if (z9) {
                    return o(str, 2);
                }
                return i(str, 2);
            }
            return null;
        }
        return null;
    }

    @Deprecated
    public static String l(AnnotatedMethod annotatedMethod, String str, boolean z9) {
        String name = annotatedMethod.getName();
        if (name.startsWith(str)) {
            if (z9) {
                return o(name, str.length());
            }
            return i(name, str.length());
        }
        return null;
    }

    @Deprecated
    public static String m(AnnotatedMethod annotatedMethod, String str, boolean z9) {
        if (str.startsWith("get")) {
            if ("getCallbacks".equals(str)) {
                if (c(annotatedMethod)) {
                    return null;
                }
            } else if ("getMetaClass".equals(str) && d(annotatedMethod)) {
                return null;
            }
            if (z9) {
                return o(str, 3);
            }
            return i(str, 3);
        }
        return null;
    }

    @Deprecated
    public static String n(AnnotatedMethod annotatedMethod, boolean z9) {
        return l(annotatedMethod, "set", z9);
    }

    public static String o(String str, int i4) {
        int length = str.length();
        if (length == i4) {
            return null;
        }
        char charAt = str.charAt(i4);
        char lowerCase = Character.toLowerCase(charAt);
        if (charAt == lowerCase) {
            return str.substring(i4);
        }
        int i10 = i4 + 1;
        if (i10 < length && Character.isUpperCase(str.charAt(i10))) {
            return str.substring(i4);
        }
        StringBuilder sb = new StringBuilder(length - i4);
        sb.append(lowerCase);
        sb.append((CharSequence) str, i10, length);
        return sb.toString();
    }
}
