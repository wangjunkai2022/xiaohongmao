package com.squareup.wire;

import com.squareup.wire.Message;
import com.squareup.wire.Message.Builder;
import com.squareup.wire.WireField;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class FieldBinding<M extends Message<M, B>, B extends Message.Builder<M, B>> {
    private ProtoAdapter<Object> adapter;
    private final String adapterString;
    private final Field builderField;
    private final Method builderMethod;
    private ProtoAdapter<?> keyAdapter;
    private final String keyAdapterString;
    public final WireField.Label label;
    private final Field messageField;
    public final String name;
    public final boolean redacted;
    private ProtoAdapter<?> singleAdapter;
    public final int tag;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FieldBinding(WireField wireField, Field field, Class<B> cls) {
        this.label = wireField.label();
        String name = field.getName();
        this.name = name;
        this.tag = wireField.tag();
        this.keyAdapterString = wireField.keyAdapter();
        this.adapterString = wireField.adapter();
        this.redacted = wireField.redacted();
        this.messageField = field;
        this.builderField = getBuilderField(cls, name);
        this.builderMethod = getBuilderMethod(cls, name, field.getType());
    }

    private static Field getBuilderField(Class<?> cls, String str) {
        try {
            return cls.getField(str);
        } catch (NoSuchFieldException unused) {
            throw new AssertionError("No builder field " + cls.getName() + "." + str);
        }
    }

    private static Method getBuilderMethod(Class<?> cls, String str, Class<?> cls2) {
        try {
            return cls.getMethod(str, cls2);
        } catch (NoSuchMethodException unused) {
            throw new AssertionError("No builder method " + cls.getName() + "." + str + "(" + cls2.getName() + ")");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ProtoAdapter<Object> adapter() {
        ProtoAdapter<Object> protoAdapter = this.adapter;
        if (protoAdapter != null) {
            return protoAdapter;
        }
        if (isMap()) {
            ProtoAdapter<Object> newMapAdapter = ProtoAdapter.newMapAdapter(keyAdapter(), singleAdapter());
            this.adapter = newMapAdapter;
            return newMapAdapter;
        }
        ProtoAdapter<?> withLabel = singleAdapter().withLabel(this.label);
        this.adapter = withLabel;
        return withLabel;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object get(M m9) {
        try {
            return this.messageField.get(m9);
        } catch (IllegalAccessException e4) {
            throw new AssertionError(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object getFromBuilder(B b10) {
        try {
            return this.builderField.get(b10);
        } catch (IllegalAccessException e4) {
            throw new AssertionError(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isMap() {
        return !this.keyAdapterString.isEmpty();
    }

    ProtoAdapter<?> keyAdapter() {
        ProtoAdapter<?> protoAdapter = this.keyAdapter;
        if (protoAdapter != null) {
            return protoAdapter;
        }
        ProtoAdapter<?> protoAdapter2 = ProtoAdapter.get(this.keyAdapterString);
        this.keyAdapter = protoAdapter2;
        return protoAdapter2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void set(B b10, Object obj) {
        try {
            if (this.label.isOneOf()) {
                this.builderMethod.invoke(b10, obj);
            } else {
                this.builderField.set(b10, obj);
            }
        } catch (IllegalAccessException | InvocationTargetException e4) {
            throw new AssertionError(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ProtoAdapter<?> singleAdapter() {
        ProtoAdapter<?> protoAdapter = this.singleAdapter;
        if (protoAdapter != null) {
            return protoAdapter;
        }
        ProtoAdapter<?> protoAdapter2 = ProtoAdapter.get(this.adapterString);
        this.singleAdapter = protoAdapter2;
        return protoAdapter2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void value(B b10, Object obj) {
        if (this.label.isRepeated()) {
            ((List) getFromBuilder(b10)).add(obj);
        } else if (!this.keyAdapterString.isEmpty()) {
            ((Map) getFromBuilder(b10)).putAll((Map) obj);
        } else {
            set(b10, obj);
        }
    }
}
