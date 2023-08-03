package com.fasterxml.jackson.databind.ser.std;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonValueFormat;
import com.fasterxml.jackson.databind.jsonFormatVisitors.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.e;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import java.io.IOException;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public abstract class DateTimeSerializerBase<T> extends StdScalarSerializer<T> implements e {

    /* renamed from: d  reason: collision with root package name */
    protected final Boolean f15755d;

    /* renamed from: e  reason: collision with root package name */
    protected final DateFormat f15756e;

    /* renamed from: f  reason: collision with root package name */
    protected final AtomicReference<DateFormat> f15757f;

    /* JADX INFO: Access modifiers changed from: protected */
    public DateTimeSerializerBase(Class<T> cls, Boolean bool, DateFormat dateFormat) {
        super(cls);
        this.f15755d = bool;
        this.f15756e = dateFormat;
        this.f15757f = dateFormat == null ? null : new AtomicReference<>();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
        v(fVar, javaType, w(fVar.a()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.ser.e
    public g<?> createContextual(l lVar, BeanProperty beanProperty) throws JsonMappingException {
        SimpleDateFormat simpleDateFormat;
        Locale locale;
        JsonFormat.Value k10 = k(lVar, beanProperty, handledType());
        if (k10 == null) {
            return this;
        }
        JsonFormat.Shape shape = k10.getShape();
        if (shape.isNumeric()) {
            return withFormat(Boolean.TRUE, null);
        }
        if (k10.hasPattern()) {
            if (k10.hasLocale()) {
                locale = k10.getLocale();
            } else {
                locale = lVar.getLocale();
            }
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(k10.getPattern(), locale);
            simpleDateFormat2.setTimeZone(k10.hasTimeZone() ? k10.getTimeZone() : lVar.getTimeZone());
            return withFormat(Boolean.FALSE, simpleDateFormat2);
        }
        boolean hasLocale = k10.hasLocale();
        boolean hasTimeZone = k10.hasTimeZone();
        boolean z9 = true;
        boolean z10 = shape == JsonFormat.Shape.STRING;
        if (hasLocale || hasTimeZone || z10) {
            DateFormat dateFormat = lVar.getConfig().getDateFormat();
            if (dateFormat instanceof StdDateFormat) {
                StdDateFormat stdDateFormat = (StdDateFormat) dateFormat;
                if (k10.hasLocale()) {
                    stdDateFormat = stdDateFormat.withLocale(k10.getLocale());
                }
                if (k10.hasTimeZone()) {
                    stdDateFormat = stdDateFormat.withTimeZone(k10.getTimeZone());
                }
                return withFormat(Boolean.FALSE, stdDateFormat);
            }
            if (!(dateFormat instanceof SimpleDateFormat)) {
                lVar.reportBadDefinition(handledType(), String.format("Configured `DateFormat` (%s) not a `SimpleDateFormat`; cannot configure `Locale` or `TimeZone`", dateFormat.getClass().getName()));
            }
            SimpleDateFormat simpleDateFormat3 = (SimpleDateFormat) dateFormat;
            if (hasLocale) {
                simpleDateFormat = new SimpleDateFormat(simpleDateFormat3.toPattern(), k10.getLocale());
            } else {
                simpleDateFormat = (SimpleDateFormat) simpleDateFormat3.clone();
            }
            TimeZone timeZone = k10.getTimeZone();
            if ((timeZone == null || timeZone.equals(simpleDateFormat.getTimeZone())) ? false : false) {
                simpleDateFormat.setTimeZone(timeZone);
            }
            return withFormat(Boolean.FALSE, simpleDateFormat);
        }
        return this;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
    public com.fasterxml.jackson.databind.e getSchema(l lVar, Type type) {
        return d(w(lVar) ? "number" : TypedValues.Custom.S_STRING, true);
    }

    @Override // com.fasterxml.jackson.databind.g
    public boolean isEmpty(l lVar, T t9) {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public abstract void serialize(T t9, JsonGenerator jsonGenerator, l lVar) throws IOException;

    protected void v(f fVar, JavaType javaType, boolean z9) throws JsonMappingException {
        if (z9) {
            s(fVar, javaType, JsonParser.NumberType.LONG, JsonValueFormat.UTC_MILLISEC);
        } else {
            u(fVar, javaType, JsonValueFormat.DATE_TIME);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean w(l lVar) {
        Boolean bool = this.f15755d;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (this.f15756e == null) {
            if (lVar != null) {
                return lVar.isEnabled(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
            }
            throw new IllegalArgumentException("Null SerializerProvider passed for " + handledType().getName());
        }
        return false;
    }

    public abstract DateTimeSerializerBase<T> withFormat(Boolean bool, DateFormat dateFormat);

    /* JADX INFO: Access modifiers changed from: protected */
    public void x(Date date, JsonGenerator jsonGenerator, l lVar) throws IOException {
        if (this.f15756e == null) {
            lVar.defaultSerializeDateValue(date, jsonGenerator);
            return;
        }
        DateFormat andSet = this.f15757f.getAndSet(null);
        if (andSet == null) {
            andSet = (DateFormat) this.f15756e.clone();
        }
        jsonGenerator.P1(andSet.format(date));
        this.f15757f.compareAndSet(null, andSet);
    }

    protected abstract long y(T t9);
}
