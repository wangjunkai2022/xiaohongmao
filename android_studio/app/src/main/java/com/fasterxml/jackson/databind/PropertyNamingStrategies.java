package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import java.io.Serializable;

/* loaded from: classes.dex */
public abstract class PropertyNamingStrategies implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private static final long f14440a = 2;
    public static final PropertyNamingStrategy LOWER_CAMEL_CASE = new LowerCamelCaseStrategy();
    public static final PropertyNamingStrategy UPPER_CAMEL_CASE = new UpperCamelCaseStrategy();
    public static final PropertyNamingStrategy SNAKE_CASE = new SnakeCaseStrategy();
    public static final PropertyNamingStrategy UPPER_SNAKE_CASE = new UpperSnakeCaseStrategy();
    public static final PropertyNamingStrategy LOWER_CASE = new LowerCaseStrategy();
    public static final PropertyNamingStrategy KEBAB_CASE = new KebabCaseStrategy();
    public static final PropertyNamingStrategy LOWER_DOT_CASE = new LowerDotCaseStrategy();

    /* loaded from: classes.dex */
    public static class KebabCaseStrategy extends NamingBase {

        /* renamed from: c  reason: collision with root package name */
        private static final long f14441c = 2;

        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategies.NamingBase
        public String translate(String str) {
            return a(str, shaded.org.apache.commons.codec.language.l.f93713d);
        }
    }

    /* loaded from: classes.dex */
    public static class LowerCamelCaseStrategy extends NamingBase {

        /* renamed from: c  reason: collision with root package name */
        private static final long f14442c = 2;

        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategies.NamingBase
        public String translate(String str) {
            return str;
        }
    }

    /* loaded from: classes.dex */
    public static class LowerCaseStrategy extends NamingBase {

        /* renamed from: c  reason: collision with root package name */
        private static final long f14443c = 2;

        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategies.NamingBase
        public String translate(String str) {
            return str.toLowerCase();
        }
    }

    /* loaded from: classes.dex */
    public static class LowerDotCaseStrategy extends NamingBase {

        /* renamed from: c  reason: collision with root package name */
        private static final long f14444c = 2;

        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategies.NamingBase
        public String translate(String str) {
            return a(str, '.');
        }
    }

    /* loaded from: classes.dex */
    public static abstract class NamingBase extends PropertyNamingStrategy {

        /* renamed from: b  reason: collision with root package name */
        private static final long f14445b = 2;

        protected String a(String str, char c10) {
            int length;
            if (str == null || (length = str.length()) == 0) {
                return str;
            }
            StringBuilder sb = new StringBuilder((length >> 1) + length);
            int i4 = 0;
            for (int i10 = 0; i10 < length; i10++) {
                char charAt = str.charAt(i10);
                char lowerCase = Character.toLowerCase(charAt);
                if (lowerCase == charAt) {
                    if (i4 > 1) {
                        sb.insert(sb.length() - 1, c10);
                    }
                    i4 = 0;
                } else {
                    if (i4 == 0 && i10 > 0) {
                        sb.append(c10);
                    }
                    i4++;
                }
                sb.append(lowerCase);
            }
            return sb.toString();
        }

        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
        public String nameForConstructorParameter(MapperConfig<?> mapperConfig, AnnotatedParameter annotatedParameter, String str) {
            return translate(str);
        }

        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
        public String nameForField(MapperConfig<?> mapperConfig, AnnotatedField annotatedField, String str) {
            return translate(str);
        }

        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
        public String nameForGetterMethod(MapperConfig<?> mapperConfig, AnnotatedMethod annotatedMethod, String str) {
            return translate(str);
        }

        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
        public String nameForSetterMethod(MapperConfig<?> mapperConfig, AnnotatedMethod annotatedMethod, String str) {
            return translate(str);
        }

        public abstract String translate(String str);
    }

    /* loaded from: classes.dex */
    public static class SnakeCaseStrategy extends NamingBase {

        /* renamed from: c  reason: collision with root package name */
        private static final long f14446c = 2;

        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategies.NamingBase
        public String translate(String str) {
            if (str == null) {
                return str;
            }
            int length = str.length();
            StringBuilder sb = new StringBuilder(length * 2);
            int i4 = 0;
            boolean z9 = false;
            for (int i10 = 0; i10 < length; i10++) {
                char charAt = str.charAt(i10);
                if (i10 > 0 || charAt != '_') {
                    if (Character.isUpperCase(charAt)) {
                        if (!z9 && i4 > 0 && sb.charAt(i4 - 1) != '_') {
                            sb.append('_');
                            i4++;
                        }
                        charAt = Character.toLowerCase(charAt);
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    sb.append(charAt);
                    i4++;
                }
            }
            return i4 > 0 ? sb.toString() : str;
        }
    }

    /* loaded from: classes.dex */
    public static class UpperCamelCaseStrategy extends NamingBase {

        /* renamed from: c  reason: collision with root package name */
        private static final long f14447c = 2;

        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategies.NamingBase
        public String translate(String str) {
            char charAt;
            char upperCase;
            if (str == null || str.isEmpty() || charAt == (upperCase = Character.toUpperCase((charAt = str.charAt(0))))) {
                return str;
            }
            StringBuilder sb = new StringBuilder(str);
            sb.setCharAt(0, upperCase);
            return sb.toString();
        }
    }

    /* loaded from: classes.dex */
    public static class UpperSnakeCaseStrategy extends SnakeCaseStrategy {

        /* renamed from: d  reason: collision with root package name */
        private static final long f14448d = 2;

        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategies.SnakeCaseStrategy, com.fasterxml.jackson.databind.PropertyNamingStrategies.NamingBase
        public String translate(String str) {
            if (super.translate(str) == null) {
                return null;
            }
            return super.translate(str).toUpperCase();
        }
    }
}
