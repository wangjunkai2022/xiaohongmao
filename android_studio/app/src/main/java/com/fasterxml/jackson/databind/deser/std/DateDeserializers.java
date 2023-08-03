package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.cfg.CoercionAction;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import com.fasterxml.jackson.databind.util.g;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class DateDeserializers {

    /* renamed from: a  reason: collision with root package name */
    private static final HashSet<String> f14864a;

    @c2.a
    /* loaded from: classes.dex */
    public static class CalendarDeserializer extends DateBasedDeserializer<Calendar> {

        /* renamed from: i  reason: collision with root package name */
        protected final Constructor<Calendar> f14865i;

        public CalendarDeserializer() {
            super(Calendar.class);
            this.f14865i = null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer
        /* renamed from: D0 */
        public CalendarDeserializer C0(DateFormat dateFormat, String str) {
            return new CalendarDeserializer(this, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.c
        public /* bridge */ /* synthetic */ com.fasterxml.jackson.databind.d createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
            return super.createContextual(deserializationContext, beanProperty);
        }

        @Override // com.fasterxml.jackson.databind.d
        public Object getEmptyValue(DeserializationContext deserializationContext) {
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            gregorianCalendar.setTimeInMillis(0L);
            return gregorianCalendar;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d
        public /* bridge */ /* synthetic */ LogicalType logicalType() {
            return super.logicalType();
        }

        @Override // com.fasterxml.jackson.databind.d
        public Calendar deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            Date R = R(jsonParser, deserializationContext);
            if (R == null) {
                return null;
            }
            Constructor<Calendar> constructor = this.f14865i;
            if (constructor == null) {
                return deserializationContext.constructCalendar(R);
            }
            try {
                Calendar newInstance = constructor.newInstance(new Object[0]);
                newInstance.setTimeInMillis(R.getTime());
                TimeZone timeZone = deserializationContext.getTimeZone();
                if (timeZone != null) {
                    newInstance.setTimeZone(timeZone);
                }
                return newInstance;
            } catch (Exception e4) {
                return (Calendar) deserializationContext.handleInstantiationProblem(handledType(), R, e4);
            }
        }

        public CalendarDeserializer(Class<? extends Calendar> cls) {
            super(cls);
            this.f14865i = g.s(cls, false);
        }

        public CalendarDeserializer(CalendarDeserializer calendarDeserializer, DateFormat dateFormat, String str) {
            super(calendarDeserializer, dateFormat, str);
            this.f14865i = calendarDeserializer.f14865i;
        }
    }

    @c2.a
    /* loaded from: classes.dex */
    public static class DateDeserializer extends DateBasedDeserializer<Date> {
        public static final DateDeserializer instance = new DateDeserializer();

        public DateDeserializer() {
            super(Date.class);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer
        /* renamed from: D0 */
        public DateDeserializer C0(DateFormat dateFormat, String str) {
            return new DateDeserializer(this, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.c
        public /* bridge */ /* synthetic */ com.fasterxml.jackson.databind.d createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
            return super.createContextual(deserializationContext, beanProperty);
        }

        @Override // com.fasterxml.jackson.databind.d
        public Object getEmptyValue(DeserializationContext deserializationContext) {
            return new Date(0L);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d
        public /* bridge */ /* synthetic */ LogicalType logicalType() {
            return super.logicalType();
        }

        public DateDeserializer(DateDeserializer dateDeserializer, DateFormat dateFormat, String str) {
            super(dateDeserializer, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.d
        public Date deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return R(jsonParser, deserializationContext);
        }
    }

    /* loaded from: classes.dex */
    public static class SqlDateDeserializer extends DateBasedDeserializer<java.sql.Date> {
        public SqlDateDeserializer() {
            super(java.sql.Date.class);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer
        /* renamed from: D0 */
        public SqlDateDeserializer C0(DateFormat dateFormat, String str) {
            return new SqlDateDeserializer(this, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.c
        public /* bridge */ /* synthetic */ com.fasterxml.jackson.databind.d createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
            return super.createContextual(deserializationContext, beanProperty);
        }

        @Override // com.fasterxml.jackson.databind.d
        public Object getEmptyValue(DeserializationContext deserializationContext) {
            return new java.sql.Date(0L);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d
        public /* bridge */ /* synthetic */ LogicalType logicalType() {
            return super.logicalType();
        }

        public SqlDateDeserializer(SqlDateDeserializer sqlDateDeserializer, DateFormat dateFormat, String str) {
            super(sqlDateDeserializer, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.d
        public java.sql.Date deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            Date R = R(jsonParser, deserializationContext);
            if (R == null) {
                return null;
            }
            return new java.sql.Date(R.getTime());
        }
    }

    /* loaded from: classes.dex */
    public static class TimestampDeserializer extends DateBasedDeserializer<Timestamp> {
        public TimestampDeserializer() {
            super(Timestamp.class);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer
        /* renamed from: D0 */
        public TimestampDeserializer C0(DateFormat dateFormat, String str) {
            return new TimestampDeserializer(this, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.c
        public /* bridge */ /* synthetic */ com.fasterxml.jackson.databind.d createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
            return super.createContextual(deserializationContext, beanProperty);
        }

        @Override // com.fasterxml.jackson.databind.d
        public Object getEmptyValue(DeserializationContext deserializationContext) {
            return new Timestamp(0L);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d
        public /* bridge */ /* synthetic */ LogicalType logicalType() {
            return super.logicalType();
        }

        public TimestampDeserializer(TimestampDeserializer timestampDeserializer, DateFormat dateFormat, String str) {
            super(timestampDeserializer, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.d
        public Timestamp deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            Date R = R(jsonParser, deserializationContext);
            if (R == null) {
                return null;
            }
            return new Timestamp(R.getTime());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14868a;

        static {
            int[] iArr = new int[CoercionAction.values().length];
            f14868a = iArr;
            try {
                iArr[CoercionAction.AsEmpty.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14868a[CoercionAction.AsNull.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14868a[CoercionAction.TryConvert.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        HashSet<String> hashSet = new HashSet<>();
        f14864a = hashSet;
        hashSet.add("java.util.Calendar");
        hashSet.add("java.util.GregorianCalendar");
        hashSet.add("java.util.Date");
    }

    public static com.fasterxml.jackson.databind.d<?> a(Class<?> cls, String str) {
        if (f14864a.contains(str)) {
            if (cls == Calendar.class) {
                return new CalendarDeserializer();
            }
            if (cls == Date.class) {
                return DateDeserializer.instance;
            }
            if (cls == GregorianCalendar.class) {
                return new CalendarDeserializer(GregorianCalendar.class);
            }
            return null;
        }
        return null;
    }

    public static boolean b(Class<?> cls) {
        return f14864a.contains(cls.getName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static abstract class DateBasedDeserializer<T> extends StdScalarDeserializer<T> implements com.fasterxml.jackson.databind.deser.c {

        /* renamed from: g  reason: collision with root package name */
        protected final DateFormat f14866g;

        /* renamed from: h  reason: collision with root package name */
        protected final String f14867h;

        protected DateBasedDeserializer(Class<?> cls) {
            super(cls);
            this.f14866g = null;
            this.f14867h = null;
        }

        protected abstract DateBasedDeserializer<T> C0(DateFormat dateFormat, String str);

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer
        public Date R(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            Date parse;
            if (this.f14866g != null && jsonParser.k1(JsonToken.VALUE_STRING)) {
                String trim = jsonParser.S0().trim();
                if (trim.isEmpty()) {
                    if (a.f14868a[h(deserializationContext, trim).ordinal()] != 1) {
                        return null;
                    }
                    return new Date(0L);
                }
                synchronized (this.f14866g) {
                    try {
                        try {
                            parse = this.f14866g.parse(trim);
                        } catch (ParseException unused) {
                            return (Date) deserializationContext.handleWeirdStringValue(handledType(), trim, "expected format \"%s\"", this.f14867h);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return parse;
            }
            return super.R(jsonParser, deserializationContext);
        }

        public com.fasterxml.jackson.databind.d<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
            StdDateFormat stdDateFormat;
            StdDateFormat stdDateFormat2;
            JsonFormat.Value w02 = w0(deserializationContext, beanProperty, handledType());
            if (w02 != null) {
                TimeZone timeZone = w02.getTimeZone();
                Boolean lenient = w02.getLenient();
                if (w02.hasPattern()) {
                    String pattern = w02.getPattern();
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern, w02.hasLocale() ? w02.getLocale() : deserializationContext.getLocale());
                    if (timeZone == null) {
                        timeZone = deserializationContext.getTimeZone();
                    }
                    simpleDateFormat.setTimeZone(timeZone);
                    if (lenient != null) {
                        simpleDateFormat.setLenient(lenient.booleanValue());
                    }
                    return C0(simpleDateFormat, pattern);
                } else if (timeZone != null) {
                    DateFormat dateFormat = deserializationContext.getConfig().getDateFormat();
                    if (dateFormat.getClass() == StdDateFormat.class) {
                        StdDateFormat withLocale = ((StdDateFormat) dateFormat).withTimeZone(timeZone).withLocale(w02.hasLocale() ? w02.getLocale() : deserializationContext.getLocale());
                        stdDateFormat2 = withLocale;
                        if (lenient != null) {
                            stdDateFormat2 = withLocale.withLenient(lenient);
                        }
                    } else {
                        DateFormat dateFormat2 = (DateFormat) dateFormat.clone();
                        dateFormat2.setTimeZone(timeZone);
                        stdDateFormat2 = dateFormat2;
                        if (lenient != null) {
                            dateFormat2.setLenient(lenient.booleanValue());
                            stdDateFormat2 = dateFormat2;
                        }
                    }
                    return C0(stdDateFormat2, this.f14867h);
                } else if (lenient != null) {
                    DateFormat dateFormat3 = deserializationContext.getConfig().getDateFormat();
                    String str = this.f14867h;
                    if (dateFormat3.getClass() == StdDateFormat.class) {
                        StdDateFormat withLenient = ((StdDateFormat) dateFormat3).withLenient(lenient);
                        str = withLenient.toPattern();
                        stdDateFormat = withLenient;
                    } else {
                        DateFormat dateFormat4 = (DateFormat) dateFormat3.clone();
                        dateFormat4.setLenient(lenient.booleanValue());
                        boolean z9 = dateFormat4 instanceof SimpleDateFormat;
                        stdDateFormat = dateFormat4;
                        if (z9) {
                            ((SimpleDateFormat) dateFormat4).toPattern();
                            stdDateFormat = dateFormat4;
                        }
                    }
                    if (str == null) {
                        str = "[unknown]";
                    }
                    return C0(stdDateFormat, str);
                }
            }
            return this;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d
        public LogicalType logicalType() {
            return LogicalType.DateTime;
        }

        protected DateBasedDeserializer(DateBasedDeserializer<T> dateBasedDeserializer, DateFormat dateFormat, String str) {
            super(dateBasedDeserializer.f14988a);
            this.f14866g = dateFormat;
            this.f14867h = str;
        }
    }
}
