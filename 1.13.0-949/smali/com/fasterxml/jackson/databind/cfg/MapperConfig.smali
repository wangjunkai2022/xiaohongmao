.class public abstract Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
.super Ljava/lang/Object;
.source "MapperConfig.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/introspect/l$a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/fasterxml/jackson/databind/introspect/l$a;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final c:J = 0x2L

.field protected static final d:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

.field protected static final e:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;


# instance fields
.field protected final a:J

.field protected final b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->d:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 2
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->e:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 3
    iput-wide p2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "TT;>;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 12
    iget-wide v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iput-wide v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "TT;>;J)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 6
    iput-wide p2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "TT;>;",
            "Lcom/fasterxml/jackson/databind/cfg/BaseSettings;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 9
    iget-wide p1, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iput-wide p1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    return-void
.end method

.method public static collectFeatureDefaults(Ljava/lang/Class;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Enum<",
            "TF;>;:",
            "Lcom/fasterxml/jackson/databind/cfg/a;",
            ">(",
            "Ljava/lang/Class<",
            "TF;>;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Enum;

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    .line 2
    check-cast v3, Lcom/fasterxml/jackson/databind/cfg/a;

    invoke-interface {v3}, Lcom/fasterxml/jackson/databind/cfg/a;->enabledByDefault()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3
    invoke-interface {v3}, Lcom/fasterxml/jackson/databind/cfg/a;->getMask()I

    move-result v3

    or-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public final canOverrideAccessModifiers()Z
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    return v0
.end method

.method public compileString(Ljava/lang/String;)Lcom/fasterxml/jackson/core/j;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Z)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public final constructType(Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/type/b<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/type/b;->b()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public final constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public abstract findConfigOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/cfg/b;"
        }
    .end annotation
.end method

.method public abstract findRootName(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/PropertyName;
.end method

.method public abstract findRootName(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/PropertyName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/PropertyName;"
        }
    .end annotation
.end method

.method public final getAccessorNaming()Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getAccessorNaming()Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;

    move-result-object v0

    return-object v0
.end method

.method public abstract getActiveView()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;->instance:Lcom/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;

    return-object v0
.end method

.method public abstract getAttributes()Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
.end method

.method public getBase64Variant()Lcom/fasterxml/jackson/core/Base64Variant;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getBase64Variant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    return-object v0
.end method

.method public getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/l;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/l;

    move-result-object v0

    return-object v0
.end method

.method public abstract getConfigOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/cfg/b;"
        }
    .end annotation
.end method

.method public final getDateFormat()Ljava/text/DateFormat;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDefaultInclusion(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;"
        }
    .end annotation
.end method

.method public getDefaultInclusion(Ljava/lang/Class;Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;",
            ")",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getConfigOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/b;->getInclude()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getConfigOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/b;->getIncludeAsProperty()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p2

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x1

    aput-object p1, v0, p3

    const/4 p1, 0x2

    aput-object p2, v0, p1

    .line 3
    invoke-static {v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->mergeAll([Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p1

    return-object p1
.end method

.method public abstract getDefaultMergeable()Ljava/lang/Boolean;
.end method

.method public abstract getDefaultMergeable(Ljava/lang/Class;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation
.end method

.method public abstract getDefaultPropertyFormat(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonFormat$Value;"
        }
    .end annotation
.end method

.method public abstract getDefaultPropertyIgnorals(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;"
        }
    .end annotation
.end method

.method public abstract getDefaultPropertyIgnorals(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/c;",
            ")",
            "Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;"
        }
    .end annotation
.end method

.method public abstract getDefaultPropertyInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
.end method

.method public abstract getDefaultPropertyInclusion(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;"
        }
    .end annotation
.end method

.method public getDefaultPropertyInclusion(Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;",
            ")",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getConfigOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/b;->getInclude()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public abstract getDefaultPropertyInclusions(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/c;",
            ")",
            "Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;"
        }
    .end annotation
.end method

.method public abstract getDefaultSetterInfo()Lcom/fasterxml/jackson/annotation/JsonSetter$Value;
.end method

.method public final getDefaultTyper(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/e<",
            "*>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getTypeResolverBuilder()Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object p1

    return-object p1
.end method

.method public abstract getDefaultVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getDefaultVisibilityChecker(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;"
        }
    .end annotation
.end method

.method public final getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/c;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/c;

    move-result-object v0

    return-object v0
.end method

.method public final getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getPolymorphicTypeValidator()Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getPolymorphicTypeValidator()Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/fasterxml/jackson/databind/jsontype/impl/LaissezFaireSubTypeValidator;->instance:Lcom/fasterxml/jackson/databind/jsontype/impl/LaissezFaireSubTypeValidator;

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->BLOCK_UNSAFE_POLYMORPHIC_BASE_TYPES:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/DefaultBaseTypeLimitingValidator;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/jsontype/DefaultBaseTypeLimitingValidator;-><init>()V

    :cond_0
    return-object v0
.end method

.method public final getPropertyNamingStrategy()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getPropertyNamingStrategy()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/a;
.end method

.method public final getTimeZone()Ljava/util/TimeZone;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    return-object v0
.end method

.method public hasExplicitTimeZone()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->hasExplicitTimeZone()Z

    move-result v0

    return v0
.end method

.method public final hasMapperFeatures(I)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public introspectClassAnnotations(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/l;->forClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/b;

    move-result-object p1

    return-object p1
.end method

.method public introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->introspectClassAnnotations(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/b;

    move-result-object p1

    return-object p1
.end method

.method public final introspectDirectClassAnnotations(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/l;->forDirectClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/b;

    move-result-object p1

    return-object p1
.end method

.method public introspectDirectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->introspectDirectClassAnnotations(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/b;

    move-result-object p1

    return-object p1
.end method

.method public final isAnnotationProcessingEnabled()Z
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    return v0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
    .locals 2

    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    move-result p1

    return p1
.end method

.method public final shouldSortPropertiesAlphabetically()Z
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->SORT_PROPERTIES_ALPHABETICALLY:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    return v0
.end method

.method public typeIdResolverInstance(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/fasterxml/jackson/databind/jsontype/c;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/jsontype/c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/c;->i(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/c;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result p1

    invoke-static {p2, p1}, Lcom/fasterxml/jackson/databind/util/g;->n(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/jsontype/c;

    return-object p1
.end method

.method public typeResolverBuilderInstance(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/fasterxml/jackson/databind/jsontype/e<",
            "*>;>;)",
            "Lcom/fasterxml/jackson/databind/jsontype/e<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/c;->j(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result p1

    invoke-static {p2, p1}, Lcom/fasterxml/jackson/databind/util/g;->n(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/jsontype/e;

    return-object p1
.end method

.method public abstract useRootWrapping()Z
.end method

.method public abstract with(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/MapperFeature;",
            "Z)TT;"
        }
    .end annotation
.end method

.method public varargs abstract with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/MapperFeature;",
            ")TT;"
        }
    .end annotation
.end method

.method public varargs abstract without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/MapperFeature;",
            ")TT;"
        }
    .end annotation
.end method
