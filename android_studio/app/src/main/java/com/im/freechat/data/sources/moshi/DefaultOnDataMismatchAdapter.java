package com.im.freechat.data.sources.moshi;

import androidx.exifinterface.media.ExifInterface;
import com.squareup.moshi.JsonDataException;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.h;
import com.squareup.moshi.q;
import com.squareup.moshi.u;
import com.squareup.moshi.z;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: DefaultOnDataMismatchAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u0000 \u0015*\u0004\b\u0000\u0010\u00012\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0002:\u0001\u0015B\u001f\b\u0000\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0011\u001a\u00028\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0005\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\u000e\u001a\u00020\rH\u0016R\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00028\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/im/freechat/data/sources/moshi/DefaultOnDataMismatchAdapter;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/squareup/moshi/h;", "Lcom/squareup/moshi/JsonReader;", "reader", "fromJson", "(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;", "Lcom/squareup/moshi/q;", "writer", "value", "", "toJson", "(Lcom/squareup/moshi/q;Ljava/lang/Object;)V", "", "toString", "delegate", "Lcom/squareup/moshi/h;", "defaultValue", "Ljava/lang/Object;", "<init>", "(Lcom/squareup/moshi/h;Ljava/lang/Object;)V", "Companion", "data_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class DefaultOnDataMismatchAdapter<T> extends h<T> {
    @g
    public static final Companion Companion = new Companion(null);
    private final T defaultValue;
    @g
    private final h<T> delegate;

    /* compiled from: DefaultOnDataMismatchAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ#\u0010\u0007\u001a\u00020\u0006\"\u0004\b\u0001\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00028\u0001¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/im/freechat/data/sources/moshi/DefaultOnDataMismatchAdapter$Companion;", "", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/lang/reflect/Type;", "type", "defaultValue", "Lcom/squareup/moshi/h$e;", "newFactory", "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/squareup/moshi/h$e;", "<init>", "()V", "data_release"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final <T> h.e newFactory(@g final Type type, final T t9) {
            Intrinsics.checkNotNullParameter(type, "type");
            return new h.e() { // from class: com.im.freechat.data.sources.moshi.DefaultOnDataMismatchAdapter$Companion$newFactory$1
                @Override // com.squareup.moshi.h.e
                @m8.h
                public h<?> create(@g Type requestedType, @g Set<? extends Annotation> annotations, @g u moshi) {
                    Intrinsics.checkNotNullParameter(requestedType, "requestedType");
                    Intrinsics.checkNotNullParameter(annotations, "annotations");
                    Intrinsics.checkNotNullParameter(moshi, "moshi");
                    if (z.e(type, requestedType)) {
                        h m9 = moshi.m(this, type, annotations);
                        Intrinsics.checkNotNullExpressionValue(m9, "moshi.nextAdapter(this, type, annotations)");
                        return new DefaultOnDataMismatchAdapter(m9, t9);
                    }
                    return null;
                }
            };
        }
    }

    public DefaultOnDataMismatchAdapter(@g h<T> delegate, T t9) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
        this.defaultValue = t9;
    }

    @Override // com.squareup.moshi.h
    @m8.h
    public T fromJson(@g JsonReader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        try {
            return this.delegate.fromJsonValue(reader.M());
        } catch (JsonDataException unused) {
            return this.defaultValue;
        }
    }

    @Override // com.squareup.moshi.h
    public void toJson(@g q writer, @m8.h T t9) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        this.delegate.toJson(writer, (q) t9);
    }

    @g
    public String toString() {
        return this.delegate + ".defaultOnDatMisMatch(" + this.defaultValue + ')';
    }
}
