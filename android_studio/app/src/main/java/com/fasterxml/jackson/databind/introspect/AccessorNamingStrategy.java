package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.cfg.MapperConfig;
import java.io.Serializable;

/* loaded from: classes.dex */
public abstract class AccessorNamingStrategy {

    /* loaded from: classes.dex */
    public static class Base extends AccessorNamingStrategy implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private static final long f15143a = 1;

        @Override // com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy
        public String findNameForIsGetter(AnnotatedMethod annotatedMethod, String str) {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy
        public String findNameForMutator(AnnotatedMethod annotatedMethod, String str) {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy
        public String findNameForRegularGetter(AnnotatedMethod annotatedMethod, String str) {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy
        public String modifyFieldName(AnnotatedField annotatedField, String str) {
            return str;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Provider implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private static final long f15144a = 1;

        public abstract AccessorNamingStrategy forBuilder(MapperConfig<?> mapperConfig, c cVar, com.fasterxml.jackson.databind.b bVar);

        public abstract AccessorNamingStrategy forPOJO(MapperConfig<?> mapperConfig, c cVar);

        public abstract AccessorNamingStrategy forRecord(MapperConfig<?> mapperConfig, c cVar);
    }

    public abstract String findNameForIsGetter(AnnotatedMethod annotatedMethod, String str);

    public abstract String findNameForMutator(AnnotatedMethod annotatedMethod, String str);

    public abstract String findNameForRegularGetter(AnnotatedMethod annotatedMethod, String str);

    public abstract String modifyFieldName(AnnotatedField annotatedField, String str);
}
