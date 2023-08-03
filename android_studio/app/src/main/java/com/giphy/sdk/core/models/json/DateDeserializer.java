package com.giphy.sdk.core.models.json;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: DateDeserializer.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\"\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/giphy/sdk/core/models/json/DateDeserializer;", "Lcom/google/gson/JsonDeserializer;", "Ljava/util/Date;", "()V", "dateFormat", "Ljava/text/SimpleDateFormat;", "dateFormatStories", "deserialize", "json", "Lcom/google/gson/JsonElement;", "typeOfT", "Ljava/lang/reflect/Type;", "context", "Lcom/google/gson/JsonDeserializationContext;", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class DateDeserializer implements JsonDeserializer<Date> {
    private final SimpleDateFormat dateFormat;
    private final SimpleDateFormat dateFormatStories;

    public DateDeserializer() {
        Locale locale = Locale.US;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", locale);
        this.dateFormat = simpleDateFormat;
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", locale);
        this.dateFormatStories = simpleDateFormat2;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        simpleDateFormat2.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    @Override // com.google.gson.JsonDeserializer
    @h
    public Date deserialize(@g JsonElement json, @g Type typeOfT, @g JsonDeserializationContext context) throws JsonParseException {
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(typeOfT, "typeOfT");
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            try {
                SimpleDateFormat simpleDateFormat = this.dateFormat;
                JsonPrimitive asJsonPrimitive = json.getAsJsonPrimitive();
                Intrinsics.checkNotNullExpressionValue(asJsonPrimitive, "json.asJsonPrimitive");
                return simpleDateFormat.parse(asJsonPrimitive.getAsString());
            } catch (Exception unused) {
                SimpleDateFormat simpleDateFormat2 = this.dateFormatStories;
                JsonPrimitive asJsonPrimitive2 = json.getAsJsonPrimitive();
                Intrinsics.checkNotNullExpressionValue(asJsonPrimitive2, "json.asJsonPrimitive");
                return simpleDateFormat2.parse(asJsonPrimitive2.getAsString());
            }
        } catch (Exception unused2) {
            return null;
        }
    }
}
