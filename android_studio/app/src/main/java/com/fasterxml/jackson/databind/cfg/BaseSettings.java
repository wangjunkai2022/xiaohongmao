package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy;
import com.fasterxml.jackson.databind.introspect.AnnotationIntrospectorPair;
import com.fasterxml.jackson.databind.introspect.DefaultAccessorNamingStrategy;
import com.fasterxml.jackson.databind.introspect.l;
import com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import java.io.Serializable;
import java.text.DateFormat;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes.dex */
public final class BaseSettings implements Serializable {

    /* renamed from: m  reason: collision with root package name */
    private static final long f14467m = 1;

    /* renamed from: n  reason: collision with root package name */
    private static final TimeZone f14468n = TimeZone.getTimeZone("UTC");

    /* renamed from: a  reason: collision with root package name */
    protected final TypeFactory f14469a;

    /* renamed from: b  reason: collision with root package name */
    protected final l f14470b;

    /* renamed from: c  reason: collision with root package name */
    protected final AnnotationIntrospector f14471c;

    /* renamed from: d  reason: collision with root package name */
    protected final PropertyNamingStrategy f14472d;

    /* renamed from: e  reason: collision with root package name */
    protected final AccessorNamingStrategy.Provider f14473e;

    /* renamed from: f  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.jsontype.e<?> f14474f;

    /* renamed from: g  reason: collision with root package name */
    protected final PolymorphicTypeValidator f14475g;

    /* renamed from: h  reason: collision with root package name */
    protected final DateFormat f14476h;

    /* renamed from: i  reason: collision with root package name */
    protected final c f14477i;

    /* renamed from: j  reason: collision with root package name */
    protected final Locale f14478j;

    /* renamed from: k  reason: collision with root package name */
    protected final TimeZone f14479k;

    /* renamed from: l  reason: collision with root package name */
    protected final Base64Variant f14480l;

    public BaseSettings(l lVar, AnnotationIntrospector annotationIntrospector, PropertyNamingStrategy propertyNamingStrategy, TypeFactory typeFactory, com.fasterxml.jackson.databind.jsontype.e<?> eVar, DateFormat dateFormat, c cVar, Locale locale, TimeZone timeZone, Base64Variant base64Variant, PolymorphicTypeValidator polymorphicTypeValidator, AccessorNamingStrategy.Provider provider) {
        this.f14470b = lVar;
        this.f14471c = annotationIntrospector;
        this.f14472d = propertyNamingStrategy;
        this.f14469a = typeFactory;
        this.f14474f = eVar;
        this.f14476h = dateFormat;
        this.f14477i = cVar;
        this.f14478j = locale;
        this.f14479k = timeZone;
        this.f14480l = base64Variant;
        this.f14475g = polymorphicTypeValidator;
        this.f14473e = provider;
    }

    private DateFormat a(DateFormat dateFormat, TimeZone timeZone) {
        if (dateFormat instanceof StdDateFormat) {
            return ((StdDateFormat) dateFormat).withTimeZone(timeZone);
        }
        DateFormat dateFormat2 = (DateFormat) dateFormat.clone();
        dateFormat2.setTimeZone(timeZone);
        return dateFormat2;
    }

    public BaseSettings copy() {
        return new BaseSettings(this.f14470b.copy(), this.f14471c, this.f14472d, this.f14469a, this.f14474f, this.f14476h, this.f14477i, this.f14478j, this.f14479k, this.f14480l, this.f14475g, this.f14473e);
    }

    public AccessorNamingStrategy.Provider getAccessorNaming() {
        return this.f14473e;
    }

    public AnnotationIntrospector getAnnotationIntrospector() {
        return this.f14471c;
    }

    public Base64Variant getBase64Variant() {
        return this.f14480l;
    }

    public l getClassIntrospector() {
        return this.f14470b;
    }

    public DateFormat getDateFormat() {
        return this.f14476h;
    }

    public c getHandlerInstantiator() {
        return this.f14477i;
    }

    public Locale getLocale() {
        return this.f14478j;
    }

    public PolymorphicTypeValidator getPolymorphicTypeValidator() {
        return this.f14475g;
    }

    public PropertyNamingStrategy getPropertyNamingStrategy() {
        return this.f14472d;
    }

    public TimeZone getTimeZone() {
        TimeZone timeZone = this.f14479k;
        return timeZone == null ? f14468n : timeZone;
    }

    public TypeFactory getTypeFactory() {
        return this.f14469a;
    }

    public com.fasterxml.jackson.databind.jsontype.e<?> getTypeResolverBuilder() {
        return this.f14474f;
    }

    public boolean hasExplicitTimeZone() {
        return this.f14479k != null;
    }

    public BaseSettings with(Locale locale) {
        return this.f14478j == locale ? this : new BaseSettings(this.f14470b, this.f14471c, this.f14472d, this.f14469a, this.f14474f, this.f14476h, this.f14477i, locale, this.f14479k, this.f14480l, this.f14475g, this.f14473e);
    }

    public BaseSettings withAccessorNaming(AccessorNamingStrategy.Provider provider) {
        return this.f14473e == provider ? this : new BaseSettings(this.f14470b, this.f14471c, this.f14472d, this.f14469a, this.f14474f, this.f14476h, this.f14477i, this.f14478j, this.f14479k, this.f14480l, this.f14475g, provider);
    }

    public BaseSettings withAnnotationIntrospector(AnnotationIntrospector annotationIntrospector) {
        return this.f14471c == annotationIntrospector ? this : new BaseSettings(this.f14470b, annotationIntrospector, this.f14472d, this.f14469a, this.f14474f, this.f14476h, this.f14477i, this.f14478j, this.f14479k, this.f14480l, this.f14475g, this.f14473e);
    }

    public BaseSettings withAppendedAnnotationIntrospector(AnnotationIntrospector annotationIntrospector) {
        return withAnnotationIntrospector(AnnotationIntrospectorPair.create(this.f14471c, annotationIntrospector));
    }

    public BaseSettings withClassIntrospector(l lVar) {
        return this.f14470b == lVar ? this : new BaseSettings(lVar, this.f14471c, this.f14472d, this.f14469a, this.f14474f, this.f14476h, this.f14477i, this.f14478j, this.f14479k, this.f14480l, this.f14475g, this.f14473e);
    }

    public BaseSettings withDateFormat(DateFormat dateFormat) {
        if (this.f14476h == dateFormat) {
            return this;
        }
        if (dateFormat != null && hasExplicitTimeZone()) {
            dateFormat = a(dateFormat, this.f14479k);
        }
        return new BaseSettings(this.f14470b, this.f14471c, this.f14472d, this.f14469a, this.f14474f, dateFormat, this.f14477i, this.f14478j, this.f14479k, this.f14480l, this.f14475g, this.f14473e);
    }

    public BaseSettings withHandlerInstantiator(c cVar) {
        return this.f14477i == cVar ? this : new BaseSettings(this.f14470b, this.f14471c, this.f14472d, this.f14469a, this.f14474f, this.f14476h, cVar, this.f14478j, this.f14479k, this.f14480l, this.f14475g, this.f14473e);
    }

    public BaseSettings withInsertedAnnotationIntrospector(AnnotationIntrospector annotationIntrospector) {
        return withAnnotationIntrospector(AnnotationIntrospectorPair.create(annotationIntrospector, this.f14471c));
    }

    public BaseSettings withPropertyNamingStrategy(PropertyNamingStrategy propertyNamingStrategy) {
        return this.f14472d == propertyNamingStrategy ? this : new BaseSettings(this.f14470b, this.f14471c, propertyNamingStrategy, this.f14469a, this.f14474f, this.f14476h, this.f14477i, this.f14478j, this.f14479k, this.f14480l, this.f14475g, this.f14473e);
    }

    public BaseSettings withTypeFactory(TypeFactory typeFactory) {
        return this.f14469a == typeFactory ? this : new BaseSettings(this.f14470b, this.f14471c, this.f14472d, typeFactory, this.f14474f, this.f14476h, this.f14477i, this.f14478j, this.f14479k, this.f14480l, this.f14475g, this.f14473e);
    }

    public BaseSettings withTypeResolverBuilder(com.fasterxml.jackson.databind.jsontype.e<?> eVar) {
        return this.f14474f == eVar ? this : new BaseSettings(this.f14470b, this.f14471c, this.f14472d, this.f14469a, eVar, this.f14476h, this.f14477i, this.f14478j, this.f14479k, this.f14480l, this.f14475g, this.f14473e);
    }

    public BaseSettings with(TimeZone timeZone) {
        if (timeZone == this.f14479k) {
            return this;
        }
        return new BaseSettings(this.f14470b, this.f14471c, this.f14472d, this.f14469a, this.f14474f, a(this.f14476h, timeZone == null ? f14468n : timeZone), this.f14477i, this.f14478j, timeZone, this.f14480l, this.f14475g, this.f14473e);
    }

    public BaseSettings with(Base64Variant base64Variant) {
        return base64Variant == this.f14480l ? this : new BaseSettings(this.f14470b, this.f14471c, this.f14472d, this.f14469a, this.f14474f, this.f14476h, this.f14477i, this.f14478j, this.f14479k, base64Variant, this.f14475g, this.f14473e);
    }

    public BaseSettings with(PolymorphicTypeValidator polymorphicTypeValidator) {
        return polymorphicTypeValidator == this.f14475g ? this : new BaseSettings(this.f14470b, this.f14471c, this.f14472d, this.f14469a, this.f14474f, this.f14476h, this.f14477i, this.f14478j, this.f14479k, this.f14480l, polymorphicTypeValidator, this.f14473e);
    }

    @Deprecated
    public BaseSettings(l lVar, AnnotationIntrospector annotationIntrospector, PropertyNamingStrategy propertyNamingStrategy, TypeFactory typeFactory, com.fasterxml.jackson.databind.jsontype.e<?> eVar, DateFormat dateFormat, c cVar, Locale locale, TimeZone timeZone, Base64Variant base64Variant, PolymorphicTypeValidator polymorphicTypeValidator) {
        this(lVar, annotationIntrospector, propertyNamingStrategy, typeFactory, eVar, dateFormat, cVar, locale, timeZone, base64Variant, polymorphicTypeValidator, new DefaultAccessorNamingStrategy.Provider());
    }
}
