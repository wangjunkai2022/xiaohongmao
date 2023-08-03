package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.io.ContentReference;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.CreatorProperty;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;

/* loaded from: classes.dex */
public class JsonLocationInstantiator extends ValueInstantiator.Base {

    /* renamed from: c  reason: collision with root package name */
    private static final long f14896c = 1;

    public JsonLocationInstantiator() {
        super(JsonLocation.class);
    }

    private static final int b(Object obj) {
        if (obj == null) {
            return 0;
        }
        return ((Number) obj).intValue();
    }

    private static final long c(Object obj) {
        if (obj == null) {
            return 0L;
        }
        return ((Number) obj).longValue();
    }

    private static CreatorProperty d(String str, JavaType javaType, int i4) {
        return CreatorProperty.construct(PropertyName.construct(str), javaType, null, null, null, null, i4, null, PropertyMetadata.STD_REQUIRED);
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public boolean canCreateFromObjectWith() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public Object createFromObjectWith(DeserializationContext deserializationContext, Object[] objArr) {
        return new JsonLocation(ContentReference.rawReference(objArr[0]), c(objArr[1]), c(objArr[2]), b(objArr[3]), b(objArr[4]));
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public SettableBeanProperty[] getFromObjectArguments(DeserializationConfig deserializationConfig) {
        JavaType constructType = deserializationConfig.constructType(Integer.TYPE);
        JavaType constructType2 = deserializationConfig.constructType(Long.TYPE);
        return new SettableBeanProperty[]{d("sourceRef", deserializationConfig.constructType(Object.class), 0), d("byteOffset", constructType2, 1), d("charOffset", constructType2, 2), d("lineNr", constructType, 3), d("columnNr", constructType, 4)};
    }
}
