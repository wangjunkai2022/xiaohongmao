package com.fasterxml.jackson.annotation;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import java.util.UUID;

/* loaded from: classes.dex */
public class ObjectIdGenerators {

    /* loaded from: classes.dex */
    public static final class IntSequenceGenerator extends a<Integer> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f13650c = 1;

        /* renamed from: b  reason: collision with root package name */
        protected transient int f13651b;

        public IntSequenceGenerator() {
            this(Object.class, -1);
        }

        protected int a() {
            return 1;
        }

        @Override // com.fasterxml.jackson.annotation.ObjectIdGenerators.a, com.fasterxml.jackson.annotation.ObjectIdGenerator
        public /* bridge */ /* synthetic */ boolean canUseFor(ObjectIdGenerator objectIdGenerator) {
            return super.canUseFor(objectIdGenerator);
        }

        @Override // com.fasterxml.jackson.annotation.ObjectIdGenerator
        public ObjectIdGenerator<Integer> forScope(Class<?> cls) {
            return this.f13655a == cls ? this : new IntSequenceGenerator(cls, this.f13651b);
        }

        @Override // com.fasterxml.jackson.annotation.ObjectIdGenerator
        public ObjectIdGenerator.IdKey key(Object obj) {
            if (obj == null) {
                return null;
            }
            return new ObjectIdGenerator.IdKey(IntSequenceGenerator.class, this.f13655a, obj);
        }

        @Override // com.fasterxml.jackson.annotation.ObjectIdGenerator
        public ObjectIdGenerator<Integer> newForSerialization(Object obj) {
            return new IntSequenceGenerator(this.f13655a, a());
        }

        public IntSequenceGenerator(Class<?> cls, int i4) {
            super(cls);
            this.f13651b = i4;
        }

        @Override // com.fasterxml.jackson.annotation.ObjectIdGenerators.a, com.fasterxml.jackson.annotation.ObjectIdGenerator
        public Integer generateId(Object obj) {
            if (obj == null) {
                return null;
            }
            int i4 = this.f13651b;
            this.f13651b = i4 + 1;
            return Integer.valueOf(i4);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class None extends ObjectIdGenerator<Object> {
    }

    /* loaded from: classes.dex */
    public static abstract class PropertyGenerator extends a<Object> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f13652b = 1;

        /* JADX INFO: Access modifiers changed from: protected */
        public PropertyGenerator(Class<?> cls) {
            super(cls);
        }

        @Override // com.fasterxml.jackson.annotation.ObjectIdGenerators.a, com.fasterxml.jackson.annotation.ObjectIdGenerator
        public /* bridge */ /* synthetic */ boolean canUseFor(ObjectIdGenerator objectIdGenerator) {
            return super.canUseFor(objectIdGenerator);
        }

        @Override // com.fasterxml.jackson.annotation.ObjectIdGenerators.a, com.fasterxml.jackson.annotation.ObjectIdGenerator
        public /* bridge */ /* synthetic */ Class getScope() {
            return super.getScope();
        }
    }

    /* loaded from: classes.dex */
    public static final class StringIdGenerator extends a<String> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f13653b = 1;

        public StringIdGenerator() {
            this(Object.class);
        }

        @Override // com.fasterxml.jackson.annotation.ObjectIdGenerators.a, com.fasterxml.jackson.annotation.ObjectIdGenerator
        public boolean canUseFor(ObjectIdGenerator<?> objectIdGenerator) {
            return objectIdGenerator instanceof StringIdGenerator;
        }

        @Override // com.fasterxml.jackson.annotation.ObjectIdGenerator
        public ObjectIdGenerator<String> forScope(Class<?> cls) {
            return this;
        }

        @Override // com.fasterxml.jackson.annotation.ObjectIdGenerator
        public ObjectIdGenerator.IdKey key(Object obj) {
            if (obj == null) {
                return null;
            }
            return new ObjectIdGenerator.IdKey(StringIdGenerator.class, null, obj);
        }

        @Override // com.fasterxml.jackson.annotation.ObjectIdGenerator
        public ObjectIdGenerator<String> newForSerialization(Object obj) {
            return this;
        }

        private StringIdGenerator(Class<?> cls) {
            super(Object.class);
        }

        @Override // com.fasterxml.jackson.annotation.ObjectIdGenerators.a, com.fasterxml.jackson.annotation.ObjectIdGenerator
        public String generateId(Object obj) {
            return UUID.randomUUID().toString();
        }
    }

    /* loaded from: classes.dex */
    public static final class UUIDGenerator extends a<UUID> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f13654b = 1;

        public UUIDGenerator() {
            this(Object.class);
        }

        @Override // com.fasterxml.jackson.annotation.ObjectIdGenerators.a, com.fasterxml.jackson.annotation.ObjectIdGenerator
        public boolean canUseFor(ObjectIdGenerator<?> objectIdGenerator) {
            return objectIdGenerator.getClass() == UUIDGenerator.class;
        }

        @Override // com.fasterxml.jackson.annotation.ObjectIdGenerator
        public ObjectIdGenerator<UUID> forScope(Class<?> cls) {
            return this;
        }

        @Override // com.fasterxml.jackson.annotation.ObjectIdGenerator
        public ObjectIdGenerator.IdKey key(Object obj) {
            if (obj == null) {
                return null;
            }
            return new ObjectIdGenerator.IdKey(UUIDGenerator.class, null, obj);
        }

        @Override // com.fasterxml.jackson.annotation.ObjectIdGenerator
        public ObjectIdGenerator<UUID> newForSerialization(Object obj) {
            return this;
        }

        private UUIDGenerator(Class<?> cls) {
            super(Object.class);
        }

        @Override // com.fasterxml.jackson.annotation.ObjectIdGenerators.a, com.fasterxml.jackson.annotation.ObjectIdGenerator
        public UUID generateId(Object obj) {
            return UUID.randomUUID();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static abstract class a<T> extends ObjectIdGenerator<T> {

        /* renamed from: a  reason: collision with root package name */
        protected final Class<?> f13655a;

        protected a(Class<?> cls) {
            this.f13655a = cls;
        }

        @Override // com.fasterxml.jackson.annotation.ObjectIdGenerator
        public boolean canUseFor(ObjectIdGenerator<?> objectIdGenerator) {
            return objectIdGenerator.getClass() == getClass() && objectIdGenerator.getScope() == this.f13655a;
        }

        @Override // com.fasterxml.jackson.annotation.ObjectIdGenerator
        public abstract T generateId(Object obj);

        @Override // com.fasterxml.jackson.annotation.ObjectIdGenerator
        public Class<?> getScope() {
            return this.f13655a;
        }
    }
}
