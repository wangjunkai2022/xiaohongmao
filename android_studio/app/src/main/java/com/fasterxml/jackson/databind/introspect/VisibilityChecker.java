package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public interface VisibilityChecker<T extends VisibilityChecker<T>> {

    /* loaded from: classes.dex */
    public static class Std implements VisibilityChecker<Std>, Serializable {

        /* renamed from: f  reason: collision with root package name */
        private static final long f15236f = 1;

        /* renamed from: g  reason: collision with root package name */
        protected static final Std f15237g;

        /* renamed from: h  reason: collision with root package name */
        protected static final Std f15238h;

        /* renamed from: a  reason: collision with root package name */
        protected final JsonAutoDetect.Visibility f15239a;

        /* renamed from: b  reason: collision with root package name */
        protected final JsonAutoDetect.Visibility f15240b;

        /* renamed from: c  reason: collision with root package name */
        protected final JsonAutoDetect.Visibility f15241c;

        /* renamed from: d  reason: collision with root package name */
        protected final JsonAutoDetect.Visibility f15242d;

        /* renamed from: e  reason: collision with root package name */
        protected final JsonAutoDetect.Visibility f15243e;

        static {
            JsonAutoDetect.Visibility visibility = JsonAutoDetect.Visibility.PUBLIC_ONLY;
            JsonAutoDetect.Visibility visibility2 = JsonAutoDetect.Visibility.ANY;
            f15237g = new Std(visibility, visibility, visibility2, visibility2, visibility);
            f15238h = new Std(visibility, visibility, visibility, visibility, visibility);
        }

        public Std(JsonAutoDetect jsonAutoDetect) {
            this.f15239a = jsonAutoDetect.getterVisibility();
            this.f15240b = jsonAutoDetect.isGetterVisibility();
            this.f15241c = jsonAutoDetect.setterVisibility();
            this.f15242d = jsonAutoDetect.creatorVisibility();
            this.f15243e = jsonAutoDetect.fieldVisibility();
        }

        private JsonAutoDetect.Visibility a(JsonAutoDetect.Visibility visibility, JsonAutoDetect.Visibility visibility2) {
            return visibility2 == JsonAutoDetect.Visibility.DEFAULT ? visibility : visibility2;
        }

        public static Std allPublicInstance() {
            return f15238h;
        }

        public static Std construct(JsonAutoDetect.Value value) {
            return f15237g.withOverrides(value);
        }

        public static Std defaultInstance() {
            return f15237g;
        }

        protected Std b(JsonAutoDetect.Visibility visibility, JsonAutoDetect.Visibility visibility2, JsonAutoDetect.Visibility visibility3, JsonAutoDetect.Visibility visibility4, JsonAutoDetect.Visibility visibility5) {
            return (visibility == this.f15239a && visibility2 == this.f15240b && visibility3 == this.f15241c && visibility4 == this.f15242d && visibility5 == this.f15243e) ? this : new Std(visibility, visibility2, visibility3, visibility4, visibility5);
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isCreatorVisible(Member member) {
            return this.f15242d.isVisible(member);
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isFieldVisible(Field field) {
            return this.f15243e.isVisible(field);
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isGetterVisible(Method method) {
            return this.f15239a.isVisible(method);
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isIsGetterVisible(Method method) {
            return this.f15240b.isVisible(method);
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isSetterVisible(Method method) {
            return this.f15241c.isVisible(method);
        }

        public String toString() {
            return String.format("[Visibility: getter=%s,isGetter=%s,setter=%s,creator=%s,field=%s]", this.f15239a, this.f15240b, this.f15241c, this.f15242d, this.f15243e);
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isCreatorVisible(AnnotatedMember annotatedMember) {
            return isCreatorVisible(annotatedMember.getMember());
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isFieldVisible(AnnotatedField annotatedField) {
            return isFieldVisible(annotatedField.getAnnotated());
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isGetterVisible(AnnotatedMethod annotatedMethod) {
            return isGetterVisible(annotatedMethod.getAnnotated());
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isIsGetterVisible(AnnotatedMethod annotatedMethod) {
            return isIsGetterVisible(annotatedMethod.getAnnotated());
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isSetterVisible(AnnotatedMethod annotatedMethod) {
            return isSetterVisible(annotatedMethod.getAnnotated());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std withCreatorVisibility(JsonAutoDetect.Visibility visibility) {
            if (visibility == JsonAutoDetect.Visibility.DEFAULT) {
                visibility = f15237g.f15242d;
            }
            JsonAutoDetect.Visibility visibility2 = visibility;
            return this.f15242d == visibility2 ? this : new Std(this.f15239a, this.f15240b, this.f15241c, visibility2, this.f15243e);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std withFieldVisibility(JsonAutoDetect.Visibility visibility) {
            if (visibility == JsonAutoDetect.Visibility.DEFAULT) {
                visibility = f15237g.f15243e;
            }
            JsonAutoDetect.Visibility visibility2 = visibility;
            return this.f15243e == visibility2 ? this : new Std(this.f15239a, this.f15240b, this.f15241c, this.f15242d, visibility2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std withGetterVisibility(JsonAutoDetect.Visibility visibility) {
            if (visibility == JsonAutoDetect.Visibility.DEFAULT) {
                visibility = f15237g.f15239a;
            }
            JsonAutoDetect.Visibility visibility2 = visibility;
            return this.f15239a == visibility2 ? this : new Std(visibility2, this.f15240b, this.f15241c, this.f15242d, this.f15243e);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std withIsGetterVisibility(JsonAutoDetect.Visibility visibility) {
            if (visibility == JsonAutoDetect.Visibility.DEFAULT) {
                visibility = f15237g.f15240b;
            }
            JsonAutoDetect.Visibility visibility2 = visibility;
            return this.f15240b == visibility2 ? this : new Std(this.f15239a, visibility2, this.f15241c, this.f15242d, this.f15243e);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std withOverrides(JsonAutoDetect.Value value) {
            return value != null ? b(a(this.f15239a, value.getGetterVisibility()), a(this.f15240b, value.getIsGetterVisibility()), a(this.f15241c, value.getSetterVisibility()), a(this.f15242d, value.getCreatorVisibility()), a(this.f15243e, value.getFieldVisibility())) : this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std withSetterVisibility(JsonAutoDetect.Visibility visibility) {
            if (visibility == JsonAutoDetect.Visibility.DEFAULT) {
                visibility = f15237g.f15241c;
            }
            JsonAutoDetect.Visibility visibility2 = visibility;
            return this.f15241c == visibility2 ? this : new Std(this.f15239a, this.f15240b, visibility2, this.f15242d, this.f15243e);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std withVisibility(PropertyAccessor propertyAccessor, JsonAutoDetect.Visibility visibility) {
            switch (a.f15244a[propertyAccessor.ordinal()]) {
                case 1:
                    return withGetterVisibility(visibility);
                case 2:
                    return withSetterVisibility(visibility);
                case 3:
                    return withCreatorVisibility(visibility);
                case 4:
                    return withFieldVisibility(visibility);
                case 5:
                    return withIsGetterVisibility(visibility);
                case 6:
                    return with(visibility);
                default:
                    return this;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std with(JsonAutoDetect jsonAutoDetect) {
            return jsonAutoDetect != null ? b(a(this.f15239a, jsonAutoDetect.getterVisibility()), a(this.f15240b, jsonAutoDetect.isGetterVisibility()), a(this.f15241c, jsonAutoDetect.setterVisibility()), a(this.f15242d, jsonAutoDetect.creatorVisibility()), a(this.f15243e, jsonAutoDetect.fieldVisibility())) : this;
        }

        public Std(JsonAutoDetect.Visibility visibility, JsonAutoDetect.Visibility visibility2, JsonAutoDetect.Visibility visibility3, JsonAutoDetect.Visibility visibility4, JsonAutoDetect.Visibility visibility5) {
            this.f15239a = visibility;
            this.f15240b = visibility2;
            this.f15241c = visibility3;
            this.f15242d = visibility4;
            this.f15243e = visibility5;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std with(JsonAutoDetect.Visibility visibility) {
            if (visibility == JsonAutoDetect.Visibility.DEFAULT) {
                return f15237g;
            }
            return new Std(visibility);
        }

        public Std(JsonAutoDetect.Visibility visibility) {
            if (visibility == JsonAutoDetect.Visibility.DEFAULT) {
                Std std = f15237g;
                this.f15239a = std.f15239a;
                this.f15240b = std.f15240b;
                this.f15241c = std.f15241c;
                this.f15242d = std.f15242d;
                this.f15243e = std.f15243e;
                return;
            }
            this.f15239a = visibility;
            this.f15240b = visibility;
            this.f15241c = visibility;
            this.f15242d = visibility;
            this.f15243e = visibility;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15244a;

        static {
            int[] iArr = new int[PropertyAccessor.values().length];
            f15244a = iArr;
            try {
                iArr[PropertyAccessor.GETTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15244a[PropertyAccessor.SETTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15244a[PropertyAccessor.CREATOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15244a[PropertyAccessor.FIELD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15244a[PropertyAccessor.IS_GETTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15244a[PropertyAccessor.ALL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    boolean isCreatorVisible(AnnotatedMember annotatedMember);

    boolean isCreatorVisible(Member member);

    boolean isFieldVisible(AnnotatedField annotatedField);

    boolean isFieldVisible(Field field);

    boolean isGetterVisible(AnnotatedMethod annotatedMethod);

    boolean isGetterVisible(Method method);

    boolean isIsGetterVisible(AnnotatedMethod annotatedMethod);

    boolean isIsGetterVisible(Method method);

    boolean isSetterVisible(AnnotatedMethod annotatedMethod);

    boolean isSetterVisible(Method method);

    T with(JsonAutoDetect.Visibility visibility);

    T with(JsonAutoDetect jsonAutoDetect);

    T withCreatorVisibility(JsonAutoDetect.Visibility visibility);

    T withFieldVisibility(JsonAutoDetect.Visibility visibility);

    T withGetterVisibility(JsonAutoDetect.Visibility visibility);

    T withIsGetterVisibility(JsonAutoDetect.Visibility visibility);

    T withOverrides(JsonAutoDetect.Value value);

    T withSetterVisibility(JsonAutoDetect.Visibility visibility);

    T withVisibility(PropertyAccessor propertyAccessor, JsonAutoDetect.Visibility visibility);
}
