package com.google.gson.internal;

import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.Since;
import com.google.gson.annotations.Until;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class Excluder implements TypeAdapterFactory, Cloneable {
    public static final Excluder DEFAULT = new Excluder();
    private static final double IGNORE_VERSIONS = -1.0d;
    private boolean requireExpose;
    private double version = IGNORE_VERSIONS;
    private int modifiers = 136;
    private boolean serializeInnerClasses = true;
    private List<ExclusionStrategy> serializationStrategies = Collections.emptyList();
    private List<ExclusionStrategy> deserializationStrategies = Collections.emptyList();

    private boolean excludeClassChecks(Class<?> cls) {
        if (this.version == IGNORE_VERSIONS || isValidVersion((Since) cls.getAnnotation(Since.class), (Until) cls.getAnnotation(Until.class))) {
            return (!this.serializeInnerClasses && isInnerClass(cls)) || isAnonymousOrNonStaticLocal(cls);
        }
        return true;
    }

    private boolean excludeClassInStrategy(Class<?> cls, boolean z9) {
        for (ExclusionStrategy exclusionStrategy : z9 ? this.serializationStrategies : this.deserializationStrategies) {
            if (exclusionStrategy.shouldSkipClass(cls)) {
                return true;
            }
        }
        return false;
    }

    private boolean isAnonymousOrNonStaticLocal(Class<?> cls) {
        return (Enum.class.isAssignableFrom(cls) || isStatic(cls) || (!cls.isAnonymousClass() && !cls.isLocalClass())) ? false : true;
    }

    private boolean isInnerClass(Class<?> cls) {
        return cls.isMemberClass() && !isStatic(cls);
    }

    private boolean isStatic(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    private boolean isValidSince(Since since) {
        return since == null || since.value() <= this.version;
    }

    private boolean isValidUntil(Until until) {
        return until == null || until.value() > this.version;
    }

    private boolean isValidVersion(Since since, Until until) {
        return isValidSince(since) && isValidUntil(until);
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(final Gson gson, final TypeToken<T> typeToken) {
        Class<? super T> rawType = typeToken.getRawType();
        boolean excludeClassChecks = excludeClassChecks(rawType);
        final boolean z9 = excludeClassChecks || excludeClassInStrategy(rawType, true);
        final boolean z10 = excludeClassChecks || excludeClassInStrategy(rawType, false);
        if (z9 || z10) {
            return new TypeAdapter<T>() { // from class: com.google.gson.internal.Excluder.1
                private TypeAdapter<T> delegate;

                private TypeAdapter<T> delegate() {
                    TypeAdapter<T> typeAdapter = this.delegate;
                    if (typeAdapter != 0) {
                        return typeAdapter;
                    }
                    TypeAdapter<T> delegateAdapter = gson.getDelegateAdapter(Excluder.this, typeToken);
                    this.delegate = delegateAdapter;
                    return delegateAdapter;
                }

                /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.Object] */
                @Override // com.google.gson.TypeAdapter
                public T read(JsonReader jsonReader) throws IOException {
                    if (z10) {
                        jsonReader.skipValue();
                        return null;
                    }
                    return delegate().read(jsonReader);
                }

                @Override // com.google.gson.TypeAdapter
                public void write(JsonWriter jsonWriter, T t9) throws IOException {
                    if (z9) {
                        jsonWriter.nullValue();
                    } else {
                        delegate().write(jsonWriter, t9);
                    }
                }
            };
        }
        return null;
    }

    public Excluder disableInnerClassSerialization() {
        Excluder m62clone = m62clone();
        m62clone.serializeInnerClasses = false;
        return m62clone;
    }

    public boolean excludeClass(Class<?> cls, boolean z9) {
        return excludeClassChecks(cls) || excludeClassInStrategy(cls, z9);
    }

    public boolean excludeField(Field field, boolean z9) {
        Expose expose;
        if ((this.modifiers & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.version == IGNORE_VERSIONS || isValidVersion((Since) field.getAnnotation(Since.class), (Until) field.getAnnotation(Until.class))) && !field.isSynthetic()) {
            if (!this.requireExpose || ((expose = (Expose) field.getAnnotation(Expose.class)) != null && (!z9 ? !expose.deserialize() : !expose.serialize()))) {
                if ((this.serializeInnerClasses || !isInnerClass(field.getType())) && !isAnonymousOrNonStaticLocal(field.getType())) {
                    List<ExclusionStrategy> list = z9 ? this.serializationStrategies : this.deserializationStrategies;
                    if (list.isEmpty()) {
                        return false;
                    }
                    FieldAttributes fieldAttributes = new FieldAttributes(field);
                    for (ExclusionStrategy exclusionStrategy : list) {
                        if (exclusionStrategy.shouldSkipField(fieldAttributes)) {
                            return true;
                        }
                    }
                    return false;
                }
                return true;
            }
            return true;
        }
        return true;
    }

    public Excluder excludeFieldsWithoutExposeAnnotation() {
        Excluder m62clone = m62clone();
        m62clone.requireExpose = true;
        return m62clone;
    }

    public Excluder withExclusionStrategy(ExclusionStrategy exclusionStrategy, boolean z9, boolean z10) {
        Excluder m62clone = m62clone();
        if (z9) {
            ArrayList arrayList = new ArrayList(this.serializationStrategies);
            m62clone.serializationStrategies = arrayList;
            arrayList.add(exclusionStrategy);
        }
        if (z10) {
            ArrayList arrayList2 = new ArrayList(this.deserializationStrategies);
            m62clone.deserializationStrategies = arrayList2;
            arrayList2.add(exclusionStrategy);
        }
        return m62clone;
    }

    public Excluder withModifiers(int... iArr) {
        Excluder m62clone = m62clone();
        m62clone.modifiers = 0;
        for (int i4 : iArr) {
            m62clone.modifiers = i4 | m62clone.modifiers;
        }
        return m62clone;
    }

    public Excluder withVersion(double d4) {
        Excluder m62clone = m62clone();
        m62clone.version = d4;
        return m62clone;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: clone */
    public Excluder m62clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e4) {
            throw new AssertionError(e4);
        }
    }
}
