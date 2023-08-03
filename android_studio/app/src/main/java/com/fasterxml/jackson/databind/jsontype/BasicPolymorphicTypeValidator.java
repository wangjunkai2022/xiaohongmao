package com.fasterxml.jackson.databind.jsontype;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class BasicPolymorphicTypeValidator extends PolymorphicTypeValidator.Base implements Serializable {

    /* renamed from: g  reason: collision with root package name */
    private static final long f15389g = 1;

    /* renamed from: c  reason: collision with root package name */
    protected final Set<Class<?>> f15390c;

    /* renamed from: d  reason: collision with root package name */
    protected final c[] f15391d;

    /* renamed from: e  reason: collision with root package name */
    protected final b[] f15392e;

    /* renamed from: f  reason: collision with root package name */
    protected final c[] f15393f;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        protected Set<Class<?>> f15394a;

        /* renamed from: b  reason: collision with root package name */
        protected List<c> f15395b;

        /* renamed from: c  reason: collision with root package name */
        protected List<b> f15396c;

        /* renamed from: d  reason: collision with root package name */
        protected List<c> f15397d;

        /* renamed from: com.fasterxml.jackson.databind.jsontype.BasicPolymorphicTypeValidator$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0120a extends c {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Class f15398a;

            C0120a(Class cls) {
                this.f15398a = cls;
            }

            @Override // com.fasterxml.jackson.databind.jsontype.BasicPolymorphicTypeValidator.c
            public boolean a(MapperConfig<?> mapperConfig, Class<?> cls) {
                return this.f15398a.isAssignableFrom(cls);
            }
        }

        /* loaded from: classes.dex */
        class b extends c {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Pattern f15400a;

            b(Pattern pattern) {
                this.f15400a = pattern;
            }

            @Override // com.fasterxml.jackson.databind.jsontype.BasicPolymorphicTypeValidator.c
            public boolean a(MapperConfig<?> mapperConfig, Class<?> cls) {
                return this.f15400a.matcher(cls.getName()).matches();
            }
        }

        /* loaded from: classes.dex */
        class c extends c {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f15402a;

            c(String str) {
                this.f15402a = str;
            }

            @Override // com.fasterxml.jackson.databind.jsontype.BasicPolymorphicTypeValidator.c
            public boolean a(MapperConfig<?> mapperConfig, Class<?> cls) {
                return cls.getName().startsWith(this.f15402a);
            }
        }

        /* loaded from: classes.dex */
        class d extends c {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Class f15404a;

            d(Class cls) {
                this.f15404a = cls;
            }

            @Override // com.fasterxml.jackson.databind.jsontype.BasicPolymorphicTypeValidator.c
            public boolean a(MapperConfig<?> mapperConfig, Class<?> cls) {
                return this.f15404a.isAssignableFrom(cls);
            }
        }

        /* loaded from: classes.dex */
        class e extends b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Pattern f15406a;

            e(Pattern pattern) {
                this.f15406a = pattern;
            }

            @Override // com.fasterxml.jackson.databind.jsontype.BasicPolymorphicTypeValidator.b
            public boolean a(MapperConfig<?> mapperConfig, String str) {
                return this.f15406a.matcher(str).matches();
            }
        }

        /* loaded from: classes.dex */
        class f extends b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f15408a;

            f(String str) {
                this.f15408a = str;
            }

            @Override // com.fasterxml.jackson.databind.jsontype.BasicPolymorphicTypeValidator.b
            public boolean a(MapperConfig<?> mapperConfig, String str) {
                return str.startsWith(this.f15408a);
            }
        }

        /* loaded from: classes.dex */
        class g extends c {
            g() {
            }

            @Override // com.fasterxml.jackson.databind.jsontype.BasicPolymorphicTypeValidator.c
            public boolean a(MapperConfig<?> mapperConfig, Class<?> cls) {
                return cls.isArray();
            }
        }

        protected a() {
        }

        protected a a(c cVar) {
            if (this.f15395b == null) {
                this.f15395b = new ArrayList();
            }
            this.f15395b.add(cVar);
            return this;
        }

        protected a b(c cVar) {
            if (this.f15397d == null) {
                this.f15397d = new ArrayList();
            }
            this.f15397d.add(cVar);
            return this;
        }

        protected a c(b bVar) {
            if (this.f15396c == null) {
                this.f15396c = new ArrayList();
            }
            this.f15396c.add(bVar);
            return this;
        }

        public a d(c cVar) {
            return a(cVar);
        }

        public a e(Class<?> cls) {
            return a(new C0120a(cls));
        }

        public a f(String str) {
            return a(new c(str));
        }

        public a g(Pattern pattern) {
            return a(new b(pattern));
        }

        public a h(c cVar) {
            return b(cVar);
        }

        public a i(Class<?> cls) {
            return b(new d(cls));
        }

        public a j(String str) {
            return c(new f(str));
        }

        public a k(Pattern pattern) {
            return c(new e(pattern));
        }

        public a l() {
            return b(new g());
        }

        public BasicPolymorphicTypeValidator m() {
            Set<Class<?>> set = this.f15394a;
            List<c> list = this.f15395b;
            c[] cVarArr = list == null ? null : (c[]) list.toArray(new c[0]);
            List<b> list2 = this.f15396c;
            b[] bVarArr = list2 == null ? null : (b[]) list2.toArray(new b[0]);
            List<c> list3 = this.f15397d;
            return new BasicPolymorphicTypeValidator(set, cVarArr, bVarArr, list3 != null ? (c[]) list3.toArray(new c[0]) : null);
        }

        public a n(Class<?> cls) {
            if (this.f15394a == null) {
                this.f15394a = new HashSet();
            }
            this.f15394a.add(cls);
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class b {
        public abstract boolean a(MapperConfig<?> mapperConfig, String str);
    }

    /* loaded from: classes.dex */
    public static abstract class c {
        public abstract boolean a(MapperConfig<?> mapperConfig, Class<?> cls);
    }

    protected BasicPolymorphicTypeValidator(Set<Class<?>> set, c[] cVarArr, b[] bVarArr, c[] cVarArr2) {
        this.f15390c = set;
        this.f15391d = cVarArr;
        this.f15392e = bVarArr;
        this.f15393f = cVarArr2;
    }

    public static a builder() {
        return new a();
    }

    @Override // com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator.Base, com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator
    public PolymorphicTypeValidator.Validity validateBaseType(MapperConfig<?> mapperConfig, JavaType javaType) {
        Class<?> rawClass = javaType.getRawClass();
        Set<Class<?>> set = this.f15390c;
        if (set != null && set.contains(rawClass)) {
            return PolymorphicTypeValidator.Validity.DENIED;
        }
        c[] cVarArr = this.f15391d;
        if (cVarArr != null) {
            for (c cVar : cVarArr) {
                if (cVar.a(mapperConfig, rawClass)) {
                    return PolymorphicTypeValidator.Validity.ALLOWED;
                }
            }
        }
        return PolymorphicTypeValidator.Validity.INDETERMINATE;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator.Base, com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator
    public PolymorphicTypeValidator.Validity validateSubClassName(MapperConfig<?> mapperConfig, JavaType javaType, String str) throws JsonMappingException {
        b[] bVarArr = this.f15392e;
        if (bVarArr != null) {
            for (b bVar : bVarArr) {
                if (bVar.a(mapperConfig, str)) {
                    return PolymorphicTypeValidator.Validity.ALLOWED;
                }
            }
        }
        return PolymorphicTypeValidator.Validity.INDETERMINATE;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator.Base, com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator
    public PolymorphicTypeValidator.Validity validateSubType(MapperConfig<?> mapperConfig, JavaType javaType, JavaType javaType2) throws JsonMappingException {
        if (this.f15393f != null) {
            Class<?> rawClass = javaType2.getRawClass();
            for (c cVar : this.f15393f) {
                if (cVar.a(mapperConfig, rawClass)) {
                    return PolymorphicTypeValidator.Validity.ALLOWED;
                }
            }
        }
        return PolymorphicTypeValidator.Validity.INDETERMINATE;
    }
}
