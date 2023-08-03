package com.fasterxml.jackson.databind.ser.std;

import c2.a;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;

@a
/* loaded from: classes2.dex */
public class SqlDateSerializer extends DateTimeSerializerBase<Date> {
    public SqlDateSerializer() {
        this(null, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.ser.std.DateTimeSerializerBase
    /* renamed from: z */
    public long y(Date date) {
        if (date == null) {
            return 0L;
        }
        return date.getTime();
    }

    protected SqlDateSerializer(Boolean bool, DateFormat dateFormat) {
        super(Date.class, bool, dateFormat);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.DateTimeSerializerBase, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(Date date, JsonGenerator jsonGenerator, l lVar) throws IOException {
        if (w(lVar)) {
            jsonGenerator.b1(y(date));
        } else if (this.f15756e == null) {
            jsonGenerator.P1(date.toString());
        } else {
            x(date, jsonGenerator, lVar);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.DateTimeSerializerBase
    public DateTimeSerializerBase<Date> withFormat(Boolean bool, DateFormat dateFormat) {
        return new SqlDateSerializer(bool, dateFormat);
    }
}
