package com.fasterxml.jackson.databind.introspect;

import c2.e;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class DefaultAccessorNamingStrategy extends AccessorNamingStrategy {

    /* renamed from: a  reason: collision with root package name */
    protected final MapperConfig<?> f15204a;

    /* renamed from: b  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.introspect.c f15205b;

    /* renamed from: c  reason: collision with root package name */
    protected final a f15206c;

    /* renamed from: d  reason: collision with root package name */
    protected final boolean f15207d;

    /* renamed from: e  reason: collision with root package name */
    protected final String f15208e;

    /* renamed from: f  reason: collision with root package name */
    protected final String f15209f;

    /* renamed from: g  reason: collision with root package name */
    protected final String f15210g;

    /* loaded from: classes.dex */
    public static class Provider extends AccessorNamingStrategy.Provider implements Serializable {

        /* renamed from: g  reason: collision with root package name */
        private static final long f15211g = 1;

        /* renamed from: b  reason: collision with root package name */
        protected final String f15212b;

        /* renamed from: c  reason: collision with root package name */
        protected final String f15213c;

        /* renamed from: d  reason: collision with root package name */
        protected final String f15214d;

        /* renamed from: e  reason: collision with root package name */
        protected final String f15215e;

        /* renamed from: f  reason: collision with root package name */
        protected final a f15216f;

        public Provider() {
            this("set", c2.e.H, "get", "is", (a) null);
        }

        @Override // com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy.Provider
        public AccessorNamingStrategy forBuilder(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.c cVar, com.fasterxml.jackson.databind.b bVar) {
            AnnotationIntrospector annotationIntrospector = mapperConfig.isAnnotationProcessingEnabled() ? mapperConfig.getAnnotationIntrospector() : null;
            e.a findPOJOBuilderConfig = annotationIntrospector != null ? annotationIntrospector.findPOJOBuilderConfig(cVar) : null;
            return new DefaultAccessorNamingStrategy(mapperConfig, cVar, findPOJOBuilderConfig == null ? this.f15213c : findPOJOBuilderConfig.f4001b, this.f15214d, this.f15215e, this.f15216f);
        }

        @Override // com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy.Provider
        public AccessorNamingStrategy forPOJO(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.c cVar) {
            return new DefaultAccessorNamingStrategy(mapperConfig, cVar, this.f15212b, this.f15214d, this.f15215e, this.f15216f);
        }

        @Override // com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy.Provider
        public AccessorNamingStrategy forRecord(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.c cVar) {
            return new c(mapperConfig, cVar);
        }

        public Provider withBaseNameValidator(a aVar) {
            return new Provider(this, aVar);
        }

        public Provider withBuilderPrefix(String str) {
            return new Provider(this, this.f15212b, str, this.f15214d, this.f15215e);
        }

        public Provider withFirstCharAcceptance(boolean z9, boolean z10) {
            return withBaseNameValidator(b.b(z9, z10));
        }

        public Provider withGetterPrefix(String str) {
            return new Provider(this, this.f15212b, this.f15213c, str, this.f15215e);
        }

        public Provider withIsGetterPrefix(String str) {
            return new Provider(this, this.f15212b, this.f15213c, this.f15214d, str);
        }

        public Provider withSetterPrefix(String str) {
            return new Provider(this, str, this.f15213c, this.f15214d, this.f15215e);
        }

        protected Provider(Provider provider, String str, String str2, String str3, String str4) {
            this(str, str2, str3, str4, provider.f15216f);
        }

        protected Provider(Provider provider, a aVar) {
            this(provider.f15212b, provider.f15213c, provider.f15214d, provider.f15215e, aVar);
        }

        protected Provider(String str, String str2, String str3, String str4, a aVar) {
            this.f15212b = str;
            this.f15213c = str2;
            this.f15214d = str3;
            this.f15215e = str4;
            this.f15216f = aVar;
        }
    }

    /* loaded from: classes.dex */
    public interface a {
        boolean a(char c10, String str, int i4);
    }

    /* loaded from: classes.dex */
    public static class b implements a {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f15217a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f15218b;

        protected b(boolean z9, boolean z10) {
            this.f15217a = z9;
            this.f15218b = z10;
        }

        public static a b(boolean z9, boolean z10) {
            if (z9 || z10) {
                return new b(z9, z10);
            }
            return null;
        }

        @Override // com.fasterxml.jackson.databind.introspect.DefaultAccessorNamingStrategy.a
        public boolean a(char c10, String str, int i4) {
            if (Character.isLetter(c10)) {
                return this.f15217a || !Character.isLowerCase(c10);
            }
            return this.f15218b;
        }
    }

    /* loaded from: classes.dex */
    public static class c extends DefaultAccessorNamingStrategy {

        /* renamed from: h  reason: collision with root package name */
        protected final Set<String> f15219h;

        public c(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.c cVar) {
            super(mapperConfig, cVar, null, "get", "is", null);
            this.f15219h = new HashSet();
            for (String str : com.fasterxml.jackson.databind.jdk14.a.b(cVar.getRawType())) {
                this.f15219h.add(str);
            }
        }

        @Override // com.fasterxml.jackson.databind.introspect.DefaultAccessorNamingStrategy, com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy
        public String findNameForRegularGetter(AnnotatedMethod annotatedMethod, String str) {
            return this.f15219h.contains(str) ? str : super.findNameForRegularGetter(annotatedMethod, str);
        }
    }

    protected DefaultAccessorNamingStrategy(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.c cVar, String str, String str2, String str3, a aVar) {
        this.f15204a = mapperConfig;
        this.f15205b = cVar;
        this.f15207d = mapperConfig.isEnabled(MapperFeature.USE_STD_BEAN_NAMING);
        this.f15210g = str;
        this.f15208e = str2;
        this.f15209f = str3;
        this.f15206c = aVar;
    }

    protected boolean a(AnnotatedMethod annotatedMethod) {
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

    protected boolean b(AnnotatedMethod annotatedMethod) {
        return annotatedMethod.getRawType().getName().startsWith("groovy.lang");
    }

    protected String c(String str, int i4) {
        int length = str.length();
        if (length == i4) {
            return null;
        }
        char charAt = str.charAt(i4);
        a aVar = this.f15206c;
        if (aVar == null || aVar.a(charAt, str, i4)) {
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
        return null;
    }

    protected String d(String str, int i4) {
        int length = str.length();
        if (length == i4) {
            return null;
        }
        char charAt = str.charAt(i4);
        a aVar = this.f15206c;
        if (aVar == null || aVar.a(charAt, str, i4)) {
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
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy
    public String findNameForIsGetter(AnnotatedMethod annotatedMethod, String str) {
        if (this.f15209f != null) {
            Class<?> rawType = annotatedMethod.getRawType();
            if ((rawType == Boolean.class || rawType == Boolean.TYPE) && str.startsWith(this.f15209f)) {
                if (this.f15207d) {
                    return d(str, 2);
                }
                return c(str, 2);
            }
            return null;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy
    public String findNameForMutator(AnnotatedMethod annotatedMethod, String str) {
        String str2 = this.f15210g;
        if (str2 == null || !str.startsWith(str2)) {
            return null;
        }
        if (this.f15207d) {
            return d(str, this.f15210g.length());
        }
        return c(str, this.f15210g.length());
    }

    @Override // com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy
    public String findNameForRegularGetter(AnnotatedMethod annotatedMethod, String str) {
        String str2 = this.f15208e;
        if (str2 == null || !str.startsWith(str2)) {
            return null;
        }
        if ("getCallbacks".equals(str)) {
            if (a(annotatedMethod)) {
                return null;
            }
        } else if ("getMetaClass".equals(str) && b(annotatedMethod)) {
            return null;
        }
        if (this.f15207d) {
            return d(str, this.f15208e.length());
        }
        return c(str, this.f15208e.length());
    }

    @Override // com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy
    public String modifyFieldName(AnnotatedField annotatedField, String str) {
        return str;
    }
}
